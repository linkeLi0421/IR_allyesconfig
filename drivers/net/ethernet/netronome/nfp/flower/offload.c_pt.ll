; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/offload.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_fl_rule_metadata = type <{ i8, i8, i8, i8, i32, i64, i64, i32 }>
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nfp_fl_payload = type { %struct.nfp_fl_rule_metadata, i32, %struct.rhash_head, %struct.callback_head, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i8, %struct.anon.225 }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.anon.225 = type { ptr, i16, i16 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.flow_match_enc_opts = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_tcp = type { ptr, ptr }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.177, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.201, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.177 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.201 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.247 = type { i16, i16 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.nfp_fl_key_ls = type { i32, i8, i32 }
%struct.flow_dissector_key_enc_opts = type { [255 x i8], i8, i16 }
%struct.nfp_flower_merge_check = type { %union.anon.255 }
%union.anon.255 = type { %struct.anon.256 }
%struct.anon.256 = type { i16, %struct.nfp_flower_mac_mpls, %struct.nfp_flower_tp_ports, %union.anon.257 }
%struct.nfp_flower_mac_mpls = type { [6 x i8], [6 x i8], i32 }
%struct.nfp_flower_tp_ports = type { i16, i16 }
%union.anon.257 = type { %struct.nfp_flower_ipv6 }
%struct.nfp_flower_ipv6 = type { %struct.nfp_flower_ip_ext, i32, %struct.in6_addr, %struct.in6_addr }
%struct.nfp_flower_ip_ext = type { i8, i8, i8, i8 }
%struct.nfp_flower_meta_tci = type { i8, i8, i16 }
%struct.nfp_fl_set_ipv6_addr = type { %struct.nfp_fl_act_head, i16, [4 x %struct.anon.258] }
%struct.nfp_fl_act_head = type { i8, i8 }
%struct.anon.258 = type { i32, i32 }
%struct.nfp_fl_set_eth = type { %struct.nfp_fl_act_head, i16, [12 x i8], [12 x i8] }
%struct.nfp_fl_push_vlan = type { %struct.nfp_fl_act_head, i16, i16, i16 }
%struct.nfp_fl_set_ip4_addrs = type { %struct.nfp_fl_act_head, i16, i32, i32, i32, i32 }
%struct.nfp_fl_set_ip4_ttl_tos = type { %struct.nfp_fl_act_head, i8, i8, i8, i8, i16 }
%struct.nfp_fl_set_ipv6_tc_hl_fl = type { %struct.nfp_fl_act_head, i8, i8, i16, i8, i8, i32, i32 }
%struct.nfp_fl_set_tport = type { %struct.nfp_fl_act_head, i16, [4 x i8], [4 x i8] }
%struct.nfp_fl_pre_tunnel = type { %struct.nfp_fl_act_head, i16, %union.anon.259 }
%union.anon.259 = type { %struct.in6_addr }
%struct.nfp_merge_info = type { i64, %struct.rhash_head }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.nfp_fl_set_tun = type <{ %struct.nfp_fl_act_head, i16, i64, i32, i16, i8, i8, i16, i16, i8, i8, i16 }>
%struct.anon.254 = type { %struct.list_head, ptr }
%struct.nfp_fl_payload_link = type { %struct.anon.254, %struct.anon.254 }
%struct.nfp_fl_stats = type { i64, i64, i64 }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nfp_flower_repr_priv = type { ptr, i32, i8, [6 x i8], i8, %struct.list_head, %struct.nfp_fl_qos, i8 }
%struct.nfp_fl_qos = type { i32, %struct.nfp_stat_pair, %struct.nfp_stat_pair, i64 }
%struct.nfp_stat_pair = type { i64, i64 }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.nfp_flower_indr_block_cb_priv = type { ptr, ptr, %struct.list_head }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.nfp_repr = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.214, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.186 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.186 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.214 = type { %struct.anon.216 }
%struct.anon.216 = type { i32, i32, i8, i32, ptr }
%struct.nfp_flower_vlan = type { i16, i16, i16, i16 }

@nfp_flower_calculate_key_layers.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nfp: unsupported offload: match not supported\00", [50 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nfp: unsupported offload: tunnel match not supported\00", [43 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.2 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"nfp: unsupported offload: loaded firmware does not support VLAN PCP offload\00", [52 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.3 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"nfp: unsupported offload: loaded firmware does not support VLAN QinQ offload\00", [51 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.4 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"nfp: unsupported offload: wildcarded protocols on tunnels are not supported\00", [52 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"nfp: unsupported offload: firmware does not support IPv6 tunnels\00", [63 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"nfp: unsupported offload: tunnel address type not IPv4 or IPv6\00", [33 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.7 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"nfp: unsupported offload: only an exact match IPv6 destination address is supported\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.8 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"nfp: unsupported offload: only an exact match IPv4 destination address is supported\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.9 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"nfp: unsupported offload: an exact match on L4 destination port is required for non-GRE tunnels\00", [32 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.10 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"nfp: unsupported offload: encap options not supported on GRE tunnels\00", [59 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.11 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"nfp: unsupported offload: only an exact match L4 destination port is supported\00", [49 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.12 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"nfp: unsupported offload: ingress netdev does not match the expected tunnel type\00", [47 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nfp: unsupported offload: ARP not supported\00", [52 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.14 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"nfp: unsupported offload: match on given EtherType is not supported\00", [60 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.15 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"nfp: unsupported offload: cannot match above L2 without specified EtherType\00", [52 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.16 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"nfp: unsupported offload: cannot match on L4 information without specified IP protocol type\00", [36 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.17 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"nfp: unsupported offload: no match support for selected TCP flags\00", [62 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.18 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"nfp: unsupported offload: PSH and URG is only supported when used with FIN, SYN or RST\00", [41 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.19 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"nfp: unsupported offload: match on TCP flags requires a match on L3 protocol\00", [51 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.20 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"nfp: unsupported offload: match on TCP flags requires a match on IPv4/IPv6\00", [53 x i8] zeroinitializer }, align 32
@nfp_flower_calculate_key_layers.__msg.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: unsupported offload: match on unknown control flag\00", [40 x i8] zeroinitializer }, align 32
@nfp_flower_merge_offloaded_flows.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/netronome/nfp/flower/offload.c\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@merge_table_params = external dso_local local_unnamed_addr constant %struct.rhashtable_params, align 4
@nfp_flower_merge_offloaded_flows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 1024, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nfp: The two flows are already merged.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp_flower_merge_offloaded_flows\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_flower_merge_offloaded_flows._entry_ptr = internal global ptr @nfp_flower_merge_offloaded_flows._entry, section ".printk_index", align 4
@nfp_flower_table_params = external dso_local local_unnamed_addr constant %struct.rhashtable_params, align 4
@nfp_flower_merge_offloaded_flows.__already_done.27 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_flower_merge_offloaded_flows.__already_done.28 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gretap\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6gretap\00", [22 x i8] zeroinitializer }, align 32
@nfp_flower_calc_udp_tun_layer.__msg = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"nfp: unsupported offload: encap options not supported on vxlan tunnels\00", [57 x i8] zeroinitializer }, align 32
@nfp_flower_calc_udp_tun_layer.__msg.31 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"nfp: unsupported offload: loaded firmware does not support geneve offload\00", [54 x i8] zeroinitializer }, align 32
@nfp_flower_calc_udp_tun_layer.__msg.32 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"nfp: unsupported offload: loaded firmware does not support geneve option offload\00", [47 x i8] zeroinitializer }, align 32
@nfp_flower_calc_udp_tun_layer.__msg.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nfp: unsupported offload: tunnel type unknown\00", [50 x i8] zeroinitializer }, align 32
@nfp_flower_calc_opt_layer.__msg = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"nfp: unsupported offload: geneve options exceed maximum length\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"geneve\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.45 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfp_flower_remove_merge_flow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 1424, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nfp: Metadata fail for merge flow delete.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_flower_remove_merge_flow\00", [35 x i8] zeroinitializer }, align 32
@nfp_flower_remove_merge_flow._entry_ptr = internal global ptr @nfp_flower_remove_merge_flow._entry, section ".printk_index", align 4
@nfp_flower_remove_merge_flow._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str, i32 1432, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nfp: Failed to delete merged flow.\0A\00", [60 x i8] zeroinitializer }, align 32
@nfp_flower_remove_merge_flow._entry_ptr.54 = internal global ptr @nfp_flower_remove_merge_flow._entry.52, section ".printk_index", align 4
@nfp_flower_remove_merge_flow._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str, i32 1440, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfp: Failed to revert merge flow.\0A\00", [61 x i8] zeroinitializer }, align 32
@nfp_flower_remove_merge_flow._entry_ptr.57 = internal global ptr @nfp_flower_remove_merge_flow._entry.55, section ".printk_index", align 4
@nfp_flower_remove_merge_flow.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_flower_remove_merge_flow.__already_done.58 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nfp_block_cb_list, ptr @nfp_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@nfp_flower_add_offload.__msg = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"nfp: invalid entry: cannot insert flow into tables for offloads\00", [32 x i8] zeroinitializer }, align 32
@nfp_flower_add_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@nfp_flower_validate_pre_tun_rule.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: unsupported pre-tunnel rule: too many match fields\00", [40 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.59 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"nfp: unsupported pre-tunnel rule: non-vlan in extended match fields\00", [60 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.60 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"nfp: unsupported pre-tunnel rule: MAC fields match required\00", [36 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.61 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"nfp: unsupported pre-tunnel rule: match on ipv4/ipv6 eth_type must be present\00", [50 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.62 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"nfp: unsupported pre-tunnel rule: dest MAC must match output dev MAC\00", [59 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.63 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"nfp: unsupported pre-tunnel rule: dest MAC field must not be masked\00", [60 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nfp: unsupported pre-tunnel rule: MPLS not supported\00", [43 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.65 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"nfp: unsupported pre-tunnel rule: only flags and proto can be matched in ip header\00", [45 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.66 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"nfp: unsupported pre-tunnel rule: match on VLAN must have VLAN pop as first action\00", [45 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.67 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"nfp: unsupported pre-tunnel rule: non egress action detected where egress was expected\00", [41 x i8] zeroinitializer }, align 32
@nfp_flower_validate_pre_tun_rule.__msg.68 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"nfp: unsupported pre-tunnel rule: egress is not the last action\00", [32 x i8] zeroinitializer }, align 32
@nfp_ct_map_params = external dso_local local_unnamed_addr constant %struct.rhashtable_params, align 4
@nfp_flower_del_offload.__msg = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nfp: invalid entry: cannot remove flow that does not exist\00", [37 x i8] zeroinitializer }, align 32
@nfp_flower_del_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_flower_get_stats.__msg = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"nfp: invalid entry: cannot dump stats for flow that does not exist\00", [61 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"openvswitch\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 2048, i64 2054, i64 33024, i64 34525, i64 34887, i64 34888]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 6, i64 17, i64 58, i64 132]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 4789, i64 6081]
@__sancov_gen_cov_switch_values.74 = internal global [17 x i64] [i64 15, i64 8, i64 0, i64 1, i64 2, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 26]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 17]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 254, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 264, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 285, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 301, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 325, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 333, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 339, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 347, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 353, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 364, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 383, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 389, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 407, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 433, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 449, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 453, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 472, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 484, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 493, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 502, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 520, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 531, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1012, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1024, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 43, i32 43 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"../include/net/gre.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 49, i32 43 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 197, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 203, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 221, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 230, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 160, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [23 x i8] c"../include/net/vxlan.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 420, i32 43 }
@___asan_gen_.193 = private unnamed_addr constant [24 x i8] c"../include/net/geneve.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 68, i32 43 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 695, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 594, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 723, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 755, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1424, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1432, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1440, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [18 x i8] c"nfp_block_cb_list\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1701, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 664, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1361, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1155, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1158, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1163, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1169, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1186, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1193, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1198, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1220, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1249, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1258, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1266, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1522, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.280 = private constant [55 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/offload.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1639, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [52 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/cmsg.h\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 718, i32 43 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @nfp_flower_merge_offloaded_flows._entry, ptr @nfp_flower_merge_offloaded_flows._entry_ptr, ptr @nfp_flower_remove_merge_flow._entry, ptr @nfp_flower_remove_merge_flow._entry.52, ptr @nfp_flower_remove_merge_flow._entry.55, ptr @nfp_flower_remove_merge_flow._entry_ptr, ptr @nfp_flower_remove_merge_flow._entry_ptr.54, ptr @nfp_flower_remove_merge_flow._entry_ptr.57, ptr @nfp_flower_calculate_key_layers.__msg, ptr @nfp_flower_calculate_key_layers.__msg.1, ptr @nfp_flower_calculate_key_layers.__msg.2, ptr @nfp_flower_calculate_key_layers.__msg.3, ptr @nfp_flower_calculate_key_layers.__msg.4, ptr @nfp_flower_calculate_key_layers.__msg.5, ptr @nfp_flower_calculate_key_layers.__msg.6, ptr @nfp_flower_calculate_key_layers.__msg.7, ptr @nfp_flower_calculate_key_layers.__msg.8, ptr @nfp_flower_calculate_key_layers.__msg.9, ptr @nfp_flower_calculate_key_layers.__msg.10, ptr @nfp_flower_calculate_key_layers.__msg.11, ptr @nfp_flower_calculate_key_layers.__msg.12, ptr @nfp_flower_calculate_key_layers.__msg.13, ptr @nfp_flower_calculate_key_layers.__msg.14, ptr @nfp_flower_calculate_key_layers.__msg.15, ptr @nfp_flower_calculate_key_layers.__msg.16, ptr @nfp_flower_calculate_key_layers.__msg.17, ptr @nfp_flower_calculate_key_layers.__msg.18, ptr @nfp_flower_calculate_key_layers.__msg.19, ptr @nfp_flower_calculate_key_layers.__msg.20, ptr @nfp_flower_calculate_key_layers.__msg.21, ptr @.str, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @nfp_flower_calc_udp_tun_layer.__msg, ptr @nfp_flower_calc_udp_tun_layer.__msg.31, ptr @nfp_flower_calc_udp_tun_layer.__msg.32, ptr @nfp_flower_calc_udp_tun_layer.__msg.33, ptr @nfp_flower_calc_opt_layer.__msg, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @nfp_block_cb_list, ptr @tc_can_offload_extack.__msg, ptr @nfp_flower_add_offload.__msg, ptr @nfp_flower_validate_pre_tun_rule.__msg, ptr @nfp_flower_validate_pre_tun_rule.__msg.59, ptr @nfp_flower_validate_pre_tun_rule.__msg.60, ptr @nfp_flower_validate_pre_tun_rule.__msg.61, ptr @nfp_flower_validate_pre_tun_rule.__msg.62, ptr @nfp_flower_validate_pre_tun_rule.__msg.63, ptr @nfp_flower_validate_pre_tun_rule.__msg.64, ptr @nfp_flower_validate_pre_tun_rule.__msg.65, ptr @nfp_flower_validate_pre_tun_rule.__msg.66, ptr @nfp_flower_validate_pre_tun_rule.__msg.67, ptr @nfp_flower_validate_pre_tun_rule.__msg.68, ptr @nfp_flower_del_offload.__msg, ptr @nfp_flower_get_stats.__msg, ptr @.str.70], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.3 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.7 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.8 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.9 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.10 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.11 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.12 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.15 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.16 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.17 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.18 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.19 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.20 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calculate_key_layers.__msg.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_merge_offloaded_flows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calc_udp_tun_layer.__msg to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calc_udp_tun_layer.__msg.31 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calc_udp_tun_layer.__msg.32 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calc_udp_tun_layer.__msg.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_calc_opt_layer.__msg to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_remove_merge_flow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_remove_merge_flow._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_remove_merge_flow._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_add_offload.__msg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.60 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.61 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.62 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.65 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.66 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.67 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_validate_pre_tun_rule.__msg.68 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_del_offload.__msg to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_get_stats.__msg to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_xmit_flow(ptr noundef %app, ptr nocapture noundef %nfp_flow, i8 noundef zeroext %mtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nfp_flow to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nfp_flow, align 4
  %conv = zext i8 %1 to i32
  %mask_len3 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 1
  %2 = ptrtoint ptr %mask_len3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mask_len3, align 1
  %conv4 = zext i8 %3 to i32
  %act_len6 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 2
  %4 = ptrtoint ptr %act_len6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %act_len6, align 2
  %conv7 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv, 28
  %add8 = add nuw nsw i32 %add, %conv4
  %add9 = add nuw nsw i32 %add8, %conv7
  %6 = lshr i8 %1, 2
  store i8 %6, ptr %nfp_flow, align 4
  %7 = lshr i8 %3, 2
  store i8 %7, ptr %mask_len3, align 1
  %8 = lshr i8 %5, 2
  store i8 %8, ptr %act_len6, align 2
  %conv24 = zext i8 %mtype to i32
  %call = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef %add9, i32 noundef %conv24, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %nfp_flow, i32 28)
  %arrayidx = getelementptr i8, ptr %10, i32 32
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 7
  %12 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unmasked_data, align 4
  %14 = call ptr @memcpy(ptr %arrayidx, ptr %13, i32 %conv)
  %arrayidx28 = getelementptr i8, ptr %add.ptr.i, i32 %add
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 8
  %15 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mask_data, align 4
  %17 = call ptr @memcpy(ptr %arrayidx28, ptr %16, i32 %conv4)
  %arrayidx31 = getelementptr i8, ptr %add.ptr.i, i32 %add8
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 9
  %18 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %action_data, align 4
  %20 = call ptr @memcpy(ptr %arrayidx31, ptr %19, i32 %conv7)
  %21 = ptrtoint ptr %nfp_flow to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nfp_flow, align 4
  %shl = shl i8 %22, 2
  store i8 %shl, ptr %nfp_flow, align 4
  %23 = ptrtoint ptr %mask_len3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mask_len3, align 1
  %shl39 = shl i8 %24, 2
  store i8 %shl39, ptr %mask_len3, align 1
  %25 = ptrtoint ptr %act_len6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %act_len6, align 2
  %shl44 = shl i8 %26, 2
  store i8 %shl44, ptr %act_len6, align 2
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %27 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl, align 4
  %call46 = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %28, ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_cmsg_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_ctrl_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_calculate_key_layers(ptr nocapture noundef readonly %app, ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ret_key_ls, ptr noundef %rule, ptr nocapture noundef %tun_type, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %basic = alloca %struct.flow_match_basic, align 8
  %key_layer_two = alloca i32, align 4
  %key_layer = alloca i8, align 1
  %key_size = alloca i32, align 4
  %vlan = alloca %struct.flow_match_vlan, align 4
  %cvlan = alloca %struct.flow_match_vlan, align 4
  %enc_op = alloca %struct.flow_match_enc_opts, align 8
  %ipv4_addrs = alloca %struct.flow_match_ipv4_addrs, align 4
  %ipv6_addrs = alloca %struct.flow_match_ipv6_addrs, align 4
  %enc_ctl = alloca %struct.flow_match_control, align 4
  %enc_ports = alloca %struct.flow_match_ports, align 4
  %tcp = alloca %struct.flow_match_tcp, align 4
  %ctl = alloca %struct.flow_match_control, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %basic) #14
  %2 = ptrtoint ptr %basic to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %basic, align 8
  %priv2 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %3 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_layer_two) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %key_layer) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_size) #14
  %5 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %key_size, align 4, !annotation !182
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and = and i32 %7, -134202528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg) #14
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup457_crit_edge, label %if.then4

do.body.cleanup457_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup457

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nfp_flower_calculate_key_layers.__msg, ptr %extack, align 4
  br label %cleanup457

if.end5:                                          ; preds = %entry
  %and7 = and i32 %7, 25673728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = and i32 %7, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 196608
  %or.cond = or i1 %tobool8.not, %cmp.not
  %and13 = and i32 %7, 163840
  call void @__sanitizer_cov_trace_const_cmp4(i32 163840, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 163840
  %or.cond560 = select i1 %or.cond, i1 true, i1 %cmp14.not
  br i1 %or.cond560, label %if.end24, label %do.body16

do.body16:                                        ; preds = %if.end5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.1) #14
  %tobool18.not = icmp eq ptr %extack, null
  br i1 %tobool18.not, label %do.body16.cleanup457_crit_edge, label %if.then19

do.body16.cleanup457_crit_edge:                   ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup457

if.then19:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nfp_flower_calculate_key_layers.__msg.1, ptr %extack, align 4
  br label %cleanup457

if.end24:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %key_layer_two, align 4
  %11 = ptrtoint ptr %key_layer to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %key_layer, align 1
  %12 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %key_size, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, 524416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %key_layer to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %key_layer, align 1
  %17 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24, ptr %key_size, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %and.i.i569 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i569)
  %tobool.i.i570.not = icmp eq i32 %and.i.i569, 0
  br i1 %tobool.i.i570.not, label %if.end28.if.end60_crit_edge, label %if.then30

if.end28.if.end60_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then30:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vlan) #14
  %20 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %vlan, align 4, !annotation !182
  %21 = getelementptr inbounds %struct.flow_match_vlan, ptr %vlan, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %21, align 4, !annotation !182
  call void @flow_rule_match_vlan(ptr noundef %rule, ptr noundef nonnull %vlan) #14
  %flower_ext_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %4, i32 0, i32 4
  %23 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flower_ext_feats, align 8
  %and31 = and i64 %24, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31)
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %if.then30.if.end45_crit_edge

if.then30.if.end45_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true33:                                  ; preds = %if.then30
  %25 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vlan, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %26, align 2
  %bf.clear = and i16 %bf.load, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %tobool35.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool35.not, label %land.lhs.true33.if.end45_crit_edge, label %do.body37

land.lhs.true33.if.end45_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

do.body37:                                        ; preds = %land.lhs.true33
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.2) #14
  %tobool39.not = icmp eq ptr %extack, null
  br i1 %tobool39.not, label %cleanup457.critedge561, label %if.then40

if.then40:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @nfp_flower_calculate_key_layers.__msg.2, ptr %extack, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vlan) #14
  br label %cleanup457

if.end45:                                         ; preds = %land.lhs.true33.if.end45_crit_edge, %if.then30.if.end45_crit_edge
  %and47 = and i64 %24, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and47)
  %tobool48.not = icmp eq i64 %and47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %if.then52

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %key_layer, align 1
  %31 = or i8 %30, 1
  store i8 %31, ptr %key_layer, align 1
  %32 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key_size, align 4
  %add57 = add i32 %33, 12
  store i32 %add57, ptr %key_size, align 4
  %34 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %key_layer_two, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end45.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vlan) #14
  br label %if.end60

if.end60:                                         ; preds = %cleanup, %if.end28.if.end60_crit_edge
  %35 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rule, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and.i.i571 = and i32 %38, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i571)
  %tobool.i.i572.not = icmp eq i32 %and.i.i571, 0
  br i1 %tobool.i.i572.not, label %if.end60.if.end89_crit_edge, label %if.then62

if.end60.if.end89_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then62:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cvlan) #14
  %39 = ptrtoint ptr %cvlan to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %cvlan, align 4, !annotation !182
  %40 = getelementptr inbounds %struct.flow_match_vlan, ptr %cvlan, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %40, align 4, !annotation !182
  %flower_ext_feats63 = getelementptr inbounds %struct.nfp_flower_priv, ptr %4, i32 0, i32 4
  %42 = ptrtoint ptr %flower_ext_feats63 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %flower_ext_feats63, align 8
  %and64 = and i64 %43, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %do.body67, label %if.end75

do.body67:                                        ; preds = %if.then62
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.3) #14
  %tobool69.not = icmp eq ptr %extack, null
  br i1 %tobool69.not, label %cleanup457.critedge563, label %if.then70

if.then70:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @nfp_flower_calculate_key_layers.__msg.3, ptr %extack, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cvlan) #14
  br label %cleanup457

if.end75:                                         ; preds = %if.then62
  call void @flow_rule_match_vlan(ptr noundef %rule, ptr noundef nonnull %cvlan) #14
  %45 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %key_layer_two, align 4
  %and76 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end89.critedge

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %key_layer, align 1
  %49 = or i8 %48, 1
  store i8 %49, ptr %key_layer, align 1
  %50 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %key_size, align 4
  %add83 = add i32 %51, 12
  store i32 %add83, ptr %key_size, align 4
  %or84 = or i32 %46, 16
  %52 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or84, ptr %key_layer_two, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cvlan) #14
  br label %if.end89

if.end89.critedge:                                ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cvlan) #14
  br label %if.end89

if.end89:                                         ; preds = %if.end89.critedge, %if.then78, %if.end60.if.end89_crit_edge
  %53 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rule, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %and.i.i573 = and i32 %56, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i573)
  %tobool.i.i574.not = icmp eq i32 %and.i.i573, 0
  br i1 %tobool.i.i574.not, label %if.end89.if.end258_crit_edge, label %if.then91

if.end89.if.end258_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end258

if.then91:                                        ; preds = %if.end89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_op) #14
  %57 = ptrtoint ptr %enc_op to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %enc_op, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipv4_addrs) #14
  %58 = ptrtoint ptr %ipv4_addrs to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %ipv4_addrs, align 4, !annotation !182
  %59 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %ipv4_addrs, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %59, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipv6_addrs) #14
  %61 = ptrtoint ptr %ipv6_addrs to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %ipv6_addrs, align 4, !annotation !182
  %62 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %ipv6_addrs, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 -1 to ptr), ptr %62, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_ctl) #14
  %64 = ptrtoint ptr %enc_ctl to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_ctl, align 4, !annotation !182
  %65 = getelementptr inbounds %struct.flow_match_control, ptr %enc_ctl, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %65, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %enc_ports) #14
  %67 = ptrtoint ptr %enc_ports to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %enc_ports, align 4, !annotation !182
  %68 = getelementptr inbounds %struct.flow_match_ports, ptr %enc_ports, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %68, align 4, !annotation !182
  call void @flow_rule_match_enc_control(ptr noundef %rule, ptr noundef nonnull %enc_ctl) #14
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %65, align 4
  %addr_type = getelementptr inbounds %struct.flow_dissector_key_control, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %addr_type to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %addr_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %73)
  %cmp93.not = icmp eq i16 %73, -1
  br i1 %cmp93.not, label %if.end104, label %do.body96

do.body96:                                        ; preds = %if.then91
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.4) #14
  %tobool98.not = icmp eq ptr %extack, null
  br i1 %tobool98.not, label %do.body96.cleanup250.thread_crit_edge, label %do.body96.cleanup250.thread.sink.split_crit_edge

do.body96.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body96.cleanup250.thread_crit_edge:            ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

if.end104:                                        ; preds = %if.then91
  %74 = ptrtoint ptr %enc_ctl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %enc_ctl, align 4
  %addr_type106 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %addr_type106 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %addr_type106, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %77)
  %cmp108 = icmp eq i16 %77, 3
  br i1 %cmp108, label %land.lhs.true112, label %land.lhs.true127.critedge

land.lhs.true112:                                 ; preds = %if.end104
  %flower_ext_feats113 = getelementptr inbounds %struct.nfp_flower_priv, ptr %4, i32 0, i32 4
  %78 = ptrtoint ptr %flower_ext_feats113 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %flower_ext_feats113, align 8
  %and114 = and i64 %79, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and114)
  %tobool115.not = icmp eq i64 %and114, 0
  br i1 %tobool115.not, label %do.body117, label %if.then144.critedge

do.body117:                                       ; preds = %land.lhs.true112
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.5) #14
  %tobool119.not = icmp eq ptr %extack, null
  br i1 %tobool119.not, label %do.body117.cleanup250.thread_crit_edge, label %do.body117.cleanup250.thread.sink.split_crit_edge

do.body117.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body117.cleanup250.thread_crit_edge:           ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

land.lhs.true127.critedge:                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %77)
  %cmp131.not = icmp eq i16 %77, 2
  br i1 %cmp131.not, label %if.else, label %do.body134

do.body134:                                       ; preds = %land.lhs.true127.critedge
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.6) #14
  %tobool136.not = icmp eq ptr %extack, null
  br i1 %tobool136.not, label %do.body134.cleanup250.thread_crit_edge, label %do.body134.cleanup250.thread.sink.split_crit_edge

do.body134.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body134.cleanup250.thread_crit_edge:           ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

if.then144.critedge:                              ; preds = %land.lhs.true112
  call void @flow_rule_match_enc_ipv6_addrs(ptr noundef %rule, ptr noundef nonnull %ipv6_addrs) #14
  %80 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %62, align 4
  %dst = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %81, i32 0, i32 1
  %call146 = call ptr @memchr_inv(ptr noundef %dst, i32 noundef 255, i32 noundef 16) #14
  %tobool147.not = icmp eq ptr %call146, null
  br i1 %tobool147.not, label %if.then144.critedge.if.end172_crit_edge, label %do.body149

if.then144.critedge.if.end172_crit_edge:          ; preds = %if.then144.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

do.body149:                                       ; preds = %if.then144.critedge
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.7) #14
  %tobool151.not = icmp eq ptr %extack, null
  br i1 %tobool151.not, label %do.body149.cleanup250.thread_crit_edge, label %do.body149.cleanup250.thread.sink.split_crit_edge

do.body149.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body149.cleanup250.thread_crit_edge:           ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

if.else:                                          ; preds = %land.lhs.true127.critedge
  call void @flow_rule_match_enc_ipv4_addrs(ptr noundef %rule, ptr noundef nonnull %ipv4_addrs) #14
  %82 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %59, align 4
  %dst159 = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %dst159 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dst159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp160.not = icmp eq i32 %85, -1
  br i1 %cmp160.not, label %if.else.if.end172_crit_edge, label %do.body163

if.else.if.end172_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

do.body163:                                       ; preds = %if.else
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.8) #14
  %tobool165.not = icmp eq ptr %extack, null
  br i1 %tobool165.not, label %do.body163.cleanup250.thread_crit_edge, label %do.body163.cleanup250.thread.sink.split_crit_edge

do.body163.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body163.cleanup250.thread_crit_edge:           ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

if.end172:                                        ; preds = %if.else.if.end172_crit_edge, %if.then144.critedge.if.end172_crit_edge
  %86 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rule, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %and.i.i575 = and i32 %89, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i575)
  %tobool.i.i576.not = icmp eq i32 %and.i.i575, 0
  br i1 %tobool.i.i576.not, label %if.end172.if.end175_crit_edge, label %if.then174

