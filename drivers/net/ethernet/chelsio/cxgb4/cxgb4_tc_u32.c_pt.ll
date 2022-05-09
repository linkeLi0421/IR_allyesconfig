; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxgb4_match_field = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cxgb4_next_header = type { %struct.tc_u32_sel, %struct.tc_u32_key, ptr }
%struct.tc_u32_sel = type { i8, i8, i8, i16, i16, i16, i16, i32, [0 x %struct.tc_u32_key] }
%struct.tc_u32_key = type { i32, i32, i32, i32 }
%struct.ch_filter_specification = type { i32, [6 x i8], [6 x i8], i16, [16 x i8], [16 x i8], i16, i16, i32, i64, [12 x i8], %struct.ch_filter_tuple, %struct.ch_filter_tuple }
%struct.ch_filter_tuple = type { i32, i32, i24, i16, [2 x i8], [3 x i8], [16 x i8], [16 x i8], i16, i16 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.189 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.197, i32 }
%union.anon.197 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.tc_cls_u32_offload = type { %struct.flow_cls_common_offload, i32, %union.anon.195 }
%union.anon.195 = type { %struct.tc_cls_u32_knode }
%struct.tc_cls_u32_knode = type { ptr, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.cxgb4_tc_u32_table = type { i32, [0 x %struct.cxgb4_link] }
%struct.cxgb4_link = type { ptr, %struct.ch_filter_specification, i32, ptr }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.tcf_mirred = type { %struct.tc_action, i32, i8, ptr, ptr, %struct.list_head, [8 x i8] }
%struct.filter_entry = type { i8, ptr, ptr, ptr, ptr, i32, %struct.ch_filter_specification }

@cxgb4_config_knode.__msg = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cxgb4: No free LETCAM index available\00", [58 x i8] zeroinitializer }, align 32
@cxgb4_ipv6_fields = internal constant { [11 x %struct.cxgb4_match_field], [40 x i8] } { [11 x %struct.cxgb4_match_field] [%struct.cxgb4_match_field { i32 0, ptr @cxgb4_fill_ipv6_tos }, %struct.cxgb4_match_field { i32 4, ptr @cxgb4_fill_ipv6_proto }, %struct.cxgb4_match_field { i32 8, ptr @cxgb4_fill_ipv6_src_ip0 }, %struct.cxgb4_match_field { i32 12, ptr @cxgb4_fill_ipv6_src_ip1 }, %struct.cxgb4_match_field { i32 16, ptr @cxgb4_fill_ipv6_src_ip2 }, %struct.cxgb4_match_field { i32 20, ptr @cxgb4_fill_ipv6_src_ip3 }, %struct.cxgb4_match_field { i32 24, ptr @cxgb4_fill_ipv6_dst_ip0 }, %struct.cxgb4_match_field { i32 28, ptr @cxgb4_fill_ipv6_dst_ip1 }, %struct.cxgb4_match_field { i32 32, ptr @cxgb4_fill_ipv6_dst_ip2 }, %struct.cxgb4_match_field { i32 36, ptr @cxgb4_fill_ipv6_dst_ip3 }, %struct.cxgb4_match_field zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cxgb4_ipv4_fields = internal constant { [6 x %struct.cxgb4_match_field], [48 x i8] } { [6 x %struct.cxgb4_match_field] [%struct.cxgb4_match_field { i32 0, ptr @cxgb4_fill_ipv4_tos }, %struct.cxgb4_match_field { i32 4, ptr @cxgb4_fill_ipv4_frag }, %struct.cxgb4_match_field { i32 8, ptr @cxgb4_fill_ipv4_proto }, %struct.cxgb4_match_field { i32 12, ptr @cxgb4_fill_ipv4_src_ip }, %struct.cxgb4_match_field { i32 16, ptr @cxgb4_fill_ipv4_dst_ip }, %struct.cxgb4_match_field zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cxgb4_config_knode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Link handle exists for: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxgb4_config_knode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxgb4_config_knode._entry_ptr = internal global ptr @cxgb4_config_knode._entry, section ".printk_index", align 4
@cxgb4_ipv6_jumps = internal constant { [3 x %struct.cxgb4_next_header], [52 x i8] } { [3 x %struct.cxgb4_next_header] [%struct.cxgb4_next_header { %struct.tc_u32_sel { i8 0, i8 0, i8 0, i16 0, i16 40, i16 0, i16 0, i32 0, [0 x %struct.tc_u32_key] zeroinitializer }, %struct.tc_u32_key { i32 65280, i32 1536, i32 4, i32 0 }, ptr @cxgb4_tcp_fields }, %struct.cxgb4_next_header { %struct.tc_u32_sel { i8 0, i8 0, i8 0, i16 0, i16 40, i16 0, i16 0, i32 0, [0 x %struct.tc_u32_key] zeroinitializer }, %struct.tc_u32_key { i32 65280, i32 4352, i32 4, i32 0 }, ptr @cxgb4_udp_fields }, %struct.cxgb4_next_header zeroinitializer], [52 x i8] zeroinitializer }, align 32
@cxgb4_ipv4_jumps = internal constant { [3 x %struct.cxgb4_next_header], [52 x i8] } { [3 x %struct.cxgb4_next_header] [%struct.cxgb4_next_header { %struct.tc_u32_sel { i8 0, i8 6, i8 0, i16 3840, i16 0, i16 0, i16 0, i32 0, [0 x %struct.tc_u32_key] zeroinitializer }, %struct.tc_u32_key { i32 16711680, i32 393216, i32 8, i32 0 }, ptr @cxgb4_tcp_fields }, %struct.cxgb4_next_header { %struct.tc_u32_sel { i8 0, i8 6, i8 0, i16 3840, i16 0, i16 0, i16 0, i32 0, [0 x %struct.tc_u32_key] zeroinitializer }, %struct.tc_u32_key { i32 16711680, i32 1114112, i32 8, i32 0 }, ptr @cxgb4_udp_fields }, %struct.cxgb4_next_header zeroinitializer], [52 x i8] zeroinitializer }, align 32
@cxgb4_tcp_fields = internal constant { [2 x %struct.cxgb4_match_field], [16 x i8] } { [2 x %struct.cxgb4_match_field] [%struct.cxgb4_match_field { i32 0, ptr @cxgb4_fill_l4_ports }, %struct.cxgb4_match_field zeroinitializer], [16 x i8] zeroinitializer }, align 32
@cxgb4_udp_fields = internal constant { [2 x %struct.cxgb4_match_field], [16 x i8] } { [2 x %struct.cxgb4_match_field] [%struct.cxgb4_match_field { i32 0, ptr @cxgb4_fill_l4_ports }, %struct.cxgb4_match_field zeroinitializer], [16 x i8] zeroinitializer }, align 32
@tcf_mirred_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/net/tc_act/tc_mirred.h\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 179, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"cxgb4_ipv6_fields\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 203, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"cxgb4_ipv4_fields\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 103, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private constant [53 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 235, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"cxgb4_ipv6_jumps\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 291, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"cxgb4_ipv4_jumps\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 254, i32 39 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"cxgb4_tcp_fields\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 229, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"cxgb4_udp_fields\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [59 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32_parse.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 234, i32 39 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [34 x i8] c"../include/net/tc_act/tc_mirred.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 56, i32 9 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @cxgb4_config_knode._entry, ptr @cxgb4_config_knode._entry_ptr, ptr @cxgb4_config_knode.__msg, ptr @cxgb4_ipv6_fields, ptr @cxgb4_ipv4_fields, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cxgb4_ipv6_jumps, ptr @cxgb4_ipv4_jumps, ptr @cxgb4_tcp_fields, ptr @cxgb4_udp_fields, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_config_knode.__msg to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ipv6_fields to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ipv4_fields to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_config_knode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ipv6_jumps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ipv4_jumps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_tcp_fields to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_udp_fields to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_config_knode(ptr noundef %dev, ptr nocapture noundef readonly %cls) local_unnamed_addr #0 align 64 {
entry:
  %fs = alloca %struct.ch_filter_specification, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 3
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %protocol3 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 1
  %4 = ptrtoint ptr %protocol3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol3, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %fs) #8
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %6 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features.i, align 16
  %and.i = and i64 %7, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup246_crit_edge, label %can_tc_u32_offload.exit

entry.cleanup246_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

can_tc_u32_offload.exit:                          ; preds = %entry
  %tc_u32.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 71
  %8 = ptrtoint ptr %tc_u32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tc_u32.i, align 4
  %tobool1.i.not = icmp eq ptr %9, null
  br i1 %tobool1.i.not, label %can_tc_u32_offload.exit.cleanup246_crit_edge, label %if.end

can_tc_u32_offload.exit.cleanup246_crit_edge:     ; preds = %can_tc_u32_offload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end:                                           ; preds = %can_tc_u32_offload.exit
  %10 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end.cleanup246_crit_edge [
    i16 2048, label %if.end.if.end10_crit_edge
    i16 -31011, label %if.end.if.end10_crit_edge419
  ]

if.end.if.end10_crit_edge419:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.cleanup246_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.end.if.end10_crit_edge419
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %5)
  %cmp12 = icmp eq i16 %5, -31011
  %conv14 = select i1 %cmp12, i8 10, i8 2
  %handle = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %handle, align 4
  %and = and i32 %12, 4095
  %call15 = tail call i32 @cxgb4_get_free_ftid(ptr noundef %dev, i8 noundef zeroext %conv14, i1 noundef zeroext false, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.body, label %if.end21

do.body:                                          ; preds = %if.end10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_config_knode.__msg) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.cleanup246_crit_edge, label %if.then19

do.body.cleanup246_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cxgb4_config_knode.__msg, ptr %1, align 4
  br label %cleanup246

if.end21:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %tc_u32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tc_u32.i, align 4
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle, align 4
  %shr = lshr i32 %17, 20
  %link_handle = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 6
  %18 = ptrtoint ptr %link_handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link_handle, align 4
  %shr25 = lshr i32 %19, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %shr)
  %cmp26.not = icmp eq i32 %shr, 2048
  br i1 %cmp26.not, label %if.end21.if.end32_crit_edge, label %land.lhs.true28

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true28:                                  ; preds = %if.end21
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %21)
  %cmp29.not = icmp ult i32 %shr, %21
  br i1 %cmp29.not, label %land.lhs.true28.if.end32_crit_edge, label %land.lhs.true28.cleanup246_crit_edge

land.lhs.true28.cleanup246_crit_edge:             ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

land.lhs.true28.if.end32_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true28.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr25, i32 %23)
  %cmp34.not = icmp ult i32 %shr25, %23
  br i1 %cmp34.not, label %if.end37, label %if.end32.cleanup246_crit_edge

if.end32.cleanup246_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end37:                                         ; preds = %if.end32
  %24 = call ptr @memset(ptr %fs, i32 0, i32 200)
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 48, i32 14
  %25 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %26)
  %cmp38 = icmp ult i32 %call15, %26
  br i1 %cmp38, label %if.then40, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load i32, ptr %fs, align 8
  %bf.set = or i32 %bf.load, 1073741824
  store i32 %bf.set, ptr %fs, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  %prio = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 2
  %28 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prio, align 4
  %tc_prio = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 8
  %30 = ptrtoint ptr %tc_prio to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tc_prio, align 8
  %conv44 = zext i32 %17 to i64
  %tc_cookie = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 9
  %31 = ptrtoint ptr %tc_cookie to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv44, ptr %tc_cookie, align 8
  %cxgb4_ipv6_fields.cxgb4_ipv4_fields = select i1 %cmp12, ptr @cxgb4_ipv6_fields, ptr @cxgb4_ipv4_fields
  br i1 %cmp26.not, label %if.end63, label %if.then52

if.then52:                                        ; preds = %if.end41
  %sub = add nsw i32 %shr, -1
  %link_handle53 = getelementptr %struct.cxgb4_tc_u32_table, ptr %15, i32 0, i32 1, i32 %sub, i32 2
  %32 = ptrtoint ptr %link_handle53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %link_handle53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool54.not = icmp eq i32 %33, 0
  br i1 %tobool54.not, label %if.then52.cleanup246_crit_edge, label %if.end56

if.then52.cleanup246_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end56:                                         ; preds = %if.then52
  %arrayidx = getelementptr %struct.cxgb4_tc_u32_table, ptr %15, i32 0, i32 1, i32 %sub
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 8
  %tobool60.not = icmp eq ptr %35, null
  br i1 %tobool60.not, label %if.end56.cleanup246_crit_edge, label %if.end63.thread

if.end56.cleanup246_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end63:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %19)
  %tobool64.not = icmp ult i32 %19, 1048576
  br i1 %tobool64.not, label %if.end63.if.end198_crit_edge, label %if.end63.if.then65_crit_edge