if.end172.if.end175_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end175

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  call void @flow_rule_match_enc_opts(ptr noundef %rule, ptr noundef nonnull %enc_op) #14
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.end172.if.end175_crit_edge
  %90 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rule, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %and.i.i577 = and i32 %93, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i577)
  %tobool.i.i578.not = icmp eq i32 %and.i.i577, 0
  br i1 %tobool.i.i578.not, label %if.then177, label %if.else215

if.then177:                                       ; preds = %if.end175
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %94 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %95, null
  br i1 %tobool.not.i, label %if.then177.do.body182_crit_edge, label %netif_is_gretap.exit

if.then177.do.body182_crit_edge:                  ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body182

netif_is_gretap.exit:                             ; preds = %if.then177
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %kind.i, align 4
  %call.i = call i32 @strcmp(ptr noundef %97, ptr noundef nonnull dereferenceable(7) @.str.29) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %netif_is_gretap.exit.if.end190_crit_edge, label %netif_is_ip6gretap.exit

netif_is_gretap.exit.if.end190_crit_edge:         ; preds = %netif_is_gretap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end190

netif_is_ip6gretap.exit:                          ; preds = %netif_is_gretap.exit
  %98 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %kind.i, align 4
  %call.i582 = call i32 @strcmp(ptr noundef %99, ptr noundef nonnull dereferenceable(10) @.str.30) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i582)
  %tobool2.not.i583 = icmp eq i32 %call.i582, 0
  br i1 %tobool2.not.i583, label %netif_is_ip6gretap.exit.if.end190_crit_edge, label %netif_is_ip6gretap.exit.do.body182_crit_edge

netif_is_ip6gretap.exit.do.body182_crit_edge:     ; preds = %netif_is_ip6gretap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body182

netif_is_ip6gretap.exit.if.end190_crit_edge:      ; preds = %netif_is_ip6gretap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end190

do.body182:                                       ; preds = %netif_is_ip6gretap.exit.do.body182_crit_edge, %if.then177.do.body182_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.9) #14
  %tobool184.not = icmp eq ptr %extack, null
  br i1 %tobool184.not, label %do.body182.cleanup250.thread_crit_edge, label %do.body182.cleanup250.thread.sink.split_crit_edge

do.body182.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body182.cleanup250.thread_crit_edge:           ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

if.end190:                                        ; preds = %netif_is_ip6gretap.exit.if.end190_crit_edge, %netif_is_gretap.exit.if.end190_crit_edge
  %100 = ptrtoint ptr %tun_type to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %tun_type, align 4
  %101 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %key_layer, align 1
  %103 = or i8 %102, 1
  store i8 %103, ptr %key_layer, align 1
  %104 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %key_size, align 4
  %106 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %key_layer_two, align 4
  %spec.select.v = select i1 %cmp108, i32 129, i32 1
  %spec.select = or i32 %107, %spec.select.v
  %spec.select601 = select i1 %cmp108, i32 48, i32 24
  store i32 %spec.select, ptr %key_layer_two, align 4
  %add201 = add i32 %105, %spec.select601
  store i32 %add201, ptr %key_size, align 4
  %108 = ptrtoint ptr %enc_op to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %enc_op, align 8
  %tobool204.not = icmp eq ptr %109, null
  br i1 %tobool204.not, label %if.end190.cleanup250_crit_edge, label %do.body206

if.end190.cleanup250_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250

do.body206:                                       ; preds = %if.end190
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.10) #14
  %tobool208.not = icmp eq ptr %extack, null
  br i1 %tobool208.not, label %do.body206.cleanup250.thread_crit_edge, label %do.body206.cleanup250.thread.sink.split_crit_edge

do.body206.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body206.cleanup250.thread_crit_edge:           ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

if.else215:                                       ; preds = %if.end175
  call void @flow_rule_match_enc_ports(ptr noundef %rule, ptr noundef nonnull %enc_ports) #14
  %110 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %68, align 4
  %dst217 = getelementptr inbounds %struct.anon.247, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %dst217 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %dst217, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %113)
  %cmp219.not = icmp eq i16 %113, -1
  br i1 %cmp219.not, label %if.end230, label %do.body222

do.body222:                                       ; preds = %if.else215
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.11) #14
  %tobool224.not = icmp eq ptr %extack, null
  br i1 %tobool224.not, label %do.body222.cleanup250.thread_crit_edge, label %do.body222.cleanup250.thread.sink.split_crit_edge

do.body222.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body222.cleanup250.thread_crit_edge:           ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

if.end230:                                        ; preds = %if.else215
  %114 = ptrtoint ptr %enc_ports to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %enc_ports, align 4
  %116 = ptrtoint ptr %enc_op to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %enc_op, align 8
  %call234 = call fastcc i32 @nfp_flower_calc_udp_tun_layer(ptr noundef %115, ptr noundef %117, ptr noundef nonnull %key_layer_two, ptr noundef nonnull %key_layer, ptr noundef nonnull %key_size, ptr noundef %4, ptr noundef %tun_type, i1 noundef zeroext %cmp108, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end237, label %if.end230.cleanup250.thread_crit_edge

if.end230.cleanup250.thread_crit_edge:            ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

if.end237:                                        ; preds = %if.end230
  %118 = ptrtoint ptr %tun_type to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tun_type, align 4
  %call238 = call fastcc zeroext i1 @nfp_fl_netdev_is_tunnel_type(ptr noundef %netdev, i32 noundef %119)
  br i1 %call238, label %if.end237.cleanup250_crit_edge, label %do.body240

if.end237.cleanup250_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250

do.body240:                                       ; preds = %if.end237
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.12) #14
  %tobool242.not = icmp eq ptr %extack, null
  br i1 %tobool242.not, label %do.body240.cleanup250.thread_crit_edge, label %do.body240.cleanup250.thread.sink.split_crit_edge

do.body240.cleanup250.thread.sink.split_crit_edge: ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread.sink.split

do.body240.cleanup250.thread_crit_edge:           ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup250.thread

cleanup250.thread.sink.split:                     ; preds = %do.body240.cleanup250.thread.sink.split_crit_edge, %do.body222.cleanup250.thread.sink.split_crit_edge, %do.body206.cleanup250.thread.sink.split_crit_edge, %do.body182.cleanup250.thread.sink.split_crit_edge, %do.body163.cleanup250.thread.sink.split_crit_edge, %do.body149.cleanup250.thread.sink.split_crit_edge, %do.body134.cleanup250.thread.sink.split_crit_edge, %do.body117.cleanup250.thread.sink.split_crit_edge, %do.body96.cleanup250.thread.sink.split_crit_edge
  %nfp_flower_calculate_key_layers.__msg.4.sink = phi ptr [ @nfp_flower_calculate_key_layers.__msg.4, %do.body96.cleanup250.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.5, %do.body117.cleanup250.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.6, %do.body134.cleanup250.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.7, %do.body149.cleanup250.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.8, %do.body163.cleanup250.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.9, %do.body182.cleanup250.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.10, %do.body206.cleanup250.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.11, %do.body222.cleanup250.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.12, %do.body240.cleanup250.thread.sink.split_crit_edge ]
  %120 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %nfp_flower_calculate_key_layers.__msg.4.sink, ptr %extack, align 4
  br label %cleanup250.thread

cleanup250.thread:                                ; preds = %cleanup250.thread.sink.split, %do.body240.cleanup250.thread_crit_edge, %if.end230.cleanup250.thread_crit_edge, %do.body222.cleanup250.thread_crit_edge, %do.body206.cleanup250.thread_crit_edge, %do.body182.cleanup250.thread_crit_edge, %do.body163.cleanup250.thread_crit_edge, %do.body149.cleanup250.thread_crit_edge, %do.body134.cleanup250.thread_crit_edge, %do.body117.cleanup250.thread_crit_edge, %do.body96.cleanup250.thread_crit_edge
  %retval.4.ph = phi i32 [ -95, %do.body240.cleanup250.thread_crit_edge ], [ %call234, %if.end230.cleanup250.thread_crit_edge ], [ -95, %do.body222.cleanup250.thread_crit_edge ], [ -95, %do.body206.cleanup250.thread_crit_edge ], [ -95, %do.body182.cleanup250.thread_crit_edge ], [ -95, %do.body163.cleanup250.thread_crit_edge ], [ -95, %do.body149.cleanup250.thread_crit_edge ], [ -95, %do.body134.cleanup250.thread_crit_edge ], [ -95, %do.body117.cleanup250.thread_crit_edge ], [ -95, %do.body96.cleanup250.thread_crit_edge ], [ -95, %cleanup250.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_ports) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_ctl) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipv6_addrs) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipv4_addrs) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_op) #14
  br label %cleanup457

cleanup250:                                       ; preds = %if.end237.cleanup250_crit_edge, %if.end190.cleanup250_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_ports) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_ctl) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipv6_addrs) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipv4_addrs) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %enc_op) #14
  br label %if.end258

if.end258:                                        ; preds = %cleanup250, %if.end89.if.end258_crit_edge
  %121 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rule, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %and.i.i585 = and i32 %124, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i585)
  %tobool.i.i586.not = icmp eq i32 %and.i.i585, 0
  br i1 %tobool.i.i586.not, label %if.end258.if.end261_crit_edge, label %if.then260

if.end258.if.end261_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end261

if.then260:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #16
  call void @flow_rule_match_basic(ptr noundef %rule, ptr noundef nonnull %basic) #14
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %if.end258.if.end261_crit_edge
  %mask262 = getelementptr inbounds %struct.flow_match_basic, ptr %basic, i32 0, i32 1
  %125 = ptrtoint ptr %mask262 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mask262, align 4
  %tobool263.not = icmp eq ptr %126, null
  br i1 %tobool263.not, label %if.else308, label %land.lhs.true264

land.lhs.true264:                                 ; preds = %if.end261
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %126, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool267.not = icmp eq i16 %128, 0
  br i1 %tobool267.not, label %if.else308.thread, label %if.then268

if.then268:                                       ; preds = %land.lhs.true264
  %129 = ptrtoint ptr %basic to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %basic, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %130, align 2
  %133 = zext i16 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values)
  switch i16 %132, label %do.body300 [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb276
    i16 2054, label %do.body282
    i16 -30649, label %if.then268.sw.bb290_crit_edge
    i16 -30648, label %if.then268.sw.bb290_crit_edge602
    i16 -32512, label %if.then268.land.lhs.true323_crit_edge
  ]

if.then268.land.lhs.true323_crit_edge:            ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true323

if.then268.sw.bb290_crit_edge602:                 ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb290

if.then268.sw.bb290_crit_edge:                    ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb290

sw.bb:                                            ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #16
  %134 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %key_layer, align 1
  %136 = or i8 %135, 16
  store i8 %136, ptr %key_layer, align 1
  %137 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %key_size, align 4
  %add275 = add i32 %138, 12
  store i32 %add275, ptr %key_size, align 4
  br label %land.lhs.true323

sw.bb276:                                         ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #16
  %139 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %key_layer, align 1
  %141 = or i8 %140, 32
  store i8 %141, ptr %key_layer, align 1
  %142 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %key_size, align 4
  %add280 = add i32 %143, 40
  store i32 %add280, ptr %key_size, align 4
  br label %land.lhs.true323

do.body282:                                       ; preds = %if.then268
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.13) #14
  %tobool284.not = icmp eq ptr %extack, null
  br i1 %tobool284.not, label %do.body282.cleanup457_crit_edge, label %if.then285

do.body282.cleanup457_crit_edge:                  ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup457

if.then285:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #16
  %144 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @nfp_flower_calculate_key_layers.__msg.13, ptr %extack, align 4
  br label %cleanup457

sw.bb290:                                         ; preds = %if.then268.sw.bb290_crit_edge, %if.then268.sw.bb290_crit_edge602
  %145 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %key_layer, align 1
  %147 = and i8 %146, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool293.not = icmp eq i8 %147, 0
  br i1 %tobool293.not, label %if.then294, label %sw.bb290.land.lhs.true323_crit_edge

sw.bb290.land.lhs.true323_crit_edge:              ; preds = %sw.bb290
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true323

if.then294:                                       ; preds = %sw.bb290
  call void @__sanitizer_cov_trace_pc() #16
  %or296 = or i8 %146, 4
  %148 = ptrtoint ptr %key_layer to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %or296, ptr %key_layer, align 1
  %149 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %key_size, align 4
  %add298 = add i32 %150, 16
  store i32 %add298, ptr %key_size, align 4
  br label %land.lhs.true323

do.body300:                                       ; preds = %if.then268
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.14) #14
  %tobool302.not = icmp eq ptr %extack, null
  br i1 %tobool302.not, label %do.body300.cleanup457_crit_edge, label %if.then303

do.body300.cleanup457_crit_edge:                  ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup457

if.then303:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #16
  %151 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @nfp_flower_calculate_key_layers.__msg.14, ptr %extack, align 4
  br label %cleanup457

if.else308:                                       ; preds = %if.end261
  %152 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rule, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %156 = and i32 %155, 92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %.not600 = icmp eq i32 %156, 0
  br i1 %.not600, label %if.else308.if.end337_crit_edge, label %if.else308.do.body311_crit_edge

if.else308.do.body311_crit_edge:                  ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body311

if.else308.if.end337_crit_edge:                   ; preds = %if.else308
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337

if.else308.thread:                                ; preds = %land.lhs.true264
  %157 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rule, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %161 = and i32 %160, 92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %.not599 = icmp eq i32 %161, 0
  br i1 %.not599, label %if.else308.thread.land.lhs.true323_crit_edge, label %if.else308.thread.do.body311_crit_edge

if.else308.thread.do.body311_crit_edge:           ; preds = %if.else308.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body311

if.else308.thread.land.lhs.true323_crit_edge:     ; preds = %if.else308.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true323

do.body311:                                       ; preds = %if.else308.thread.do.body311_crit_edge, %if.else308.do.body311_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.15) #14
  %tobool313.not = icmp eq ptr %extack, null
  br i1 %tobool313.not, label %do.body311.cleanup457_crit_edge, label %if.then314

do.body311.cleanup457_crit_edge:                  ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup457

if.then314:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #16
  %162 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @nfp_flower_calculate_key_layers.__msg.15, ptr %extack, align 4
  br label %cleanup457

land.lhs.true323:                                 ; preds = %if.else308.thread.land.lhs.true323_crit_edge, %if.then294, %sw.bb290.land.lhs.true323_crit_edge, %sw.bb276, %sw.bb, %if.then268.land.lhs.true323_crit_edge
  %ip_proto = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %126, i32 0, i32 1
  %163 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %ip_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool326.not = icmp eq i8 %164, 0
  br i1 %tobool326.not, label %land.lhs.true323.if.end337_crit_edge, label %if.then327

land.lhs.true323.if.end337_crit_edge:             ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337

if.then327:                                       ; preds = %land.lhs.true323
  %165 = ptrtoint ptr %basic to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %basic, align 8
  %ip_proto329 = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %ip_proto329 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ip_proto329, align 2
  %169 = zext i8 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %168, label %if.then327.if.end337_crit_edge [
    i8 6, label %if.then327.sw.bb331_crit_edge
    i8 17, label %if.then327.sw.bb331_crit_edge603
    i8 -124, label %if.then327.sw.bb331_crit_edge604
    i8 1, label %if.then327.sw.bb331_crit_edge605
    i8 58, label %if.then327.sw.bb331_crit_edge606
  ]

if.then327.sw.bb331_crit_edge606:                 ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb331

if.then327.sw.bb331_crit_edge605:                 ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb331

if.then327.sw.bb331_crit_edge604:                 ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb331

if.then327.sw.bb331_crit_edge603:                 ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb331

if.then327.sw.bb331_crit_edge:                    ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb331

if.then327.if.end337_crit_edge:                   ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337

sw.bb331:                                         ; preds = %if.then327.sw.bb331_crit_edge, %if.then327.sw.bb331_crit_edge603, %if.then327.sw.bb331_crit_edge604, %if.then327.sw.bb331_crit_edge605, %if.then327.sw.bb331_crit_edge606
  %170 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %key_layer, align 1
  %172 = or i8 %171, 8
  store i8 %172, ptr %key_layer, align 1
  %173 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %key_size, align 4
  %add335 = add i32 %174, 4
  store i32 %add335, ptr %key_size, align 4
  br label %if.end337

if.end337:                                        ; preds = %sw.bb331, %if.then327.if.end337_crit_edge, %land.lhs.true323.if.end337_crit_edge, %if.else308.if.end337_crit_edge
  %175 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %key_layer, align 1
  %177 = and i8 %176, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool340.not = icmp eq i8 %177, 0
  br i1 %tobool340.not, label %land.lhs.true341, label %if.end337.if.end353_crit_edge

if.end337.if.end353_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end353

land.lhs.true341:                                 ; preds = %if.end337
  %178 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rule, align 8
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 4
  %182 = and i32 %181, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %.not598 = icmp eq i32 %182, 0
  br i1 %.not598, label %land.lhs.true341.if.end353_crit_edge, label %do.body345

land.lhs.true341.if.end353_crit_edge:             ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end353

do.body345:                                       ; preds = %land.lhs.true341
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.16) #14
  %tobool347.not = icmp eq ptr %extack, null
  br i1 %tobool347.not, label %do.body345.cleanup457_crit_edge, label %if.then348

do.body345.cleanup457_crit_edge:                  ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup457

if.then348:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #16
  %183 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @nfp_flower_calculate_key_layers.__msg.16, ptr %extack, align 4
  br label %cleanup457

if.end353:                                        ; preds = %land.lhs.true341.if.end353_crit_edge, %if.end337.if.end353_crit_edge
  %184 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rule, align 8
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  %and.i.i587 = and i32 %187, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i587)
  %tobool.i.i588.not = icmp eq i32 %and.i.i587, 0
  br i1 %tobool.i.i588.not, label %if.end353.if.end433_crit_edge, label %if.then355

if.end353.if.end433_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end433

if.then355:                                       ; preds = %if.end353
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcp) #14
  %188 = ptrtoint ptr %tcp to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr inttoptr (i32 -1 to ptr), ptr %tcp, align 4, !annotation !182
  %189 = getelementptr inbounds %struct.flow_match_tcp, ptr %tcp, i32 0, i32 1
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr inttoptr (i32 -1 to ptr), ptr %189, align 4, !annotation !182
  call void @flow_rule_match_tcp(ptr noundef %rule, ptr noundef nonnull %tcp) #14
  %191 = ptrtoint ptr %tcp to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %tcp, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %192, align 2
  %conv357 = zext i16 %194 to i32
  %and358 = and i32 %conv357, 65488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  br i1 %tobool359.not, label %if.end369, label %do.body361

do.body361:                                       ; preds = %if.then355
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.17) #14
  %tobool363.not = icmp eq ptr %extack, null
  br i1 %tobool363.not, label %do.body361.cleanup429.thread_crit_edge, label %do.body361.cleanup429.thread.sink.split_crit_edge

do.body361.cleanup429.thread.sink.split_crit_edge: ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429.thread.sink.split

do.body361.cleanup429.thread_crit_edge:           ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429.thread

if.end369:                                        ; preds = %if.then355
  %and370 = and i32 %conv357, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and370)
  %tobool371.not = icmp ne i32 %and370, 0
  %and373 = and i32 %conv357, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and373)
  %tobool374.not = icmp eq i32 %and373, 0
  %or.cond565 = and i1 %tobool371.not, %tobool374.not
  br i1 %or.cond565, label %do.body376, label %if.end384

do.body376:                                       ; preds = %if.end369
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.18) #14
  %tobool378.not = icmp eq ptr %extack, null
  br i1 %tobool378.not, label %do.body376.cleanup429.thread_crit_edge, label %do.body376.cleanup429.thread.sink.split_crit_edge

do.body376.cleanup429.thread.sink.split_crit_edge: ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429.thread.sink.split

do.body376.cleanup429.thread_crit_edge:           ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429.thread

if.end384:                                        ; preds = %if.end369
  %195 = ptrtoint ptr %basic to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %basic, align 8
  %tobool386.not = icmp eq ptr %196, null
  br i1 %tobool386.not, label %do.body388, label %if.end396

do.body388:                                       ; preds = %if.end384
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.19) #14
  %tobool390.not = icmp eq ptr %extack, null
  br i1 %tobool390.not, label %do.body388.cleanup429.thread_crit_edge, label %do.body388.cleanup429.thread.sink.split_crit_edge

do.body388.cleanup429.thread.sink.split_crit_edge: ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429.thread.sink.split

do.body388.cleanup429.thread_crit_edge:           ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429.thread

if.end396:                                        ; preds = %if.end384
  %197 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %key_layer, align 1
  %199 = and i8 %198, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %if.then404, label %if.end396.cleanup429_crit_edge

if.end396.cleanup429_crit_edge:                   ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429

if.then404:                                       ; preds = %if.end396
  %201 = ptrtoint ptr %196 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %196, align 2
  %203 = zext i16 %202 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %202, label %do.body419 [
    i16 2048, label %sw.bb408
    i16 -31011, label %sw.bb413
  ]

sw.bb408:                                         ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #16
  %or410 = or i8 %198, 16
  %204 = ptrtoint ptr %key_layer to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %or410, ptr %key_layer, align 1
  %205 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %key_size, align 4
  %add412 = add i32 %206, 12
  store i32 %add412, ptr %key_size, align 4
  br label %cleanup429

sw.bb413:                                         ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #16
  %or415 = or i8 %198, 32
  %207 = ptrtoint ptr %key_layer to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %or415, ptr %key_layer, align 1
  %208 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %key_size, align 4
  %add417 = add i32 %209, 40
  store i32 %add417, ptr %key_size, align 4
  br label %cleanup429

do.body419:                                       ; preds = %if.then404
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.20) #14
  %tobool421.not = icmp eq ptr %extack, null
  br i1 %tobool421.not, label %do.body419.cleanup429.thread_crit_edge, label %do.body419.cleanup429.thread.sink.split_crit_edge

do.body419.cleanup429.thread.sink.split_crit_edge: ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429.thread.sink.split

do.body419.cleanup429.thread_crit_edge:           ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup429.thread

cleanup429.thread.sink.split:                     ; preds = %do.body419.cleanup429.thread.sink.split_crit_edge, %do.body388.cleanup429.thread.sink.split_crit_edge, %do.body376.cleanup429.thread.sink.split_crit_edge, %do.body361.cleanup429.thread.sink.split_crit_edge
  %nfp_flower_calculate_key_layers.__msg.17.sink = phi ptr [ @nfp_flower_calculate_key_layers.__msg.17, %do.body361.cleanup429.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.18, %do.body376.cleanup429.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.19, %do.body388.cleanup429.thread.sink.split_crit_edge ], [ @nfp_flower_calculate_key_layers.__msg.20, %do.body419.cleanup429.thread.sink.split_crit_edge ]
  %210 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %nfp_flower_calculate_key_layers.__msg.17.sink, ptr %extack, align 4
  br label %cleanup429.thread

cleanup429.thread:                                ; preds = %cleanup429.thread.sink.split, %do.body419.cleanup429.thread_crit_edge, %do.body388.cleanup429.thread_crit_edge, %do.body376.cleanup429.thread_crit_edge, %do.body361.cleanup429.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcp) #14
  br label %cleanup457

cleanup429:                                       ; preds = %sw.bb413, %sw.bb408, %if.end396.cleanup429_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcp) #14
  br label %if.end433

if.end433:                                        ; preds = %cleanup429, %if.end353.if.end433_crit_edge
  %211 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rule, align 8
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %212, align 4
  %and.i.i589 = and i32 %214, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i589)
  %tobool.i.i590.not = icmp eq i32 %and.i.i589, 0
  br i1 %tobool.i.i590.not, label %if.end433.if.end453_crit_edge, label %if.then435

if.end433.if.end453_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end453

if.then435:                                       ; preds = %if.end433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctl) #14
  %215 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr inttoptr (i32 -1 to ptr), ptr %ctl, align 4, !annotation !182
  %216 = getelementptr inbounds %struct.flow_match_control, ptr %ctl, i32 0, i32 1
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr inttoptr (i32 -1 to ptr), ptr %216, align 4, !annotation !182
  call void @flow_rule_match_control(ptr noundef %rule, ptr noundef nonnull %ctl) #14
  %218 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ctl, align 4
  %flags437 = getelementptr inbounds %struct.flow_dissector_key_control, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %flags437 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %flags437, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %221)
  %tobool439.not = icmp ult i32 %221, 4
  br i1 %tobool439.not, label %cleanup450, label %do.body441

do.body441:                                       ; preds = %if.then435
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calculate_key_layers.__msg.21) #14
  %tobool443.not = icmp eq ptr %extack, null
  br i1 %tobool443.not, label %do.body441.cleanup450.thread_crit_edge, label %if.then444

do.body441.cleanup450.thread_crit_edge:           ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup450.thread

if.then444:                                       ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #16
  %222 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @nfp_flower_calculate_key_layers.__msg.21, ptr %extack, align 4
  br label %cleanup450.thread

cleanup450.thread:                                ; preds = %if.then444, %do.body441.cleanup450.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctl) #14
  br label %cleanup457

cleanup450:                                       ; preds = %if.then435
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctl) #14
  br label %if.end453

if.end453:                                        ; preds = %cleanup450, %if.end433.if.end453_crit_edge
  %223 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %key_layer, align 1
  %key_layer454 = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %ret_key_ls, i32 0, i32 1
  %225 = ptrtoint ptr %key_layer454 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %key_layer454, align 4
  %226 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %key_layer_two, align 4
  %228 = ptrtoint ptr %ret_key_ls to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %ret_key_ls, align 4
  %229 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %key_size, align 4
  %key_size456 = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %ret_key_ls, i32 0, i32 2
  %231 = ptrtoint ptr %key_size456 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %key_size456, align 4
  br label %cleanup457

cleanup457.critedge561:                           ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vlan) #14
  br label %cleanup457

cleanup457.critedge563:                           ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cvlan) #14
  br label %cleanup457

cleanup457:                                       ; preds = %cleanup457.critedge563, %cleanup457.critedge561, %if.end453, %cleanup450.thread, %cleanup429.thread, %if.then348, %do.body345.cleanup457_crit_edge, %if.then314, %do.body311.cleanup457_crit_edge, %if.then303, %do.body300.cleanup457_crit_edge, %if.then285, %do.body282.cleanup457_crit_edge, %cleanup250.thread, %if.then70, %if.then40, %if.then19, %do.body16.cleanup457_crit_edge, %if.then4, %do.body.cleanup457_crit_edge
  %retval.9 = phi i32 [ 0, %if.end453 ], [ -95, %if.then4 ], [ -95, %do.body.cleanup457_crit_edge ], [ -95, %if.then19 ], [ -95, %do.body16.cleanup457_crit_edge ], [ -95, %if.then40 ], [ -95, %cleanup457.critedge561 ], [ -95, %cleanup457.critedge563 ], [ -95, %if.then70 ], [ -95, %if.then285 ], [ -95, %do.body282.cleanup457_crit_edge ], [ -95, %if.then303 ], [ -95, %do.body300.cleanup457_crit_edge ], [ -95, %if.then314 ], [ -95, %do.body311.cleanup457_crit_edge ], [ -95, %if.then348 ], [ -95, %do.body345.cleanup457_crit_edge ], [ %retval.4.ph, %cleanup250.thread ], [ -95, %cleanup429.thread ], [ -95, %cleanup450.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_size) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %key_layer) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_layer_two) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %basic) #14
  ret i32 %retval.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_opts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_calc_udp_tun_layer(ptr nocapture noundef readonly %enc_ports, ptr noundef readonly %enc_op, ptr nocapture noundef %key_layer_two, ptr nocapture noundef %key_layer, ptr nocapture noundef %key_size, ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %tun_type, i1 noundef zeroext %ipv6, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr inbounds %struct.anon.247, ptr %enc_ports, i32 0, i32 1
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dst, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %1, label %do.body59 [
    i16 4789, label %sw.bb
    i16 6081, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %tun_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %tun_type, align 4
  %4 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %key_layer, align 1
  %6 = or i8 %5, -128
  store i8 %6, ptr %key_layer, align 1
  br i1 %ipv6, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %7 = or i8 %5, -127
  %8 = ptrtoint ptr %key_layer to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %key_layer, align 1
  %9 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key_size, align 4
  %add = add i32 %10, 4
  store i32 %add, ptr %key_size, align 4
  %11 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_layer_two, align 4
  %or6 = or i32 %12, 128
  store i32 %or6, ptr %key_layer_two, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %.sink96 = phi i32 [ 44, %if.then ], [ 20, %sw.bb.if.end_crit_edge ]
  %13 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key_size, align 4
  %add8 = add i32 %14, %.sink96
  store i32 %add8, ptr %key_size, align 4
  %tobool9.not = icmp eq ptr %enc_op, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calc_udp_tun_layer.__msg) #14
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nfp_flower_calc_udp_tun_layer.__msg, ptr %extack, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %flower_ext_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 4
  %16 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %flower_ext_feats, align 8
  %and = and i64 %17, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool16.not = icmp eq i64 %and, 0
  br i1 %tobool16.not, label %do.body18, label %if.end26

do.body18:                                        ; preds = %sw.bb15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calc_udp_tun_layer.__msg.31) #14
  %tobool20.not = icmp eq ptr %extack, null
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %if.then21

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nfp_flower_calc_udp_tun_layer.__msg.31, ptr %extack, align 4
  br label %cleanup

if.end26:                                         ; preds = %sw.bb15
  %19 = ptrtoint ptr %tun_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %tun_type, align 4
  %20 = ptrtoint ptr %key_layer to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %key_layer, align 1
  %22 = or i8 %21, 1
  store i8 %22, ptr %key_layer, align 1
  %23 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_size, align 4
  %add30 = add i32 %24, 4
  store i32 %add30, ptr %key_size, align 4
  %25 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_layer_two, align 4
  %spec.select.v = select i1 %ipv6, i32 160, i32 32
  %spec.select = or i32 %26, %spec.select.v
  %spec.select98 = select i1 %ipv6, i32 44, i32 20
  store i32 %spec.select, ptr %key_layer_two, align 4
  %27 = load i32, ptr %key_size, align 4
  %add37 = add i32 %27, %spec.select98
  store i32 %add37, ptr %key_size, align 4
  %tobool39.not = icmp eq ptr %enc_op, null
  br i1 %tobool39.not, label %if.end26.cleanup_crit_edge, label %if.end41

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end41:                                         ; preds = %if.end26
  %28 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %flower_ext_feats, align 8
  %and43 = and i64 %29, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and43)
  %tobool44.not = icmp eq i64 %and43, 0
  br i1 %tobool44.not, label %do.body46, label %if.end54

do.body46:                                        ; preds = %if.end41
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calc_udp_tun_layer.__msg.32) #14
  %tobool48.not = icmp eq ptr %extack, null
  br i1 %tobool48.not, label %do.body46.cleanup_crit_edge, label %if.then49

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then49:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nfp_flower_calc_udp_tun_layer.__msg.32, ptr %extack, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end41
  %len.i = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %enc_op, i32 0, i32 1
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %32)
  %cmp.i = icmp ugt i8 %32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %32)
  %cmp5.i = icmp ugt i8 %32, 8
  %or.cond19.i = select i1 %ipv6, i1 %cmp5.i, i1 %cmp.i
  br i1 %or.cond19.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %if.end54
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calc_opt_layer.__msg) #14
  %tobool7.not.i = icmp eq ptr %extack, null
  br i1 %tobool7.not.i, label %do.body.i.cleanup_crit_edge, label %if.then8.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nfp_flower_calc_opt_layer.__msg, ptr %extack, align 4
  br label %cleanup

if.end9.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp12.not.i = icmp eq i8 %32, 0
  br i1 %cmp12.not.i, label %if.end9.i.cleanup_crit_edge, label %if.then14.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %key_layer_two to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key_layer_two, align 4
  %or.i = or i32 %35, 64
  store i32 %or.i, ptr %key_layer_two, align 4
  %36 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_size, align 4
  %add.i = add i32 %37, 32
  store i32 %add.i, ptr %key_size, align 4
  br label %cleanup

do.body59:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_calc_udp_tun_layer.__msg.33) #14
  %tobool61.not = icmp eq ptr %extack, null
  br i1 %tobool61.not, label %do.body59.cleanup_crit_edge, label %if.then62

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then62:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @nfp_flower_calc_udp_tun_layer.__msg.33, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.body59.cleanup_crit_edge, %if.then14.i, %if.end9.i.cleanup_crit_edge, %if.then8.i, %do.body.i.cleanup_crit_edge, %if.then49, %do.body46.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then21, %do.body18.cleanup_crit_edge, %if.then12, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then12 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then21 ], [ -95, %do.body18.cleanup_crit_edge ], [ -95, %if.then49 ], [ -95, %do.body46.cleanup_crit_edge ], [ -95, %if.then62 ], [ -95, %do.body59.cleanup_crit_edge ], [ -95, %if.then8.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @nfp_fl_netdev_is_tunnel_type(ptr nocapture noundef readonly %netdev, i32 noundef %tun_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.netif_is_geneve.exit_crit_edge, label %netif_is_vxlan.exit

entry.netif_is_geneve.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_is_geneve.exit

netif_is_vxlan.exit:                              ; preds = %entry
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(6) @.str.34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then, label %netif_is_gretap.exit

if.then:                                          ; preds = %netif_is_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tun_type)
  %cmp = icmp eq i32 %tun_type, 2
  br label %return

netif_is_gretap.exit:                             ; preds = %netif_is_vxlan.exit
  %4 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kind.i, align 4
  %call.i18 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(7) @.str.29) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool2.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool2.not.i19, label %netif_is_gretap.exit.if.then3_crit_edge, label %netif_is_ip6gretap.exit

netif_is_gretap.exit.if.then3_crit_edge:          ; preds = %netif_is_gretap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

netif_is_ip6gretap.exit:                          ; preds = %netif_is_gretap.exit
  %6 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kind.i, align 4
  %call.i24 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(10) @.str.30) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool2.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool2.not.i25, label %netif_is_ip6gretap.exit.if.then3_crit_edge, label %land.rhs.i32

netif_is_ip6gretap.exit.if.then3_crit_edge:       ; preds = %netif_is_ip6gretap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.then3:                                         ; preds = %netif_is_ip6gretap.exit.if.then3_crit_edge, %netif_is_gretap.exit.if.then3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tun_type)
  %cmp4 = icmp eq i32 %tun_type, 1
  br label %return

land.rhs.i32:                                     ; preds = %netif_is_ip6gretap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kind.i, align 4
  %call.i30 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(7) @.str.35) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool2.not.i31 = icmp eq i32 %call.i30, 0
  br label %netif_is_geneve.exit

netif_is_geneve.exit:                             ; preds = %land.rhs.i32, %entry.netif_is_geneve.exit_crit_edge
  %10 = phi i1 [ %tobool2.not.i31, %land.rhs.i32 ], [ false, %entry.netif_is_geneve.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %tun_type)
  %cmp8 = icmp eq i32 %tun_type, 4
  %spec.select = and i1 %cmp8, %10
  br label %return

return:                                           ; preds = %netif_is_geneve.exit, %if.then3, %if.then
  %retval.0 = phi i1 [ %cmp, %if.then ], [ %cmp4, %if.then3 ], [ %spec.select, %netif_is_geneve.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_tcp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_flower_allocate_new(ptr nocapture noundef readonly %key_layer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 88) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_size = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %key_layer, i32 0, i32 2
  %1 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key_size, align 4
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %call7.i, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #19
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 7
  %4 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i, ptr %unmasked_data, align 8
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end.err_free_flow_crit_edge, label %if.end6

if.end.err_free_flow_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_flow

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_size, align 4
  %conv8 = trunc i32 %6 to i8
  %mask_len = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %mask_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv8, ptr %mask_len, align 1
  %call9.i71 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #19
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 8
  %8 = ptrtoint ptr %mask_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i71, ptr %mask_data, align 4
  %tobool13.not = icmp eq ptr %call9.i71, null
  br i1 %tobool13.not, label %if.end6.err_free_unmasked_crit_edge, label %if.end15

if.end6.err_free_unmasked_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_unmasked

if.end15:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 1216) #18
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 9
  %10 = ptrtoint ptr %action_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i84, ptr %action_data, align 8
  %tobool18.not = icmp eq ptr %call7.i84, null
  br i1 %tobool18.not, label %err_free_mask, label %if.end20

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %nfp_tun_ipv4_addr = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 4
  %11 = ptrtoint ptr %nfp_tun_ipv4_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nfp_tun_ipv4_addr, align 4
  %nfp_tun_ipv6 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 5
  %12 = ptrtoint ptr %nfp_tun_ipv6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %nfp_tun_ipv6, align 8
  %flags = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %flags, align 1
  %linked_flows = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 10
  %14 = ptrtoint ptr %linked_flows to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %linked_flows, ptr %linked_flows, align 4
  %prev.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %linked_flows, ptr %prev.i, align 8
  %in_hw = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 11
  %16 = ptrtoint ptr %in_hw to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %in_hw, align 4
  %pre_tun_rule = getelementptr inbounds %struct.nfp_fl_payload, ptr %call7.i, i32 0, i32 12
  %17 = ptrtoint ptr %pre_tun_rule to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pre_tun_rule, align 8
  br label %cleanup

err_free_mask:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mask_data, align 4
  tail call void @kfree(ptr noundef %19) #14
  br label %err_free_unmasked

err_free_unmasked:                                ; preds = %err_free_mask, %if.end6.err_free_unmasked_crit_edge
  %20 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unmasked_data, align 8
  tail call void @kfree(ptr noundef %21) #14
  br label %err_free_flow

err_free_flow:                                    ; preds = %err_free_unmasked, %if.end.err_free_flow_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_free_flow, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end20 ], [ null, %err_free_flow ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_merge_offloaded_flows(ptr noundef %app, ptr noundef %sub_flow1, ptr noundef %sub_flow2) local_unnamed_addr #0 align 64 {
entry:
  %sub_flow1_merge.i = alloca %struct.nfp_flower_merge_check, align 4
  %sub_flow2_merge.i = alloca %struct.nfp_flower_merge_check, align 4
  %merge_key_ls = alloca %struct.nfp_fl_key_ls, align 4
  %parent_ctx = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %merge_key_ls) #14
  %2 = call ptr @memset(ptr %merge_key_ls, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_ctx) #14
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b346 = load i1, ptr @nfp_flower_merge_offloaded_flows.__already_done, align 1
  br i1 %.b346, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !183

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_flower_merge_offloaded_flows.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1012, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef 1012) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %cmp = icmp eq ptr %sub_flow1, %sub_flow2
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %lor.lhs.false

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end30
  %tc_flower_cookie.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow1, i32 0, i32 1
  %3 = ptrtoint ptr %tc_flower_cookie.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tc_flower_cookie.i, align 4
  %5 = ptrtoint ptr %sub_flow1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp.i = icmp eq i32 %4, %5
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false39

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %tc_flower_cookie.i347 = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow2, i32 0, i32 1
  %6 = ptrtoint ptr %tc_flower_cookie.i347 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tc_flower_cookie.i347, align 4
  %8 = ptrtoint ptr %sub_flow2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp.i348 = icmp eq i32 %7, %8
  br i1 %cmp.i348, label %lor.lhs.false39.cleanup_crit_edge, label %if.end42

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false39
  %host_ctx_id = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %sub_flow1, i32 0, i32 4
  %9 = ptrtoint ptr %host_ctx_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %host_ctx_id, align 4
  %conv = zext i32 %10 to i64
  %shl = shl nuw i64 %conv, 32
  %host_ctx_id44 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %sub_flow2, i32 0, i32 4
  %11 = ptrtoint ptr %host_ctx_id44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_ctx_id44, align 4
  %conv45 = zext i32 %12 to i64
  %or = or i64 %shl, %conv45
  %13 = ptrtoint ptr %parent_ctx to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or, ptr %parent_ctx, align 8
  %merge_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @merge_table_params to i32))
  %.unpack = load i32, ptr @merge_table_params, align 4
  %14 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 2) to i32))
  %.unpack310 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 2), align 4
  %15 = insertvalue [7 x i32] %14, i32 %.unpack310, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 4) to i32))
  %.unpack311 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 4), align 4
  %16 = insertvalue [7 x i32] %15, i32 %.unpack311, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 5) to i32))
  %.unpack312 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 5), align 4
  %17 = insertvalue [7 x i32] %16, i32 %.unpack312, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 7) to i32))
  %.unpack313 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 7), align 4
  %18 = insertvalue [7 x i32] %17, i32 %.unpack313, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 8) to i32))
  %.unpack314 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 8), align 4
  %19 = insertvalue [7 x i32] %18, i32 %.unpack314, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 9) to i32))
  %.unpack315 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 9), align 4
  %20 = insertvalue [7 x i32] %19, i32 %.unpack315, 6
  %call46 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %merge_table, ptr noundef nonnull %parent_ctx, [7 x i32] %20)
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end60, label %do.body49

do.body49:                                        ; preds = %if.end42
  %call50 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body49.cleanup_crit_edge, label %do.end55

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #16
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %21 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpp, align 4
  %call56 = call ptr @nfp_cpp_device(ptr noundef %22) #14
  %parent = getelementptr inbounds %struct.device, ptr %call56, i32 0, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.23) #20
  br label %cleanup

if.end60:                                         ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sub_flow1_merge.i) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sub_flow2_merge.i) #14
  %25 = call ptr @memset(ptr %sub_flow2_merge.i, i32 255, i32 64)
  %mask_data.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow1, i32 0, i32 8
  %26 = ptrtoint ptr %mask_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mask_data.i.i, align 4
  %28 = call ptr @memset(ptr %sub_flow1_merge.i, i32 0, i32 64)
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %27, align 2
  %conv.i.i = zext i8 %30 to i32
  %tci.i.i = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %27, i32 0, i32 2
  %31 = ptrtoint ptr %tci.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tci.i.i, align 2
  %33 = ptrtoint ptr %sub_flow1_merge.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %sub_flow1_merge.i, align 4
  %and4.i.i = shl nuw nsw i32 %conv.i.i, 2
  %34 = and i32 %and4.i.i, 4
  %spec.select.i.i = getelementptr i8, ptr %27, i32 %34
  %add.ptr9.i.i = getelementptr i8, ptr %spec.select.i.i, i32 8
  %and11.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end60.if.end17.i.i_crit_edge, label %if.then13.i.i

if.end60.if.end17.i.i_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %l2.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %l2.i.i, ptr %add.ptr9.i.i, i32 16)
  %add.ptr16.i.i = getelementptr i8, ptr %spec.select.i.i, i32 24
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.end60.if.end17.i.i_crit_edge
  %mask.1.i.i = phi ptr [ %add.ptr16.i.i, %if.then13.i.i ], [ %add.ptr9.i.i, %if.end60.if.end17.i.i_crit_edge ]
  %and19.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end17.i.i.if.end25.i.i_crit_edge, label %if.then21.i.i

if.end17.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i.i

if.then21.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %l4.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 2
  %36 = ptrtoint ptr %mask.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %mask.1.i.i, align 1
  %38 = ptrtoint ptr %l4.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %l4.i.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %mask.1.i.i, i32 4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then21.i.i, %if.end17.i.i.if.end25.i.i_crit_edge
  %mask.2.i.i = phi ptr [ %add.ptr24.i.i, %if.then21.i.i ], [ %mask.1.i.i, %if.end17.i.i.if.end25.i.i_crit_edge ]
  %and27.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end25.i.i.if.end31.i.i_crit_edge, label %if.then29.i.i

if.end25.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i.i

if.then29.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3
  %40 = call ptr @memcpy(ptr %39, ptr %mask.2.i.i, i32 12)
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.end25.i.i.if.end31.i.i_crit_edge
  %and33.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end31.i.i.if.end.i_crit_edge, label %if.then35.i.i

if.end31.i.i.if.end.i_crit_edge:                  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then35.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3
  %42 = call ptr @memcpy(ptr %41, ptr %mask.2.i.i, i32 40)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then35.i.i, %if.end31.i.i.if.end.i_crit_edge
  %mask_data.i30.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow2, i32 0, i32 8
  %43 = ptrtoint ptr %mask_data.i30.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mask_data.i30.i, align 4
  %45 = call ptr @memset(ptr %sub_flow2_merge.i, i32 0, i32 64)
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %44, align 2
  %conv.i31.i = zext i8 %47 to i32
  %and.i32.i = and i32 %conv.i31.i, 193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.end.i.i, label %if.end.i.nfp_flower_can_merge.exit.thread_crit_edge

if.end.i.nfp_flower_can_merge.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_can_merge.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %tci.i34.i = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %44, i32 0, i32 2
  %48 = ptrtoint ptr %tci.i34.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tci.i34.i, align 2
  %50 = ptrtoint ptr %sub_flow2_merge.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %sub_flow2_merge.i, align 4
  %and4.i35.i = shl nuw nsw i32 %conv.i31.i, 2
  %51 = and i32 %and4.i35.i, 4
  %spec.select.i36.i = getelementptr i8, ptr %44, i32 %51
  %add.ptr9.i37.i = getelementptr i8, ptr %spec.select.i36.i, i32 8
  %and11.i38.i = and i32 %conv.i31.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i38.i)
  %tobool12.not.i39.i = icmp eq i32 %and11.i38.i, 0
  br i1 %tobool12.not.i39.i, label %if.end.i.i.if.end17.i46.i_crit_edge, label %if.then13.i42.i

if.end.i.i.if.end17.i46.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i46.i

if.then13.i42.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %l2.i40.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow2_merge.i, i32 0, i32 1
  %52 = call ptr @memcpy(ptr %l2.i40.i, ptr %add.ptr9.i37.i, i32 16)
  %add.ptr16.i41.i = getelementptr i8, ptr %spec.select.i36.i, i32 24
  br label %if.end17.i46.i

if.end17.i46.i:                                   ; preds = %if.then13.i42.i, %if.end.i.i.if.end17.i46.i_crit_edge
  %mask.1.i43.i = phi ptr [ %add.ptr16.i41.i, %if.then13.i42.i ], [ %add.ptr9.i37.i, %if.end.i.i.if.end17.i46.i_crit_edge ]
  %and19.i44.i = and i32 %conv.i31.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i44.i)
  %tobool20.not.i45.i = icmp eq i32 %and19.i44.i, 0
  br i1 %tobool20.not.i45.i, label %if.end17.i46.i.if.end25.i53.i_crit_edge, label %if.then21.i49.i

if.end17.i46.i.if.end25.i53.i_crit_edge:          ; preds = %if.end17.i46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i53.i

if.then21.i49.i:                                  ; preds = %if.end17.i46.i
  call void @__sanitizer_cov_trace_pc() #16
  %l4.i47.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow2_merge.i, i32 0, i32 2
  %53 = ptrtoint ptr %mask.1.i43.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %mask.1.i43.i, align 1
  %55 = ptrtoint ptr %l4.i47.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %l4.i47.i, align 4
  %add.ptr24.i48.i = getelementptr i8, ptr %mask.1.i43.i, i32 4
  br label %if.end25.i53.i

if.end25.i53.i:                                   ; preds = %if.then21.i49.i, %if.end17.i46.i.if.end25.i53.i_crit_edge
  %mask.2.i50.i = phi ptr [ %add.ptr24.i48.i, %if.then21.i49.i ], [ %mask.1.i43.i, %if.end17.i46.i.if.end25.i53.i_crit_edge ]
  %and27.i51.i = and i32 %conv.i31.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i51.i)
  %tobool28.not.i52.i = icmp eq i32 %and27.i51.i, 0
  br i1 %tobool28.not.i52.i, label %if.end25.i53.i.if.end31.i57.i_crit_edge, label %if.then29.i54.i

if.end25.i53.i.if.end31.i57.i_crit_edge:          ; preds = %if.end25.i53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i57.i

if.then29.i54.i:                                  ; preds = %if.end25.i53.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = getelementptr inbounds %struct.anon.256, ptr %sub_flow2_merge.i, i32 0, i32 3
  %57 = call ptr @memcpy(ptr %56, ptr %mask.2.i50.i, i32 12)
  br label %if.end31.i57.i

if.end31.i57.i:                                   ; preds = %if.then29.i54.i, %if.end25.i53.i.if.end31.i57.i_crit_edge
  %and33.i55.i = and i32 %conv.i31.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i55.i)
  %tobool34.not.i56.i = icmp eq i32 %and33.i55.i, 0
  br i1 %tobool34.not.i56.i, label %if.end31.i57.i.if.end4.i_crit_edge, label %if.then35.i58.i

if.end31.i57.i.if.end4.i_crit_edge:               ; preds = %if.end31.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then35.i58.i:                                  ; preds = %if.end31.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = getelementptr inbounds %struct.anon.256, ptr %sub_flow2_merge.i, i32 0, i32 3
  %59 = call ptr @memcpy(ptr %58, ptr %mask.2.i50.i, i32 40)
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then35.i58.i, %if.end31.i57.i.if.end4.i_crit_edge
  %act_len.i.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %sub_flow1, i32 0, i32 2
  %60 = ptrtoint ptr %act_len.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %act_len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp224.not.i.i = icmp eq i8 %61, 0
  br i1 %cmp224.not.i.i, label %if.end4.i.nfp_flower_can_merge.exit.thread_crit_edge, label %while.body.lr.ph.i.i

if.end4.i.nfp_flower_can_merge.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_can_merge.exit.thread

while.body.lr.ph.i.i:                             ; preds = %if.end4.i
  %action_data.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow1, i32 0, i32 9
  %l496.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 2
  %62 = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3
  %ttl84.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 0, i32 2
  %ipv6_flow_label_exthdr.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 1
  %ipv6_dst.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 3
  %ipv6_src.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 2
  %l221.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1
  %mac_src.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 1
  %arrayidx103.1.i.i = getelementptr inbounds i8, ptr %l496.i.i, i32 1
  %arrayidx103.2.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 2, i32 1
  %arrayidx103.3.i.i = getelementptr inbounds i8, ptr %l496.i.i, i32 3
  %arrayidx76.1.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx76.2.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx76.3.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 3, i32 0, i32 0, i32 3
  %arrayidx62.1.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 1
  %arrayidx62.2.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 2
  %arrayidx62.3.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 3
  %arrayidx23.1.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 0, i32 1
  %arrayidx23.2.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 0, i32 2
  %arrayidx23.3.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 0, i32 3
  %arrayidx23.4.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 0, i32 4
  %arrayidx23.5.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 0, i32 5
  %arrayidx36.1.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 1, i32 1
  %arrayidx36.2.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 1, i32 2
  %arrayidx36.3.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 1, i32 3
  %arrayidx36.4.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 1, i32 4
  %arrayidx36.5.i.i = getelementptr inbounds %struct.anon.256, ptr %sub_flow1_merge.i, i32 0, i32 1, i32 1, i32 5
  %63 = ptrtoint ptr %action_data.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %action_data.i.i, align 4
  %conv.i60.i = zext i8 %61 to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %sw.epilog.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %act_out.0.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %act_out.1.i, %sw.epilog.i.i.while.body.i.i_crit_edge ]
  %ipv6_tun.0.off0226.i.i = phi i1 [ false, %while.body.lr.ph.i.i ], [ %ipv6_tun.1.off0.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ]
  %act_off.0225.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add115.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %64, i32 %act_off.0225.i.i
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %66, label %while.body.i.i.nfp_flower_can_merge.exit.thread_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb3.i.i
    i8 2, label %sw.bb7.i.i
    i8 6, label %sw.bb9.i.i
    i8 7, label %for.cond.preheader.i.i
    i8 9, label %sw.bb43.i.i
    i8 10, label %sw.bb46.i.i
    i8 11, label %for.cond57.preheader.i.i
    i8 12, label %for.cond68.preheader.i.i
    i8 13, label %sw.bb81.i.i
    i8 14, label %while.body.i.i.sw.bb95.i.i_crit_edge
    i8 15, label %while.body.i.i.sw.bb95.i.i_crit_edge357
    i8 17, label %sw.bb110.i.i
    i8 16, label %while.body.i.i.sw.epilog.i.i_crit_edge
    i8 26, label %while.body.i.i.sw.epilog.i.i_crit_edge358
  ]

while.body.i.i.sw.epilog.i.i_crit_edge358:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

while.body.i.i.sw.epilog.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

while.body.i.i.sw.bb95.i.i_crit_edge357:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb95.i.i

while.body.i.i.sw.bb95.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb95.i.i

while.body.i.i.nfp_flower_can_merge.exit.thread_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_can_merge.exit.thread

for.cond68.preheader.i.i:                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv672.i.i = getelementptr inbounds %struct.nfp_fl_set_ipv6_addr, ptr %arrayidx.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %ipv672.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ipv672.i.i, align 4
  %70 = ptrtoint ptr %ipv6_dst.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ipv6_dst.i.i, align 4
  %or77.i.i = or i32 %71, %69
  store i32 %or77.i.i, ptr %ipv6_dst.i.i, align 4
  %arrayidx73.1.i.i = getelementptr [4 x %struct.anon.258], ptr %ipv672.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx73.1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx73.1.i.i, align 4
  %74 = ptrtoint ptr %arrayidx76.1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx76.1.i.i, align 4
  %or77.1.i.i = or i32 %75, %73
  store i32 %or77.1.i.i, ptr %arrayidx76.1.i.i, align 4
  %arrayidx73.2.i.i = getelementptr [4 x %struct.anon.258], ptr %ipv672.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx73.2.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx73.2.i.i, align 4
  %78 = ptrtoint ptr %arrayidx76.2.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx76.2.i.i, align 4
  %or77.2.i.i = or i32 %79, %77
  store i32 %or77.2.i.i, ptr %arrayidx76.2.i.i, align 4
  %arrayidx73.3.i.i = getelementptr [4 x %struct.anon.258], ptr %ipv672.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx73.3.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx73.3.i.i, align 4
  %82 = ptrtoint ptr %arrayidx76.3.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx76.3.i.i, align 4
  %or77.3.i.i = or i32 %83, %81
  store i32 %or77.3.i.i, ptr %arrayidx76.3.i.i, align 4
  br label %sw.epilog.i.i

for.cond57.preheader.i.i:                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6.i.i = getelementptr inbounds %struct.nfp_fl_set_ipv6_addr, ptr %arrayidx.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %ipv6.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ipv6.i.i, align 4
  %86 = ptrtoint ptr %ipv6_src.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ipv6_src.i.i, align 4
  %or63.i.i = or i32 %87, %85
  store i32 %or63.i.i, ptr %ipv6_src.i.i, align 4
  %arrayidx61.1.i.i = getelementptr [4 x %struct.anon.258], ptr %ipv6.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %arrayidx61.1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx61.1.i.i, align 4
  %90 = ptrtoint ptr %arrayidx62.1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx62.1.i.i, align 4
  %or63.1.i.i = or i32 %91, %89
  store i32 %or63.1.i.i, ptr %arrayidx62.1.i.i, align 4
  %arrayidx61.2.i.i = getelementptr [4 x %struct.anon.258], ptr %ipv6.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %arrayidx61.2.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx61.2.i.i, align 4
  %94 = ptrtoint ptr %arrayidx62.2.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx62.2.i.i, align 4
  %or63.2.i.i = or i32 %95, %93
  store i32 %or63.2.i.i, ptr %arrayidx62.2.i.i, align 4
  %arrayidx61.3.i.i = getelementptr [4 x %struct.anon.258], ptr %ipv6.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %arrayidx61.3.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx61.3.i.i, align 4
  %98 = ptrtoint ptr %arrayidx62.3.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx62.3.i.i, align 4
  %or63.3.i.i = or i32 %99, %97
  store i32 %or63.3.i.i, ptr %arrayidx62.3.i.i, align 4
  br label %sw.epilog.i.i

for.cond.preheader.i.i:                           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %eth_addr_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_eth, ptr %arrayidx.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %eth_addr_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %eth_addr_mask.i.i, align 1
  %102 = ptrtoint ptr %l221.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %l221.i.i, align 4
  %or213.i.i = or i8 %103, %101
  store i8 %or213.i.i, ptr %l221.i.i, align 4
  %arrayidx19.1.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx19.1.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx19.1.i.i, align 1
  %106 = ptrtoint ptr %arrayidx23.1.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx23.1.i.i, align 1
  %or213.1.i.i = or i8 %107, %105
  store i8 %or213.1.i.i, ptr %arrayidx23.1.i.i, align 1
  %arrayidx19.2.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %arrayidx19.2.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx19.2.i.i, align 1
  %110 = ptrtoint ptr %arrayidx23.2.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx23.2.i.i, align 2
  %or213.2.i.i = or i8 %111, %109
  store i8 %or213.2.i.i, ptr %arrayidx23.2.i.i, align 2
  %arrayidx19.3.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %arrayidx19.3.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx19.3.i.i, align 1
  %114 = ptrtoint ptr %arrayidx23.3.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx23.3.i.i, align 1
  %or213.3.i.i = or i8 %115, %113
  store i8 %or213.3.i.i, ptr %arrayidx23.3.i.i, align 1
  %arrayidx19.4.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 4
  %116 = ptrtoint ptr %arrayidx19.4.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx19.4.i.i, align 1
  %118 = ptrtoint ptr %arrayidx23.4.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx23.4.i.i, align 4
  %or213.4.i.i = or i8 %119, %117
  store i8 %or213.4.i.i, ptr %arrayidx23.4.i.i, align 4
  %arrayidx19.5.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 5
  %120 = ptrtoint ptr %arrayidx19.5.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx19.5.i.i, align 1
  %122 = ptrtoint ptr %arrayidx23.5.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx23.5.i.i, align 1
  %or213.5.i.i = or i8 %123, %121
  store i8 %or213.5.i.i, ptr %arrayidx23.5.i.i, align 1
  %arrayidx32.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 6
  %124 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx32.i.i, align 1
  %126 = ptrtoint ptr %mac_src.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %mac_src.i.i, align 2
  %or38212.i.i = or i8 %127, %125
  store i8 %or38212.i.i, ptr %mac_src.i.i, align 2
  %arrayidx32.1.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 7
  %128 = ptrtoint ptr %arrayidx32.1.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx32.1.i.i, align 1
  %130 = ptrtoint ptr %arrayidx36.1.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx36.1.i.i, align 1
  %or38212.1.i.i = or i8 %131, %129
  store i8 %or38212.1.i.i, ptr %arrayidx36.1.i.i, align 1
  %arrayidx32.2.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 8
  %132 = ptrtoint ptr %arrayidx32.2.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx32.2.i.i, align 1
  %134 = ptrtoint ptr %arrayidx36.2.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx36.2.i.i, align 4
  %or38212.2.i.i = or i8 %135, %133
  store i8 %or38212.2.i.i, ptr %arrayidx36.2.i.i, align 4
  %arrayidx32.3.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 9
  %136 = ptrtoint ptr %arrayidx32.3.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx32.3.i.i, align 1
  %138 = ptrtoint ptr %arrayidx36.3.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx36.3.i.i, align 1
  %or38212.3.i.i = or i8 %139, %137
  store i8 %or38212.3.i.i, ptr %arrayidx36.3.i.i, align 1
  %arrayidx32.4.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 10
  %140 = ptrtoint ptr %arrayidx32.4.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx32.4.i.i, align 1
  %142 = ptrtoint ptr %arrayidx36.4.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx36.4.i.i, align 2
  %or38212.4.i.i = or i8 %143, %141
  store i8 %or38212.4.i.i, ptr %arrayidx36.4.i.i, align 2
  %arrayidx32.5.i.i = getelementptr [12 x i8], ptr %eth_addr_mask.i.i, i32 0, i32 11
  %144 = ptrtoint ptr %arrayidx32.5.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx32.5.i.i, align 1
  %146 = ptrtoint ptr %arrayidx36.5.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx36.5.i.i, align 1
  %or38212.5.i.i = or i8 %147, %145
  store i8 %or38212.5.i.i, ptr %arrayidx36.5.i.i, align 1
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i = add i32 %act_out.0.i, 1
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %while.body.i.i
  %vlan_tci.i.i = getelementptr inbounds %struct.nfp_fl_push_vlan, ptr %arrayidx.i.i, i32 0, i32 3
  %148 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %vlan_tci.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool4.not.i.i = icmp eq i16 %149, 0
  br i1 %tobool4.not.i.i, label %sw.bb3.i.i.sw.epilog.i.i_crit_edge, label %if.then5.i.i

sw.bb3.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

if.then5.i.i:                                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %150 = ptrtoint ptr %sub_flow1_merge.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 -1, ptr %sub_flow1_merge.i, align 4
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %151 = ptrtoint ptr %sub_flow1_merge.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %sub_flow1_merge.i, align 4
  br label %sw.epilog.i.i

sw.bb9.i.i:                                       ; preds = %while.body.i.i
  %152 = ptrtoint ptr %l496.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %l496.i.i, align 4
  %153 = call ptr @memset(ptr %l221.i.i, i32 255, i32 12)
  br i1 %ipv6_tun.0.off0226.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %154 = call ptr @memset(ptr %62, i32 255, i32 40)
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %155 = call ptr @memset(ptr %62, i32 255, i32 12)
  br label %sw.epilog.i.i