if.end63.if.then65_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end63.if.end198_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

if.end63.thread:                                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %19)
  %tobool64.not367 = icmp ult i32 %19, 1048576
  br i1 %tobool64.not367, label %land.lhs.true183, label %if.end63.thread.if.then65_crit_edge

if.end63.thread.if.then65_crit_edge:              ; preds = %if.end63.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.then65:                                        ; preds = %if.end63.thread.if.then65_crit_edge, %if.end63.if.then65_crit_edge
  %sub67 = add nsw i32 %shr25, -1
  %arrayidx68 = getelementptr %struct.cxgb4_tc_u32_table, ptr %15, i32 0, i32 1, i32 %sub67
  %link_handle69 = getelementptr %struct.cxgb4_tc_u32_table, ptr %15, i32 0, i32 1, i32 %sub67, i32 2
  %36 = ptrtoint ptr %link_handle69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %link_handle69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool70.not = icmp eq i32 %37, 0
  br i1 %tobool70.not, label %for.body.lr.ph, label %do.end74

do.end74:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4
  %38 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str, i32 noundef %shr25) #11
  br label %cleanup246

for.body.lr.ph:                                   ; preds = %if.then65
  %cond78 = select i1 %cmp12, ptr @cxgb4_ipv6_jumps, ptr @cxgb4_ipv4_jumps
  %sel83 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 2
  %40 = ptrtoint ptr %sel83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sel83, align 4
  %offoff84 = getelementptr inbounds %struct.tc_u32_sel, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %offoff84 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %offoff84, align 4
  %offshift92 = getelementptr inbounds %struct.tc_u32_sel, ptr %41, i32 0, i32 1
  %offmask101 = getelementptr inbounds %struct.tc_u32_sel, ptr %41, i32 0, i32 3
  %off111 = getelementptr inbounds %struct.tc_u32_sel, ptr %41, i32 0, i32 4
  %nkeys = getelementptr inbounds %struct.tc_u32_sel, ptr %41, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc168.for.body_crit_edge, %for.body.lr.ph
  %44 = phi ptr [ @cxgb4_tcp_fields, %for.body.lr.ph ], [ %79, %for.inc168.for.body_crit_edge ]
  %arrayidx79387 = phi ptr [ %cond78, %for.body.lr.ph ], [ %arrayidx79, %for.inc168.for.body_crit_edge ]
  %i.0384 = phi i32 [ 0, %for.body.lr.ph ], [ %inc169, %for.inc168.for.body_crit_edge ]
  %offoff = getelementptr inbounds %struct.tc_u32_sel, ptr %arrayidx79387, i32 0, i32 5
  %45 = ptrtoint ptr %offoff to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %offoff, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %43)
  %cmp86.not = icmp eq i16 %46, %43
  br i1 %cmp86.not, label %lor.lhs.false, label %for.body.for.inc168_crit_edge

for.body.for.inc168_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc168

lor.lhs.false:                                    ; preds = %for.body
  %offshift = getelementptr inbounds %struct.tc_u32_sel, ptr %arrayidx79387, i32 0, i32 1
  %47 = ptrtoint ptr %offshift to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %offshift, align 1
  %49 = ptrtoint ptr %offshift92 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %offshift92, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp94.not = icmp eq i8 %48, %50
  br i1 %cmp94.not, label %lor.lhs.false96, label %lor.lhs.false.for.inc168_crit_edge

lor.lhs.false.for.inc168_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc168

lor.lhs.false96:                                  ; preds = %lor.lhs.false
  %offmask = getelementptr inbounds %struct.tc_u32_sel, ptr %arrayidx79387, i32 0, i32 3
  %51 = ptrtoint ptr %offmask to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %offmask, align 4
  %53 = ptrtoint ptr %offmask101 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %offmask101, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp103.not = icmp eq i16 %52, %54
  br i1 %cmp103.not, label %lor.lhs.false105, label %lor.lhs.false96.for.inc168_crit_edge

lor.lhs.false96.for.inc168_crit_edge:             ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc168

lor.lhs.false105:                                 ; preds = %lor.lhs.false96
  %off108 = getelementptr inbounds %struct.tc_u32_sel, ptr %arrayidx79387, i32 0, i32 4
  %55 = ptrtoint ptr %off108 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %off108, align 2
  %57 = ptrtoint ptr %off111 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %off111, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %58)
  %cmp113.not = icmp eq i16 %56, %58
  br i1 %cmp113.not, label %for.cond117.preheader, label %lor.lhs.false105.for.inc168_crit_edge

lor.lhs.false105.for.inc168_crit_edge:            ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc168