sw.bb43.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv4_src_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_ip4_addrs, ptr %arrayidx.i.i, i32 0, i32 2
  %156 = ptrtoint ptr %ipv4_src_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ipv4_src_mask.i.i, align 4
  %158 = ptrtoint ptr %ipv6_flow_label_exthdr.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ipv6_flow_label_exthdr.i.i, align 4
  %or44.i.i = or i32 %159, %157
  store i32 %or44.i.i, ptr %ipv6_flow_label_exthdr.i.i, align 4
  %ipv4_dst_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_ip4_addrs, ptr %arrayidx.i.i, i32 0, i32 4
  %160 = ptrtoint ptr %ipv4_dst_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ipv4_dst_mask.i.i, align 4
  %162 = ptrtoint ptr %ipv6_src.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ipv6_src.i.i, align 4
  %or45.i.i = or i32 %163, %161
  store i32 %or45.i.i, ptr %ipv6_src.i.i, align 4
  br label %sw.epilog.i.i

sw.bb46.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv4_ttl_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_ip4_ttl_tos, ptr %arrayidx.i.i, i32 0, i32 1
  %164 = ptrtoint ptr %ipv4_ttl_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %ipv4_ttl_mask.i.i, align 2
  %166 = ptrtoint ptr %ttl84.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %ttl84.i.i, align 2
  %or49210.i.i = or i8 %167, %165
  store i8 %or49210.i.i, ptr %ttl84.i.i, align 2
  %ipv4_tos_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_ip4_ttl_tos, ptr %arrayidx.i.i, i32 0, i32 2
  %168 = ptrtoint ptr %ipv4_tos_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %ipv4_tos_mask.i.i, align 1
  %170 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %62, align 4
  %or54211.i.i = or i8 %171, %169
  store i8 %or54211.i.i, ptr %62, align 4
  br label %sw.epilog.i.i

sw.bb81.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ipv6_hop_limit_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_ipv6_tc_hl_fl, ptr %arrayidx.i.i, i32 0, i32 2
  %172 = ptrtoint ptr %ipv6_hop_limit_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %ipv6_hop_limit_mask.i.i, align 1
  %174 = ptrtoint ptr %ttl84.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %ttl84.i.i, align 2
  %or86208.i.i = or i8 %175, %173
  store i8 %or86208.i.i, ptr %ttl84.i.i, align 2
  %ipv6_tc_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_ipv6_tc_hl_fl, ptr %arrayidx.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %ipv6_tc_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %ipv6_tc_mask.i.i, align 2
  %178 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %62, align 4
  %or92209.i.i = or i8 %179, %177
  store i8 %or92209.i.i, ptr %62, align 4
  %ipv6_label_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_ipv6_tc_hl_fl, ptr %arrayidx.i.i, i32 0, i32 6
  %180 = ptrtoint ptr %ipv6_label_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ipv6_label_mask.i.i, align 4
  %182 = ptrtoint ptr %ipv6_flow_label_exthdr.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ipv6_flow_label_exthdr.i.i, align 4
  %or94.i.i = or i32 %183, %181
  store i32 %or94.i.i, ptr %ipv6_flow_label_exthdr.i.i, align 4
  br label %sw.epilog.i.i

sw.bb95.i.i:                                      ; preds = %while.body.i.i.sw.bb95.i.i_crit_edge, %while.body.i.i.sw.bb95.i.i_crit_edge357
  %tp_port_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_tport, ptr %arrayidx.i.i, i32 0, i32 2
  %184 = ptrtoint ptr %tp_port_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %tp_port_mask.i.i, align 1
  %186 = ptrtoint ptr %l496.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %l496.i.i, align 4
  %or105207.i.i = or i8 %187, %185
  store i8 %or105207.i.i, ptr %l496.i.i, align 4
  %arrayidx101.1.i.i = getelementptr [4 x i8], ptr %tp_port_mask.i.i, i32 0, i32 1
  %188 = ptrtoint ptr %arrayidx101.1.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx101.1.i.i, align 1
  %190 = ptrtoint ptr %arrayidx103.1.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx103.1.i.i, align 1
  %or105207.1.i.i = or i8 %191, %189
  store i8 %or105207.1.i.i, ptr %arrayidx103.1.i.i, align 1
  %arrayidx101.2.i.i = getelementptr [4 x i8], ptr %tp_port_mask.i.i, i32 0, i32 2
  %192 = ptrtoint ptr %arrayidx101.2.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx101.2.i.i, align 1
  %194 = ptrtoint ptr %arrayidx103.2.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx103.2.i.i, align 2
  %or105207.2.i.i = or i8 %195, %193
  store i8 %or105207.2.i.i, ptr %arrayidx103.2.i.i, align 2
  %arrayidx101.3.i.i = getelementptr [4 x i8], ptr %tp_port_mask.i.i, i32 0, i32 3
  %196 = ptrtoint ptr %arrayidx101.3.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx101.3.i.i, align 1
  %198 = ptrtoint ptr %arrayidx103.3.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx103.3.i.i, align 1
  %or105207.3.i.i = or i8 %199, %197
  store i8 %or105207.3.i.i, ptr %arrayidx103.3.i.i, align 1
  br label %sw.epilog.i.i

sw.bb110.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i.i = getelementptr inbounds %struct.nfp_fl_pre_tunnel, ptr %arrayidx.i.i, i32 0, i32 1
  %200 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %flags.i.i, align 2
  %202 = and i16 %201, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool112.i.i = icmp ne i16 %202, 0
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb110.i.i, %sw.bb95.i.i, %sw.bb81.i.i, %sw.bb46.i.i, %sw.bb43.i.i, %if.else.i.i, %if.then14.i.i, %sw.bb7.i.i, %if.then5.i.i, %sw.bb3.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i, %for.cond.preheader.i.i, %for.cond57.preheader.i.i, %for.cond68.preheader.i.i, %while.body.i.i.sw.epilog.i.i_crit_edge, %while.body.i.i.sw.epilog.i.i_crit_edge358
  %act_out.1.i = phi i32 [ %act_out.0.i, %while.body.i.i.sw.epilog.i.i_crit_edge ], [ %act_out.0.i, %while.body.i.i.sw.epilog.i.i_crit_edge358 ], [ %act_out.0.i, %sw.bb110.i.i ], [ %act_out.0.i, %sw.bb95.i.i ], [ %act_out.0.i, %sw.bb81.i.i ], [ %act_out.0.i, %for.cond68.preheader.i.i ], [ %act_out.0.i, %for.cond57.preheader.i.i ], [ %act_out.0.i, %sw.bb46.i.i ], [ %act_out.0.i, %sw.bb43.i.i ], [ %act_out.0.i, %for.cond.preheader.i.i ], [ %act_out.0.i, %if.then14.i.i ], [ %act_out.0.i, %if.else.i.i ], [ %act_out.0.i, %sw.bb7.i.i ], [ %act_out.0.i, %sw.bb3.i.i.sw.epilog.i.i_crit_edge ], [ %act_out.0.i, %if.then5.i.i ], [ %inc.i.i, %sw.bb.i.i ]
  %ipv6_tun.1.off0.i.i = phi i1 [ %ipv6_tun.0.off0226.i.i, %while.body.i.i.sw.epilog.i.i_crit_edge ], [ %ipv6_tun.0.off0226.i.i, %while.body.i.i.sw.epilog.i.i_crit_edge358 ], [ %tobool112.i.i, %sw.bb110.i.i ], [ %ipv6_tun.0.off0226.i.i, %sw.bb95.i.i ], [ %ipv6_tun.0.off0226.i.i, %sw.bb81.i.i ], [ %ipv6_tun.0.off0226.i.i, %for.cond68.preheader.i.i ], [ %ipv6_tun.0.off0226.i.i, %for.cond57.preheader.i.i ], [ %ipv6_tun.0.off0226.i.i, %sw.bb46.i.i ], [ %ipv6_tun.0.off0226.i.i, %sw.bb43.i.i ], [ %ipv6_tun.0.off0226.i.i, %for.cond.preheader.i.i ], [ true, %if.then14.i.i ], [ false, %if.else.i.i ], [ %ipv6_tun.0.off0226.i.i, %sw.bb7.i.i ], [ %ipv6_tun.0.off0226.i.i, %sw.bb3.i.i.sw.epilog.i.i_crit_edge ], [ %ipv6_tun.0.off0226.i.i, %if.then5.i.i ], [ %ipv6_tun.0.off0226.i.i, %sw.bb.i.i ]
  %len_lw.i.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx.i.i, i32 0, i32 1
  %203 = ptrtoint ptr %len_lw.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %len_lw.i.i, align 1
  %conv114.i.i = zext i8 %204 to i32
  %shl.i.i = shl nuw nsw i32 %conv114.i.i, 2
  %add115.i.i = add i32 %shl.i.i, %act_off.0225.i.i
  %cmp.i.i = icmp ult i32 %add115.i.i, %conv.i60.i
  br i1 %cmp.i.i, label %sw.epilog.i.i.while.body.i.i_crit_edge, label %if.end8.i

sw.epilog.i.i.while.body.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

if.end8.i:                                        ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %act_out.1.i)
  %cmp.not.i = icmp eq i32 %act_out.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp9.not.i = icmp eq i8 %66, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp9.not.i, i1 false
  br i1 %or.cond.i, label %if.end12.i, label %if.end8.i.nfp_flower_can_merge.exit.thread_crit_edge

if.end8.i.nfp_flower_can_merge.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_can_merge.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  %call.i.i = call i32 @__bitmap_andnot(ptr noundef nonnull %sub_flow2_merge.i, ptr noundef nonnull %sub_flow2_merge.i, ptr noundef nonnull %sub_flow1_merge.i, i32 noundef 512) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not.i, label %if.end64, label %if.end12.i.nfp_flower_can_merge.exit.thread_crit_edge

if.end12.i.nfp_flower_can_merge.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_can_merge.exit.thread

nfp_flower_can_merge.exit.thread:                 ; preds = %if.end12.i.nfp_flower_can_merge.exit.thread_crit_edge, %if.end8.i.nfp_flower_can_merge.exit.thread_crit_edge, %while.body.i.i.nfp_flower_can_merge.exit.thread_crit_edge, %if.end4.i.nfp_flower_can_merge.exit.thread_crit_edge, %if.end.i.nfp_flower_can_merge.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -95, %if.end4.i.nfp_flower_can_merge.exit.thread_crit_edge ], [ -95, %if.end.i.nfp_flower_can_merge.exit.thread_crit_edge ], [ -22, %if.end12.i.nfp_flower_can_merge.exit.thread_crit_edge ], [ -95, %if.end8.i.nfp_flower_can_merge.exit.thread_crit_edge ], [ -95, %while.body.i.i.nfp_flower_can_merge.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sub_flow2_merge.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sub_flow1_merge.i) #14
  br label %cleanup

if.end64:                                         ; preds = %if.end12.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sub_flow2_merge.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sub_flow1_merge.i) #14
  %205 = ptrtoint ptr %sub_flow1 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %sub_flow1, align 4
  %conv66 = zext i8 %206 to i32
  %key_size = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %merge_key_ls, i32 0, i32 2
  %207 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %conv66, ptr %key_size, align 4
  %call67 = call ptr @nfp_flower_allocate_new(ptr noundef nonnull %merge_key_ls)
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end64.cleanup_crit_edge, label %if.end70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end70:                                         ; preds = %if.end64
  %208 = ptrtoint ptr %call67 to i32
  %tc_flower_cookie = getelementptr inbounds %struct.nfp_fl_payload, ptr %call67, i32 0, i32 1
  %209 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %tc_flower_cookie, align 4
  %ingress_dev = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow1, i32 0, i32 6
  %210 = ptrtoint ptr %ingress_dev to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ingress_dev, align 4
  %ingress_dev71 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call67, i32 0, i32 6
  %212 = ptrtoint ptr %ingress_dev71 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %211, ptr %ingress_dev71, align 4
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call67, i32 0, i32 7
  %213 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %unmasked_data, align 4
  %unmasked_data72 = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow1, i32 0, i32 7
  %215 = ptrtoint ptr %unmasked_data72 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %unmasked_data72, align 4
  %217 = ptrtoint ptr %sub_flow1 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %sub_flow1, align 4
  %conv75 = zext i8 %218 to i32
  %219 = call ptr @memcpy(ptr %214, ptr %216, i32 %conv75)
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call67, i32 0, i32 8
  %220 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mask_data, align 4
  %222 = ptrtoint ptr %mask_data.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mask_data.i.i, align 4
  %mask_len = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %sub_flow1, i32 0, i32 1
  %224 = ptrtoint ptr %mask_len to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %mask_len, align 1
  %conv78 = zext i8 %225 to i32
  %226 = call ptr @memcpy(ptr %221, ptr %223, i32 %conv78)
  %call79 = call fastcc i32 @nfp_flower_merge_action(ptr noundef %sub_flow1, ptr noundef %sub_flow2, ptr noundef nonnull %call67)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end70.err_destroy_merge_flow_crit_edge

if.end70.err_destroy_merge_flow_crit_edge:        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_merge_flow

if.end82:                                         ; preds = %if.end70
  %call83 = call fastcc i32 @nfp_flower_link_flows(ptr noundef nonnull %call67, ptr noundef %sub_flow1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.err_destroy_merge_flow_crit_edge

if.end82.err_destroy_merge_flow_crit_edge:        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_merge_flow

if.end86:                                         ; preds = %if.end82
  %call87 = call fastcc i32 @nfp_flower_link_flows(ptr noundef nonnull %call67, ptr noundef %sub_flow2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.err_unlink_sub_flow1_crit_edge

if.end86.err_unlink_sub_flow1_crit_edge:          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlink_sub_flow1

if.end90:                                         ; preds = %if.end86
  %227 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %tc_flower_cookie, align 4
  %229 = ptrtoint ptr %ingress_dev71 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ingress_dev71, align 4
  %call93 = call i32 @nfp_compile_flow_metadata(ptr noundef %app, i32 noundef %228, ptr noundef nonnull %call67, ptr noundef %230, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end90.err_unlink_sub_flow2_crit_edge

if.end90.err_unlink_sub_flow2_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlink_sub_flow2

if.end96:                                         ; preds = %if.end90
  %flow_table = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 10
  %fl_node = getelementptr inbounds %struct.nfp_fl_payload, ptr %call67, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_flower_table_params to i32))
  %.unpack316 = load i32, ptr @nfp_flower_table_params, align 4
  %231 = insertvalue [7 x i32] undef, i32 %.unpack316, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2) to i32))
  %.unpack317 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2), align 4
  %232 = insertvalue [7 x i32] %231, i32 %.unpack317, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4) to i32))
  %.unpack318 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4), align 4
  %233 = insertvalue [7 x i32] %232, i32 %.unpack318, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5) to i32))
  %.unpack319 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5), align 4
  %234 = insertvalue [7 x i32] %233, i32 %.unpack319, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7) to i32))
  %.unpack320 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7), align 4
  %235 = insertvalue [7 x i32] %234, i32 %.unpack320, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8) to i32))
  %.unpack321 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8), align 4
  %236 = insertvalue [7 x i32] %235, i32 %.unpack321, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9) to i32))
  %.unpack322 = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9), align 4
  %237 = insertvalue [7 x i32] %236, i32 %.unpack322, 6
  %call97 = call fastcc i32 @rhashtable_insert_fast(ptr noundef %flow_table, ptr noundef %fl_node, [7 x i32] %237)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.err_release_metadata_crit_edge

if.end96.err_release_metadata_crit_edge:          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_metadata

if.end100:                                        ; preds = %if.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %238 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %238, i32 noundef 3264, i32 noundef 16) #18
  %tobool102.not = icmp eq ptr %call7.i, null
  br i1 %tobool102.not, label %if.end100.err_remove_rhash_crit_edge, label %if.end104

if.end100.err_remove_rhash_crit_edge:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_remove_rhash

if.end104:                                        ; preds = %if.end100
  %239 = ptrtoint ptr %parent_ctx to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %parent_ctx, align 8
  %241 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %240, ptr %call7.i, align 8
  %ht_node = getelementptr inbounds %struct.nfp_merge_info, ptr %call7.i, i32 0, i32 1
  %call107 = call fastcc i32 @rhashtable_insert_fast(ptr noundef %merge_table, ptr noundef %ht_node, [7 x i32] %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end104.err_destroy_merge_info_crit_edge

if.end104.err_destroy_merge_info_crit_edge:       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_merge_info

if.end110:                                        ; preds = %if.end104
  %call111 = call i32 @nfp_flower_xmit_flow(ptr noundef %app, ptr noundef nonnull %call67, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %err_remove_merge_info

if.end114:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  %in_hw = getelementptr inbounds %struct.nfp_fl_payload, ptr %call67, i32 0, i32 11
  %242 = ptrtoint ptr %in_hw to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 1, ptr %in_hw, align 4
  %in_hw115 = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow1, i32 0, i32 11
  %243 = ptrtoint ptr %in_hw115 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %in_hw115, align 4
  br label %cleanup

err_remove_merge_info:                            ; preds = %if.end110
  %call119 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %merge_table, ptr noundef %ht_node, [7 x i32] %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err_remove_merge_info.err_destroy_merge_info_crit_edge, label %land.rhs128

err_remove_merge_info.err_destroy_merge_info_crit_edge: ; preds = %err_remove_merge_info
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_merge_info

land.rhs128:                                      ; preds = %err_remove_merge_info
  %.b308345 = load i1, ptr @nfp_flower_merge_offloaded_flows.__already_done.27, align 1
  br i1 %.b308345, label %land.rhs128.err_destroy_merge_info_crit_edge, label %if.then139, !prof !183

land.rhs128.err_destroy_merge_info_crit_edge:     ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_merge_info

if.then139:                                       ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_flower_merge_offloaded_flows.__already_done.27, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1092, i32 noundef 9, ptr noundef null) #14
  br label %err_destroy_merge_info

err_destroy_merge_info:                           ; preds = %if.then139, %land.rhs128.err_destroy_merge_info_crit_edge, %err_remove_merge_info.err_destroy_merge_info_crit_edge, %if.end104.err_destroy_merge_info_crit_edge
  %err.0 = phi i32 [ %call107, %if.end104.err_destroy_merge_info_crit_edge ], [ %call111, %err_remove_merge_info.err_destroy_merge_info_crit_edge ], [ %call111, %if.then139 ], [ %call111, %land.rhs128.err_destroy_merge_info_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %err_remove_rhash

err_remove_rhash:                                 ; preds = %err_destroy_merge_info, %if.end100.err_remove_rhash_crit_edge
  %err.1 = phi i32 [ %err.0, %err_destroy_merge_info ], [ -12, %if.end100.err_remove_rhash_crit_edge ]
  %call177 = call fastcc i32 @rhashtable_remove_fast(ptr noundef %flow_table, ptr noundef %fl_node, [7 x i32] %237)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %err_remove_rhash.err_release_metadata_crit_edge, label %land.rhs186

err_remove_rhash.err_release_metadata_crit_edge:  ; preds = %err_remove_rhash
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_metadata

land.rhs186:                                      ; preds = %err_remove_rhash
  %.b309330 = load i1, ptr @nfp_flower_merge_offloaded_flows.__already_done.28, align 1
  br i1 %.b309330, label %land.rhs186.err_release_metadata_crit_edge, label %if.then197, !prof !183

land.rhs186.err_release_metadata_crit_edge:       ; preds = %land.rhs186
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_metadata

if.then197:                                       ; preds = %land.rhs186
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_flower_merge_offloaded_flows.__already_done.28, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1098, i32 noundef 9, ptr noundef null) #14
  br label %err_release_metadata

err_release_metadata:                             ; preds = %if.then197, %land.rhs186.err_release_metadata_crit_edge, %err_remove_rhash.err_release_metadata_crit_edge, %if.end96.err_release_metadata_crit_edge
  %err.2 = phi i32 [ %call97, %if.end96.err_release_metadata_crit_edge ], [ %err.1, %err_remove_rhash.err_release_metadata_crit_edge ], [ %err.1, %if.then197 ], [ %err.1, %land.rhs186.err_release_metadata_crit_edge ]
  %call232 = call i32 @nfp_modify_flow_metadata(ptr noundef %app, ptr noundef nonnull %call67) #14
  br label %err_unlink_sub_flow2

err_unlink_sub_flow2:                             ; preds = %err_release_metadata, %if.end90.err_unlink_sub_flow2_crit_edge
  %err.3 = phi i32 [ %call93, %if.end90.err_unlink_sub_flow2_crit_edge ], [ %err.2, %err_release_metadata ]
  call fastcc void @nfp_flower_unlink_flows(ptr noundef nonnull %call67, ptr noundef %sub_flow2)
  br label %err_unlink_sub_flow1

err_unlink_sub_flow1:                             ; preds = %err_unlink_sub_flow2, %if.end86.err_unlink_sub_flow1_crit_edge
  %err.4 = phi i32 [ %call87, %if.end86.err_unlink_sub_flow1_crit_edge ], [ %err.3, %err_unlink_sub_flow2 ]
  call fastcc void @nfp_flower_unlink_flows(ptr noundef nonnull %call67, ptr noundef %sub_flow1)
  br label %err_destroy_merge_flow

err_destroy_merge_flow:                           ; preds = %err_unlink_sub_flow1, %if.end82.err_destroy_merge_flow_crit_edge, %if.end70.err_destroy_merge_flow_crit_edge
  %err.5 = phi i32 [ %call79, %if.end70.err_destroy_merge_flow_crit_edge ], [ %call83, %if.end82.err_destroy_merge_flow_crit_edge ], [ %err.4, %err_unlink_sub_flow1 ]
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %call67, i32 0, i32 9
  %244 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %action_data, align 4
  call void @kfree(ptr noundef %245) #14
  %246 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mask_data, align 4
  call void @kfree(ptr noundef %247) #14
  %248 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %unmasked_data, align 4
  call void @kfree(ptr noundef %249) #14
  call void @kfree(ptr noundef nonnull %call67) #14
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_merge_flow, %if.end114, %if.end64.cleanup_crit_edge, %nfp_flower_can_merge.exit.thread, %do.end55, %do.body49.cleanup_crit_edge, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %err_destroy_merge_flow ], [ 0, %if.end114 ], [ -22, %lor.lhs.false39.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ 0, %do.end55 ], [ 0, %do.body49.cleanup_crit_edge ], [ -12, %if.end64.cleanup_crit_edge ], [ %retval.0.i.ph, %nfp_flower_can_merge.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_ctx) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %merge_key_ls) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !184
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #14
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 594, ptr noundef nonnull @.str.39) #14
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #14
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !183

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #14
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 369, ptr noundef nonnull @.str.39) #14
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !186
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.40, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned.40, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 614, ptr noundef nonnull @.str.39) #14
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !183

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #14
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #14
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.41) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %43 = call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_merge_action(ptr nocapture noundef readonly %sub_flow1, ptr nocapture noundef readonly %sub_flow2, ptr nocapture noundef %merge_flow) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %act_len = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %sub_flow1, i32 0, i32 2
  %0 = ptrtoint ptr %act_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %act_len, align 2
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -8
  %act_len2 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %sub_flow2, i32 0, i32 2
  %2 = ptrtoint ptr %act_len2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %act_len2, align 2
  %conv3 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup55

if.end:                                           ; preds = %entry
  %add = add nsw i32 %sub, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1216, i32 %add)
  %cmp = icmp ugt i32 %add, 1216
  br i1 %cmp, label %if.end.cleanup55_crit_edge, label %if.end6

if.end.cleanup55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup55

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool7.not = icmp eq i32 %sub, 0
  br i1 %tobool7.not, label %if.end14.thread, label %while.body.lr.ph.i

if.end14.thread:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %shortcut11 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %sub_flow2, i32 0, i32 7
  %4 = ptrtoint ptr %shortcut11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shortcut11, align 4
  %shortcut13 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %merge_flow, i32 0, i32 7
  %6 = ptrtoint ptr %shortcut13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %shortcut13, align 4
  %conv16136 = trunc i32 %add to i8
  %act_len18137 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %merge_flow, i32 0, i32 2
  %7 = ptrtoint ptr %act_len18137 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv16136, ptr %act_len18137, align 2
  %action_data138 = getelementptr inbounds %struct.nfp_fl_payload, ptr %merge_flow, i32 0, i32 9
  %8 = ptrtoint ptr %action_data138 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %action_data138, align 4
  %action_data19139 = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow1, i32 0, i32 9
  br label %while.body.lr.ph.i104

while.body.lr.ph.i:                               ; preds = %if.end6
  %shortcut = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %merge_flow, i32 0, i32 7
  %10 = ptrtoint ptr %shortcut to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %shortcut, align 4
  %conv16 = trunc i32 %add to i8
  %act_len18 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %merge_flow, i32 0, i32 2
  %11 = ptrtoint ptr %act_len18 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv16, ptr %act_len18, align 2
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %merge_flow, i32 0, i32 9
  %12 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %action_data, align 4
  %action_data19 = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow1, i32 0, i32 9
  %14 = ptrtoint ptr %action_data19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %action_data19, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %sw.bb2.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %tunnel_act.0 = phi i8 [ 0, %while.body.lr.ph.i ], [ %tunnel_act.1, %sw.bb2.i.while.body.i_crit_edge ]
  %act_off.018.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %sw.bb2.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %15, i32 %act_off.018.i
  %len_lw.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx.i, i32 0, i32 1
  %16 = ptrtoint ptr %len_lw.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len_lw.i, align 1
  %conv.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 2
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %19, label %while.body.i.while.body.lr.ph.i104_crit_edge [
    i8 17, label %sw.bb.i
    i8 16, label %while.body.i.sw.bb2.i_crit_edge
  ]

while.body.i.sw.bb2.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

while.body.i.while.body.lr.ph.i104_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph.i104

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %while.body.i.sw.bb2.i_crit_edge
  %tunnel_act.1 = phi i8 [ %tunnel_act.0, %while.body.i.sw.bb2.i_crit_edge ], [ 1, %sw.bb.i ]
  %add.ptr.i = getelementptr i8, ptr %13, i32 %act_off.018.i
  %21 = call ptr @memcpy(ptr %add.ptr.i, ptr %arrayidx.i, i32 %shl.i)
  %add.i = add i32 %shl.i, %act_off.018.i
  %cmp.i = icmp ult i32 %add.i, %sub
  br i1 %cmp.i, label %sw.bb2.i.while.body.i_crit_edge, label %sw.bb2.i.while.body.lr.ph.i104_crit_edge

sw.bb2.i.while.body.lr.ph.i104_crit_edge:         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph.i104

sw.bb2.i.while.body.i_crit_edge:                  ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.lr.ph.i104:                            ; preds = %sw.bb2.i.while.body.lr.ph.i104_crit_edge, %while.body.i.while.body.lr.ph.i104_crit_edge, %if.end14.thread
  %action_data19141 = phi ptr [ %action_data19139, %if.end14.thread ], [ %action_data19, %while.body.i.while.body.lr.ph.i104_crit_edge ], [ %action_data19, %sw.bb2.i.while.body.lr.ph.i104_crit_edge ]
  %22 = phi ptr [ %9, %if.end14.thread ], [ %13, %while.body.i.while.body.lr.ph.i104_crit_edge ], [ %13, %sw.bb2.i.while.body.lr.ph.i104_crit_edge ]
  %act_len18140 = phi ptr [ %act_len18137, %if.end14.thread ], [ %act_len18, %while.body.i.while.body.lr.ph.i104_crit_edge ], [ %act_len18, %sw.bb2.i.while.body.lr.ph.i104_crit_edge ]
  %tunnel_act.2 = phi i8 [ 0, %if.end14.thread ], [ %tunnel_act.1, %sw.bb2.i.while.body.lr.ph.i104_crit_edge ], [ %tunnel_act.0, %while.body.i.while.body.lr.ph.i104_crit_edge ]
  %act_off.0.lcssa.i = phi i32 [ 0, %if.end14.thread ], [ %add.i, %sw.bb2.i.while.body.lr.ph.i104_crit_edge ], [ %act_off.018.i, %while.body.i.while.body.lr.ph.i104_crit_edge ]
  %add.ptr = getelementptr i8, ptr %22, i32 %act_off.0.lcssa.i
  %sub20 = sub i32 %sub, %act_off.0.lcssa.i
  %action_data21 = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow2, i32 0, i32 9
  %23 = ptrtoint ptr %action_data21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %action_data21, align 4
  br label %while.body.i110

while.body.i110:                                  ; preds = %sw.bb2.i115.while.body.i110_crit_edge, %while.body.lr.ph.i104
  %act_off.018.i105 = phi i32 [ 0, %while.body.lr.ph.i104 ], [ %add.i113, %sw.bb2.i115.while.body.i110_crit_edge ]
  %arrayidx.i106 = getelementptr i8, ptr %24, i32 %act_off.018.i105
  %25 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i106, align 1
  %27 = and i8 %26, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %27)
  %switch = icmp eq i8 %27, 16
  br i1 %switch, label %sw.bb2.i115, label %while.body.i110.nfp_flower_copy_pre_actions.exit117_crit_edge

while.body.i110.nfp_flower_copy_pre_actions.exit117_crit_edge: ; preds = %while.body.i110
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_copy_pre_actions.exit117

sw.bb2.i115:                                      ; preds = %while.body.i110
  %len_lw.i107 = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx.i106, i32 0, i32 1
  %28 = ptrtoint ptr %len_lw.i107 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %len_lw.i107, align 1
  %conv.i108 = zext i8 %29 to i32
  %shl.i109 = shl nuw nsw i32 %conv.i108, 2
  %add.ptr.i112 = getelementptr i8, ptr %add.ptr, i32 %act_off.018.i105
  %30 = call ptr @memcpy(ptr %add.ptr.i112, ptr %arrayidx.i106, i32 %shl.i109)
  %add.i113 = add i32 %shl.i109, %act_off.018.i105
  %cmp.i114 = icmp ult i32 %add.i113, %conv3
  br i1 %cmp.i114, label %sw.bb2.i115.while.body.i110_crit_edge, label %sw.bb2.i115.nfp_flower_copy_pre_actions.exit117_crit_edge

sw.bb2.i115.nfp_flower_copy_pre_actions.exit117_crit_edge: ; preds = %sw.bb2.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_copy_pre_actions.exit117

sw.bb2.i115.while.body.i110_crit_edge:            ; preds = %sw.bb2.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i110

nfp_flower_copy_pre_actions.exit117:              ; preds = %sw.bb2.i115.nfp_flower_copy_pre_actions.exit117_crit_edge, %while.body.i110.nfp_flower_copy_pre_actions.exit117_crit_edge
  %act_off.0.lcssa.i116 = phi i32 [ %add.i113, %sw.bb2.i115.nfp_flower_copy_pre_actions.exit117_crit_edge ], [ %act_off.018.i105, %while.body.i110.nfp_flower_copy_pre_actions.exit117_crit_edge ]
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 %act_off.0.lcssa.i116
  %sub24 = sub i32 %conv3, %act_off.0.lcssa.i116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tunnel_act.2)
  %tobool25.not = icmp eq i8 %tunnel_act.2, 0
  br i1 %tobool25.not, label %if.end37.thread, label %if.then26

if.end37.thread:                                  ; preds = %nfp_flower_copy_pre_actions.exit117
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %action_data19141 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %action_data19141, align 4
  %add.ptr39156 = getelementptr i8, ptr %32, i32 %act_off.0.lcssa.i
  %33 = call ptr @memcpy(ptr %add.ptr23, ptr %add.ptr39156, i32 %sub20)
  br label %if.end51

if.then26:                                        ; preds = %nfp_flower_copy_pre_actions.exit117
  %34 = ptrtoint ptr %action_data21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %action_data21, align 4
  %arrayidx = getelementptr i8, ptr %35, i32 %act_off.0.lcssa.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %cmp27.not.i = icmp eq i32 %sub24, 0
  br i1 %cmp27.not.i, label %if.then26.if.end37_crit_edge, label %if.then26.while.body.i119_crit_edge

if.then26.while.body.i119_crit_edge:              ; preds = %if.then26
  br label %while.body.i119

if.then26.if.end37_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

while.body.i119:                                  ; preds = %if.end8.i.while.body.i119_crit_edge, %if.then26.while.body.i119_crit_edge
  %post_tun_push_vlan.0 = phi ptr [ %post_tun_push_vlan.1, %if.end8.i.while.body.i119_crit_edge ], [ null, %if.then26.while.body.i119_crit_edge ]
  %act_off.028.i = phi i32 [ %add.i122, %if.end8.i.while.body.i119_crit_edge ], [ 0, %if.then26.while.body.i119_crit_edge ]
  %arrayidx.i118 = getelementptr i8, ptr %arrayidx, i32 %act_off.028.i
  %36 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp1.i = icmp eq i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %act_off.028.i)
  %tobool.not.i = icmp eq i32 %act_off.028.i, 0
  %or.cond.i = select i1 %cmp1.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %while.body.i119.if.end8.i_crit_edge, label %if.else.i

while.body.i119.if.end8.i_crit_edge:              ; preds = %while.body.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.else.i:                                        ; preds = %while.body.i119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp5.not.i = icmp eq i8 %37, 0
  br i1 %cmp5.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.cleanup55_crit_edge

if.else.i.cleanup55_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup55

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %while.body.i119.if.end8.i_crit_edge
  %post_tun_push_vlan.1 = phi ptr [ %post_tun_push_vlan.0, %if.else.i.if.end8.i_crit_edge ], [ %arrayidx.i118, %while.body.i119.if.end8.i_crit_edge ]
  %len_lw.i120 = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx.i118, i32 0, i32 1
  %38 = ptrtoint ptr %len_lw.i120 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %len_lw.i120, align 1
  %conv9.i = zext i8 %39 to i32
  %shl.i121 = shl nuw nsw i32 %conv9.i, 2
  %add.i122 = add i32 %shl.i121, %act_off.028.i
  %cmp.i123 = icmp ult i32 %add.i122, %sub24
  br i1 %cmp.i123, label %if.end8.i.while.body.i119_crit_edge, label %while.end.i

if.end8.i.while.body.i119_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i119

while.end.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add.i122)
  %phi.cmp.i = icmp ult i32 %add.i122, 9
  %tobool10.not.i = icmp ne ptr %post_tun_push_vlan.1, null
  %or.cond25.i = select i1 %tobool10.not.i, i1 %phi.cmp.i, i1 false
  br i1 %or.cond25.i, label %while.end.i.cleanup55_crit_edge, label %while.end.i.if.end37_crit_edge

while.end.i.if.end37_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

while.end.i.cleanup55_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup55

if.end37:                                         ; preds = %while.end.i.if.end37_crit_edge, %if.then26.if.end37_crit_edge
  %post_tun_push_vlan.3 = phi ptr [ %post_tun_push_vlan.1, %while.end.i.if.end37_crit_edge ], [ null, %if.then26.if.end37_crit_edge ]
  %tobool32.not = icmp eq ptr %post_tun_push_vlan.3, null
  %add34 = add i32 %act_off.0.lcssa.i116, 8
  %sub35 = add i32 %sub24, -8
  %sub2_act_len.0 = select i1 %tobool32.not, i32 %sub24, i32 %sub35
  %pre_off2.0 = select i1 %tobool32.not, i32 %act_off.0.lcssa.i116, i32 %add34
  %40 = ptrtoint ptr %action_data19141 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %action_data19141, align 4
  %add.ptr39 = getelementptr i8, ptr %41, i32 %act_off.0.lcssa.i
  %42 = call ptr @memcpy(ptr %add.ptr23, ptr %add.ptr39, i32 %sub20)
  br i1 %tobool32.not, label %if.end37.if.end51_crit_edge, label %if.then41

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %act_off.0.lcssa.i)
  %cmp12.not.i = icmp eq i32 %sub, %act_off.0.lcssa.i
  br i1 %cmp12.not.i, label %if.then41.cleanup55_crit_edge, label %if.then41.while.body.i127_crit_edge

if.then41.while.body.i127_crit_edge:              ; preds = %if.then41
  br label %while.body.i127

if.then41.cleanup55_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup55

while.body.i127:                                  ; preds = %if.end.i.while.body.i127_crit_edge, %if.then41.while.body.i127_crit_edge
  %act_off.013.i = phi i32 [ %add.i131, %if.end.i.while.body.i127_crit_edge ], [ 0, %if.then41.while.body.i127_crit_edge ]
  %arrayidx.i125 = getelementptr i8, ptr %add.ptr23, i32 %act_off.013.i
  %43 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %44)
  %cmp1.i126 = icmp eq i8 %44, 6
  br i1 %cmp1.i126, label %if.end45, label %if.end.i

if.end.i:                                         ; preds = %while.body.i127
  %len_lw.i129 = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx.i125, i32 0, i32 1
  %45 = ptrtoint ptr %len_lw.i129 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %len_lw.i129, align 1
  %conv3.i = zext i8 %46 to i32
  %shl.i130 = shl nuw nsw i32 %conv3.i, 2
  %add.i131 = add i32 %shl.i130, %act_off.013.i
  %cmp.i132 = icmp ult i32 %add.i131, %sub20
  br i1 %cmp.i132, label %if.end.i.while.body.i127_crit_edge, label %if.end.i.cleanup55_crit_edge

if.end.i.cleanup55_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup55

if.end.i.while.body.i127_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i127

if.end45:                                         ; preds = %while.body.i127
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_tpid.i = getelementptr inbounds %struct.nfp_fl_push_vlan, ptr %post_tun_push_vlan.3, i32 0, i32 2
  %47 = ptrtoint ptr %vlan_tpid.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vlan_tpid.i, align 2
  %outer_vlan_tpid.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx.i125, i32 0, i32 7
  %49 = ptrtoint ptr %outer_vlan_tpid.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %outer_vlan_tpid.i, align 4
  %vlan_tci.i = getelementptr inbounds %struct.nfp_fl_push_vlan, ptr %post_tun_push_vlan.3, i32 0, i32 3
  %50 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vlan_tci.i, align 2
  %outer_vlan_tci.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx.i125, i32 0, i32 8
  %52 = ptrtoint ptr %outer_vlan_tci.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %outer_vlan_tci.i, align 2
  %53 = ptrtoint ptr %act_len18140 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %act_len18140, align 2
  %sub49 = add i8 %54, -8
  store i8 %sub49, ptr %act_len18140, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.end45, %if.end37.if.end51_crit_edge, %if.end37.thread
  %pre_off2.2159 = phi i32 [ %act_off.0.lcssa.i116, %if.end37.thread ], [ %pre_off2.0, %if.end45 ], [ %act_off.0.lcssa.i116, %if.end37.if.end51_crit_edge ]
  %sub2_act_len.2158 = phi i32 [ %sub24, %if.end37.thread ], [ %sub2_act_len.0, %if.end45 ], [ %sub24, %if.end37.if.end51_crit_edge ]
  %add.ptr52 = getelementptr i8, ptr %add.ptr23, i32 %sub20
  %55 = ptrtoint ptr %action_data21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %action_data21, align 4
  %add.ptr54 = getelementptr i8, ptr %56, i32 %pre_off2.2159
  %57 = call ptr @memcpy(ptr %add.ptr52, ptr %add.ptr54, i32 %sub2_act_len.2158)
  br label %cleanup55

cleanup55:                                        ; preds = %if.end51, %if.end.i.cleanup55_crit_edge, %if.then41.cleanup55_crit_edge, %while.end.i.cleanup55_crit_edge, %if.else.i.cleanup55_crit_edge, %if.end.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.1 = phi i32 [ 0, %if.end51 ], [ -22, %entry.cleanup55_crit_edge ], [ -22, %if.end.cleanup55_crit_edge ], [ -95, %while.end.i.cleanup55_crit_edge ], [ -95, %if.then41.cleanup55_crit_edge ], [ -95, %if.end.i.cleanup55_crit_edge ], [ -95, %if.else.i.cleanup55_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_link_flows(ptr noundef %merge_flow, ptr noundef %sub_flow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flow = getelementptr inbounds %struct.anon.254, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %merge_flow, ptr %flow, align 8
  %linked_flows = getelementptr inbounds %struct.nfp_fl_payload, ptr %merge_flow, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %merge_flow, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %3, ptr noundef %linked_flows) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %prev.i, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %linked_flows, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %sub_flow3 = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %call7.i, i32 0, i32 1
  %flow4 = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %call7.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %flow4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sub_flow, ptr %flow4, align 4
  %linked_flows7 = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow, i32 0, i32 10
  %prev.i14 = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i14, align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef %sub_flow3, ptr noundef %10, ptr noundef %linked_flows7) #14
  br i1 %call.i.i15, label %if.end.i.i17, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i17:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sub_flow3, ptr %prev.i14, align 4
  %12 = ptrtoint ptr %sub_flow3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %linked_flows7, ptr %sub_flow3, align 4
  %prev3.i.i16 = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %call7.i, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i16, align 8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %sub_flow3, ptr %10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i17, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ 0, %if.end.i.i17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_compile_flow_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !184
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 715, ptr noundef nonnull @.str.39) #14
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !188

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #14
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #14
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !183

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #14
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #14
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !183

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #14
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.41) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %25 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #14
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 377, ptr noundef nonnull @.str.43) #14
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.44, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned.44, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 732, ptr noundef nonnull @.str.43) #14
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !183

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !188

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 377, ptr noundef nonnull @.str.43) #14
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #14
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #14, !srcloc !189
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #14
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #14
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.41) #14
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %60 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #14
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !184
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 1076, ptr noundef nonnull @.str.39) #14
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !188

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #14
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #14
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !183

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 377, ptr noundef nonnull @.str.43) #14
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.47, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 1032, ptr noundef nonnull @.str.43) #14
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !190
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #14
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.49, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.49, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 1004, ptr noundef nonnull @.str.43) #14
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #14, !srcloc !191
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !188

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #14
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.45, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned.45, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 1085, ptr noundef nonnull @.str.39) #14
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.41) #14
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %46 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %retval.0.i15.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_modify_flow_metadata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_flower_unlink_flows(ptr noundef readonly %merge_flow, ptr noundef readnone %sub_flow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %linked_flows = getelementptr inbounds %struct.nfp_fl_payload, ptr %merge_flow, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %link.0.in = phi ptr [ %linked_flows, %entry ], [ %link.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %link.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %link.0 = load ptr, ptr %link.0.in, align 4
  %cmp.not = icmp eq ptr %link.0, %linked_flows
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %flow = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.0, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %flow, align 4
  %cmp4 = icmp eq ptr %2, %sub_flow
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link.0) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %link.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %link.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %link.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %link.0, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %link.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %sub_flow.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.0, i32 0, i32 1
  %call.i.i4.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sub_flow.i) #14
  br i1 %call.i.i4.i, label %if.end.i.i7.i, label %list_del.exit.i.nfp_flower_unlink_flow.exit_crit_edge

list_del.exit.i.nfp_flower_unlink_flow.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_unlink_flow.exit

if.end.i.i7.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i5.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.0, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i5.i, align 4
  %13 = ptrtoint ptr %sub_flow.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sub_flow.i, align 4
  %prev1.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i6.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %nfp_flower_unlink_flow.exit

nfp_flower_unlink_flow.exit:                      ; preds = %if.end.i.i7.i, %list_del.exit.i.nfp_flower_unlink_flow.exit_crit_edge
  %17 = ptrtoint ptr %sub_flow.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %sub_flow.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.0, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i8.i, align 4
  tail call void @kfree(ptr noundef %link.0) #14
  br label %cleanup

cleanup:                                          ; preds = %nfp_flower_unlink_flow.exit, %for.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_del_linked_merge_flows(ptr noundef %app, ptr noundef readonly %sub_flow) local_unnamed_addr #0 align 64 {
entry:
  %parent_ctx.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %linked_flows = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow, i32 0, i32 10
  %0 = ptrtoint ptr %linked_flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %linked_flows, align 4
  %cmp.not21 = icmp eq ptr %1, %linked_flows
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 2
  %ctrl.i265.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %nfp_flower_remove_merge_flow.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in22 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %nfp_flower_remove_merge_flow.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in22, align 4
  %flow = getelementptr i8, ptr %.pn.in22, i32 -4
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %flow, align 4
  %5 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_ctx.i) #14
  %7 = ptrtoint ptr %parent_ctx.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %parent_ctx.i, align 8
  %linked_flows.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 10
  %8 = ptrtoint ptr %linked_flows.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %linked_flows.i, align 4
  %flow.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %flow.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flow.i, align 4
  %call.i = call i32 @nfp_modify_flow_metadata(ptr noundef %app, ptr noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %do.body.i

do.body.i:                                        ; preds = %for.body
  %call3.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.err_free_links.i_crit_edge, label %do.end.i

do.body.i.err_free_links.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_links.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpp.i, align 4
  %call7.i = call ptr @nfp_cpp_device(ptr noundef %13) #14
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.50) #20
  br label %err_free_links.i

if.end11.i:                                       ; preds = %for.body
  %cmp.not.i = icmp eq ptr %11, %sub_flow
  br i1 %cmp.not.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end11.i
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 4
  %conv.i.i = zext i8 %17 to i32
  %mask_len3.i.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %4, i32 0, i32 1
  %18 = ptrtoint ptr %mask_len3.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask_len3.i.i, align 1
  %conv4.i.i = zext i8 %19 to i32
  %act_len6.i.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %act_len6.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %act_len6.i.i, align 2
  %conv7.i.i = zext i8 %21 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 28
  %add8.i.i = add nuw nsw i32 %add.i.i, %conv4.i.i
  %add9.i.i = add nuw nsw i32 %add8.i.i, %conv7.i.i
  %22 = lshr i8 %17, 2
  store i8 %22, ptr %4, align 4
  %23 = lshr i8 %19, 2
  store i8 %23, ptr %mask_len3.i.i, align 1
  %24 = lshr i8 %21, 2
  store i8 %24, ptr %act_len6.i.i, align 2
  %call.i.i = call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef %add9.i.i, i32 noundef 2, i32 noundef 3264) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body17.i, label %nfp_flower_xmit_flow.exit.thread.i

nfp_flower_xmit_flow.exit.thread.i:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 4
  %27 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %4, i32 28)
  %arrayidx.i.i = getelementptr i8, ptr %26, i32 32
  %unmasked_data.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 7
  %28 = ptrtoint ptr %unmasked_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unmasked_data.i.i, align 4
  %30 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %29, i32 %conv.i.i)
  %arrayidx28.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %add.i.i
  %mask_data.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 8
  %31 = ptrtoint ptr %mask_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mask_data.i.i, align 4
  %33 = call ptr @memcpy(ptr %arrayidx28.i.i, ptr %32, i32 %conv4.i.i)
  %arrayidx31.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %add8.i.i
  %action_data.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 9
  %34 = ptrtoint ptr %action_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %action_data.i.i, align 4
  %36 = call ptr @memcpy(ptr %arrayidx31.i.i, ptr %35, i32 %conv7.i.i)
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %4, align 4
  %shl.i.i = shl i8 %38, 2
  store i8 %shl.i.i, ptr %4, align 4
  %39 = ptrtoint ptr %mask_len3.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mask_len3.i.i, align 1
  %shl39.i.i = shl i8 %40, 2
  store i8 %shl39.i.i, ptr %mask_len3.i.i, align 1
  %41 = ptrtoint ptr %act_len6.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %act_len6.i.i, align 2
  %shl44.i.i = shl i8 %42, 2
  store i8 %shl44.i.i, ptr %act_len6.i.i, align 2
  %43 = ptrtoint ptr %ctrl.i265.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl.i265.i, align 4
  %call46.i.i = call zeroext i1 @nfp_ctrl_tx(ptr noundef %44, ptr noundef nonnull %call.i.i) #14
  br label %err_free_links.i

do.body17.i:                                      ; preds = %if.then13.i
  %call18.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.body17.i.err_free_links.i_crit_edge, label %do.end23.i

do.body17.i.err_free_links.i_crit_edge:           ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_links.i

do.end23.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpp.i, align 4
  %call25.i = call ptr @nfp_cpp_device(ptr noundef %46) #14
  %parent26.i = getelementptr inbounds %struct.device, ptr %call25.i, i32 0, i32 1
  %47 = ptrtoint ptr %parent26.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent26.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.53) #20
  br label %err_free_links.i

if.else.i:                                        ; preds = %if.end11.i
  call void @__nfp_modify_flow_metadata(ptr noundef %6, ptr noundef %11) #14
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %11, align 4
  %conv.i244.i = zext i8 %50 to i32
  %mask_len3.i245.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %11, i32 0, i32 1
  %51 = ptrtoint ptr %mask_len3.i245.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mask_len3.i245.i, align 1
  %conv4.i246.i = zext i8 %52 to i32
  %act_len6.i247.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %11, i32 0, i32 2
  %53 = ptrtoint ptr %act_len6.i247.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %act_len6.i247.i, align 2
  %conv7.i248.i = zext i8 %54 to i32
  %add.i249.i = add nuw nsw i32 %conv.i244.i, 28
  %add8.i250.i = add nuw nsw i32 %add.i249.i, %conv4.i246.i
  %add9.i251.i = add nuw nsw i32 %add8.i250.i, %conv7.i248.i
  %55 = lshr i8 %50, 2
  store i8 %55, ptr %11, align 4
  %56 = lshr i8 %52, 2
  store i8 %56, ptr %mask_len3.i245.i, align 1
  %57 = lshr i8 %54, 2
  store i8 %57, ptr %act_len6.i247.i, align 2
  %call.i252.i = call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef %add9.i251.i, i32 noundef 1, i32 noundef 3264) #14
  %tobool.not.i253.i = icmp eq ptr %call.i252.i, null
  br i1 %tobool.not.i253.i, label %do.body34.i, label %nfp_flower_xmit_flow.exit269.thread.i

nfp_flower_xmit_flow.exit269.thread.i:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i254.i = getelementptr inbounds %struct.sk_buff, ptr %call.i252.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i254.i, align 4
  %add.ptr.i.i255.i = getelementptr i8, ptr %59, i32 4
  %60 = call ptr @memcpy(ptr %add.ptr.i.i255.i, ptr %11, i32 28)
  %arrayidx.i256.i = getelementptr i8, ptr %59, i32 32
  %unmasked_data.i257.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %11, i32 0, i32 7
  %61 = ptrtoint ptr %unmasked_data.i257.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %unmasked_data.i257.i, align 4
  %63 = call ptr @memcpy(ptr %arrayidx.i256.i, ptr %62, i32 %conv.i244.i)
  %arrayidx28.i258.i = getelementptr i8, ptr %add.ptr.i.i255.i, i32 %add.i249.i
  %mask_data.i259.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %11, i32 0, i32 8
  %64 = ptrtoint ptr %mask_data.i259.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mask_data.i259.i, align 4
  %66 = call ptr @memcpy(ptr %arrayidx28.i258.i, ptr %65, i32 %conv4.i246.i)
  %arrayidx31.i260.i = getelementptr i8, ptr %add.ptr.i.i255.i, i32 %add8.i250.i
  %action_data.i261.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %11, i32 0, i32 9
  %67 = ptrtoint ptr %action_data.i261.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %action_data.i261.i, align 4
  %69 = call ptr @memcpy(ptr %arrayidx31.i260.i, ptr %68, i32 %conv7.i248.i)
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %11, align 4
  %shl.i262.i = shl i8 %71, 2
  store i8 %shl.i262.i, ptr %11, align 4
  %72 = ptrtoint ptr %mask_len3.i245.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mask_len3.i245.i, align 1
  %shl39.i263.i = shl i8 %73, 2
  store i8 %shl39.i263.i, ptr %mask_len3.i245.i, align 1
  %74 = ptrtoint ptr %act_len6.i247.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %act_len6.i247.i, align 2
  %shl44.i264.i = shl i8 %75, 2
  store i8 %shl44.i264.i, ptr %act_len6.i247.i, align 2
  %76 = ptrtoint ptr %ctrl.i265.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctrl.i265.i, align 4
  %call46.i266.i = call zeroext i1 @nfp_ctrl_tx(ptr noundef %77, ptr noundef nonnull %call.i252.i) #14
  br label %if.end47.i

do.body34.i:                                      ; preds = %if.else.i
  %call35.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.if.end47.i_crit_edge, label %do.end40.i

do.body34.i.if.end47.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47.i

do.end40.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cpp.i, align 4
  %call42.i = call ptr @nfp_cpp_device(ptr noundef %79) #14
  %parent43.i = getelementptr inbounds %struct.device, ptr %call42.i, i32 0, i32 1
  %80 = ptrtoint ptr %parent43.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent43.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.56) #20
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end40.i, %do.body34.i.if.end47.i_crit_edge, %nfp_flower_xmit_flow.exit269.thread.i
  %in_hw.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %11, i32 0, i32 11
  %82 = ptrtoint ptr %in_hw.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %in_hw.i, align 4
  br label %err_free_links.i

err_free_links.i:                                 ; preds = %if.end47.i, %do.end23.i, %do.body17.i.err_free_links.i_crit_edge, %nfp_flower_xmit_flow.exit.thread.i, %do.end.i, %do.body.i.err_free_links.i_crit_edge
  %83 = ptrtoint ptr %linked_flows.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %linked_flows.i, align 4
  %cmp62.not274.i = icmp eq ptr %84, %linked_flows.i
  br i1 %cmp62.not274.i, label %err_free_links.i.for.end.i_crit_edge, label %err_free_links.i.for.body.i_crit_edge

err_free_links.i.for.body.i_crit_edge:            ; preds = %err_free_links.i
  br label %for.body.i

err_free_links.i.for.end.i_crit_edge:             ; preds = %err_free_links.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %nfp_flower_unlink_flow.exit.i.for.body.i_crit_edge, %err_free_links.i.for.body.i_crit_edge
  %link.0275.i = phi ptr [ %temp.0.i, %nfp_flower_unlink_flow.exit.i.for.body.i_crit_edge ], [ %84, %err_free_links.i.for.body.i_crit_edge ]
  %85 = ptrtoint ptr %link.0275.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %temp.0.i = load ptr, ptr %link.0275.i, align 4
  %flow64.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.0275.i, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %flow64.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %flow64.i, align 4
  %host_ctx_id.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %host_ctx_id.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %host_ctx_id.i, align 4
  %90 = ptrtoint ptr %parent_ctx.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %parent_ctx.i, align 8
  %shl.i = shl i64 %91, 32
  %conv.i = zext i32 %89 to i64
  %or.i = or i64 %shl.i, %conv.i
  store i64 %or.i, ptr %parent_ctx.i, align 8
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %link.0275.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.list_del.exit.i.i_crit_edge

for.body.i.list_del.exit.i.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %link.0275.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i.i, align 4
  %94 = ptrtoint ptr %link.0275.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %link.0275.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.list_del.exit.i.i_crit_edge
  %98 = ptrtoint ptr %link.0275.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 256 to ptr), ptr %link.0275.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %link.0275.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %sub_flow.i.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.0275.i, i32 0, i32 1
  %call.i.i4.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %sub_flow.i.i) #14
  br i1 %call.i.i4.i.i, label %if.end.i.i7.i.i, label %list_del.exit.i.i.nfp_flower_unlink_flow.exit.i_crit_edge

list_del.exit.i.i.nfp_flower_unlink_flow.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_unlink_flow.exit.i

if.end.i.i7.i.i:                                  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i5.i.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.0275.i, i32 0, i32 1, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i5.i.i, align 4
  %102 = ptrtoint ptr %sub_flow.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sub_flow.i.i, align 4
  %prev1.i.i.i6.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i6.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %nfp_flower_unlink_flow.exit.i

nfp_flower_unlink_flow.exit.i:                    ; preds = %if.end.i.i7.i.i, %list_del.exit.i.i.nfp_flower_unlink_flow.exit.i_crit_edge
  %106 = ptrtoint ptr %sub_flow.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %sub_flow.i.i, align 4
  %prev.i8.i.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.0275.i, i32 0, i32 1, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i8.i.i, align 4
  call void @kfree(ptr noundef %link.0275.i) #14
  %cmp62.not.i = icmp eq ptr %temp.0.i, %linked_flows.i
  br i1 %cmp62.not.i, label %nfp_flower_unlink_flow.exit.i.for.end.i_crit_edge, label %nfp_flower_unlink_flow.exit.i.for.body.i_crit_edge

nfp_flower_unlink_flow.exit.i.for.body.i_crit_edge: ; preds = %nfp_flower_unlink_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

nfp_flower_unlink_flow.exit.i.for.end.i_crit_edge: ; preds = %nfp_flower_unlink_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %nfp_flower_unlink_flow.exit.i.for.end.i_crit_edge, %err_free_links.i.for.end.i_crit_edge
  %merge_table.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %6, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @merge_table_params to i32))
  %.unpack.i = load i32, ptr @merge_table_params, align 4
  %108 = insertvalue [7 x i32] undef, i32 %.unpack.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 2) to i32))
  %.unpack222.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 2), align 4
  %109 = insertvalue [7 x i32] %108, i32 %.unpack222.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 4) to i32))
  %.unpack223.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 4), align 4
  %110 = insertvalue [7 x i32] %109, i32 %.unpack223.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 5) to i32))
  %.unpack224.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 5), align 4
  %111 = insertvalue [7 x i32] %110, i32 %.unpack224.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 7) to i32))
  %.unpack225.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 7), align 4
  %112 = insertvalue [7 x i32] %111, i32 %.unpack225.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 8) to i32))
  %.unpack226.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 8), align 4
  %113 = insertvalue [7 x i32] %112, i32 %.unpack226.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 9) to i32))
  %.unpack227.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @merge_table_params, i32 0, i32 9), align 4
  %114 = insertvalue [7 x i32] %113, i32 %.unpack227.i, 6
  %call71.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %merge_table.i, ptr noundef nonnull %parent_ctx.i, [7 x i32] %114) #14
  %tobool72.not.i = icmp eq ptr %call71.i, null
  br i1 %tobool72.not.i, label %for.end.i.if.end120.i_crit_edge, label %if.then73.i

for.end.i.if.end120.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120.i

if.then73.i:                                      ; preds = %for.end.i
  %ht_node.i = getelementptr inbounds %struct.nfp_merge_info, ptr %call71.i, i32 0, i32 1
  %call75.i = call fastcc i32 @rhashtable_remove_fast(ptr noundef %merge_table.i, ptr noundef %ht_node.i, [7 x i32] %114) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.then73.i.if.end112.i_crit_edge, label %land.rhs.i

if.then73.i.if.end112.i_crit_edge:                ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112.i

land.rhs.i:                                       ; preds = %if.then73.i
  %.b243.i = load i1, ptr @nfp_flower_remove_merge_flow.__already_done, align 1
  br i1 %.b243.i, label %land.rhs.i.if.end112.i_crit_edge, label %if.then86.i, !prof !183

land.rhs.i.if.end112.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112.i

if.then86.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_flower_remove_merge_flow.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1460, i32 noundef 9, ptr noundef null) #14
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then86.i, %land.rhs.i.if.end112.i_crit_edge, %if.then73.i.if.end112.i_crit_edge
  call void @kfree(ptr noundef nonnull %call71.i) #14
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.end112.i, %for.end.i.if.end120.i_crit_edge
  %action_data.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 9
  %115 = ptrtoint ptr %action_data.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %action_data.i, align 4
  call void @kfree(ptr noundef %116) #14
  %mask_data.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 8
  %117 = ptrtoint ptr %mask_data.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mask_data.i, align 4
  call void @kfree(ptr noundef %118) #14
  %unmasked_data.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 7
  %119 = ptrtoint ptr %unmasked_data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %unmasked_data.i, align 4
  call void @kfree(ptr noundef %120) #14
  %flow_table.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %6, i32 0, i32 10
  %fl_node.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_flower_table_params to i32))
  %.unpack228.i = load i32, ptr @nfp_flower_table_params, align 4
  %121 = insertvalue [7 x i32] undef, i32 %.unpack228.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2) to i32))
  %.unpack229.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2), align 4
  %122 = insertvalue [7 x i32] %121, i32 %.unpack229.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4) to i32))
  %.unpack230.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4), align 4
  %123 = insertvalue [7 x i32] %122, i32 %.unpack230.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5) to i32))
  %.unpack231.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5), align 4
  %124 = insertvalue [7 x i32] %123, i32 %.unpack231.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7) to i32))
  %.unpack232.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7), align 4
  %125 = insertvalue [7 x i32] %124, i32 %.unpack232.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8) to i32))
  %.unpack233.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8), align 4
  %126 = insertvalue [7 x i32] %125, i32 %.unpack233.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9) to i32))
  %.unpack234.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9), align 4
  %127 = insertvalue [7 x i32] %126, i32 %.unpack234.i, 6
  %call122.i = call fastcc i32 @rhashtable_remove_fast(ptr noundef %flow_table.i, ptr noundef %fl_node.i, [7 x i32] %127) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %if.end120.i.if.end169.i_crit_edge, label %land.rhs131.i