for.cond117.preheader:                            ; preds = %lor.lhs.false105
  %59 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %nkeys, align 2
  %conv119 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp120379.not = icmp eq i8 %60, 0
  br i1 %cmp120379.not, label %for.cond117.preheader.for.inc168_crit_edge, label %for.body122.lr.ph

for.cond117.preheader.for.inc168_crit_edge:       ; preds = %for.cond117.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc168

for.body122.lr.ph:                                ; preds = %for.cond117.preheader
  %key = getelementptr %struct.cxgb4_next_header, ptr %cond78, i32 %i.0384, i32 1
  %off135 = getelementptr %struct.cxgb4_next_header, ptr %cond78, i32 %i.0384, i32 1, i32 2
  %61 = ptrtoint ptr %off135 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %off135, align 4
  %val141 = getelementptr %struct.cxgb4_next_header, ptr %cond78, i32 %i.0384, i32 1, i32 1
  br label %for.body122

for.body122:                                      ; preds = %for.inc.for.body122_crit_edge, %for.body122.lr.ph
  %j.0380 = phi i32 [ 0, %for.body122.lr.ph ], [ %inc, %for.inc.for.body122_crit_edge ]
  %arrayidx124 = getelementptr %struct.tc_u32_sel, ptr %41, i32 0, i32 8, i32 %j.0380
  %off125 = getelementptr %struct.tc_u32_sel, ptr %41, i32 0, i32 8, i32 %j.0380, i32 2
  %63 = ptrtoint ptr %off125 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %off125, align 4
  %65 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp136 = icmp eq i32 %62, %64
  br i1 %cmp136, label %land.lhs.true138, label %for.body122.for.inc_crit_edge

for.body122.for.inc_crit_edge:                    ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true138:                                 ; preds = %for.body122
  %val129 = getelementptr %struct.tc_u32_sel, ptr %41, i32 0, i32 8, i32 %j.0380, i32 1
  %67 = ptrtoint ptr %val129 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val129, align 4
  %69 = ptrtoint ptr %val141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %68)
  %cmp142 = icmp eq i32 %70, %68
  br i1 %cmp142, label %land.lhs.true144, label %land.lhs.true138.for.inc_crit_edge

land.lhs.true138.for.inc_crit_edge:               ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true144:                                 ; preds = %land.lhs.true138
  %71 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %66)
  %cmp148 = icmp eq i32 %72, %66
  br i1 %cmp148, label %if.end154, label %land.lhs.true144.for.inc_crit_edge

land.lhs.true144.for.inc_crit_edge:               ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true144.for.inc_crit_edge, %land.lhs.true138.for.inc_crit_edge, %for.body122.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0380, 1
  %exitcond.not = icmp eq i32 %inc, %conv119
  br i1 %exitcond.not, label %for.inc.for.inc168_crit_edge, label %for.inc.for.body122_crit_edge

for.inc.for.body122_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body122

for.inc.for.inc168_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc168