if.end120.i.if.end169.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end169.i

land.rhs131.i:                                    ; preds = %if.end120.i
  %.b221235.i = load i1, ptr @nfp_flower_remove_merge_flow.__already_done.58, align 1
  br i1 %.b221235.i, label %land.rhs131.i.if.end169.i_crit_edge, label %if.then142.i, !prof !183

land.rhs131.i.if.end169.i_crit_edge:              ; preds = %land.rhs131.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end169.i

if.then142.i:                                     ; preds = %land.rhs131.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_flower_remove_merge_flow.__already_done.58, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1469, i32 noundef 9, ptr noundef null) #14
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then142.i, %land.rhs131.i.if.end169.i_crit_edge, %if.end120.i.if.end169.i_crit_edge
  %tobool178.not.i = icmp eq ptr %4, null
  br i1 %tobool178.not.i, label %if.end169.i.nfp_flower_remove_merge_flow.exit_crit_edge, label %do.end182.i

if.end169.i.nfp_flower_remove_merge_flow.exit_crit_edge: ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_remove_merge_flow.exit

do.end182.i:                                      ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #16
  %rcu.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %4, i32 0, i32 3
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 36 to ptr)) #14
  br label %nfp_flower_remove_merge_flow.exit

nfp_flower_remove_merge_flow.exit:                ; preds = %do.end182.i, %if.end169.i.nfp_flower_remove_merge_flow.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_ctx.i) #14
  %cmp.not = icmp eq ptr %.pn, %linked_flows
  br i1 %cmp.not, label %nfp_flower_remove_merge_flow.exit.for.end_crit_edge, label %nfp_flower_remove_merge_flow.exit.for.body_crit_edge

nfp_flower_remove_merge_flow.exit.for.body_crit_edge: ; preds = %nfp_flower_remove_merge_flow.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

nfp_flower_remove_merge_flow.exit.for.end_crit_edge: ; preds = %nfp_flower_remove_merge_flow.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %nfp_flower_remove_merge_flow.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_update_merge_stats(ptr nocapture noundef readonly %app, ptr noundef readonly %sub_flow) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %linked_flows = getelementptr inbounds %struct.nfp_fl_payload, ptr %sub_flow, i32 0, i32 10
  %0 = ptrtoint ptr %linked_flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn12 = load ptr, ptr %linked_flows, align 4
  %cmp.not13 = icmp eq ptr %.pn12, %linked_flows
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %__nfp_flower_update_merge_stats.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn14 = phi ptr [ %.pn12, %for.body.lr.ph ], [ %.pn, %__nfp_flower_update_merge_stats.exit.for.body_crit_edge ]
  %flow = getelementptr i8, ptr %.pn14, i32 -4
  %1 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %flow, align 4
  %3 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1.i, align 4
  %host_ctx_id.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %host_ctx_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_ctx_id.i, align 4
  %stats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %4, i32 0, i32 11
  %7 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stats.i, align 4
  %arrayidx.i = getelementptr %struct.nfp_fl_stats, ptr %8, i32 %6
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i, label %for.body.__nfp_flower_update_merge_stats.exit_crit_edge, label %if.end.i

for.body.__nfp_flower_update_merge_stats.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %__nfp_flower_update_merge_stats.exit

if.end.i:                                         ; preds = %for.body
  %bytes5.i = getelementptr %struct.nfp_fl_stats, ptr %8, i32 %6, i32 1
  %11 = ptrtoint ptr %bytes5.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes5.i, align 8
  %used8.i = getelementptr %struct.nfp_fl_stats, ptr %8, i32 %6, i32 2
  %13 = ptrtoint ptr %used8.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %used8.i, align 8
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %arrayidx.i, align 8
  %16 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stats.i, align 4
  %bytes14.i = getelementptr %struct.nfp_fl_stats, ptr %17, i32 %6, i32 1
  %18 = ptrtoint ptr %bytes14.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %bytes14.i, align 8
  %linked_flows.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %2, i32 0, i32 10
  %19 = ptrtoint ptr %linked_flows.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %link.072.i = load ptr, ptr %linked_flows.i, align 4
  %cmp.not73.i = icmp eq ptr %link.072.i, %linked_flows.i
  br i1 %cmp.not73.i, label %if.end.i.__nfp_flower_update_merge_stats.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.__nfp_flower_update_merge_stats.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__nfp_flower_update_merge_stats.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %link.074.i = phi ptr [ %link.0.i, %for.body.i.for.body.i_crit_edge ], [ %link.072.i, %if.end.i.for.body.i_crit_edge ]
  %flow.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.074.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %flow.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flow.i, align 4
  %host_ctx_id19.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %host_ctx_id19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_ctx_id19.i, align 4
  %24 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats.i, align 4
  %arrayidx21.i = getelementptr %struct.nfp_fl_stats, ptr %25, i32 %23
  %26 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx21.i, align 8
  %add.i = add i64 %27, %10
  store i64 %add.i, ptr %arrayidx21.i, align 8
  %28 = load ptr, ptr %stats.i, align 4
  %bytes25.i = getelementptr %struct.nfp_fl_stats, ptr %28, i32 %23, i32 1
  %29 = ptrtoint ptr %bytes25.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes25.i, align 8
  %add26.i = add i64 %30, %12
  store i64 %add26.i, ptr %bytes25.i, align 8
  %31 = load ptr, ptr %stats.i, align 4
  %used29.i = getelementptr %struct.nfp_fl_stats, ptr %31, i32 %23, i32 2
  %32 = ptrtoint ptr %used29.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %used29.i, align 8
  %34 = tail call i64 @llvm.umax.i64(i64 %14, i64 %33) #14
  %35 = ptrtoint ptr %used29.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %used29.i, align 8
  %36 = ptrtoint ptr %link.074.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %link.0.i = load ptr, ptr %link.074.i, align 4
  %cmp.not.i = icmp eq ptr %link.0.i, %linked_flows.i
  br i1 %cmp.not.i, label %for.body.i.__nfp_flower_update_merge_stats.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.__nfp_flower_update_merge_stats.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__nfp_flower_update_merge_stats.exit

__nfp_flower_update_merge_stats.exit:             ; preds = %for.body.i.__nfp_flower_update_merge_stats.exit_crit_edge, %if.end.i.__nfp_flower_update_merge_stats.exit_crit_edge, %for.body.__nfp_flower_update_merge_stats.exit_crit_edge
  %37 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, %linked_flows
  br i1 %cmp.not, label %__nfp_flower_update_merge_stats.exit.for.end_crit_edge, label %__nfp_flower_update_merge_stats.exit.for.body_crit_edge

__nfp_flower_update_merge_stats.exit.for.body_crit_edge: ; preds = %__nfp_flower_update_merge_stats.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

__nfp_flower_update_merge_stats.exit.for.end_crit_edge: ; preds = %__nfp_flower_update_merge_stats.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %__nfp_flower_update_merge_stats.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_setup_tc(ptr nocapture noundef readnone %app, ptr noundef %netdev, i32 noundef %type, ptr noundef %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 1
  %0 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %binder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %app_priv.i = getelementptr i8, ptr %netdev, i32 2324
  %2 = ptrtoint ptr %app_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app_priv.i, align 4
  %block_shared.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 2
  %4 = ptrtoint ptr %block_shared.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %block_shared.i, align 4, !range !192
  %block_shared1.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %block_shared1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %block_shared1.i, align 1
  %driver_block_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 7
  %7 = ptrtoint ptr %driver_block_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nfp_block_cb_list, ptr %driver_block_list.i, align 4
  %8 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type_data, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %9, label %if.end.i.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb10.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  %call2.i = tail call zeroext i1 @flow_block_cb_is_busy(ptr noundef nonnull @nfp_flower_setup_tc_block_cb, ptr noundef %add.ptr.i.i, ptr noundef nonnull @nfp_block_cb_list) #14
  br i1 %call2.i, label %sw.bb.i.return_crit_edge, label %if.end4.i

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end4.i:                                        ; preds = %sw.bb.i
  %call5.i = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull @nfp_flower_setup_tc_block_cb, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i.i, ptr noundef null) #14
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call5.i to i32
  br label %return

if.end9.i:                                        ; preds = %if.end4.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call5.i, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %prev.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %13, ptr noundef %cb_list.i.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end9.i.flow_block_cb_add.exit.i_crit_edge

if.end9.i.flow_block_cb_add.exit.i_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flow_block_cb_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call5.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list.i.i, ptr %13, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i.i, %if.end9.i.flow_block_cb_add.exit.i_crit_edge
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nfp_block_cb_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call5.i, ptr noundef %18, ptr noundef nonnull @nfp_block_cb_list) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %flow_block_cb_add.exit.i.return_crit_edge

flow_block_cb_add.exit.i.return_crit_edge:        ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i.i.i:                                     ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call5.i, ptr getelementptr inbounds (%struct.list_head, ptr @nfp_block_cb_list, i32 0, i32 1), align 4
  %19 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nfp_block_cb_list, ptr %call5.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call5.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call5.i, ptr %18, align 4
  br label %return

sw.bb10.i:                                        ; preds = %if.end.i
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %22 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %block.i, align 4
  %call11.i = tail call ptr @flow_block_cb_lookup(ptr noundef %23, ptr noundef nonnull @nfp_flower_setup_tc_block_cb, ptr noundef %add.ptr.i.i) #14
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %sw.bb10.i.return_crit_edge, label %if.end14.i

sw.bb10.i.return_crit_edge:                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end14.i:                                       ; preds = %sw.bb10.i
  %list.i34.i = getelementptr inbounds %struct.flow_block_cb, ptr %call11.i, i32 0, i32 1
  %cb_list.i35.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %call.i.i.i36.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i34.i) #14
  br i1 %call.i.i.i36.i, label %if.end.i.i.i37.i, label %if.end14.i.__list_del_entry.exit.i.i.i_crit_edge

if.end14.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i37.i:                                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call11.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %list.i34.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list.i34.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i37.i, %if.end14.i.__list_del_entry.exit.i.i.i_crit_edge
  %30 = ptrtoint ptr %cb_list.i35.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cb_list.i35.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i34.i, ptr noundef %cb_list.i35.i, ptr noundef %31) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flow_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i34.i, ptr %prev1.i.i2.i.i.i, align 4
  %33 = ptrtoint ptr %list.i34.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %list.i34.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call11.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cb_list.i35.i, ptr %prev3.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %cb_list.i35.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list.i34.i, ptr %cb_list.i35.i, align 4
  br label %flow_block_cb_remove.exit.i

flow_block_cb_remove.exit.i:                      ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_block_cb_remove.exit.i_crit_edge
  %call.i.i38.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call11.i) #14
  br i1 %call.i.i38.i, label %if.end.i.i40.i, label %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge

flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge: ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i40.i:                                   ; preds = %flow_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i39.i = getelementptr inbounds %struct.list_head, ptr %call11.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i39.i, align 4
  %38 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call11.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i40.i, %flow_block_cb_remove.exit.i.list_del.exit.i_crit_edge
  %42 = ptrtoint ptr %call11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %call11.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call11.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit.i, %sw.bb10.i.return_crit_edge, %if.end.i.i.i, %flow_block_cb_add.exit.i.return_crit_edge, %if.then7.i, %sw.bb.i.return_crit_edge, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %list_del.exit.i ], [ %11, %if.then7.i ], [ -95, %sw.bb.return_crit_edge ], [ -16, %sw.bb.i.return_crit_edge ], [ -2, %sw.bb10.i.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ 0, %flow_block_cb_add.exit.i.return_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_setup_indr_tc_release(ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %cb_priv, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %cb_priv, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %cb_priv, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %cb_priv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_indr_setup_tc_cb(ptr noundef %netdev, ptr noundef %sch, ptr noundef %cb_priv, i32 noundef %type, ptr noundef %type_data, ptr noundef %data, ptr noundef %cleanup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %netdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %rtnl_link_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtnl_link_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %if.end
  %kind.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kind.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(12) @.str.70) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.nfp_fl_is_netdev_to_offload.exit_crit_edge, label %netif_is_vxlan.exit.i

if.end.i.nfp_fl_is_netdev_to_offload.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_fl_is_netdev_to_offload.exit

netif_is_vxlan.exit.i:                            ; preds = %if.end.i
  %call.i.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(6) @.str.34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %netif_is_vxlan.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge, label %netif_is_geneve.exit.i

netif_is_vxlan.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge: ; preds = %netif_is_vxlan.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_fl_is_netdev_to_offload.exit

netif_is_geneve.exit.i:                           ; preds = %netif_is_vxlan.exit.i
  %call.i25.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(7) @.str.35) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool2.not.i26.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool2.not.i26.i, label %netif_is_geneve.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge, label %netif_is_gretap.exit.i

netif_is_geneve.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge: ; preds = %netif_is_geneve.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_fl_is_netdev_to_offload.exit

netif_is_gretap.exit.i:                           ; preds = %netif_is_geneve.exit.i
  %call.i31.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(7) @.str.29) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool2.not.i32.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool2.not.i32.i, label %netif_is_gretap.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge, label %netif_is_ip6gretap.exit.i

netif_is_gretap.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge: ; preds = %netif_is_gretap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_fl_is_netdev_to_offload.exit

netif_is_ip6gretap.exit.i:                        ; preds = %netif_is_gretap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i37.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.30) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool2.not.i38.i = icmp eq i32 %call.i37.i, 0
  br label %nfp_fl_is_netdev_to_offload.exit

nfp_fl_is_netdev_to_offload.exit:                 ; preds = %netif_is_ip6gretap.exit.i, %netif_is_gretap.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge, %netif_is_geneve.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge, %netif_is_vxlan.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge, %if.end.i.nfp_fl_is_netdev_to_offload.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end.i.nfp_fl_is_netdev_to_offload.exit_crit_edge ], [ true, %netif_is_vxlan.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge ], [ true, %netif_is_geneve.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge ], [ true, %netif_is_gretap.exit.i.nfp_fl_is_netdev_to_offload.exit_crit_edge ], [ %tobool2.not.i38.i, %netif_is_ip6gretap.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cond = icmp eq i32 %type, 5
  %or.cond = and i1 %cond, %retval.0.i
  br i1 %or.cond, label %sw.bb, label %nfp_fl_is_netdev_to_offload.exit.return_crit_edge

nfp_fl_is_netdev_to_offload.exit.return_crit_edge: ; preds = %nfp_fl_is_netdev_to_offload.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %nfp_fl_is_netdev_to_offload.exit
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %cb_priv, i32 0, i32 8
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 4
  %binder_type.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 1
  %6 = ptrtoint ptr %binder_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %binder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %sw.bb.land.lhs.true4.i_crit_edge, label %land.lhs.true.i

sw.bb.land.lhs.true4.i_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true4.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %flower_en_feats.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %flower_en_feats.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flower_en_feats.i.i, align 8
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.return_crit_edge, label %nfp_flower_internal_port_can_offload.exit.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

nfp_flower_internal_port_can_offload.exit.i:      ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kind.i, align 4
  %call.i.i6 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(12) @.str.70) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %tobool5.not.i.i = icmp eq i32 %call.i.i6, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i, label %nfp_flower_internal_port_can_offload.exit.i.return_crit_edge

nfp_flower_internal_port_can_offload.exit.i.return_crit_edge: ; preds = %nfp_flower_internal_port_can_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false.i:                                  ; preds = %nfp_flower_internal_port_can_offload.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3.not.i = icmp eq i32 %7, 2
  br i1 %cmp3.not.i, label %lor.lhs.false.i.if.end.i7_crit_edge, label %lor.lhs.false.i.land.lhs.true4.i_crit_edge

lor.lhs.false.i.land.lhs.true4.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true4.i

lor.lhs.false.i.if.end.i7_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i7

land.lhs.true4.i:                                 ; preds = %lor.lhs.false.i.land.lhs.true4.i_crit_edge, %sw.bb.land.lhs.true4.i_crit_edge
  %flower_en_feats.i71.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %flower_en_feats.i71.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flower_en_feats.i71.i, align 8
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i72.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i72.i, label %land.lhs.true4.i.if.end.i7_crit_edge, label %nfp_flower_internal_port_can_offload.exit81.i

land.lhs.true4.i.if.end.i7_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i7

nfp_flower_internal_port_can_offload.exit81.i:    ; preds = %land.lhs.true4.i
  %16 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kind.i, align 4
  %call.i77.i = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(12) @.str.70) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool5.not.i78.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool5.not.i78.i, label %nfp_flower_internal_port_can_offload.exit81.i.return_crit_edge, label %nfp_flower_internal_port_can_offload.exit81.i.if.end.i7_crit_edge

nfp_flower_internal_port_can_offload.exit81.i.if.end.i7_crit_edge: ; preds = %nfp_flower_internal_port_can_offload.exit81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i7

nfp_flower_internal_port_can_offload.exit81.i.return_crit_edge: ; preds = %nfp_flower_internal_port_can_offload.exit81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i7:                                        ; preds = %nfp_flower_internal_port_can_offload.exit81.i.if.end.i7_crit_edge, %land.lhs.true4.i.if.end.i7_crit_edge, %lor.lhs.false.i.if.end.i7_crit_edge
  %18 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type_data, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %19, label %if.end.i7.return_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb23.i
  ]

if.end.i7.return_crit_edge:                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb.i:                                          ; preds = %if.end.i7
  %indr_block_cb_priv.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %5, i32 0, i32 22
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.bb.i
  %.pn.in.i.i = phi ptr [ %indr_block_cb_priv.i.i, %sw.bb.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %indr_block_cb_priv.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end10.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end10.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cb_priv.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %22 = ptrtoint ptr %cb_priv.0.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb_priv.0.i.i, align 4
  %cmp4.i.i = icmp eq ptr %23, %netdev
  br i1 %cmp4.i.i, label %nfp_flower_indr_block_cb_priv_lookup.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

nfp_flower_indr_block_cb_priv_lookup.exit.i:      ; preds = %for.body.i.i
  %cb_priv.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -8
  %tobool.not.i8 = icmp eq ptr %cb_priv.0.i.i.le, null
  br i1 %tobool.not.i8, label %nfp_flower_indr_block_cb_priv_lookup.exit.i.if.end10.i_crit_edge, label %land.lhs.true7.i

nfp_flower_indr_block_cb_priv_lookup.exit.i.if.end10.i_crit_edge: ; preds = %nfp_flower_indr_block_cb_priv_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

land.lhs.true7.i:                                 ; preds = %nfp_flower_indr_block_cb_priv_lookup.exit.i
  %call8.i = tail call zeroext i1 @flow_block_cb_is_busy(ptr noundef nonnull @nfp_flower_setup_indr_block_cb, ptr noundef nonnull %cb_priv.0.i.i.le, ptr noundef nonnull @nfp_block_cb_list) #14
  br i1 %call8.i, label %land.lhs.true7.i.return_crit_edge, label %land.lhs.true7.i.if.end10.i_crit_edge

land.lhs.true7.i.if.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

land.lhs.true7.i.return_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end10.i:                                       ; preds = %land.lhs.true7.i.if.end10.i_crit_edge, %nfp_flower_indr_block_cb_priv_lookup.exit.i.if.end10.i_crit_edge, %for.cond.i.i.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 16) #18
  %tobool12.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not.i, label %if.end10.i.return_crit_edge, label %if.end14.i

if.end10.i.return_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end14.i:                                       ; preds = %if.end10.i
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %netdev, ptr %call7.i.i, align 8
  %app16.i = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %app16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cb_priv, ptr %app16.i, align 4
  %list.i = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %indr_block_cb_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %indr_block_cb_priv.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %indr_block_cb_priv.i.i, ptr noundef %28) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end14.i.list_add.exit.i_crit_edge

if.end14.i.list_add.exit.i_crit_edge:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %indr_block_cb_priv.i.i, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %indr_block_cb_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list.i, ptr %indr_block_cb_priv.i.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end14.i.list_add.exit.i_crit_edge
  %call17.i = tail call ptr @flow_indr_block_cb_alloc(ptr noundef nonnull @nfp_flower_setup_indr_block_cb, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nfp_flower_setup_indr_tc_release, ptr noundef %type_data, ptr noundef nonnull %netdev, ptr noundef %sch, ptr noundef %data, ptr noundef %cb_priv, ptr noundef %cleanup) #14
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then19.i, label %if.end22.i

if.then19.i:                                      ; preds = %list_add.exit.i
  %call.i.i83.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #14
  br i1 %call.i.i83.i, label %if.end.i.i84.i, label %if.then19.i.list_del.exit.i_crit_edge

if.then19.i.list_del.exit.i_crit_edge:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i84.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %list.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i84.i, %if.then19.i.list_del.exit.i_crit_edge
  %39 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %41 = ptrtoint ptr %call17.i to i32
  br label %return

if.end22.i:                                       ; preds = %list_add.exit.i
  %list.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call17.i, i32 0, i32 1
  %cb_list.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %prev.i.i85.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %prev.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i85.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %43, ptr noundef %cb_list.i.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end22.i.flow_block_cb_add.exit.i_crit_edge

if.end22.i.flow_block_cb_add.exit.i_crit_edge:    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flow_block_cb_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %prev.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list.i.i, ptr %prev.i.i85.i, align 4
  %45 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cb_list.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call17.i, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list.i.i, ptr %43, align 4
  br label %flow_block_cb_add.exit.i

flow_block_cb_add.exit.i:                         ; preds = %if.end.i.i.i.i, %if.end22.i.flow_block_cb_add.exit.i_crit_edge
  %48 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nfp_block_cb_list, i32 0, i32 1), align 4
  %call.i.i86.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call17.i, ptr noundef %48, ptr noundef nonnull @nfp_block_cb_list) #14
  br i1 %call.i.i86.i, label %if.end.i.i88.i, label %flow_block_cb_add.exit.i.return_crit_edge

flow_block_cb_add.exit.i.return_crit_edge:        ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i.i88.i:                                   ; preds = %flow_block_cb_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call17.i, ptr getelementptr inbounds (%struct.list_head, ptr @nfp_block_cb_list, i32 0, i32 1), align 4
  %49 = ptrtoint ptr %call17.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @nfp_block_cb_list, ptr %call17.i, align 4
  %prev3.i.i87.i = getelementptr inbounds %struct.list_head, ptr %call17.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %prev3.i.i87.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call17.i, ptr %48, align 4
  br label %return

sw.bb23.i:                                        ; preds = %if.end.i7
  %indr_block_cb_priv.i90.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %5, i32 0, i32 22
  br label %for.cond.i94.i

for.cond.i94.i:                                   ; preds = %for.body.i97.i.for.cond.i94.i_crit_edge, %sw.bb23.i
  %.pn.in.i91.i = phi ptr [ %indr_block_cb_priv.i90.i, %sw.bb23.i ], [ %.pn.i92.i, %for.body.i97.i.for.cond.i94.i_crit_edge ]
  %52 = ptrtoint ptr %.pn.in.i91.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i92.i = load ptr, ptr %.pn.in.i91.i, align 4
  %cmp.not.i93.i = icmp eq ptr %.pn.i92.i, %indr_block_cb_priv.i90.i
  br i1 %cmp.not.i93.i, label %for.cond.i94.i.return_crit_edge, label %for.body.i97.i

for.cond.i94.i.return_crit_edge:                  ; preds = %for.cond.i94.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

for.body.i97.i:                                   ; preds = %for.cond.i94.i
  %cb_priv.0.i95.i = getelementptr i8, ptr %.pn.i92.i, i32 -8
  %53 = ptrtoint ptr %cb_priv.0.i95.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cb_priv.0.i95.i, align 4
  %cmp4.i96.i = icmp eq ptr %54, %netdev
  br i1 %cmp4.i96.i, label %nfp_flower_indr_block_cb_priv_lookup.exit101.i, label %for.body.i97.i.for.cond.i94.i_crit_edge

for.body.i97.i.for.cond.i94.i_crit_edge:          ; preds = %for.body.i97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i94.i

nfp_flower_indr_block_cb_priv_lookup.exit101.i:   ; preds = %for.body.i97.i
  %cb_priv.0.i95.i.le = getelementptr i8, ptr %.pn.i92.i, i32 -8
  %tobool25.not.i = icmp eq ptr %cb_priv.0.i95.i.le, null
  br i1 %tobool25.not.i, label %nfp_flower_indr_block_cb_priv_lookup.exit101.i.return_crit_edge, label %if.end27.i

nfp_flower_indr_block_cb_priv_lookup.exit101.i.return_crit_edge: ; preds = %nfp_flower_indr_block_cb_priv_lookup.exit101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end27.i:                                       ; preds = %nfp_flower_indr_block_cb_priv_lookup.exit101.i
  %block.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 5
  %55 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %block.i, align 4
  %call28.i = tail call ptr @flow_block_cb_lookup(ptr noundef %56, ptr noundef nonnull @nfp_flower_setup_indr_block_cb, ptr noundef nonnull %cb_priv.0.i95.i.le) #14
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.end27.i.return_crit_edge, label %if.end31.i

if.end27.i.return_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end31.i:                                       ; preds = %if.end27.i
  %indr.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call28.i, i32 0, i32 6
  %call.i.i.i102.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %indr.i.i) #14
  br i1 %call.i.i.i102.i, label %if.end.i.i.i103.i, label %if.end31.i.list_del.exit.i.i_crit_edge

if.end31.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i.i103.i:                                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call28.i, i32 0, i32 6, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i.i, align 4
  %59 = ptrtoint ptr %indr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %indr.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i103.i, %if.end31.i.list_del.exit.i.i_crit_edge
  %63 = ptrtoint ptr %indr.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %indr.i.i, align 4
  %prev.i.i104.i = getelementptr inbounds %struct.flow_block_cb, ptr %call28.i, i32 0, i32 6, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i104.i, align 4
  %list1.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call28.i, i32 0, i32 1
  %cb_list.i105.i = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 6
  %call.i.i3.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list1.i.i) #14
  br i1 %call.i.i3.i.i, label %if.end.i.i6.i.i, label %list_del.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge

list_del.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i.i

if.end.i.i6.i.i:                                  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i4.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call28.i, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %prev.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i4.i.i, align 4
  %67 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %list1.i.i, align 4
  %prev1.i.i.i5.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i5.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i6.i.i, %list_del.exit.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %71 = ptrtoint ptr %cb_list.i105.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cb_list.i105.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list1.i.i, ptr noundef %cb_list.i105.i, ptr noundef %72) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.flow_indr_block_cb_remove.exit.i_crit_edge

__list_del_entry.exit.i.i.i.flow_indr_block_cb_remove.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %flow_indr_block_cb_remove.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %list1.i.i, ptr %prev1.i.i2.i.i.i, align 4
  %74 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %list1.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call28.i, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cb_list.i105.i, ptr %prev3.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %cb_list.i105.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %list1.i.i, ptr %cb_list.i105.i, align 4
  br label %flow_indr_block_cb_remove.exit.i

flow_indr_block_cb_remove.exit.i:                 ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.flow_indr_block_cb_remove.exit.i_crit_edge
  %call.i.i106.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call28.i) #14
  br i1 %call.i.i106.i, label %if.end.i.i109.i, label %flow_indr_block_cb_remove.exit.i.list_del.exit111.i_crit_edge

flow_indr_block_cb_remove.exit.i.list_del.exit111.i_crit_edge: ; preds = %flow_indr_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit111.i

if.end.i.i109.i:                                  ; preds = %flow_indr_block_cb_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i107.i = getelementptr inbounds %struct.list_head, ptr %call28.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i107.i, align 4
  %79 = ptrtoint ptr %call28.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call28.i, align 4
  %prev1.i.i.i108.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i108.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del.exit111.i

list_del.exit111.i:                               ; preds = %if.end.i.i109.i, %flow_indr_block_cb_remove.exit.i.list_del.exit111.i_crit_edge
  %83 = ptrtoint ptr %call28.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %call28.i, align 4
  %prev.i110.i = getelementptr inbounds %struct.list_head, ptr %call28.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i110.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i110.i, align 4
  br label %return

return:                                           ; preds = %list_del.exit111.i, %if.end27.i.return_crit_edge, %nfp_flower_indr_block_cb_priv_lookup.exit101.i.return_crit_edge, %for.cond.i94.i.return_crit_edge, %if.end.i.i88.i, %flow_block_cb_add.exit.i.return_crit_edge, %list_del.exit.i, %if.end10.i.return_crit_edge, %land.lhs.true7.i.return_crit_edge, %if.end.i7.return_crit_edge, %nfp_flower_internal_port_can_offload.exit81.i.return_crit_edge, %nfp_flower_internal_port_can_offload.exit.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %nfp_fl_is_netdev_to_offload.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %nfp_fl_is_netdev_to_offload.exit.return_crit_edge ], [ 0, %list_del.exit111.i ], [ %41, %list_del.exit.i ], [ -95, %nfp_flower_internal_port_can_offload.exit81.i.return_crit_edge ], [ -95, %nfp_flower_internal_port_can_offload.exit.i.return_crit_edge ], [ -16, %land.lhs.true7.i.return_crit_edge ], [ -12, %if.end10.i.return_crit_edge ], [ -2, %nfp_flower_indr_block_cb_priv_lookup.exit101.i.return_crit_edge ], [ -2, %if.end27.i.return_crit_edge ], [ -95, %if.end.i7.return_crit_edge ], [ 0, %flow_block_cb_add.exit.i.return_crit_edge ], [ 0, %if.end.i.i88.i ], [ -95, %land.lhs.true.i.return_crit_edge ], [ -95, %if.end.return_crit_edge ], [ -2, %for.cond.i94.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !193
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !194

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !195
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !183

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !197
  %7 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !199
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !200
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #14
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !188

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #14, !srcloc !201
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !203
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !204
  %3 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !205
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %2 = tail call i32 @llvm.read_register.i32(metadata !172) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nfp_modify_flow_metadata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flow_block_cb_is_busy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr nocapture noundef readonly %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_priv, align 4
  %extack = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack, align 4
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %5, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #14
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tc_can_offload_extack.__msg, ptr %3, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %app = getelementptr inbounds %struct.nfp_repr, ptr %cb_priv, i32 0, i32 3
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %app, align 4
  %10 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb_priv, align 4
  %call2 = tail call fastcc i32 @nfp_flower_repr_offload(ptr noundef %9, ptr noundef %11, ptr noundef %type_data)
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %app4 = getelementptr inbounds %struct.nfp_repr, ptr %cb_priv, i32 0, i32 3
  %12 = ptrtoint ptr %app4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %app4, align 4
  %14 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb_priv, align 4
  %call6 = tail call i32 @nfp_flower_setup_qos_offload(ptr noundef %13, ptr noundef %15, ptr noundef %type_data) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %sw.bb3 ], [ %call2, %sw.bb ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_repr_offload(ptr noundef %app, ptr noundef %netdev, ptr noundef %flower) unnamed_addr #0 align 64 {
entry:
  %tun_type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.flow_cls_common_offload, ptr %flower, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %1)
  %cmp.i = icmp ugt i16 %1, 1535
  br i1 %cmp.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 1
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %command, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %if.end
  %rule.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 3
  %5 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rule.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tun_type.i) #14
  %7 = ptrtoint ptr %tun_type.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tun_type.i, align 4
  %priv1.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %8 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1.i, align 4
  %extack2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %flower, i32 0, i32 3
  %10 = ptrtoint ptr %extack2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack2.i, align 4
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %13, @nfp_repr_netdev_ops
  br i1 %cmp.i.i, label %if.then.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %call4.i = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %port.0.i = phi ptr [ %call4.i, %if.then.i ], [ null, %sw.bb.if.end.i_crit_edge ]
  %call5.i = tail call zeroext i1 @is_pre_ct_flow(ptr noundef %flower) #14
  br i1 %call5.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i = tail call i32 @nfp_fl_ct_handle_pre_ct(ptr noundef %9, ptr noundef %netdev, ptr noundef %flower, ptr noundef %11) #14
  br label %nfp_flower_add_offload.exit

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call zeroext i1 @is_post_ct_flow(ptr noundef %flower) #14
  br i1 %call9.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %call11.i = tail call i32 @nfp_fl_ct_handle_post_ct(ptr noundef %9, ptr noundef %netdev, ptr noundef %flower, ptr noundef %11) #14
  br label %nfp_flower_add_offload.exit

if.end12.i:                                       ; preds = %if.end8.i
  %14 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rule.i.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and.i.i = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %offload_pre_check.exit.i, label %if.end12.i.nfp_flower_add_offload.exit_crit_edge

if.end12.i.nfp_flower_add_offload.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_add_offload.exit

offload_pre_check.exit.i:                         ; preds = %if.end12.i
  %20 = ptrtoint ptr %flower to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flower, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool2.not.i.i, label %if.end15.i, label %offload_pre_check.exit.i.nfp_flower_add_offload.exit_crit_edge

offload_pre_check.exit.i.nfp_flower_add_offload.exit_crit_edge: ; preds = %offload_pre_check.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_add_offload.exit

if.end15.i:                                       ; preds = %offload_pre_check.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 12) #18
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end15.i.nfp_flower_add_offload.exit_crit_edge, label %if.end18.i

if.end15.i.nfp_flower_add_offload.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nfp_flower_add_offload.exit

if.end18.i:                                       ; preds = %if.end15.i
  %call19.i = call i32 @nfp_flower_calculate_key_layers(ptr noundef %app, ptr noundef %netdev, ptr noundef nonnull %call7.i.i, ptr noundef %6, ptr noundef nonnull %tun_type.i, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.err_free_key_ls.i_crit_edge

if.end18.i.err_free_key_ls.i_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_key_ls.i

if.end22.i:                                       ; preds = %if.end18.i
  %call23.i = tail call ptr @nfp_flower_allocate_new(ptr noundef nonnull %call7.i.i) #14
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %if.end22.i.err_free_key_ls.i_crit_edge, label %if.end26.i

if.end22.i.err_free_key_ls.i_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_key_ls.i

if.end26.i:                                       ; preds = %if.end22.i
  %23 = ptrtoint ptr %tun_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tun_type.i, align 4
  %call27.i = tail call i32 @nfp_flower_compile_flow_match(ptr noundef %app, ptr noundef %6, ptr noundef nonnull %call7.i.i, ptr noundef %netdev, ptr noundef nonnull %call23.i, i32 noundef %24, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.err_destroy_flow.i_crit_edge

if.end26.i.err_destroy_flow.i_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_flow.i

if.end30.i:                                       ; preds = %if.end26.i
  %call31.i = tail call i32 @nfp_flower_compile_action(ptr noundef %app, ptr noundef %6, ptr noundef %netdev, ptr noundef nonnull %call23.i, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.err_destroy_flow.i_crit_edge

if.end30.i.err_destroy_flow.i_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_flow.i

if.end34.i:                                       ; preds = %if.end30.i
  %pre_tun_rule.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call23.i, i32 0, i32 12
  %25 = ptrtoint ptr %pre_tun_rule.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pre_tun_rule.i, align 4
  %tobool35.not.i = icmp eq ptr %26, null
  br i1 %tobool35.not.i, label %if.end34.i.if.end41.i_crit_edge, label %if.then36.i

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.then36.i:                                      ; preds = %if.end34.i
  %call37.i = tail call fastcc i32 @nfp_flower_validate_pre_tun_rule(ptr noundef %app, ptr noundef nonnull %call23.i, ptr noundef nonnull %call7.i.i, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then36.i.if.end41.i_crit_edge, label %if.then36.i.err_destroy_flow.i_crit_edge

if.then36.i.err_destroy_flow.i_crit_edge:         ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_flow.i

if.then36.i.if.end41.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i.if.end41.i_crit_edge, %if.end34.i.if.end41.i_crit_edge
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 2
  %27 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cookie.i, align 4
  %call42.i = tail call i32 @nfp_compile_flow_metadata(ptr noundef %app, i32 noundef %28, ptr noundef nonnull %call23.i, ptr noundef %netdev, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end41.i.err_destroy_flow.i_crit_edge

if.end41.i.err_destroy_flow.i_crit_edge:          ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_flow.i

if.end45.i:                                       ; preds = %if.end41.i
  %29 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cookie.i, align 4
  %tc_flower_cookie.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call23.i, i32 0, i32 1
  %31 = ptrtoint ptr %tc_flower_cookie.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tc_flower_cookie.i, align 4
  %flow_table.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %9, i32 0, i32 10
  %fl_node.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call23.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_flower_table_params to i32))
  %.unpack.i = load i32, ptr @nfp_flower_table_params, align 4
  %32 = insertvalue [7 x i32] undef, i32 %.unpack.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2) to i32))
  %.unpack196.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2), align 4
  %33 = insertvalue [7 x i32] %32, i32 %.unpack196.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4) to i32))
  %.unpack197.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4), align 4
  %34 = insertvalue [7 x i32] %33, i32 %.unpack197.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5) to i32))
  %.unpack198.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5), align 4
  %35 = insertvalue [7 x i32] %34, i32 %.unpack198.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7) to i32))
  %.unpack199.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7), align 4
  %36 = insertvalue [7 x i32] %35, i32 %.unpack199.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8) to i32))
  %.unpack200.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8), align 4
  %37 = insertvalue [7 x i32] %36, i32 %.unpack200.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9) to i32))
  %.unpack201.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9), align 4
  %38 = insertvalue [7 x i32] %37, i32 %.unpack201.i, 6
  %call47.i = tail call fastcc i32 @rhashtable_insert_fast(ptr noundef %flow_table.i, ptr noundef %fl_node.i, [7 x i32] %38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end53.i, label %do.body.i

do.body.i:                                        ; preds = %if.end45.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_add_offload.__msg) #14
  %tobool50.not.i = icmp eq ptr %11, null
  br i1 %tobool50.not.i, label %do.body.i.err_release_metadata.i_crit_edge, label %if.then51.i

do.body.i.err_release_metadata.i_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_metadata.i

if.then51.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @nfp_flower_add_offload.__msg, ptr %11, align 4
  br label %err_release_metadata.i

if.end53.i:                                       ; preds = %if.end45.i
  %40 = ptrtoint ptr %pre_tun_rule.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pre_tun_rule.i, align 4
  %tobool56.not.i = icmp eq ptr %41, null
  br i1 %tobool56.not.i, label %if.else.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  %call58.i = tail call i32 @nfp_flower_xmit_pre_tun_flow(ptr noundef %app, ptr noundef nonnull %call23.i) #14
  br label %if.end60.i

if.else.i:                                        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  %call59.i = tail call i32 @nfp_flower_xmit_flow(ptr noundef %app, ptr noundef nonnull %call23.i, i8 noundef zeroext 0) #14
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else.i, %if.then57.i
  %err.0.i = phi i32 [ %call58.i, %if.then57.i ], [ %call59.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool61.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %err_remove_rhash.i

if.end63.i:                                       ; preds = %if.end60.i
  %tobool64.not.i = icmp eq ptr %port.0.i, null
  br i1 %tobool64.not.i, label %if.end63.i.if.end66.i_crit_edge, label %if.then65.i

if.end63.i.if.end66.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  %tc_offload_cnt.i = getelementptr inbounds %struct.nfp_port, ptr %port.0.i, i32 0, i32 3
  %42 = ptrtoint ptr %tc_offload_cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tc_offload_cnt.i, align 4
  %inc.i = add i32 %43, 1
  store i32 %inc.i, ptr %tc_offload_cnt.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %if.end63.i.if.end66.i_crit_edge
  %in_hw.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call23.i, i32 0, i32 11
  %44 = ptrtoint ptr %in_hw.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %in_hw.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %nfp_flower_add_offload.exit

err_remove_rhash.i:                               ; preds = %if.end60.i
  %call69.i = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %flow_table.i, ptr noundef %fl_node.i, [7 x i32] %38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %err_remove_rhash.i.err_release_metadata.i_crit_edge, label %land.rhs.i

err_remove_rhash.i.err_release_metadata.i_crit_edge: ; preds = %err_remove_rhash.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_metadata.i

land.rhs.i:                                       ; preds = %err_remove_rhash.i
  %.b209.i = load i1, ptr @nfp_flower_add_offload.__already_done, align 1
  br i1 %.b209.i, label %land.rhs.i.err_release_metadata.i_crit_edge, label %if.then78.i, !prof !183

land.rhs.i.err_release_metadata.i_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_metadata.i

if.then78.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_flower_add_offload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1386, i32 noundef 9, ptr noundef null) #14
  br label %err_release_metadata.i

err_release_metadata.i:                           ; preds = %if.then78.i, %land.rhs.i.err_release_metadata.i_crit_edge, %err_remove_rhash.i.err_release_metadata.i_crit_edge, %if.then51.i, %do.body.i.err_release_metadata.i_crit_edge
  %err.1.i = phi i32 [ %call47.i, %if.then51.i ], [ %call47.i, %do.body.i.err_release_metadata.i_crit_edge ], [ %err.0.i, %err_remove_rhash.i.err_release_metadata.i_crit_edge ], [ %err.0.i, %if.then78.i ], [ %err.0.i, %land.rhs.i.err_release_metadata.i_crit_edge ]
  %call111.i = tail call i32 @nfp_modify_flow_metadata(ptr noundef %app, ptr noundef nonnull %call23.i) #14
  br label %err_destroy_flow.i

err_destroy_flow.i:                               ; preds = %err_release_metadata.i, %if.end41.i.err_destroy_flow.i_crit_edge, %if.then36.i.err_destroy_flow.i_crit_edge, %if.end30.i.err_destroy_flow.i_crit_edge, %if.end26.i.err_destroy_flow.i_crit_edge
  %err.2.i = phi i32 [ %call27.i, %if.end26.i.err_destroy_flow.i_crit_edge ], [ %call31.i, %if.end30.i.err_destroy_flow.i_crit_edge ], [ %call37.i, %if.then36.i.err_destroy_flow.i_crit_edge ], [ %call42.i, %if.end41.i.err_destroy_flow.i_crit_edge ], [ %err.1.i, %err_release_metadata.i ]
  %nfp_tun_ipv6.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call23.i, i32 0, i32 5
  %45 = ptrtoint ptr %nfp_tun_ipv6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nfp_tun_ipv6.i, align 4
  %tobool112.not.i = icmp eq ptr %46, null
  br i1 %tobool112.not.i, label %err_destroy_flow.i.if.end115.i_crit_edge, label %if.then113.i

err_destroy_flow.i.if.end115.i_crit_edge:         ; preds = %err_destroy_flow.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115.i

if.then113.i:                                     ; preds = %err_destroy_flow.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nfp_tunnel_put_ipv6_off(ptr noundef %app, ptr noundef nonnull %46) #14
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then113.i, %err_destroy_flow.i.if.end115.i_crit_edge
  %action_data.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call23.i, i32 0, i32 9
  %47 = ptrtoint ptr %action_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %action_data.i, align 4
  tail call void @kfree(ptr noundef %48) #14
  %mask_data.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call23.i, i32 0, i32 8
  %49 = ptrtoint ptr %mask_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mask_data.i, align 4
  tail call void @kfree(ptr noundef %50) #14
  %unmasked_data.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call23.i, i32 0, i32 7
  %51 = ptrtoint ptr %unmasked_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %unmasked_data.i, align 4
  tail call void @kfree(ptr noundef %52) #14
  tail call void @kfree(ptr noundef nonnull %call23.i) #14
  br label %err_free_key_ls.i

err_free_key_ls.i:                                ; preds = %if.end115.i, %if.end22.i.err_free_key_ls.i_crit_edge, %if.end18.i.err_free_key_ls.i_crit_edge
  %err.3.i = phi i32 [ %call19.i, %if.end18.i.err_free_key_ls.i_crit_edge ], [ %err.2.i, %if.end115.i ], [ -12, %if.end22.i.err_free_key_ls.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %nfp_flower_add_offload.exit

nfp_flower_add_offload.exit:                      ; preds = %err_free_key_ls.i, %if.end66.i, %if.end15.i.nfp_flower_add_offload.exit_crit_edge, %offload_pre_check.exit.i.nfp_flower_add_offload.exit_crit_edge, %if.end12.i.nfp_flower_add_offload.exit_crit_edge, %if.then10.i, %if.then6.i
  %retval.0.i = phi i32 [ %call7.i, %if.then6.i ], [ %call11.i, %if.then10.i ], [ %err.3.i, %err_free_key_ls.i ], [ 0, %if.end66.i ], [ -95, %offload_pre_check.exit.i.nfp_flower_add_offload.exit_crit_edge ], [ -12, %if.end15.i.nfp_flower_add_offload.exit_crit_edge ], [ -95, %if.end12.i.nfp_flower_add_offload.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tun_type.i) #14
  br label %return

sw.bb2:                                           ; preds = %if.end
  %priv1.i14 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %53 = ptrtoint ptr %priv1.i14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv1.i14, align 4
  %extack2.i15 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %flower, i32 0, i32 3
  %55 = ptrtoint ptr %extack2.i15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %extack2.i15, align 4
  %netdev_ops.i.i16 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %57 = ptrtoint ptr %netdev_ops.i.i16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %netdev_ops.i.i16, align 8
  %cmp.i.i17 = icmp eq ptr %58, @nfp_repr_netdev_ops
  br i1 %cmp.i.i17, label %if.then.i18, label %sw.bb2.if.end.i24_crit_edge

sw.bb2.if.end.i24_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i24

if.then.i18:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #14
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then.i18, %sw.bb2.if.end.i24_crit_edge
  %port.0.i19 = phi ptr [ %call3.i, %if.then.i18 ], [ null, %sw.bb2.if.end.i24_crit_edge ]
  %ct_map_table.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %54, i32 0, i32 34
  %cookie.i20 = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack.i21 = load i32, ptr @nfp_ct_map_params, align 4
  %59 = insertvalue [7 x i32] undef, i32 %.unpack.i21, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack132.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %60 = insertvalue [7 x i32] %59, i32 %.unpack132.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack133.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %61 = insertvalue [7 x i32] %60, i32 %.unpack133.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack134.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %62 = insertvalue [7 x i32] %61, i32 %.unpack134.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack135.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %63 = insertvalue [7 x i32] %62, i32 %.unpack135.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack136.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %64 = insertvalue [7 x i32] %63, i32 %.unpack136.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack137.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %65 = insertvalue [7 x i32] %64, i32 %.unpack137.i, 6
  %call4.i22 = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table.i, ptr noundef %cookie.i20, [7 x i32] %65) #14
  %tobool.not.i23 = icmp eq ptr %call4.i22, null
  br i1 %tobool.not.i23, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = tail call i32 @nfp_fl_ct_del_flow(ptr noundef nonnull %call4.i22) #14
  br label %return

if.end7.i:                                        ; preds = %if.end.i24
  %66 = ptrtoint ptr %cookie.i20 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cookie.i20, align 4
  %call9.i25 = tail call ptr @nfp_flower_search_fl_table(ptr noundef %app, i32 noundef %67, ptr noundef %netdev) #14
  %tobool10.not.i = icmp eq ptr %call9.i25, null
  br i1 %tobool10.not.i, label %do.body.i26, label %if.end15.i27

do.body.i26:                                      ; preds = %if.end7.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_del_offload.__msg) #14
  %tobool12.not.i = icmp eq ptr %56, null
  br i1 %tobool12.not.i, label %do.body.i26.return_crit_edge, label %if.then13.i

do.body.i26.return_crit_edge:                     ; preds = %do.body.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then13.i:                                      ; preds = %do.body.i26
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @nfp_flower_del_offload.__msg, ptr %56, align 4
  br label %return

if.end15.i27:                                     ; preds = %if.end7.i
  %call16.i = tail call i32 @nfp_modify_flow_metadata(ptr noundef %app, ptr noundef nonnull %call9.i25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i27.err_free_merge_flow.i_crit_edge

if.end15.i27.err_free_merge_flow.i_crit_edge:     ; preds = %if.end15.i27
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_merge_flow.i

if.end19.i:                                       ; preds = %if.end15.i27
  %nfp_tun_ipv4_addr.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 4
  %69 = ptrtoint ptr %nfp_tun_ipv4_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nfp_tun_ipv4_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool20.not.i28 = icmp eq i32 %70, 0
  br i1 %tobool20.not.i28, label %if.end19.i.if.end23.i_crit_edge, label %if.then21.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nfp_tunnel_del_ipv4_off(ptr noundef %app, i32 noundef %70) #14
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %nfp_tun_ipv6.i29 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 5
  %71 = ptrtoint ptr %nfp_tun_ipv6.i29 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nfp_tun_ipv6.i29, align 4
  %tobool24.not.i30 = icmp eq ptr %72, null
  br i1 %tobool24.not.i30, label %if.end23.i.if.end27.i_crit_edge, label %if.then25.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nfp_tunnel_put_ipv6_off(ptr noundef %app, ptr noundef nonnull %72) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end27.i_crit_edge
  %in_hw.i31 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 11
  %73 = ptrtoint ptr %in_hw.i31 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %in_hw.i31, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool28.not.i32 = icmp eq i8 %74, 0
  br i1 %tobool28.not.i32, label %if.end27.i.err_free_merge_flow.i_crit_edge, label %if.end30.i34

if.end27.i.err_free_merge_flow.i_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_merge_flow.i

if.end30.i34:                                     ; preds = %if.end27.i
  %pre_tun_rule.i33 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 12
  %75 = ptrtoint ptr %pre_tun_rule.i33 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pre_tun_rule.i33, align 4
  %tobool31.not.i = icmp eq ptr %76, null
  br i1 %tobool31.not.i, label %if.else.i36, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i34
  call void @__sanitizer_cov_trace_pc() #16
  %call33.i = tail call i32 @nfp_flower_xmit_pre_tun_del_flow(ptr noundef %app, ptr noundef nonnull %call9.i25) #14
  br label %err_free_merge_flow.i

if.else.i36:                                      ; preds = %if.end30.i34
  %77 = ptrtoint ptr %call9.i25 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %call9.i25, align 4
  %conv.i.i = zext i8 %78 to i32
  %mask_len3.i.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %call9.i25, i32 0, i32 1
  %79 = ptrtoint ptr %mask_len3.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %mask_len3.i.i, align 1
  %conv4.i.i = zext i8 %80 to i32
  %act_len6.i.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %call9.i25, i32 0, i32 2
  %81 = ptrtoint ptr %act_len6.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %act_len6.i.i, align 2
  %conv7.i.i = zext i8 %82 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 28
  %add8.i.i = add nuw nsw i32 %add.i.i, %conv4.i.i
  %add9.i.i = add nuw nsw i32 %add8.i.i, %conv7.i.i
  %83 = lshr i8 %78, 2
  store i8 %83, ptr %call9.i25, align 4
  %84 = lshr i8 %80, 2
  store i8 %84, ptr %mask_len3.i.i, align 1
  %85 = lshr i8 %82, 2
  store i8 %85, ptr %act_len6.i.i, align 2
  %call.i.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %app, i32 noundef %add9.i.i, i32 noundef 2, i32 noundef 3264) #14
  %tobool.not.i.i35 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i35, label %if.else.i36.err_free_merge_flow.i_crit_edge, label %if.end.i.i

if.else.i36.err_free_merge_flow.i_crit_edge:      ; preds = %if.else.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_merge_flow.i

if.end.i.i:                                       ; preds = %if.else.i36
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %86 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %87, i32 4
  %88 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %call9.i25, i32 28)
  %arrayidx.i.i = getelementptr i8, ptr %87, i32 32
  %unmasked_data.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 7
  %89 = ptrtoint ptr %unmasked_data.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %unmasked_data.i.i, align 4
  %91 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %90, i32 %conv.i.i)
  %arrayidx28.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %add.i.i
  %mask_data.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 8
  %92 = ptrtoint ptr %mask_data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mask_data.i.i, align 4
  %94 = call ptr @memcpy(ptr %arrayidx28.i.i, ptr %93, i32 %conv4.i.i)
  %arrayidx31.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %add8.i.i
  %action_data.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 9
  %95 = ptrtoint ptr %action_data.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %action_data.i.i, align 4
  %97 = call ptr @memcpy(ptr %arrayidx31.i.i, ptr %96, i32 %conv7.i.i)
  %98 = ptrtoint ptr %call9.i25 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %call9.i25, align 4
  %shl.i.i = shl i8 %99, 2
  store i8 %shl.i.i, ptr %call9.i25, align 4
  %100 = ptrtoint ptr %mask_len3.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %mask_len3.i.i, align 1
  %shl39.i.i = shl i8 %101, 2
  store i8 %shl39.i.i, ptr %mask_len3.i.i, align 1
  %102 = ptrtoint ptr %act_len6.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %act_len6.i.i, align 2
  %shl44.i.i = shl i8 %103, 2
  store i8 %shl44.i.i, ptr %act_len6.i.i, align 2
  %ctrl.i.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %104 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ctrl.i.i, align 4
  %call46.i.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %105, ptr noundef nonnull %call.i.i) #14
  br label %err_free_merge_flow.i

err_free_merge_flow.i:                            ; preds = %if.end.i.i, %if.else.i36.err_free_merge_flow.i_crit_edge, %if.then32.i, %if.end27.i.err_free_merge_flow.i_crit_edge, %if.end15.i27.err_free_merge_flow.i_crit_edge
  %err.0.i37 = phi i32 [ %call16.i, %if.end15.i27.err_free_merge_flow.i_crit_edge ], [ %call33.i, %if.then32.i ], [ 0, %if.end27.i.err_free_merge_flow.i_crit_edge ], [ 0, %if.end.i.i ], [ -12, %if.else.i36.err_free_merge_flow.i_crit_edge ]
  tail call void @nfp_flower_del_linked_merge_flows(ptr noundef %app, ptr noundef nonnull %call9.i25) #14
  %tobool36.not.i = icmp eq ptr %port.0.i19, null
  br i1 %tobool36.not.i, label %err_free_merge_flow.i.if.end38.i_crit_edge, label %if.then37.i

err_free_merge_flow.i.if.end38.i_crit_edge:       ; preds = %err_free_merge_flow.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then37.i:                                      ; preds = %err_free_merge_flow.i
  call void @__sanitizer_cov_trace_pc() #16
  %tc_offload_cnt.i38 = getelementptr inbounds %struct.nfp_port, ptr %port.0.i19, i32 0, i32 3
  %106 = ptrtoint ptr %tc_offload_cnt.i38 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tc_offload_cnt.i38, align 4
  %dec.i = add i32 %107, -1
  store i32 %dec.i, ptr %tc_offload_cnt.i38, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %err_free_merge_flow.i.if.end38.i_crit_edge
  %action_data.i39 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 9
  %108 = ptrtoint ptr %action_data.i39 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %action_data.i39, align 4
  tail call void @kfree(ptr noundef %109) #14
  %mask_data.i40 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 8
  %110 = ptrtoint ptr %mask_data.i40 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mask_data.i40, align 4
  tail call void @kfree(ptr noundef %111) #14
  %unmasked_data.i41 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 7
  %112 = ptrtoint ptr %unmasked_data.i41 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %unmasked_data.i41, align 4
  tail call void @kfree(ptr noundef %113) #14
  %flow_table.i42 = getelementptr inbounds %struct.nfp_flower_priv, ptr %54, i32 0, i32 10
  %fl_node.i43 = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_flower_table_params to i32))
  %.unpack138.i = load i32, ptr @nfp_flower_table_params, align 4
  %114 = insertvalue [7 x i32] undef, i32 %.unpack138.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2) to i32))
  %.unpack139.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 2), align 4
  %115 = insertvalue [7 x i32] %114, i32 %.unpack139.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4) to i32))
  %.unpack140.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 4), align 4
  %116 = insertvalue [7 x i32] %115, i32 %.unpack140.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5) to i32))
  %.unpack141.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 5), align 4
  %117 = insertvalue [7 x i32] %116, i32 %.unpack141.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7) to i32))
  %.unpack142.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 7), align 4
  %118 = insertvalue [7 x i32] %117, i32 %.unpack142.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8) to i32))
  %.unpack143.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 8), align 4
  %119 = insertvalue [7 x i32] %118, i32 %.unpack143.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9) to i32))
  %.unpack144.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_flower_table_params, i32 0, i32 9), align 4
  %120 = insertvalue [7 x i32] %119, i32 %.unpack144.i, 6
  %call39.i = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %flow_table.i42, ptr noundef %fl_node.i43, [7 x i32] %120) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.do.end86.i_crit_edge, label %land.rhs.i44

if.end38.i.do.end86.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end86.i

land.rhs.i44:                                     ; preds = %if.end38.i
  %.b145.i = load i1, ptr @nfp_flower_del_offload.__already_done, align 1
  br i1 %.b145.i, label %land.rhs.i44.do.end86.i_crit_edge, label %if.then48.i, !prof !183

land.rhs.i44.do.end86.i_crit_edge:                ; preds = %land.rhs.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end86.i

if.then48.i:                                      ; preds = %land.rhs.i44
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nfp_flower_del_offload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1557, i32 noundef 9, ptr noundef null) #14
  br label %do.end86.i

do.end86.i:                                       ; preds = %if.then48.i, %land.rhs.i44.do.end86.i_crit_edge, %if.end38.i.do.end86.i_crit_edge
  %rcu.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call9.i25, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 36 to ptr)) #14
  br label %return

sw.bb4:                                           ; preds = %if.end
  %priv1.i46 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %121 = ptrtoint ptr %priv1.i46 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv1.i46, align 4
  %ct_map_table.i47 = getelementptr inbounds %struct.nfp_flower_priv, ptr %122, i32 0, i32 34
  %cookie.i48 = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfp_ct_map_params to i32))
  %.unpack.i49 = load i32, ptr @nfp_ct_map_params, align 4
  %123 = insertvalue [7 x i32] undef, i32 %.unpack.i49, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2) to i32))
  %.unpack54.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 2), align 4
  %124 = insertvalue [7 x i32] %123, i32 %.unpack54.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4) to i32))
  %.unpack55.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 4), align 4
  %125 = insertvalue [7 x i32] %124, i32 %.unpack55.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5) to i32))
  %.unpack56.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 5), align 4
  %126 = insertvalue [7 x i32] %125, i32 %.unpack56.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7) to i32))
  %.unpack57.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 7), align 4
  %127 = insertvalue [7 x i32] %126, i32 %.unpack57.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8) to i32))
  %.unpack58.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 8), align 4
  %128 = insertvalue [7 x i32] %127, i32 %.unpack58.i, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9) to i32))
  %.unpack59.i = load i32, ptr getelementptr inbounds (%struct.rhashtable_params, ptr @nfp_ct_map_params, i32 0, i32 9), align 4
  %129 = insertvalue [7 x i32] %128, i32 %.unpack59.i, 6
  %call.i = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_map_table.i47, ptr noundef %cookie.i48, [7 x i32] %129) #14
  %tobool.not.i50 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i50, label %if.end.i53, label %if.then.i51

if.then.i51:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i = tail call i32 @nfp_fl_ct_stats(ptr noundef %flower, ptr noundef nonnull %call.i) #14
  br label %return

if.end.i53:                                       ; preds = %sw.bb4
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %flower, i32 0, i32 3
  %130 = ptrtoint ptr %extack3.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %extack3.i, align 4
  %132 = ptrtoint ptr %cookie.i48 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cookie.i48, align 4
  %call5.i52 = tail call ptr @nfp_flower_search_fl_table(ptr noundef %app, i32 noundef %133, ptr noundef %netdev) #14
  %tobool6.not.i = icmp eq ptr %call5.i52, null
  br i1 %tobool6.not.i, label %do.body.i54, label %if.end11.i

do.body.i54:                                      ; preds = %if.end.i53
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_get_stats.__msg) #14
  %tobool8.not.i = icmp eq ptr %131, null
  br i1 %tobool8.not.i, label %do.body.i54.return_crit_edge, label %if.then9.i

do.body.i54.return_crit_edge:                     ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then9.i:                                       ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #16
  %134 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @nfp_flower_get_stats.__msg, ptr %131, align 4
  br label %return

if.end11.i:                                       ; preds = %if.end.i53
  %host_ctx_id.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %call5.i52, i32 0, i32 4
  %135 = ptrtoint ptr %host_ctx_id.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %host_ctx_id.i, align 4
  %stats_lock.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %122, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock.i) #14
  %linked_flows.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %call5.i52, i32 0, i32 10
  %137 = ptrtoint ptr %linked_flows.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile ptr, ptr %linked_flows.i, align 4
  %cmp.i.i55 = icmp eq ptr %138, %linked_flows.i
  br i1 %cmp.i.i55, label %if.end11.i.if.end15.i57_crit_edge, label %if.end11.i.for.body.i.i_crit_edge