if.end154:                                        ; preds = %land.lhs.true144
  %call155 = call fastcc i32 @fill_match_fields(ptr noundef nonnull %fs, ptr noundef %cls, ptr noundef nonnull %cxgb4_ipv6_fields.cxgb4_ipv4_fields, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end154.cleanup246_crit_edge

if.end154.cleanup246_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end158:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %44, ptr %arrayidx68, align 8
  %74 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %handle, align 4
  %76 = ptrtoint ptr %link_handle69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %link_handle69, align 8
  %fs167 = getelementptr %struct.cxgb4_tc_u32_table, ptr %15, i32 0, i32 1, i32 %sub67, i32 1
  %77 = call ptr @memcpy(ptr %fs167, ptr %fs, i32 200)
  br label %cleanup246

for.inc168:                                       ; preds = %for.inc.for.inc168_crit_edge, %for.cond117.preheader.for.inc168_crit_edge, %lor.lhs.false105.for.inc168_crit_edge, %lor.lhs.false96.for.inc168_crit_edge, %lor.lhs.false.for.inc168_crit_edge, %for.body.for.inc168_crit_edge
  %inc169 = add i32 %i.0384, 1
  %arrayidx79 = getelementptr %struct.cxgb4_next_header, ptr %cond78, i32 %inc169
  %jump = getelementptr %struct.cxgb4_next_header, ptr %cond78, i32 %inc169, i32 2
  %78 = ptrtoint ptr %jump to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %jump, align 4
  %tobool80.not = icmp eq ptr %79, null
  br i1 %tobool80.not, label %for.inc168.cleanup246_crit_edge, label %for.inc168.for.body_crit_edge

for.inc168.for.body_crit_edge:                    ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc168.cleanup246_crit_edge:                  ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

land.lhs.true183:                                 ; preds = %if.end63.thread
  %80 = ptrtoint ptr %link_handle53 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %link_handle53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool188.not = icmp eq i32 %81, 0
  br i1 %tobool188.not, label %land.lhs.true183.if.end198_crit_edge, label %if.then189

land.lhs.true183.if.end198_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

if.then189:                                       ; preds = %land.lhs.true183
  %fs193 = getelementptr %struct.cxgb4_tc_u32_table, ptr %15, i32 0, i32 1, i32 %sub, i32 1
  %82 = call ptr @memcpy(ptr %fs, ptr %fs193, i32 200)
  %call194 = call fastcc i32 @fill_match_fields(ptr noundef nonnull %fs, ptr noundef %cls, ptr noundef nonnull %35, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then189.if.end198_crit_edge, label %if.then189.cleanup246_crit_edge

if.then189.cleanup246_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.then189.if.end198_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

if.end198:                                        ; preds = %if.then189.if.end198_crit_edge, %land.lhs.true183.if.end198_crit_edge, %if.end63.if.end198_crit_edge
  %sel.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 2
  %83 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sel.i, align 4
  %nkeys6.i = getelementptr inbounds %struct.tc_u32_sel, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %nkeys6.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nkeys6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp8.not.i = icmp eq i8 %86, 0
  br i1 %cmp8.not.i, label %if.end198.if.end202_crit_edge, label %for.body.i.preheader

if.end198.if.end202_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

for.body.i.preheader:                             ; preds = %if.end198
  %87 = select i1 %cmp12, ptr @cxgb4_fill_ipv6_tos, ptr @cxgb4_fill_ipv4_tos
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc45.i.for.body.i_crit_edge, %for.body.i.preheader
  %88 = phi ptr [ %104, %for.inc45.i.for.body.i_crit_edge ], [ %84, %for.body.i.preheader ]
  %i.09.i = phi i32 [ %inc46.i, %for.inc45.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.tc_u32_sel, ptr %88, i32 0, i32 8, i32 %i.09.i
  %off4.i = getelementptr %struct.tc_u32_sel, ptr %88, i32 0, i32 8, i32 %i.09.i, i32 2
  %89 = ptrtoint ptr %off4.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %off4.i, align 4
  %val8.i = getelementptr %struct.tc_u32_sel, ptr %88, i32 0, i32 8, i32 %i.09.i, i32 1
  %91 = ptrtoint ptr %val8.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %val8.i, align 4
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i, align 4
  %offmask.i = getelementptr %struct.tc_u32_sel, ptr %88, i32 0, i32 8, i32 %i.09.i, i32 3
  %95 = ptrtoint ptr %offmask.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %offmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool16.not.i = icmp eq i32 %96, 0
  br i1 %tobool16.not.i, label %if.end25.i, label %for.body.i.for.inc45.i_crit_edge

for.body.i.for.inc45.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45.i

if.end25.i:                                       ; preds = %for.body.i
  %97 = ptrtoint ptr %cxgb4_ipv6_fields.cxgb4_ipv4_fields to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cxgb4_ipv6_fields.cxgb4_ipv4_fields, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %98)
  %cmp33.i388 = icmp eq i32 %90, %98
  br i1 %cmp33.i388, label %if.end25.i.if.then35.i_crit_edge, label %if.end25.i.for.cond26.i_crit_edge

if.end25.i.for.cond26.i_crit_edge:                ; preds = %if.end25.i
  br label %for.cond26.i

if.end25.i.if.then35.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35.i

for.cond26.i:                                     ; preds = %for.body30.i.for.cond26.i_crit_edge, %if.end25.i.for.cond26.i_crit_edge
  %j.05.i389 = phi i32 [ %inc.i, %for.body30.i.for.cond26.i_crit_edge ], [ 0, %if.end25.i.for.cond26.i_crit_edge ]
  %inc.i = add i32 %j.05.i389, 1
  %val28.i = getelementptr %struct.cxgb4_match_field, ptr %cxgb4_ipv6_fields.cxgb4_ipv4_fields, i32 %inc.i, i32 1
  %99 = ptrtoint ptr %val28.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %val28.i, align 4
  %tobool29.not.i = icmp eq ptr %100, null
  br i1 %tobool29.not.i, label %for.cond26.i.cleanup246_crit_edge, label %for.body30.i

for.cond26.i.cleanup246_crit_edge:                ; preds = %for.cond26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

for.body30.i:                                     ; preds = %for.cond26.i
  %arrayidx27.i = getelementptr %struct.cxgb4_match_field, ptr %cxgb4_ipv6_fields.cxgb4_ipv4_fields, i32 %inc.i
  %101 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx27.i, align 4
  %cmp33.i = icmp eq i32 %90, %102
  br i1 %cmp33.i, label %for.body30.i.if.then35.i_crit_edge, label %for.body30.i.for.cond26.i_crit_edge

for.body30.i.for.cond26.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.i

for.body30.i.if.then35.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35.i

if.then35.i:                                      ; preds = %for.body30.i.if.then35.i_crit_edge, %if.end25.i.if.then35.i_crit_edge
  %.lcssa = phi ptr [ %87, %if.end25.i.if.then35.i_crit_edge ], [ %100, %for.body30.i.if.then35.i_crit_edge ]
  %call.i = call i32 %.lcssa(ptr noundef nonnull %fs, i32 noundef %92, i32 noundef %94) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool38.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool38.not.i, label %if.then35.i.for.inc45.i_crit_edge, label %if.then35.i.cleanup246_crit_edge

if.then35.i.cleanup246_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.then35.i.for.inc45.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %if.then35.i.for.inc45.i_crit_edge, %for.body.i.for.inc45.i_crit_edge
  %inc46.i = add nuw nsw i32 %i.09.i, 1
  %103 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sel.i, align 4
  %nkeys.i = getelementptr inbounds %struct.tc_u32_sel, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %nkeys.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %nkeys.i, align 2
  %conv.i = zext i8 %106 to i32
  %cmp.i = icmp ult i32 %inc46.i, %conv.i
  br i1 %cmp.i, label %for.inc45.i.for.body.i_crit_edge, label %for.inc45.i.if.end202_crit_edge

for.inc45.i.if.end202_crit_edge:                  ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

for.inc45.i.for.body.i_crit_edge:                 ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end202:                                        ; preds = %for.inc45.i.if.end202_crit_edge, %if.end198.if.end202_crit_edge
  %call203 = call fastcc i32 @fill_action_fields(ptr noundef %3, ptr noundef nonnull %fs, ptr noundef %cls)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end206, label %if.end202.cleanup246_crit_edge

if.end202.cleanup246_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.end206:                                        ; preds = %if.end202
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %107 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %port_id, align 1
  %iport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %109 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load210 = load i32, ptr %iport, align 8
  %bf.value = zext i8 %108 to i32
  %bf.shl = shl i32 %bf.value, 29
  %bf.clear211 = and i32 %bf.load210, 536870911
  %bf.set212 = or i32 %bf.clear211, %bf.shl
  store i32 %bf.set212, ptr %iport, align 8
  %iport214 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %110 = ptrtoint ptr %iport214 to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load215 = load i32, ptr %iport214, align 8
  %bf.set217 = or i32 %bf.load215, -536870912
  store i32 %bf.set217, ptr %iport214, align 8
  %111 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load218 = load i32, ptr %fs, align 8
  %bf.set220 = and i32 %bf.load218, 1610612735
  %bf.clear227 = select i1 %cmp12, i32 -1610612736, i32 -2147483648
  %bf.set228 = or i32 %bf.clear227, %bf.set220
  store i32 %bf.set228, ptr %fs, align 8
  %call229 = call i32 @cxgb4_set_filter(ptr noundef %dev, i32 noundef %call15, ptr noundef nonnull %fs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp ne i32 %call229, 0
  %brmerge = select i1 %tobool230.not, i1 true, i1 %cmp26.not
  br i1 %brmerge, label %if.end206.cleanup246_crit_edge, label %land.lhs.true235

if.end206.cleanup246_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

land.lhs.true235:                                 ; preds = %if.end206
  %sub237 = add nsw i32 %shr, -1
  %link_handle239 = getelementptr %struct.cxgb4_tc_u32_table, ptr %15, i32 0, i32 1, i32 %sub237, i32 2
  %112 = ptrtoint ptr %link_handle239 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %link_handle239, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool240.not = icmp eq i32 %113, 0
  br i1 %tobool240.not, label %land.lhs.true235.cleanup246_crit_edge, label %if.then241

land.lhs.true235.cleanup246_crit_edge:            ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246

if.then241:                                       ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #10
  %tid_map = getelementptr %struct.cxgb4_tc_u32_table, ptr %15, i32 0, i32 1, i32 %sub237, i32 3
  %114 = ptrtoint ptr %tid_map to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tid_map, align 4
  call void @_set_bit(i32 noundef %call15, ptr noundef %115) #8
  br label %cleanup246

cleanup246:                                       ; preds = %if.then241, %land.lhs.true235.cleanup246_crit_edge, %if.end206.cleanup246_crit_edge, %if.end202.cleanup246_crit_edge, %if.then35.i.cleanup246_crit_edge, %for.cond26.i.cleanup246_crit_edge, %if.then189.cleanup246_crit_edge, %for.inc168.cleanup246_crit_edge, %if.end158, %if.end154.cleanup246_crit_edge, %do.end74, %if.end56.cleanup246_crit_edge, %if.then52.cleanup246_crit_edge, %if.end32.cleanup246_crit_edge, %land.lhs.true28.cleanup246_crit_edge, %if.then19, %do.body.cleanup246_crit_edge, %if.end.cleanup246_crit_edge, %can_tc_u32_offload.exit.cleanup246_crit_edge, %entry.cleanup246_crit_edge
  %retval.1 = phi i32 [ -95, %can_tc_u32_offload.exit.cleanup246_crit_edge ], [ -95, %if.end.cleanup246_crit_edge ], [ -12, %if.then19 ], [ -12, %do.body.cleanup246_crit_edge ], [ -22, %land.lhs.true28.cleanup246_crit_edge ], [ -22, %if.end32.cleanup246_crit_edge ], [ -22, %if.then52.cleanup246_crit_edge ], [ -22, %if.end56.cleanup246_crit_edge ], [ %call194, %if.then189.cleanup246_crit_edge ], [ %call203, %if.end202.cleanup246_crit_edge ], [ %call229, %if.end206.cleanup246_crit_edge ], [ 0, %if.then241 ], [ 0, %land.lhs.true235.cleanup246_crit_edge ], [ %call155, %if.end154.cleanup246_crit_edge ], [ -95, %entry.cleanup246_crit_edge ], [ -22, %do.end74 ], [ 0, %if.end158 ], [ -22, %for.cond26.i.cleanup246_crit_edge ], [ %call.i, %if.then35.i.cleanup246_crit_edge ], [ -22, %for.inc168.cleanup246_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %fs) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_get_free_ftid(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_match_fields(ptr noundef %fs, ptr nocapture noundef readonly %cls, ptr nocapture noundef readonly %entry1, i1 noundef zeroext %next_header) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sel = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sel, align 4
  %nkeys6 = getelementptr inbounds %struct.tc_u32_sel, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nkeys6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nkeys6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8.not = icmp eq i8 %3, 0
  br i1 %cmp8.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %val283 = getelementptr %struct.cxgb4_match_field, ptr %entry1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %22, %for.inc45.for.body_crit_edge ]
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %for.inc45.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tc_u32_sel, ptr %4, i32 0, i32 8, i32 %i.09
  %off4 = getelementptr %struct.tc_u32_sel, ptr %4, i32 0, i32 8, i32 %i.09, i32 2
  %5 = ptrtoint ptr %off4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %off4, align 4
  %val8 = getelementptr %struct.tc_u32_sel, ptr %4, i32 0, i32 8, i32 %i.09, i32 1
  %7 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val8, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %offmask = getelementptr %struct.tc_u32_sel, ptr %4, i32 0, i32 8, i32 %i.09, i32 3
  %11 = ptrtoint ptr %offmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %next_header, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br i1 %tobool16.not, label %if.then.for.inc45_crit_edge, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then.for.inc45_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45

if.else:                                          ; preds = %for.body
  br i1 %tobool16.not, label %if.else.if.end25_crit_edge, label %if.else.for.inc45_crit_edge

if.else.for.inc45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %if.else.if.end25_crit_edge, %if.then.if.end25_crit_edge
  %13 = ptrtoint ptr %val283 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %val283, align 4
  %tobool29.not4 = icmp eq ptr %14, null
  br i1 %tobool29.not4, label %if.end25.cleanup_crit_edge, label %for.body30.preheader

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body30.preheader:                             ; preds = %if.end25
  %15 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entry1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %16)
  %cmp3319 = icmp eq i32 %6, %16
  br i1 %cmp3319, label %for.body30.preheader.if.then35_crit_edge, label %for.body30.preheader.for.cond26_crit_edge

for.body30.preheader.for.cond26_crit_edge:        ; preds = %for.body30.preheader
  br label %for.cond26

for.body30.preheader.if.then35_crit_edge:         ; preds = %for.body30.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

for.cond26:                                       ; preds = %for.body30.for.cond26_crit_edge, %for.body30.preheader.for.cond26_crit_edge
  %j.0520 = phi i32 [ %inc, %for.body30.for.cond26_crit_edge ], [ 0, %for.body30.preheader.for.cond26_crit_edge ]
  %inc = add i32 %j.0520, 1
  %val28 = getelementptr %struct.cxgb4_match_field, ptr %entry1, i32 %inc, i32 1
  %17 = ptrtoint ptr %val28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %val28, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %for.cond26.cleanup_crit_edge, label %for.body30

for.cond26.cleanup_crit_edge:                     ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body30:                                       ; preds = %for.cond26
  %arrayidx27 = getelementptr %struct.cxgb4_match_field, ptr %entry1, i32 %inc
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx27, align 4
  %cmp33 = icmp eq i32 %6, %20
  br i1 %cmp33, label %for.body30.if.then35_crit_edge, label %for.body30.for.cond26_crit_edge

for.body30.for.cond26_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26

for.body30.if.then35_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %for.body30.if.then35_crit_edge, %for.body30.preheader.if.then35_crit_edge
  %.lcssa = phi ptr [ %14, %for.body30.preheader.if.then35_crit_edge ], [ %18, %for.body30.if.then35_crit_edge ]
  %call = tail call i32 %.lcssa(ptr noundef %fs, i32 noundef %8, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool38.not = icmp eq i32 %call, 0
  br i1 %tobool38.not, label %if.then35.for.inc45_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35.for.inc45_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45

for.inc45:                                        ; preds = %if.then35.for.inc45_crit_edge, %if.else.for.inc45_crit_edge, %if.then.for.inc45_crit_edge
  %inc46 = add nuw nsw i32 %i.09, 1
  %21 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sel, align 4
  %nkeys = getelementptr inbounds %struct.tc_u32_sel, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nkeys, align 2
  %conv = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc46, %conv
  br i1 %cmp, label %for.inc45.for.body_crit_edge, label %for.inc45.cleanup_crit_edge

for.inc45.cleanup_crit_edge:                      ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc45.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %for.cond26.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %for.cond26.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ], [ %call, %if.then35.cleanup_crit_edge ], [ 0, %for.inc45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_action_fields(ptr nocapture noundef readonly %adap, ptr nocapture noundef %fs, ptr nocapture noundef readonly %cls) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %nr_actions.i = getelementptr inbounds %struct.tcf_exts, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_actions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.cleanup39_crit_edge, label %for.cond.preheader

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

for.cond.preheader:                               ; preds = %entry
  %actions = getelementptr inbounds %struct.tcf_exts, ptr %2, i32 0, i32 2
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %5 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %actions, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not92 = icmp eq ptr %8, null
  br i1 %tobool.not92, label %for.cond.preheader.cleanup39.loopexit66.split.loop.exit76_crit_edge, label %if.end4

for.cond.preheader.cleanup39.loopexit66.split.loop.exit76_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39.loopexit66.split.loop.exit76

if.end4:                                          ; preds = %for.cond.preheader
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 16
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %is_tcf_gact_shot.exit, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %id.i.i = getelementptr inbounds %struct.tc_action_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp.not.i.i = icmp eq i32 %12, 5
  br i1 %cmp.not.i.i, label %is_tcf_gact_shot.exit.thread60, label %land.lhs.true.i.i.land.lhs.true.i_crit_edge

land.lhs.true.i.i.land.lhs.true.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

is_tcf_gact_shot.exit:                            ; preds = %if.end4
  %tcfa_action.i.i = getelementptr inbounds %struct.tc_action, ptr %8, i32 0, i32 6
  %13 = ptrtoint ptr %tcfa_action.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tcfa_action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp4.i.i = icmp eq i32 %14, 2
  br i1 %cmp4.i.i, label %is_tcf_gact_shot.exit.if.then6_crit_edge, label %is_tcf_gact_shot.exit.cleanup39_crit_edge

is_tcf_gact_shot.exit.cleanup39_crit_edge:        ; preds = %is_tcf_gact_shot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

is_tcf_gact_shot.exit.if.then6_crit_edge:         ; preds = %is_tcf_gact_shot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

is_tcf_gact_shot.exit.thread60:                   ; preds = %land.lhs.true.i.i
  %tcfa_action.i.i61 = getelementptr inbounds %struct.tc_action, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %tcfa_action.i.i61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tcfa_action.i.i61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp4.i.i62 = icmp eq i32 %16, 2
  br i1 %cmp4.i.i62, label %is_tcf_gact_shot.exit.thread60.if.then6_crit_edge, label %land.lhs.true.ithread-pre-split

is_tcf_gact_shot.exit.thread60.if.then6_crit_edge: ; preds = %is_tcf_gact_shot.exit.thread60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %is_tcf_gact_shot.exit.thread60.if.then6_crit_edge, %is_tcf_gact_shot.exit.if.then6_crit_edge
  %17 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %fs, align 8
  %bf.clear = and i32 %bf.load, -201326593
  %bf.set = or i32 %bf.clear, 67108864
  br label %for.inc36

land.lhs.true.ithread-pre-split:                  ; preds = %is_tcf_gact_shot.exit.thread60
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %id.i.i, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.ithread-pre-split, %land.lhs.true.i.i.land.lhs.true.i_crit_edge
  %19 = phi i32 [ %.pr, %land.lhs.true.ithread-pre-split ], [ %12, %land.lhs.true.i.i.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp.i = icmp eq i32 %19, 8
  br i1 %cmp.i, label %is_tcf_mirred_egress_redirect.exit, label %land.lhs.true.i.cleanup39_crit_edge

land.lhs.true.i.cleanup39_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

is_tcf_mirred_egress_redirect.exit:               ; preds = %land.lhs.true.i
  %tcfm_eaction.i = getelementptr inbounds %struct.tcf_mirred, ptr %8, i32 0, i32 1
  %20 = ptrtoint ptr %tcfm_eaction.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tcfm_eaction.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp2.i = icmp eq i32 %21, 1
  br i1 %cmp2.i, label %if.then9, label %is_tcf_mirred_egress_redirect.exit.cleanup39_crit_edge

is_tcf_mirred_egress_redirect.exit.cleanup39_crit_edge: ; preds = %is_tcf_mirred_egress_redirect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

if.then9:                                         ; preds = %is_tcf_mirred_egress_redirect.exit
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i, label %if.then9.tcf_mirred_dev.exit_crit_edge, label %land.lhs.true.i57

if.then9.tcf_mirred_dev.exit_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_mirred_dev.exit

land.lhs.true.i57:                                ; preds = %if.then9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i56 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.tcf_mirred_dev.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i57.tcf_mirred_dev.exit_crit_edge:  ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_mirred_dev.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i57
  %.b4.i = load i1, ptr @tcf_mirred_dev.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.tcf_mirred_dev.exit_crit_edge, label %if.then.i58

land.lhs.true2.i.tcf_mirred_dev.exit_crit_edge:   ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_mirred_dev.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mirred_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 56, ptr noundef nonnull @.str.6) #8
  br label %tcf_mirred_dev.exit

tcf_mirred_dev.exit:                              ; preds = %if.then.i58, %land.lhs.true2.i.tcf_mirred_dev.exit_crit_edge, %land.lhs.true.i57.tcf_mirred_dev.exit_crit_edge, %if.then9.tcf_mirred_dev.exit_crit_edge
  %tcfm_dev.i = getelementptr inbounds %struct.tcf_mirred, ptr %8, i32 0, i32 3
  %22 = ptrtoint ptr %tcfm_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tcfm_dev.i, align 8
  %24 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nports, align 4
  %conv = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp1368.not = icmp eq i8 %25, 0
  br i1 %cmp1368.not, label %tcf_mirred_dev.exit.cleanup39_crit_edge, label %tcf_mirred_dev.exit.for.body15_crit_edge

tcf_mirred_dev.exit.for.body15_crit_edge:         ; preds = %tcf_mirred_dev.exit
  br label %for.body15

tcf_mirred_dev.exit.cleanup39_crit_edge:          ; preds = %tcf_mirred_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %tcf_mirred_dev.exit.for.body15_crit_edge
  %i10.069 = phi i32 [ %inc27, %for.inc.for.body15_crit_edge ], [ 0, %tcf_mirred_dev.exit.for.body15_crit_edge ]
  %arrayidx16 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 23, i32 %i10.069
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx16, align 4
  %cmp17 = icmp eq ptr %23, %27
  br i1 %cmp17, label %for.end.thread, label %for.inc

for.end.thread:                                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load20 = load i32, ptr %fs, align 8
  %bf.clear21 = and i32 %bf.load20, -201329665
  %bf.value = shl i32 %i10.069, 10
  %bf.shl = and i32 %bf.value, 3072
  %bf.set22 = or i32 %bf.shl, %bf.clear21
  %bf.set25 = or i32 %bf.set22, 134217728
  br label %for.inc36

for.inc:                                          ; preds = %for.body15
  %inc27 = add nuw nsw i32 %i10.069, 1
  %exitcond.not = icmp eq i32 %inc27, %conv
  br i1 %exitcond.not, label %for.inc.cleanup39_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.inc.cleanup39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

for.inc36:                                        ; preds = %for.end.thread, %if.then6
  %storemerge = phi i32 [ %bf.set25, %for.end.thread ], [ %bf.set, %if.then6 ]
  %29 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge, ptr %fs, align 8
  %30 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %actions, align 4
  %arrayidx = getelementptr ptr, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %33, null
  br label %cleanup39.loopexit66.split.loop.exit76

cleanup39.loopexit66.split.loop.exit76:           ; preds = %for.inc36, %for.cond.preheader.cleanup39.loopexit66.split.loop.exit76_crit_edge
  %tobool.not.lcssa = phi i1 [ %tobool.not, %for.inc36 ], [ %tobool.not92, %for.cond.preheader.cleanup39.loopexit66.split.loop.exit76_crit_edge ]
  %.mux.le = select i1 %tobool.not.lcssa, i32 0, i32 -22
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup39.loopexit66.split.loop.exit76, %for.inc.cleanup39_crit_edge, %tcf_mirred_dev.exit.cleanup39_crit_edge, %is_tcf_mirred_egress_redirect.exit.cleanup39_crit_edge, %land.lhs.true.i.cleanup39_crit_edge, %is_tcf_gact_shot.exit.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.3 = phi i32 [ -22, %entry.cleanup39_crit_edge ], [ %.mux.le, %cleanup39.loopexit66.split.loop.exit76 ], [ -22, %tcf_mirred_dev.exit.cleanup39_crit_edge ], [ -22, %is_tcf_gact_shot.exit.cleanup39_crit_edge ], [ -22, %land.lhs.true.i.cleanup39_crit_edge ], [ -22, %is_tcf_mirred_egress_redirect.exit.cleanup39_crit_edge ], [ -22, %for.inc.cleanup39_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_set_filter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_delete_knode(ptr noundef %dev, ptr nocapture noundef readonly %cls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features.i, align 16
  %and.i228 = and i64 %3, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i228)
  %tobool.not.i = icmp eq i64 %and.i228, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %can_tc_u32_offload.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

can_tc_u32_offload.exit:                          ; preds = %entry
  %tc_u32.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 71
  %4 = ptrtoint ptr %tc_u32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tc_u32.i, align 4
  %tobool1.i.not = icmp eq ptr %5, null
  br i1 %tobool1.i.not, label %can_tc_u32_offload.exit.cleanup_crit_edge, label %if.end

can_tc_u32_offload.exit.cleanup_crit_edge:        ; preds = %can_tc_u32_offload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %can_tc_u32_offload.exit
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 14
  %6 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nhpftids, align 8
  %nftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 18
  %8 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nftids, align 8
  %add = add i32 %9, %7
  %ftid_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp239.not = icmp eq i32 %add, 0
  br i1 %cmp239.not, label %if.end.if.then77.critedge222_crit_edge, label %while.body.lr.ph

if.end.if.then77.critedge222_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77.critedge222

while.body.lr.ph:                                 ; preds = %if.end
  %ftid_tab = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 16
  %handle38 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls, i32 0, i32 2, i32 0, i32 3
  %ftid_bmap = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 17
  %hpftid_tab = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 12
  %hpftid_bmap = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 13
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %filter_id.0240 = phi i32 [ 0, %while.body.lr.ph ], [ %filter_id.0.be, %while.cond.backedge.while.body_crit_edge ]
  %10 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %filter_id.0240, i32 %11)
  %cmp6 = icmp ult i32 %filter_id.0240, %11
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  %12 = ptrtoint ptr %hpftid_tab to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hpftid_tab, align 16
  %arrayidx = getelementptr %struct.filter_entry, ptr %13, i32 %filter_id.0240
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then7.if.end13_crit_edge, label %land.lhs.true

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.then7
  %tc_cookie = getelementptr %struct.filter_entry, ptr %13, i32 %filter_id.0240, i32 6, i32 9
  %15 = ptrtoint ptr %tc_cookie to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tc_cookie, align 8
  %17 = ptrtoint ptr %handle38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %handle38, align 4
  %conv = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv)
  %cmp10 = icmp eq i64 %16, %conv
  br i1 %cmp10, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.then7.if.end13_crit_edge
  %19 = ptrtoint ptr %hpftid_bmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hpftid_bmap, align 4
  %add17 = add nuw i32 %filter_id.0240, 1
  %call18 = tail call i32 @_find_next_bit_be(ptr noundef %20, i32 noundef %11, i32 noundef %add17) #8
  %21 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %22)
  %cmp21.not = icmp ult i32 %call18, %22
  br i1 %cmp21.not, label %if.end13.if.end58_crit_edge, label %if.end13.while.cond.backedge_crit_edge

if.end13.while.cond.backedge_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end13.if.end58_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.else:                                          ; preds = %while.body
  %sub = sub i32 %filter_id.0240, %11
  %23 = ptrtoint ptr %ftid_tab to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ftid_tab, align 64
  %arrayidx30 = getelementptr %struct.filter_entry, ptr %24, i32 %sub
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load31 = load i8, ptr %arrayidx30, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load31)
  %tobool34.not = icmp sgt i8 %bf.load31, -1
  br i1 %tobool34.not, label %if.else.if.end43_crit_edge, label %land.lhs.true35

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true35:                                  ; preds = %if.else
  %tc_cookie37 = getelementptr %struct.filter_entry, ptr %24, i32 %sub, i32 6, i32 9
  %26 = ptrtoint ptr %tc_cookie37 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tc_cookie37, align 8
  %28 = ptrtoint ptr %handle38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %handle38, align 4
  %conv39 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv39)
  %cmp40 = icmp eq i64 %27, %conv39
  br i1 %cmp40, label %land.lhs.true35.while.end_crit_edge, label %land.lhs.true35.if.end43_crit_edge