if.end11.i.for.body.i.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body.i.i

if.end11.i.if.end15.i57_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i57

for.body.i.i:                                     ; preds = %__nfp_flower_update_merge_stats.exit.i.i.for.body.i.i_crit_edge, %if.end11.i.for.body.i.i_crit_edge
  %.pn14.i.i = phi ptr [ %.pn.i.i, %__nfp_flower_update_merge_stats.exit.i.i.for.body.i.i_crit_edge ], [ %138, %if.end11.i.for.body.i.i_crit_edge ]
  %flow.i.i = getelementptr i8, ptr %.pn14.i.i, i32 -4
  %139 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %flow.i.i, align 4
  %141 = ptrtoint ptr %priv1.i46 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv1.i46, align 4
  %host_ctx_id.i.i.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %140, i32 0, i32 4
  %143 = ptrtoint ptr %host_ctx_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %host_ctx_id.i.i.i, align 4
  %stats.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %142, i32 0, i32 11
  %145 = ptrtoint ptr %stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %stats.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.nfp_fl_stats, ptr %146, i32 %144
  %147 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %148)
  %tobool.not.i.i.i = icmp eq i64 %148, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__nfp_flower_update_merge_stats.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %bytes5.i.i.i = getelementptr %struct.nfp_fl_stats, ptr %146, i32 %144, i32 1
  %149 = ptrtoint ptr %bytes5.i.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %bytes5.i.i.i, align 8
  %used8.i.i.i = getelementptr %struct.nfp_fl_stats, ptr %146, i32 %144, i32 2
  %151 = ptrtoint ptr %used8.i.i.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %used8.i.i.i, align 8
  %153 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 0, ptr %arrayidx.i.i.i, align 8
  %154 = ptrtoint ptr %stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %stats.i.i.i, align 4
  %bytes14.i.i.i = getelementptr %struct.nfp_fl_stats, ptr %155, i32 %144, i32 1
  %156 = ptrtoint ptr %bytes14.i.i.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 0, ptr %bytes14.i.i.i, align 8
  %linked_flows.i.i.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %140, i32 0, i32 10
  %157 = ptrtoint ptr %linked_flows.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %link.072.i.i.i = load ptr, ptr %linked_flows.i.i.i, align 4
  %cmp.not73.i.i.i = icmp eq ptr %link.072.i.i.i, %linked_flows.i.i.i
  br i1 %cmp.not73.i.i.i, label %if.end.i.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__nfp_flower_update_merge_stats.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %link.074.i.i.i = phi ptr [ %link.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %link.072.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %flow.i.i.i = getelementptr inbounds %struct.nfp_fl_payload_link, ptr %link.074.i.i.i, i32 0, i32 1, i32 1
  %158 = ptrtoint ptr %flow.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %flow.i.i.i, align 4
  %host_ctx_id19.i.i.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %host_ctx_id19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %host_ctx_id19.i.i.i, align 4
  %162 = ptrtoint ptr %stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %stats.i.i.i, align 4
  %arrayidx21.i.i.i = getelementptr %struct.nfp_fl_stats, ptr %163, i32 %161
  %164 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %arrayidx21.i.i.i, align 8
  %add.i.i.i = add i64 %165, %148
  store i64 %add.i.i.i, ptr %arrayidx21.i.i.i, align 8
  %166 = load ptr, ptr %stats.i.i.i, align 4
  %bytes25.i.i.i = getelementptr %struct.nfp_fl_stats, ptr %166, i32 %161, i32 1
  %167 = ptrtoint ptr %bytes25.i.i.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %bytes25.i.i.i, align 8
  %add26.i.i.i = add i64 %168, %150
  store i64 %add26.i.i.i, ptr %bytes25.i.i.i, align 8
  %169 = load ptr, ptr %stats.i.i.i, align 4
  %used29.i.i.i = getelementptr %struct.nfp_fl_stats, ptr %169, i32 %161, i32 2
  %170 = ptrtoint ptr %used29.i.i.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %used29.i.i.i, align 8
  %172 = tail call i64 @llvm.umax.i64(i64 %152, i64 %171) #14
  %173 = ptrtoint ptr %used29.i.i.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %used29.i.i.i, align 8
  %174 = ptrtoint ptr %link.074.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %link.0.i.i.i = load ptr, ptr %link.074.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %link.0.i.i.i, %linked_flows.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.body.i.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__nfp_flower_update_merge_stats.exit.i.i

__nfp_flower_update_merge_stats.exit.i.i:         ; preds = %for.body.i.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge, %if.end.i.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge, %for.body.i.i.__nfp_flower_update_merge_stats.exit.i.i_crit_edge
  %175 = ptrtoint ptr %.pn14.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %.pn.i.i = load ptr, ptr %.pn14.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %linked_flows.i
  br i1 %cmp.not.i.i, label %__nfp_flower_update_merge_stats.exit.i.i.if.end15.i57_crit_edge, label %__nfp_flower_update_merge_stats.exit.i.i.for.body.i.i_crit_edge

__nfp_flower_update_merge_stats.exit.i.i.for.body.i.i_crit_edge: ; preds = %__nfp_flower_update_merge_stats.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

__nfp_flower_update_merge_stats.exit.i.i.if.end15.i57_crit_edge: ; preds = %__nfp_flower_update_merge_stats.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i57

if.end15.i57:                                     ; preds = %__nfp_flower_update_merge_stats.exit.i.i.if.end15.i57_crit_edge, %if.end11.i.if.end15.i57_crit_edge
  %stats.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 4
  %stats16.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %122, i32 0, i32 11
  %176 = ptrtoint ptr %stats16.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %stats16.i, align 4
  %arrayidx.i = getelementptr %struct.nfp_fl_stats, ptr %177, i32 %136
  %bytes.i = getelementptr %struct.nfp_fl_stats, ptr %177, i32 %136, i32 1
  %178 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %bytes.i, align 8
  %180 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %arrayidx.i, align 8
  %used.i = getelementptr %struct.nfp_fl_stats, ptr %177, i32 %136, i32 2
  %182 = ptrtoint ptr %used.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %used.i, align 8
  %184 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %stats.i, align 8
  %add.i.i56 = add i64 %185, %181
  store i64 %add.i.i56, ptr %stats.i, align 8
  %bytes2.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 4, i32 1
  %186 = ptrtoint ptr %bytes2.i.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %bytes2.i.i, align 8
  %add3.i.i = add i64 %187, %179
  store i64 %add3.i.i, ptr %bytes2.i.i, align 8
  %lastused6.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 4, i32 3
  %188 = ptrtoint ptr %lastused6.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %lastused6.i.i, align 8
  %190 = tail call i64 @llvm.umax.i64(i64 %189, i64 %183) #14
  %191 = ptrtoint ptr %lastused6.i.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %lastused6.i.i, align 8
  %used_hw_stats28.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 4, i32 4
  %192 = ptrtoint ptr %used_hw_stats28.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %used_hw_stats28.i.i, align 8
  %or.i.i = or i32 %193, 2
  store i32 %or.i.i, ptr %used_hw_stats28.i.i, align 8
  %used_hw_stats_valid.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %flower, i32 0, i32 4, i32 5
  %194 = ptrtoint ptr %used_hw_stats_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %used_hw_stats_valid.i.i, align 4
  %195 = ptrtoint ptr %stats16.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %stats16.i, align 4
  %arrayidx22.i = getelementptr %struct.nfp_fl_stats, ptr %196, i32 %136
  %197 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 0, ptr %arrayidx22.i, align 8
  %198 = load ptr, ptr %stats16.i, align 4
  %bytes26.i = getelementptr %struct.nfp_fl_stats, ptr %198, i32 %136, i32 1
  %199 = ptrtoint ptr %bytes26.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 0, ptr %bytes26.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock.i) #14
  br label %return

return:                                           ; preds = %if.end15.i57, %if.then9.i, %do.body.i54.return_crit_edge, %if.then.i51, %do.end86.i, %if.then13.i, %do.body.i26.return_crit_edge, %if.then5.i, %nfp_flower_add_offload.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nfp_flower_add_offload.exit ], [ -95, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ], [ %call6.i, %if.then5.i ], [ %err.0.i37, %do.end86.i ], [ -2, %if.then13.i ], [ -2, %do.body.i26.return_crit_edge ], [ %call2.i, %if.then.i51 ], [ 0, %if.end15.i57 ], [ -22, %if.then9.i ], [ -22, %do.body.i54.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_setup_qos_offload(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_from_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_pre_ct_flow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_fl_ct_handle_pre_ct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_post_ct_flow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_fl_ct_handle_post_ct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_compile_flow_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_compile_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_validate_pre_tun_rule(ptr nocapture noundef readonly %app, ptr nocapture noundef %flow, ptr nocapture noundef readonly %key_ls, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %unmasked_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 7
  %2 = ptrtoint ptr %unmasked_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmasked_data, align 4
  %mask_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 8
  %4 = ptrtoint ptr %mask_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mask_data, align 4
  %key_layer3 = getelementptr inbounds %struct.nfp_fl_key_ls, ptr %key_ls, i32 0, i32 1
  %6 = ptrtoint ptr %key_layer3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %key_layer3, align 4
  %flower_ext_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flower_ext_feats, align 8
  %and = and i64 %9, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tci = getelementptr inbounds %struct.nfp_flower_meta_tci, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tci, align 2
  %12 = and i16 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool5.not = icmp eq i16 %12, 0
  %and9 = and i16 %11, -4097
  %and9.sink = select i1 %tobool5.not, i16 -1, i16 %and9
  %not.tobool5.not = xor i1 %tobool5.not, true
  %vlan_tci11 = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %vlan_tci11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %and9.sink, ptr %vlan_tci11, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry.if.end14_crit_edge
  %vlan.0.off0 = phi i1 [ false, %entry.if.end14_crit_edge ], [ %not.tobool5.not, %if.then ]
  %conv15 = zext i8 %7 to i32
  %and16 = and i32 %conv15, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else22, label %do.body

do.body:                                          ; preds = %if.end14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg) #14
  %tobool19.not = icmp eq ptr %extack, null
  br i1 %tobool19.not, label %do.body.cleanup218_crit_edge, label %do.body.cleanup218.sink.split_crit_edge

do.body.cleanup218.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body.cleanup218_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.else22:                                        ; preds = %if.end14
  %14 = ptrtoint ptr %key_ls to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_ls, align 4
  %and23 = and i32 %15, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end35, label %do.body26

do.body26:                                        ; preds = %if.else22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.59) #14
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body26.cleanup218_crit_edge, label %do.body26.cleanup218.sink.split_crit_edge

do.body26.cleanup218.sink.split_crit_edge:        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body26.cleanup218_crit_edge:                   ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.end35:                                         ; preds = %if.else22
  %and37 = and i32 %conv15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body40, label %if.end48

do.body40:                                        ; preds = %if.end35
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.60) #14
  %tobool42.not = icmp eq ptr %extack, null
  br i1 %tobool42.not, label %do.body40.cleanup218_crit_edge, label %do.body40.cleanup218.sink.split_crit_edge

do.body40.cleanup218.sink.split_crit_edge:        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body40.cleanup218_crit_edge:                   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.end48:                                         ; preds = %if.end35
  %and50 = and i32 %conv15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not.not = icmp eq i32 %and50, 0
  %16 = and i32 %conv15, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %do.body56, label %if.end64

do.body56:                                        ; preds = %if.end48
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.61) #14
  %tobool58.not = icmp eq ptr %extack, null
  br i1 %tobool58.not, label %do.body56.cleanup218_crit_edge, label %do.body56.cleanup218.sink.split_crit_edge

do.body56.cleanup218.sink.split_crit_edge:        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body56.cleanup218_crit_edge:                   ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.end64:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool67.not = icmp eq i32 %15, 0
  %.idx = select i1 %tobool67.not, i32 0, i32 4
  %18 = getelementptr i8, ptr %3, i32 %.idx
  %19 = getelementptr i8, ptr %5, i32 %.idx
  %add.ptr73 = getelementptr i8, ptr %18, i32 8
  %pre_tun_rule74 = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12
  %20 = ptrtoint ptr %pre_tun_rule74 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pre_tun_rule74, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr73, ptr noundef dereferenceable(6) %23, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool75.not = icmp eq i32 %bcmp, 0
  br i1 %tobool75.not, label %if.end85, label %do.body77

do.body77:                                        ; preds = %if.end64
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.62) #14
  %tobool79.not = icmp eq ptr %extack, null
  br i1 %tobool79.not, label %do.body77.cleanup218_crit_edge, label %do.body77.cleanup218.sink.split_crit_edge

do.body77.cleanup218.sink.split_crit_edge:        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body77.cleanup218_crit_edge:                   ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.end85:                                         ; preds = %if.end64
  %add.ptr72 = getelementptr i8, ptr %19, i32 8
  %24 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr72, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr72, i32 2
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %27, %25
  %add.ptr3.i = getelementptr i8, ptr %add.ptr72, i32 4
  %28 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %29
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.end98, label %do.body90

do.body90:                                        ; preds = %if.end85
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.63) #14
  %tobool92.not = icmp eq ptr %extack, null
  br i1 %tobool92.not, label %do.body90.cleanup218_crit_edge, label %do.body90.cleanup218.sink.split_crit_edge

do.body90.cleanup218.sink.split_crit_edge:        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body90.cleanup218_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.end98:                                         ; preds = %if.end85
  %mpls_lse = getelementptr i8, ptr %19, i32 20
  %30 = ptrtoint ptr %mpls_lse to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mpls_lse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool99.not = icmp eq i32 %31, 0
  br i1 %tobool99.not, label %for.body.preheader, label %do.body101

do.body101:                                       ; preds = %if.end98
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.64) #14
  %tobool103.not = icmp eq ptr %extack, null
  br i1 %tobool103.not, label %do.body101.cleanup218_crit_edge, label %do.body101.cleanup218.sink.split_crit_edge

do.body101.cleanup218.sink.split_crit_edge:       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body101.cleanup218_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

for.body.preheader:                               ; preds = %if.end98
  %add.ptr110 = getelementptr i8, ptr %19, i32 24
  %add.ptr111 = getelementptr i8, ptr %18, i32 24
  %.mux = select i1 %tobool51.not.not, i32 40, i32 12
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0307, 1
  %exitcond.not = icmp eq i32 %inc, %.mux
  br i1 %exitcond.not, label %if.end147, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0307 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx123 = getelementptr i8, ptr %add.ptr110, i32 %i.0307
  %32 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx123, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool125.not = icmp eq i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0307)
  %cmp127.not = icmp eq i32 %i.0307, 3
  %or.cond300 = select i1 %tobool125.not, i1 true, i1 %cmp127.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0307)
  %cmp130.not = icmp eq i32 %i.0307, 1
  %or.cond301 = select i1 %or.cond300, i1 true, i1 %cmp130.not
  br i1 %or.cond301, label %for.cond, label %do.body133

do.body133:                                       ; preds = %for.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.65) #14
  %tobool135.not = icmp eq ptr %extack, null
  br i1 %tobool135.not, label %do.body133.cleanup218_crit_edge, label %do.body133.cleanup218.sink.split_crit_edge

do.body133.cleanup218.sink.split_crit_edge:       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body133.cleanup218_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.end147:                                        ; preds = %for.cond
  %add.ptr142 = getelementptr i8, ptr %add.ptr111, i32 %.mux
  %34 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %flower_ext_feats, align 8
  %and149 = and i64 %35, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and149)
  %tobool150.not = icmp eq i64 %and149, 0
  br i1 %tobool150.not, label %if.end166, label %if.then151

if.then151:                                       ; preds = %if.end147
  %36 = ptrtoint ptr %key_ls to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_ls, align 4
  %and153 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.else162, label %if.end166.thread

if.end166.thread:                                 ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #16
  %outer_tci = getelementptr inbounds %struct.nfp_flower_vlan, ptr %add.ptr142, i32 0, i32 1
  %38 = ptrtoint ptr %outer_tci to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %outer_tci, align 2
  %40 = and i16 %39, -4097
  %vlan_tci161 = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12, i32 1
  %41 = ptrtoint ptr %vlan_tci161 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %vlan_tci161, align 4
  %action_data304 = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 9
  %42 = ptrtoint ptr %action_data304 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %action_data304, align 4
  br label %if.then169

if.else162:                                       ; preds = %if.then151
  %vlan_tci164 = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 12, i32 1
  %44 = ptrtoint ptr %vlan_tci164 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %vlan_tci164, align 4
  %action_data305 = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 9
  %45 = ptrtoint ptr %action_data305 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %action_data305, align 4
  br i1 %vlan.0.off0, label %if.else162.if.then169_crit_edge, label %if.else162.if.end186_crit_edge

if.else162.if.end186_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

if.else162.if.then169_crit_edge:                  ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then169

if.end166:                                        ; preds = %if.end147
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %flow, i32 0, i32 9
  %47 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %action_data, align 4
  br i1 %vlan.0.off0, label %if.end166.if.then169_crit_edge, label %if.end166.if.end186_crit_edge

if.end166.if.end186_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

if.end166.if.then169_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then169

if.then169:                                       ; preds = %if.end166.if.then169_crit_edge, %if.else162.if.then169_crit_edge, %if.end166.thread
  %49 = phi ptr [ %43, %if.end166.thread ], [ %48, %if.end166.if.then169_crit_edge ], [ %46, %if.else162.if.then169_crit_edge ]
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp171.not = icmp eq i8 %51, 2
  br i1 %cmp171.not, label %if.end182, label %do.body174

do.body174:                                       ; preds = %if.then169
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.66) #14
  %tobool176.not = icmp eq ptr %extack, null
  br i1 %tobool176.not, label %do.body174.cleanup218_crit_edge, label %do.body174.cleanup218.sink.split_crit_edge

do.body174.cleanup218.sink.split_crit_edge:       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body174.cleanup218_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.end182:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #16
  %len_lw = getelementptr inbounds %struct.nfp_fl_act_head, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %len_lw to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %len_lw, align 1
  %conv183 = zext i8 %53 to i32
  %shl = shl nuw nsw i32 %conv183, 2
  %arrayidx185 = getelementptr i8, ptr %49, i32 %shl
  br label %if.end186

if.end186:                                        ; preds = %if.end182, %if.end166.if.end186_crit_edge, %if.else162.if.end186_crit_edge
  %act.0 = phi ptr [ %arrayidx185, %if.end182 ], [ %48, %if.end166.if.end186_crit_edge ], [ %46, %if.else162.if.end186_crit_edge ]
  %act_offset.0 = phi i32 [ %shl, %if.end182 ], [ 0, %if.end166.if.end186_crit_edge ], [ 0, %if.else162.if.end186_crit_edge ]
  %54 = ptrtoint ptr %act.0 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %act.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp189.not = icmp eq i8 %55, 0
  br i1 %cmp189.not, label %if.end200, label %do.body192

do.body192:                                       ; preds = %if.end186
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.67) #14
  %tobool194.not = icmp eq ptr %extack, null
  br i1 %tobool194.not, label %do.body192.cleanup218_crit_edge, label %do.body192.cleanup218.sink.split_crit_edge

do.body192.cleanup218.sink.split_crit_edge:       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body192.cleanup218_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

if.end200:                                        ; preds = %if.end186
  %len_lw201 = getelementptr inbounds %struct.nfp_fl_act_head, ptr %act.0, i32 0, i32 1
  %56 = ptrtoint ptr %len_lw201 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %len_lw201, align 1
  %conv202 = zext i8 %57 to i32
  %shl203 = shl nuw nsw i32 %conv202, 2
  %add204 = add nuw nsw i32 %shl203, %act_offset.0
  %act_len = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %flow, i32 0, i32 2
  %58 = ptrtoint ptr %act_len to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %act_len, align 2
  %conv205 = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add204, i32 %conv205)
  %cmp206.not = icmp eq i32 %add204, %conv205
  br i1 %cmp206.not, label %if.end200.cleanup218_crit_edge, label %do.body209

if.end200.cleanup218_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

do.body209:                                       ; preds = %if.end200
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_validate_pre_tun_rule.__msg.68) #14
  %tobool211.not = icmp eq ptr %extack, null
  br i1 %tobool211.not, label %do.body209.cleanup218_crit_edge, label %do.body209.cleanup218.sink.split_crit_edge

do.body209.cleanup218.sink.split_crit_edge:       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218.sink.split

do.body209.cleanup218_crit_edge:                  ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup218

cleanup218.sink.split:                            ; preds = %do.body209.cleanup218.sink.split_crit_edge, %do.body192.cleanup218.sink.split_crit_edge, %do.body174.cleanup218.sink.split_crit_edge, %do.body133.cleanup218.sink.split_crit_edge, %do.body101.cleanup218.sink.split_crit_edge, %do.body90.cleanup218.sink.split_crit_edge, %do.body77.cleanup218.sink.split_crit_edge, %do.body56.cleanup218.sink.split_crit_edge, %do.body40.cleanup218.sink.split_crit_edge, %do.body26.cleanup218.sink.split_crit_edge, %do.body.cleanup218.sink.split_crit_edge
  %nfp_flower_validate_pre_tun_rule.__msg.65.sink = phi ptr [ @nfp_flower_validate_pre_tun_rule.__msg, %do.body.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.59, %do.body26.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.60, %do.body40.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.61, %do.body56.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.62, %do.body77.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.63, %do.body90.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.64, %do.body101.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.65, %do.body133.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.66, %do.body174.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.67, %do.body192.cleanup218.sink.split_crit_edge ], [ @nfp_flower_validate_pre_tun_rule.__msg.68, %do.body209.cleanup218.sink.split_crit_edge ]
  %60 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %nfp_flower_validate_pre_tun_rule.__msg.65.sink, ptr %extack, align 4
  br label %cleanup218

cleanup218:                                       ; preds = %cleanup218.sink.split, %do.body209.cleanup218_crit_edge, %if.end200.cleanup218_crit_edge, %do.body192.cleanup218_crit_edge, %do.body174.cleanup218_crit_edge, %do.body133.cleanup218_crit_edge, %do.body101.cleanup218_crit_edge, %do.body90.cleanup218_crit_edge, %do.body77.cleanup218_crit_edge, %do.body56.cleanup218_crit_edge, %do.body40.cleanup218_crit_edge, %do.body26.cleanup218_crit_edge, %do.body.cleanup218_crit_edge
  %retval.1 = phi i32 [ -95, %do.body.cleanup218_crit_edge ], [ -95, %do.body26.cleanup218_crit_edge ], [ -95, %do.body40.cleanup218_crit_edge ], [ -95, %do.body56.cleanup218_crit_edge ], [ -95, %do.body77.cleanup218_crit_edge ], [ -95, %do.body90.cleanup218_crit_edge ], [ -95, %do.body101.cleanup218_crit_edge ], [ -95, %do.body174.cleanup218_crit_edge ], [ -95, %do.body192.cleanup218_crit_edge ], [ -95, %do.body209.cleanup218_crit_edge ], [ 0, %if.end200.cleanup218_crit_edge ], [ -95, %do.body133.cleanup218_crit_edge ], [ -95, %cleanup218.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_xmit_pre_tun_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_put_ipv6_off(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_fl_ct_del_flow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_search_fl_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_tunnel_del_ipv4_off(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_xmit_pre_tun_del_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_fl_ct_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_flower_setup_indr_block_cb(i32 noundef %type, ptr noundef %type_data, ptr nocapture noundef readonly %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %app = getelementptr inbounds %struct.nfp_flower_indr_block_cb_priv, ptr %cb_priv, i32 0, i32 1
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %2 = ptrtoint ptr %cb_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_priv, align 4
  %call = tail call fastcc i32 @nfp_flower_repr_offload(ptr noundef %1, ptr noundef %3, ptr noundef %type_data)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_indr_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170}
!llvm.named.register.sp = !{!172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @nfp_flower_calculate_key_layers.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 254, i32 3}
!2 = !{ptr @nfp_flower_calculate_key_layers.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 264, i32 3}
!4 = !{ptr @nfp_flower_calculate_key_layers.__msg.2, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 285, i32 4}
!6 = !{ptr @nfp_flower_calculate_key_layers.__msg.3, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 301, i32 4}
!8 = !{ptr @nfp_flower_calculate_key_layers.__msg.4, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 325, i32 4}
!10 = !{ptr @nfp_flower_calculate_key_layers.__msg.5, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 333, i32 4}
!12 = !{ptr @nfp_flower_calculate_key_layers.__msg.6, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 339, i32 4}
!14 = !{ptr @nfp_flower_calculate_key_layers.__msg.7, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 347, i32 5}
!16 = !{ptr @nfp_flower_calculate_key_layers.__msg.8, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 353, i32 5}
!18 = !{ptr @nfp_flower_calculate_key_layers.__msg.9, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 364, i32 5}
!20 = !{ptr @nfp_flower_calculate_key_layers.__msg.10, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 383, i32 5}
!22 = !{ptr @nfp_flower_calculate_key_layers.__msg.11, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 389, i32 5}
!24 = !{ptr @nfp_flower_calculate_key_layers.__msg.12, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 407, i32 5}
!26 = !{ptr @nfp_flower_calculate_key_layers.__msg.13, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 433, i32 4}
!28 = !{ptr @nfp_flower_calculate_key_layers.__msg.14, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 449, i32 4}
!30 = !{ptr @nfp_flower_calculate_key_layers.__msg.15, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 453, i32 3}
!32 = !{ptr @nfp_flower_calculate_key_layers.__msg.16, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 472, i32 3}
!34 = !{ptr @nfp_flower_calculate_key_layers.__msg.17, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 484, i32 4}
!36 = !{ptr @nfp_flower_calculate_key_layers.__msg.18, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 493, i32 4}
!38 = !{ptr @nfp_flower_calculate_key_layers.__msg.19, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 502, i32 4}
!40 = !{ptr @nfp_flower_calculate_key_layers.__msg.20, !41, !"__msg", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 520, i32 5}
!42 = !{ptr @nfp_flower_calculate_key_layers.__msg.21, !43, !"__msg", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 531, i32 4}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1012, i32 2}
!46 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1024, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nfp_flower_merge_offloaded_flows._entry, !49, !"_entry", i1 false, i1 false}
!54 = !{ptr @nfp_flower_merge_offloaded_flows._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1090, i32 2}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1096, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/net/gre.h", i32 43, i32 43}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/net/gre.h", i32 49, i32 43}
!63 = !{ptr @nfp_flower_calc_udp_tun_layer.__msg, !64, !"__msg", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 197, i32 4}
!65 = !{ptr @nfp_flower_calc_udp_tun_layer.__msg.31, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 203, i32 4}
!67 = !{ptr @nfp_flower_calc_udp_tun_layer.__msg.32, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 221, i32 4}
!69 = !{ptr @nfp_flower_calc_udp_tun_layer.__msg.33, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 230, i32 3}
!71 = !{ptr @nfp_flower_calc_opt_layer.__msg, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 160, i32 3}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/net/vxlan.h", i32 420, i32 43}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/net/geneve.h", i32 68, i32 43}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1424, i32 3}
!117 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @nfp_flower_remove_merge_flow._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @nfp_flower_remove_merge_flow._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1432, i32 4}
!122 = !{ptr @nfp_flower_remove_merge_flow._entry.52, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @nfp_flower_remove_merge_flow._entry_ptr.54, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1440, i32 4}
!126 = !{ptr @nfp_flower_remove_merge_flow._entry.55, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @nfp_flower_remove_merge_flow._entry_ptr.57, !125, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1458, i32 3}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1467, i32 2}
!132 = !{ptr @nfp_block_cb_list, !133, !"nfp_block_cb_list", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1701, i32 8}
!134 = !{ptr @tc_can_offload_extack.__msg, !135, !"__msg", i1 false, i1 false}
!135 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!136 = !{ptr @nfp_flower_add_offload.__msg, !137, !"__msg", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1361, i32 3}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1384, i32 2}
!140 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg, !141, !"__msg", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1155, i32 3}
!142 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.59, !143, !"__msg", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1158, i32 3}
!144 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.60, !145, !"__msg", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1163, i32 3}
!146 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.61, !147, !"__msg", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1169, i32 3}
!148 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.62, !149, !"__msg", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1186, i32 3}
!150 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.63, !151, !"__msg", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1193, i32 3}
!152 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.64, !153, !"__msg", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1198, i32 3}
!154 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.65, !155, !"__msg", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1220, i32 5}
!156 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.66, !157, !"__msg", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1249, i32 4}
!158 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.67, !159, !"__msg", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1258, i32 3}
!160 = !{ptr @nfp_flower_validate_pre_tun_rule.__msg.68, !161, !"__msg", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1266, i32 3}
!162 = !{ptr @nfp_flower_del_offload.__msg, !163, !"__msg", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1522, i32 3}
!164 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1555, i32 2}
!166 = !{ptr @nfp_flower_get_stats.__msg, !167, !"__msg", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/netronome/nfp/flower/offload.c", i32 1639, i32 3}
!168 = distinct !{null, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/net/flow_offload.h", i32 418, i32 2}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/netronome/nfp/flower/cmsg.h", i32 718, i32 43}
!172 = !{!"sp"}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"auto-init"}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{i64 2149697947}
!185 = !{i64 2159589456}
!186 = !{i64 2159592890}
!187 = !{i64 2149698213}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{i64 2148401310, i64 2148401336, i64 2148401365, i64 2148401399, i64 2148401430, i64 2148401453}
!190 = !{i64 2159656832}
!191 = !{i64 2148403775, i64 2148403801, i64 2148403830, i64 2148403864, i64 2148403895, i64 2148403918}
!192 = !{i8 0, i8 2}
!193 = !{i64 2149863069}
!194 = !{!"branch_weights", i32 2146410443, i32 1073205}
!195 = !{i64 2148410168, i64 2148410200, i64 2148410229, i64 2148410263, i64 2148410294, i64 2148410317}
!196 = !{i64 2148499249}
!197 = !{i64 2149863229}
!198 = !{i64 2149863506}
!199 = !{i64 2149863348}
!200 = !{i64 2149863711}
!201 = !{i64 2149864774, i64 2149865266, i64 2149864811, i64 2149864867, i64 2149864901, i64 2149864925, i64 2149864966, i64 2149864987, i64 2149865015, i64 2149865049}
!202 = !{i64 2148498136}
!203 = !{i64 2148408555, i64 2148408587, i64 2148408616, i64 2148408650, i64 2148408681, i64 2148408704}
!204 = !{i64 2149866169}
!205 = !{i64 2159582529}
!206 = !{i64 2159584828}