land.lhs.true35.if.end43_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true35.while.end_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end43:                                         ; preds = %land.lhs.true35.if.end43_crit_edge, %if.else.if.end43_crit_edge
  %30 = ptrtoint ptr %ftid_bmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ftid_bmap, align 4
  %32 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nftids, align 8
  %add47 = add i32 %sub, 1
  %call48 = tail call i32 @_find_next_bit_be(ptr noundef %31, i32 noundef %33, i32 noundef %add47) #8
  %34 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call48, i32 %35)
  %cmp51.not = icmp ult i32 %call48, %35
  br i1 %cmp51.not, label %if.end54, label %if.then77.critedge

if.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nhpftids, align 8
  %add57 = add i32 %37, %call48
  br label %if.end58

if.end58:                                         ; preds = %if.end54, %if.end13.if.end58_crit_edge
  %filter_id.1 = phi i32 [ %add57, %if.end54 ], [ %call18, %if.end13.if.end58_crit_edge ]
  %f.0 = phi ptr [ %arrayidx30, %if.end54 ], [ %arrayidx, %if.end13.if.end58_crit_edge ]
  %fs59 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6
  %38 = ptrtoint ptr %fs59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load60 = load i32, ptr %fs59, align 8
  %39 = and i32 %bf.load60, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool62.not = icmp eq i32 %39, 0
  br i1 %tobool62.not, label %if.end58.if.end71_crit_edge, label %if.then63

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip, align 8
  %42 = and i32 %41, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %42)
  %cmp64 = icmp ult i32 %42, 96
  %spec.select = select i1 %cmp64, i32 3, i32 1
  br label %if.end71

if.end71:                                         ; preds = %if.then63, %if.end58.if.end71_crit_edge
  %nslots.0 = phi i32 [ 0, %if.end58.if.end71_crit_edge ], [ %spec.select, %if.then63 ]
  %add73 = add i32 %nslots.0, %filter_id.1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end71, %if.end13.while.cond.backedge_crit_edge
  %filter_id.0.be = phi i32 [ %add73, %if.end71 ], [ %22, %if.end13.while.cond.backedge_crit_edge ]
  %cmp = icmp ult i32 %filter_id.0.be, %add
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.if.then77.critedge222_crit_edge

while.cond.backedge.if.then77.critedge222_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77.critedge222

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %land.lhs.true35.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #8
  %43 = ptrtoint ptr %tc_u32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tc_u32.i, align 4
  %45 = ptrtoint ptr %handle38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %handle38, align 4
  %shr82 = lshr i32 %46, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %shr82)
  %cmp83.not = icmp eq i32 %shr82, 2048
  br i1 %cmp83.not, label %if.end102.thread, label %land.lhs.true85

if.then77.critedge:                               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #8
  br label %cleanup

if.then77.critedge222:                            ; preds = %while.cond.backedge.if.then77.critedge222_crit_edge, %if.end.if.then77.critedge222_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #8
  br label %cleanup

land.lhs.true85:                                  ; preds = %while.end
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr82, i32 %48)
  %cmp86.not = icmp ult i32 %shr82, %48
  br i1 %cmp86.not, label %if.then92.critedge, label %land.lhs.true85.cleanup_crit_edge

land.lhs.true85.cleanup_crit_edge:                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then92.critedge:                               ; preds = %land.lhs.true85
  %sub93 = add nsw i32 %shr82, -1
  %link_handle = getelementptr %struct.cxgb4_tc_u32_table, ptr %44, i32 0, i32 1, i32 %sub93, i32 2
  %49 = ptrtoint ptr %link_handle to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %link_handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool95.not = icmp eq i32 %50, 0
  br i1 %tobool95.not, label %if.then92.critedge.cleanup_crit_edge, label %if.end97

if.then92.critedge.cleanup_crit_edge:             ; preds = %if.then92.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %if.then92.critedge
  %arrayidx94 = getelementptr %struct.cxgb4_tc_u32_table, ptr %44, i32 0, i32 1, i32 %sub93
  %tid_map = getelementptr %struct.cxgb4_tc_u32_table, ptr %44, i32 0, i32 1, i32 %sub93, i32 3
  %51 = ptrtoint ptr %tid_map to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tid_map, align 4
  %div3.i = lshr i32 %filter_id.0240, 5
  %arrayidx.i = getelementptr i32, ptr %52, i32 %div3.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %filter_id.0240, 31
  %55 = shl nuw i32 1, %and.i
  %56 = and i32 %54, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool99.not = icmp eq i32 %56, 0
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %if.end102

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  %call103 = tail call i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %filter_id.0240, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end102.thread:                                 ; preds = %while.end
  %call103230 = tail call i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %filter_id.0240, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103230)
  %tobool104.not231 = icmp eq i32 %call103230, 0
  br i1 %tobool104.not231, label %if.end102.thread.if.end110_crit_edge, label %if.end102.thread.cleanup_crit_edge

if.end102.thread.cleanup_crit_edge:               ; preds = %if.end102.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end102.thread.if.end110_crit_edge:             ; preds = %if.end102.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end106:                                        ; preds = %if.end102
  %tobool107.not = icmp eq ptr %arrayidx94, null
  br i1 %tobool107.not, label %if.end106.if.end110_crit_edge, label %if.then108

if.end106.if.end110_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %tid_map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tid_map, align 4
  tail call void @_clear_bit(i32 noundef %filter_id.0240, ptr noundef %58) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end106.if.end110_crit_edge, %if.end102.thread.if.end110_crit_edge
  %59 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp112242.not = icmp eq i32 %60, 0
  br i1 %cmp112242.not, label %if.end110.cleanup_crit_edge, label %if.end110.for.body_crit_edge

if.end110.for.body_crit_edge:                     ; preds = %if.end110
  br label %for.body

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc138.for.body_crit_edge, %if.end110.for.body_crit_edge
  %i.0243 = phi i32 [ %inc139, %for.inc138.for.body_crit_edge ], [ 0, %if.end110.for.body_crit_edge ]
  %link_handle116 = getelementptr %struct.cxgb4_tc_u32_table, ptr %44, i32 0, i32 1, i32 %i.0243, i32 2
  %61 = ptrtoint ptr %link_handle116 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %link_handle116, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %46)
  %cmp117 = icmp eq i32 %62, %46
  br i1 %cmp117, label %for.body123.preheader, label %for.inc138

for.body123.preheader:                            ; preds = %for.body
  %arrayidx115.le = getelementptr %struct.cxgb4_tc_u32_table, ptr %44, i32 0, i32 1, i32 %i.0243
  %tid_map124 = getelementptr %struct.cxgb4_tc_u32_table, ptr %44, i32 0, i32 1, i32 %i.0243, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %add, i32 1)
  br label %for.body123

for.body123:                                      ; preds = %for.inc.for.body123_crit_edge, %for.body123.preheader
  %j.0245 = phi i32 [ %inc134, %for.inc.for.body123_crit_edge ], [ 0, %for.body123.preheader ]
  %63 = ptrtoint ptr %tid_map124 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tid_map124, align 4
  %div3.i223 = lshr i32 %j.0245, 5
  %arrayidx.i224 = getelementptr i32, ptr %64, i32 %div3.i223
  %65 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %arrayidx.i224, align 4
  %and.i225 = and i32 %j.0245, 31
  %67 = shl nuw i32 1, %and.i225
  %68 = and i32 %66, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool126.not = icmp eq i32 %68, 0
  br i1 %tobool126.not, label %for.body123.for.inc_crit_edge, label %if.end128

for.body123.for.inc_crit_edge:                    ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end128:                                        ; preds = %for.body123
  %call129 = tail call i32 @__cxgb4_del_filter(ptr noundef %dev, i32 noundef %j.0245, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end132:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %tid_map124 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tid_map124, align 4
  tail call void @_clear_bit(i32 noundef %j.0245, ptr noundef %70) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end132, %for.body123.for.inc_crit_edge
  %inc134 = add nuw i32 %j.0245, 1
  %exitcond252.not = icmp eq i32 %inc134, %umax
  br i1 %exitcond252.not, label %for.end, label %for.inc.for.body123_crit_edge

for.inc.for.body123_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %arrayidx115.le to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx115.le, align 8
  %fs136 = getelementptr %struct.cxgb4_tc_u32_table, ptr %44, i32 0, i32 1, i32 %i.0243, i32 1
  %72 = call ptr @memset(ptr %fs136, i32 0, i32 204)
  br label %cleanup

for.inc138:                                       ; preds = %for.body
  %inc139 = add nuw i32 %i.0243, 1
  %exitcond.not = icmp eq i32 %inc139, %60
  br i1 %exitcond.not, label %for.inc138.cleanup_crit_edge, label %for.inc138.for.body_crit_edge

for.inc138.for.body_crit_edge:                    ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc138.cleanup_crit_edge:                     ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc138.cleanup_crit_edge, %for.end, %if.end128.cleanup_crit_edge, %if.end110.cleanup_crit_edge, %if.end102.thread.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.then92.critedge.cleanup_crit_edge, %land.lhs.true85.cleanup_crit_edge, %if.then77.critedge222, %if.then77.critedge, %can_tc_u32_offload.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %can_tc_u32_offload.exit.cleanup_crit_edge ], [ -34, %if.then77.critedge222 ], [ -34, %if.then77.critedge ], [ -22, %land.lhs.true85.cleanup_crit_edge ], [ -22, %if.then92.critedge.cleanup_crit_edge ], [ -22, %if.end97.cleanup_crit_edge ], [ %call103, %if.end102.cleanup_crit_edge ], [ 0, %for.end ], [ %call103230, %if.end102.thread.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end110.cleanup_crit_edge ], [ %call129, %if.end128.cleanup_crit_edge ], [ 0, %for.inc138.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_del_filter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cxgb4_del_filter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_cleanup_tc_u32(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_u32 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 71
  %0 = ptrtoint ptr %tc_u32 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_u32, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %tid_map = getelementptr %struct.cxgb4_tc_u32_table, ptr %1, i32 0, i32 1, i32 %i.010, i32 3
  %4 = ptrtoint ptr %tid_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tid_map, align 4
  tail call void @kvfree(ptr noundef %5) #8
  %inc = add nuw i32 %i.010, 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %tc_u32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tc_u32, align 4
  tail call void @kvfree(ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb4_init_tc_u32(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nftids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 18
  %0 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nftids, align 8
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 14
  %2 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nhpftids, align 8
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 216) #8
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %7 = add nuw i32 %6, 8
  %retval.0.i = select i1 %5, i32 -1, i32 %7
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #12
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup26_crit_edge, label %for.body.lr.ph

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

for.body.lr.ph:                                   ; preds = %if.end
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %call.i.i, align 8
  %sub = add i32 %add, 31
  %9 = lshr i32 %sub, 3
  %10 = and i32 %9, 536870908
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %10, i32 noundef 3520, i32 noundef -1) #12
  %tid_map = getelementptr %struct.cxgb4_tc_u32_table, ptr %call.i.i, i32 0, i32 1, i32 %i.054, i32 3
  %11 = ptrtoint ptr %tid_map to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %tid_map, align 4
  %tobool10.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool10.not, label %for.cond15.preheader, label %for.inc

for.cond15.preheader:                             ; preds = %for.body
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1755.not = icmp eq i32 %13, 0
  br i1 %cmp1755.not, label %for.cond15.preheader.for.end25_crit_edge, label %for.cond15.preheader.for.body18_crit_edge

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.cond15.preheader.for.end25_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.inc:                                          ; preds = %for.body
  %14 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 %10)
  %inc = add nuw i32 %i.054, 1
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i.i, align 8
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup26_crit_edge

for.inc.cleanup26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %i.156 = phi i32 [ %inc24, %for.body18.for.body18_crit_edge ], [ 0, %for.cond15.preheader.for.body18_crit_edge ]
  %tid_map22 = getelementptr %struct.cxgb4_tc_u32_table, ptr %call.i.i, i32 0, i32 1, i32 %i.156, i32 3
  %17 = ptrtoint ptr %tid_map22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tid_map22, align 4
  tail call void @kvfree(ptr noundef %18) #8
  %inc24 = add nuw i32 %i.156, 1
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i.i, align 8
  %cmp17 = icmp ult i32 %inc24, %20
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.end25_crit_edge

for.body18.for.end25_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

for.end25:                                        ; preds = %for.body18.for.end25_crit_edge, %for.cond15.preheader.for.end25_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup26

cleanup26:                                        ; preds = %for.end25, %for.inc.cleanup26_crit_edge, %if.end.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.0 = phi ptr [ null, %for.end25 ], [ null, %entry.cleanup26_crit_edge ], [ null, %if.end.cleanup26_crit_edge ], [ %call.i.i, %for.inc.cleanup26_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_tos(ptr nocapture noundef %f, i32 noundef %val, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tos = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tos, align 4
  %1 = lshr i32 %val, 10
  %bf.shl = and i32 %1, 261120
  %bf.clear = and i32 %bf.load, -261121
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %tos, align 4
  %tos5 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %tos5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load6 = load i32, ptr %tos5, align 4
  %3 = lshr i32 %mask, 10
  %bf.shl8 = and i32 %3, 261120
  %bf.clear9 = and i32 %bf.load6, -261121
  %bf.set10 = or i32 %bf.clear9, %bf.shl8
  store i32 %bf.set10, ptr %tos5, align 4
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_proto(ptr nocapture noundef %f, i32 noundef %val, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %proto = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %proto, align 4
  %1 = shl i32 %val, 10
  %bf.shl = and i32 %1, 66846720
  %bf.clear = and i32 %bf.load, -66846721
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %proto, align 4
  %proto5 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %proto5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load6 = load i32, ptr %proto5, align 4
  %3 = shl i32 %mask, 10
  %bf.shl8 = and i32 %3, 66846720
  %bf.clear9 = and i32 %bf.load6, -66846721
  %bf.set10 = or i32 %bf.clear9, %bf.shl8
  store i32 %bf.set10, ptr %proto5, align 4
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_src_ip0(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %fip = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %fip to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %fip, align 1
  %fip3 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 7
  %1 = ptrtoint ptr %fip3 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %fip3, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_src_ip1(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 7, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 7, i32 4
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_src_ip2(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 7, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 7, i32 8
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_src_ip3(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 7, i32 12
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 7, i32 12
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_dst_ip0(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %lip = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 6
  %0 = ptrtoint ptr %lip to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %lip, align 1
  %lip3 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %lip3 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %lip3, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_dst_ip1(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 6, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 6, i32 4
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_dst_ip2(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 6, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 6, i32 8
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv6_dst_ip3(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 6, i32 12
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 6, i32 12
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_fill_ipv4_tos(ptr nocapture noundef %f, i32 noundef %val, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tos = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %tos, align 4
  %1 = lshr i32 %val, 6
  %bf.shl = and i32 %1, 261120
  %bf.clear = and i32 %bf.load, -261121
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %tos, align 4
  %tos5 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %tos5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load6 = load i32, ptr %tos5, align 4
  %3 = lshr i32 %mask, 6
  %bf.shl8 = and i32 %3, 261120
  %bf.clear9 = and i32 %bf.load6, -261121
  %bf.set10 = or i32 %bf.clear9, %bf.shl8
  store i32 %bf.set10, ptr %tos5, align 4
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_fill_ipv4_frag(ptr nocapture noundef %f, i32 noundef %val, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %val, 13
  %conv = and i32 %shr, 7
  %and1 = and i32 %mask, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp = icmp ne i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %and1)
  %cmp4.not = icmp eq i32 %and1, 16383
  %or.cond = or i1 %cmp, %cmp4.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val6 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %val6, align 4
  %bf.set = or i32 %bf.load, 32768
  store i32 %bf.set, ptr %val6, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv)
  %cmp12 = icmp ne i32 %conv, 2
  %or.cond34 = or i1 %cmp12, %cmp4.not
  br i1 %or.cond34, label %if.else.cleanup_crit_edge, label %if.then17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %val18 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11
  %1 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load19 = load i32, ptr %val18, align 4
  %bf.clear20 = and i32 %bf.load19, -32769
  store i32 %bf.clear20, ptr %val18, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17, %if.then
  %mask22 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12
  %2 = ptrtoint ptr %mask22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load8 = load i32, ptr %mask22, align 4
  %bf.set10 = or i32 %bf.load8, 32768
  store i32 %bf.set10, ptr %mask22, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_fill_ipv4_proto(ptr nocapture noundef %f, i32 noundef %val, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %proto = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %proto, align 4
  %1 = shl i32 %val, 2
  %bf.shl = and i32 %1, 66846720
  %bf.clear = and i32 %bf.load, -66846721
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %proto, align 4
  %proto5 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %proto5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load6 = load i32, ptr %proto5, align 4
  %3 = shl i32 %mask, 2
  %bf.shl8 = and i32 %3, 66846720
  %bf.clear9 = and i32 %bf.load6, -66846721
  %bf.set10 = or i32 %bf.clear9, %bf.shl8
  store i32 %bf.set10, ptr %proto5, align 4
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv4_src_ip(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %fip = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %fip to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %fip, align 1
  %fip3 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 7
  %1 = ptrtoint ptr %fip3 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %fip3, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_ipv4_dst_ip(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %lip = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 6
  %0 = ptrtoint ptr %lip to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %val, ptr %lip, align 1
  %lip3 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %lip3 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %mask, ptr %lip3, align 1
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxgb4_fill_l4_ports(ptr nocapture noundef writeonly %f, i32 noundef %val, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %val, 16
  %conv = trunc i32 %shr to i16
  %fport = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 9
  %0 = ptrtoint ptr %fport to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %fport, align 2
  %shr2 = lshr i32 %mask, 16
  %conv3 = trunc i32 %shr2 to i16
  %fport5 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 9
  %1 = ptrtoint ptr %fport5 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv3, ptr %fport5, align 2
  %conv6 = trunc i32 %val to i16
  %lport = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 11, i32 8
  %2 = ptrtoint ptr %lport to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv6, ptr %lport, align 4
  %conv9 = trunc i32 %mask to i16
  %lport11 = getelementptr inbounds %struct.ch_filter_specification, ptr %f, i32 0, i32 12, i32 8
  %3 = ptrtoint ptr %lport11 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv9, ptr %lport11, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @cxgb4_config_knode.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32.c", i32 179, i32 3}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32.c", i32 235, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cxgb4_config_knode._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @cxgb4_config_knode._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @cxgb4_ipv6_fields, !11, !"cxgb4_ipv6_fields", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32_parse.h", i32 203, i32 39}
!12 = !{ptr @cxgb4_ipv4_fields, !13, !"cxgb4_ipv4_fields", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32_parse.h", i32 103, i32 39}
!14 = !{ptr @cxgb4_ipv6_jumps, !15, !"cxgb4_ipv6_jumps", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32_parse.h", i32 291, i32 39}
!16 = !{ptr @cxgb4_tcp_fields, !17, !"cxgb4_tcp_fields", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32_parse.h", i32 229, i32 39}
!18 = !{ptr @cxgb4_udp_fields, !19, !"cxgb4_udp_fields", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32_parse.h", i32 234, i32 39}
!20 = !{ptr @cxgb4_ipv4_jumps, !21, !"cxgb4_ipv4_jumps", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_u32_parse.h", i32 254, i32 39}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/net/tc_act/tc_mirred.h", i32 56, i32 9}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
