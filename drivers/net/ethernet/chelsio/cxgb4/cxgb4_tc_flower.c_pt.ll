; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cxgb4_natmode_config = type { i32, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.195, ptr }
%union.anon.195 = type { %struct.anon.200 }
%struct.anon.200 = type { i32, i64, i64, i64, i32 }
%struct.ch_filter_specification = type { i32, [6 x i8], [6 x i8], i16, [16 x i8], [16 x i8], i16, i16, i32, i64, [12 x i8], %struct.ch_filter_tuple, %struct.ch_filter_tuple }
%struct.ch_filter_tuple = type { i32, i32, i24, i16, [2 x i8], [3 x i8], [16 x i8], [16 x i8], i16, i16 }
%struct.anon.196 = type { i16, i16, i8 }
%struct.anon.197 = type { i32, i32, i32, i32 }
%struct.anon.198 = type { i32, i32, i8 }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.209, i32 }
%struct.atomic_t = type { i32 }
%union.anon.209 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_match_ip = type { ptr, ptr }
%struct.flow_match_enc_keyid = type { ptr, ptr }
%struct.flow_match_vlan = type { ptr, ptr }
%struct.filter_ctx = type { %struct.completion, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.anon.214 = type { i16, i16 }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.ch_tc_flower_entry = type { %struct.ch_filter_specification, %struct.ch_tc_flower_stats, i32, %struct.rhash_head, %struct.callback_head, %struct.spinlock, i32 }
%struct.ch_tc_flower_stats = type { i64, i64, i64, i64 }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@cxgb4_validate_flow_actions.__msg = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"cxgb4: Egress mirror action is only supported for tc-matchall\00", [34 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Out port invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.cxgb4_validate_flow_actions = private unnamed_addr constant [28 x i8] c"cxgb4_validate_flow_actions\00", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unsupported vlan proto\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Unsupported action\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: pedit/vlan rewrite invalid without egress redirect\0A\00", [40 x i8] zeroinitializer }, align 32
@cxgb4_flow_rule_replace.__msg = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cxgb4: No free LETCAM index available\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: filter creation err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.cxgb4_flow_rule_replace = private unnamed_addr constant [24 x i8] c"cxgb4_flow_rule_replace\00", align 1
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ch_flower alloc failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.cxgb4_tc_flower_replace = private unnamed_addr constant [24 x i8] c"cxgb4_tc_flower_replace\00", align 1
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Flow rule destroy failed for tid: %u, ret: %d\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cxgb4_tc_flower_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 384, i16 4, i16 232, i16 236, i32 524288, i16 512, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cxgb4_init_tc_flower.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&adap->flower_stats_work)\00", [52 x i8] zeroinitializer }, align 32
@cxgb4_init_tc_flower.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&adap->flower_stats_timer)\00", [36 x i8] zeroinitializer }, align 32
@cxgb4_natmode_config_array = internal constant { [11 x %struct.cxgb4_natmode_config], [40 x i8] } { [11 x %struct.cxgb4_natmode_config] [%struct.cxgb4_natmode_config { i32 5, i8 0, i8 0 }, %struct.cxgb4_natmode_config { i32 5, i8 1, i8 1 }, %struct.cxgb4_natmode_config { i32 5, i8 5, i8 2 }, %struct.cxgb4_natmode_config { i32 5, i8 7, i8 3 }, %struct.cxgb4_natmode_config { i32 5, i8 13, i8 4 }, %struct.cxgb4_natmode_config { i32 5, i8 10, i8 5 }, %struct.cxgb4_natmode_config { i32 5, i8 11, i8 6 }, %struct.cxgb4_natmode_config { i32 5, i8 15, i8 7 }, %struct.cxgb4_natmode_config { i32 6, i8 2, i8 5 }, %struct.cxgb4_natmode_config { i32 6, i8 9, i8 4 }, %struct.cxgb4_natmode_config { i32 6, i8 3, i8 7 }], [40 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__msg = internal constant [56 x i8] c"cxgb4: Driver supports only default HW stats type \22any\22\00", align 1
@flow_action_mixed_hw_stats_check.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"cxgb4: Mixing HW stats types for actions is not supported\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Unsupported pedit field\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.valid_pedit_action = private unnamed_addr constant [19 x i8] c"valid_pedit_action\00", align 1
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Unsupported mask for TCP L4 ports\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Unsupported mask for UDP L4 ports\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Unsupported pedit type\0A\00", [36 x i8] zeroinitializer }, align 32
@cxgb4_action_natmode_validate.__msg = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cxgb4: Unsupported NAT mode 4-tuple combination\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported key used: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IP Key supported only with IPv4/v6\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ttl match unsupported for offload\00", [62 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@allocate_flower_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&new->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.cxgb4_process_flow_actions = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 8, i32 10, i32 9, i32 2, i32 9, i32 3, i32 9, i32 9, i32 5, i32 6, i32 9, i32 4, i32 9, i32 7], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 4, i64 5, i64 8, i64 9, i64 10, i64 13, i64 20]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 4, i64 5, i64 8, i64 9, i64 10, i64 13, i64 20]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 8]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@__sancov_gen_cov_switch_values.46 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 712, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 730, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 748, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 774, i32 20 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 780, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 883, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 904, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 938, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1006, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant [26 x i8] c"cxgb4_tc_flower_ht_params\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1103, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1125, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1126, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"cxgb4_natmode_config_array\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 63, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 354, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 323, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 598, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 641, i32 21 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 660, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 676, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 487, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 324, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 342, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 348, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 87, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private constant [56 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 150, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 715, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 755, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 695, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 723, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [40 x i8] c"switch.table.cxgb4_process_flow_actions\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @cxgb4_validate_flow_actions.__msg, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @cxgb4_flow_rule_replace.__msg, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cxgb4_tc_flower_ht_params, ptr @cxgb4_init_tc_flower.__key, ptr @.str.8, ptr @cxgb4_init_tc_flower.__key.9, ptr @.str.10, ptr @cxgb4_natmode_config_array, ptr @.str.11, ptr @flow_action_mixed_hw_stats_check.__msg, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @cxgb4_action_natmode_validate.__msg, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @allocate_flower_entry.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @switch.table.cxgb4_process_flow_actions], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_validate_flow_actions.__msg to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_flow_rule_replace.__msg to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_tc_flower_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_init_tc_flower.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_init_tc_flower.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_natmode_config_array to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_mixed_hw_stats_check.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_action_natmode_validate.__msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_flower_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxgb4_process_flow_actions to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_process_flow_actions(ptr nocapture readnone %in, ptr nocapture noundef readonly %actions, ptr noundef %fs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp114.not = icmp eq i32 %1, 0
  br i1 %cmp114.not, label %entry.if.end_crit_edge, label %for.body.lr.ph

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %entries = getelementptr inbounds %struct.flow_action, ptr %actions, i32 0, i32 1
  %nat_fport76.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 7
  %nat_lport83.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 6
  %add.ptr.i211.i = getelementptr i8, ptr %fs, i32 30
  %add.ptr.i207.i = getelementptr i8, ptr %fs, i32 26
  %add.ptr.i203.i = getelementptr i8, ptr %fs, i32 22
  %add.ptr.i199.i = getelementptr i8, ptr %fs, i32 18
  %add.ptr.i195.i = getelementptr i8, ptr %fs, i32 46
  %add.ptr.i191.i = getelementptr i8, ptr %fs, i32 42
  %add.ptr.i187.i = getelementptr i8, ptr %fs, i32 38
  %add.ptr.i183.i = getelementptr i8, ptr %fs, i32 34
  %add.ptr.i171.i = getelementptr i8, ptr %fs, i32 12
  %add.ptr.i163.i = getelementptr i8, ptr %fs, i32 8
  %add.ptr.i167.i = getelementptr i8, ptr %fs, i32 10
  %add.ptr.i.i = getelementptr i8, ptr %fs, i32 4
  %vlan48 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %act.0117 = phi ptr [ %entries, %for.body.lr.ph ], [ %arrayidx70, %for.inc.for.body_crit_edge ]
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %natmode_flags.0115 = phi i8 [ 0, %for.body.lr.ph ], [ %natmode_flags.2, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %act.0117 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %act.0117, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 5, label %for.body.sw.bb5_crit_edge
    i32 4, label %for.body.sw.bb5_crit_edge119
    i32 9, label %for.body.sw.bb12_crit_edge
    i32 8, label %for.body.sw.bb12_crit_edge120
    i32 10, label %for.body.sw.bb12_crit_edge121
    i32 13, label %sw.bb49
    i32 20, label %sw.bb55
  ]

for.body.sw.bb12_crit_edge121:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

for.body.sw.bb12_crit_edge120:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

for.body.sw.bb12_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

for.body.sw.bb5_crit_edge119:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

for.body.sw.bb5_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %fs, align 8
  %bf.clear = and i32 %bf.load, -201326593
  store i32 %bf.clear, ptr %fs, align 8
  br label %for.inc

sw.bb1:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load2 = load i32, ptr %fs, align 8
  %bf.clear3 = and i32 %bf.load2, -201326593
  %bf.set4 = or i32 %bf.clear3, 67108864
  store i32 %bf.set4, ptr %fs, align 8
  br label %for.inc

sw.bb5:                                           ; preds = %for.body.sw.bb5_crit_edge, %for.body.sw.bb5_crit_edge119
  %7 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0117, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load6 = load i32, ptr %fs, align 8
  %bf.clear7 = and i32 %bf.load6, -201326593
  %bf.set8 = or i32 %bf.clear7, 134217728
  store i32 %bf.set8, ptr %fs, align 8
  %port_id = getelementptr i8, ptr %9, i32 2325
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_id, align 1
  %13 = and i8 %12, 3
  %bf.value = zext i8 %13 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 10
  %bf.clear10 = and i32 %bf.set8, -67111937
  %bf.set11 = or i32 %bf.shl, %bf.clear10
  store i32 %bf.set11, ptr %fs, align 8
  br label %for.inc

sw.bb12:                                          ; preds = %for.body.sw.bb12_crit_edge, %for.body.sw.bb12_crit_edge120, %for.body.sw.bb12_crit_edge121
  %14 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0117, i32 0, i32 5
  %prio13 = getelementptr inbounds %struct.anon.196, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %prio13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %prio13, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %14, align 8
  %conv15 = zext i8 %16 to i16
  %shl = shl i16 %conv15, 13
  %or = or i16 %shl, %18
  %19 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %sw.bb12.for.inc_crit_edge [
    i32 9, label %sw.bb19
    i32 8, label %sw.bb28
    i32 10, label %sw.bb38
  ]

sw.bb12.for.inc_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb19:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load20 = load i32, ptr %fs, align 8
  %bf.set27 = or i32 %bf.load20, 64
  store i32 %bf.set27, ptr %fs, align 8
  br label %for.inc

sw.bb28:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load29 = load i32, ptr %fs, align 8
  %bf.set37 = or i32 %bf.load29, 128
  store i32 %bf.set37, ptr %fs, align 8
  %22 = ptrtoint ptr %vlan48 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or, ptr %vlan48, align 8
  br label %for.inc

sw.bb38:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load39 = load i32, ptr %fs, align 8
  %bf.set47 = or i32 %bf.load39, 192
  store i32 %bf.set47, ptr %fs, align 8
  %24 = ptrtoint ptr %vlan48 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or, ptr %vlan48, align 8
  br label %for.inc

sw.bb49:                                          ; preds = %for.body
  %25 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0117, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %conv51 = trunc i32 %27 to i8
  %mask52 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0117, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %mask52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask52, align 8
  %val53 = getelementptr inbounds %struct.anon.197, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %val53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val53, align 4
  %offset54 = getelementptr inbounds %struct.anon.197, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %offset54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset54, align 4
  %34 = zext i8 %conv51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %conv51, label %sw.bb49.for.inc_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb8.i
    i8 3, label %sw.bb17.i
    i8 4, label %sw.bb51.i
    i8 5, label %sw.bb69.i
  ]

sw.bb49.for.inc_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb.i:                                          ; preds = %sw.bb49
  %35 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %33, label %sw.bb.i.for.inc_crit_edge [
    i32 0, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 8, label %sw.bb4.i
  ]

sw.bb.i.for.inc_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb1.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i = load i32, ptr %fs, align 8
  %bf.set.i = or i32 %bf.load.i, 512
  store i32 %bf.set.i, ptr %fs, align 8
  %neg.i.i = xor i32 %29, -1
  %and.i.i = and i32 %31, %neg.i.i
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %and.i.i, ptr %add.ptr.i.i, align 1
  br label %for.inc

sw.bb2.i:                                         ; preds = %sw.bb.i
  %neg.i = and i32 %29, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %neg.i)
  %tobool.not.i = icmp eq i32 %neg.i, 65535
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i161.i = xor i32 %29, -1
  %and.i162.i = and i32 %31, %neg.i161.i
  %set_val.i160.0.extract.shift.i = lshr i32 %and.i162.i, 16
  %set_val.i160.0.extract.trunc.i = trunc i32 %set_val.i160.0.extract.shift.i to i16
  %38 = ptrtoint ptr %add.ptr.i163.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %set_val.i160.0.extract.trunc.i, ptr %add.ptr.i163.i, align 1
  br label %for.inc

if.else.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %add.ptr.i167.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 0, ptr %add.ptr.i167.i, align 1
  br label %for.inc

sw.bb4.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load5.i = load i32, ptr %fs, align 8
  %bf.set7.i = or i32 %bf.load5.i, 256
  store i32 %bf.set7.i, ptr %fs, align 8
  %neg.i169.i = xor i32 %29, -1
  %and.i170.i = and i32 %31, %neg.i169.i
  %41 = ptrtoint ptr %add.ptr.i171.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %and.i170.i, ptr %add.ptr.i171.i, align 1
  br label %for.inc

sw.bb8.i:                                         ; preds = %sw.bb49
  %42 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %33, label %sw.bb8.i.for.inc_crit_edge [
    i32 12, label %sw.bb9.i
    i32 16, label %sw.bb12.i
  ]

sw.bb8.i.for.inc_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb9.i:                                         ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i173.i = xor i32 %29, -1
  %and.i174.i = and i32 %31, %neg.i173.i
  %43 = ptrtoint ptr %add.ptr.i183.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %and.i174.i, ptr %add.ptr.i183.i, align 1
  %44 = or i8 %natmode_flags.0115, 2
  br label %for.inc

sw.bb12.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i177.i = xor i32 %29, -1
  %and.i178.i = and i32 %31, %neg.i177.i
  %45 = ptrtoint ptr %add.ptr.i199.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %and.i178.i, ptr %add.ptr.i199.i, align 1
  %46 = or i8 %natmode_flags.0115, 1
  br label %for.inc

sw.bb17.i:                                        ; preds = %sw.bb49
  %47 = add i32 %33, -8
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 30) #11
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %48, label %sw.bb17.i.for.inc_crit_edge [
    i32 0, label %sw.bb18.i
    i32 1, label %sw.bb22.i
    i32 2, label %sw.bb26.i
    i32 3, label %sw.bb30.i
    i32 4, label %sw.bb34.i
    i32 5, label %sw.bb38.i
    i32 6, label %sw.bb42.i
    i32 7, label %sw.bb46.i
  ]

sw.bb17.i.for.inc_crit_edge:                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb18.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i181.i = xor i32 %29, -1
  %and.i182.i = and i32 %31, %neg.i181.i
  %50 = ptrtoint ptr %add.ptr.i183.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %and.i182.i, ptr %add.ptr.i183.i, align 1
  %51 = or i8 %natmode_flags.0115, 2
  br label %for.inc

sw.bb22.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i185.i = xor i32 %29, -1
  %and.i186.i = and i32 %31, %neg.i185.i
  %52 = ptrtoint ptr %add.ptr.i187.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %and.i186.i, ptr %add.ptr.i187.i, align 1
  %53 = or i8 %natmode_flags.0115, 2
  br label %for.inc

sw.bb26.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i189.i = xor i32 %29, -1
  %and.i190.i = and i32 %31, %neg.i189.i
  %54 = ptrtoint ptr %add.ptr.i191.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %and.i190.i, ptr %add.ptr.i191.i, align 1
  %55 = or i8 %natmode_flags.0115, 2
  br label %for.inc

sw.bb30.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i193.i = xor i32 %29, -1
  %and.i194.i = and i32 %31, %neg.i193.i
  %56 = ptrtoint ptr %add.ptr.i195.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %and.i194.i, ptr %add.ptr.i195.i, align 1
  %57 = or i8 %natmode_flags.0115, 2
  br label %for.inc

sw.bb34.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i197.i = xor i32 %29, -1
  %and.i198.i = and i32 %31, %neg.i197.i
  %58 = ptrtoint ptr %add.ptr.i199.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %and.i198.i, ptr %add.ptr.i199.i, align 1
  %59 = or i8 %natmode_flags.0115, 1
  br label %for.inc

sw.bb38.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i201.i = xor i32 %29, -1
  %and.i202.i = and i32 %31, %neg.i201.i
  %60 = ptrtoint ptr %add.ptr.i203.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %and.i202.i, ptr %add.ptr.i203.i, align 1
  %61 = or i8 %natmode_flags.0115, 1
  br label %for.inc

sw.bb42.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i205.i = xor i32 %29, -1
  %and.i206.i = and i32 %31, %neg.i205.i
  %62 = ptrtoint ptr %add.ptr.i207.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %and.i206.i, ptr %add.ptr.i207.i, align 1
  %63 = or i8 %natmode_flags.0115, 1
  br label %for.inc

sw.bb46.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i209.i = xor i32 %29, -1
  %and.i210.i = and i32 %31, %neg.i209.i
  %64 = ptrtoint ptr %add.ptr.i211.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %and.i210.i, ptr %add.ptr.i211.i, align 1
  %65 = or i8 %natmode_flags.0115, 1
  br label %for.inc

sw.bb51.i:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cond90.i = icmp eq i32 %33, 0
  br i1 %cond90.i, label %sw.bb52.i, label %sw.bb51.i.for.inc_crit_edge

sw.bb51.i.for.inc_crit_edge:                      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb52.i:                                        ; preds = %sw.bb51.i
  %neg53.i = and i32 %29, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %neg53.i)
  %tobool55.not.i = icmp eq i32 %neg53.i, 65535
  br i1 %tobool55.not.i, label %if.else61.i, label %if.then56.i

if.then56.i:                                      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv57.i = trunc i32 %31 to i16
  %66 = ptrtoint ptr %nat_fport76.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv57.i, ptr %nat_fport76.i, align 4
  %67 = or i8 %natmode_flags.0115, 8
  br label %for.inc

if.else61.i:                                      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr62.i = lshr i32 %31, 16
  %conv63.i = trunc i32 %shr62.i to i16
  %68 = ptrtoint ptr %nat_lport83.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv63.i, ptr %nat_lport83.i, align 2
  %69 = or i8 %natmode_flags.0115, 4
  br label %for.inc

sw.bb69.i:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cond.i = icmp eq i32 %33, 0
  br i1 %cond.i, label %sw.bb70.i, label %sw.bb69.i.for.inc_crit_edge

sw.bb69.i.for.inc_crit_edge:                      ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb70.i:                                        ; preds = %sw.bb69.i
  %neg71.i = and i32 %29, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %neg71.i)
  %tobool73.not.i = icmp eq i32 %neg71.i, 65535
  br i1 %tobool73.not.i, label %if.else80.i, label %if.then74.i

if.then74.i:                                      ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv75.i = trunc i32 %31 to i16
  %70 = ptrtoint ptr %nat_fport76.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv75.i, ptr %nat_fport76.i, align 4
  %71 = or i8 %natmode_flags.0115, 8
  br label %for.inc

if.else80.i:                                      ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr81.i = lshr i32 %31, 16
  %conv82.i = trunc i32 %shr81.i to i16
  %72 = ptrtoint ptr %nat_lport83.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv82.i, ptr %nat_lport83.i, align 2
  %73 = or i8 %natmode_flags.0115, 4
  br label %for.inc

sw.bb55:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load56 = load i32, ptr %fs, align 8
  %bf.clear60 = and i32 %bf.load56, -218103809
  %bf.set61 = or i32 %bf.clear60, 16777216
  store i32 %bf.set61, ptr %fs, align 8
  %75 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0117, i32 0, i32 5
  %index = getelementptr inbounds %struct.anon.198, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %index, align 4
  %bf.value63 = shl i32 %77, 14
  %bf.shl64 = and i32 %bf.value63, 16760832
  %bf.clear65 = and i32 %bf.set61, -218087425
  %bf.set66 = or i32 %bf.shl64, %bf.clear65
  store i32 %bf.set66, ptr %fs, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.bb55, %if.else80.i, %if.then74.i, %sw.bb69.i.for.inc_crit_edge, %if.else61.i, %if.then56.i, %sw.bb51.i.for.inc_crit_edge, %sw.bb46.i, %sw.bb42.i, %sw.bb38.i, %sw.bb34.i, %sw.bb30.i, %sw.bb26.i, %sw.bb22.i, %sw.bb18.i, %sw.bb17.i.for.inc_crit_edge, %sw.bb12.i, %sw.bb9.i, %sw.bb8.i.for.inc_crit_edge, %sw.bb4.i, %if.else.i, %if.then.i, %sw.bb1.i, %sw.bb.i.for.inc_crit_edge, %sw.bb49.for.inc_crit_edge, %sw.bb38, %sw.bb28, %sw.bb19, %sw.bb12.for.inc_crit_edge, %sw.bb5, %sw.bb1, %sw.bb, %for.body.for.inc_crit_edge
  %natmode_flags.2 = phi i8 [ %natmode_flags.0115, %for.body.for.inc_crit_edge ], [ %natmode_flags.0115, %sw.bb55 ], [ %natmode_flags.0115, %sw.bb12.for.inc_crit_edge ], [ %natmode_flags.0115, %sw.bb38 ], [ %natmode_flags.0115, %sw.bb28 ], [ %natmode_flags.0115, %sw.bb19 ], [ %natmode_flags.0115, %sw.bb5 ], [ %natmode_flags.0115, %sw.bb1 ], [ %natmode_flags.0115, %sw.bb ], [ %natmode_flags.0115, %sw.bb49.for.inc_crit_edge ], [ %73, %if.else80.i ], [ %71, %if.then74.i ], [ %natmode_flags.0115, %sw.bb69.i.for.inc_crit_edge ], [ %69, %if.else61.i ], [ %67, %if.then56.i ], [ %natmode_flags.0115, %sw.bb51.i.for.inc_crit_edge ], [ %natmode_flags.0115, %sw.bb17.i.for.inc_crit_edge ], [ %65, %sw.bb46.i ], [ %63, %sw.bb42.i ], [ %61, %sw.bb38.i ], [ %59, %sw.bb34.i ], [ %57, %sw.bb30.i ], [ %55, %sw.bb26.i ], [ %53, %sw.bb22.i ], [ %51, %sw.bb18.i ], [ %natmode_flags.0115, %sw.bb8.i.for.inc_crit_edge ], [ %46, %sw.bb12.i ], [ %44, %sw.bb9.i ], [ %natmode_flags.0115, %sw.bb.i.for.inc_crit_edge ], [ %natmode_flags.0115, %sw.bb4.i ], [ %natmode_flags.0115, %if.else.i ], [ %natmode_flags.0115, %if.then.i ], [ %natmode_flags.0115, %sw.bb1.i ]
  %inc = add nuw i32 %i.0116, 1
  %arrayidx70 = getelementptr %struct.flow_action, ptr %actions, i32 0, i32 1, i32 %inc
  %78 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %actions, align 8
  %cmp = icmp ult i32 %inc, %79
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %switch.tableidx = add i8 %natmode_flags.2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %switch.tableidx)
  %80 = icmp ult i8 %switch.tableidx, 15
  br i1 %80, label %switch.hole_check, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

switch.hole_check:                                ; preds = %for.end
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 22359, %switch.maskindex
  %81 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %switch.lobit.not = icmp eq i16 %81, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.lookup

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %82 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.cxgb4_process_flow_actions, i32 0, i32 %82
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load = load i32, ptr %switch.gep, align 4
  %natmode.i = getelementptr [11 x %struct.cxgb4_natmode_config], ptr @cxgb4_natmode_config_array, i32 0, i32 %switch.load, i32 2
  %84 = ptrtoint ptr %natmode.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %natmode.i, align 1
  %86 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load.i97 = load i32, ptr %fs, align 8
  %87 = shl i8 %85, 3
  %88 = and i8 %87, 56
  %bf.shl.i = zext i8 %88 to i32
  %bf.clear.i = and i32 %bf.load.i97, -57
  %bf.set.i98 = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i98, ptr %fs, align 8
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %switch.hole_check.if.end_crit_edge, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_validate_flow_actions(ptr noundef %dev, ptr nocapture noundef readonly %actions, ptr noundef writeonly %extack, i8 noundef zeroext %matchall_filter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %2 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actions, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %for.body.preheader.i.i.i [
    i32 0, label %entry.for.end52_crit_edge
    i32 1, label %entry.flow_action_first_entry_get.exit.i.i_crit_edge
  ]

entry.flow_action_first_entry_get.exit.i.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %flow_action_first_entry_get.exit.i.i

entry.for.end52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52

for.body.preheader.i.i.i:                         ; preds = %entry
  %entries.i.i.i = getelementptr inbounds %struct.flow_action, ptr %actions, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end7.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.024.i.i.i = phi i32 [ %inc.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %last_hw_stats.023.i.i.i = phi i32 [ %8, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ 255, %for.body.preheader.i.i.i ]
  %action_entry.022.i.i.i = phi ptr [ %arrayidx11.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ %entries.i.i.i, %for.body.preheader.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %i.024.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.if.end7.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.if.end7.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %hw_stats.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %hw_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_stats.i.i.i, align 8
  %conv.i.i.i = and i32 %last_hw_stats.023.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %6, %conv.i.i.i
  br i1 %cmp1.not.i.i.i, label %land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge, label %do.body.i.i.i

land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i.i

do.body.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @flow_action_mixed_hw_stats_check.__msg) #11
  %tobool4.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i.i.i, label %do.body.i.i.i.cleanup71_crit_edge, label %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge

do.body.i.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i

do.body.i.i.i.cleanup71_crit_edge:                ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.end7.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge, %for.body.i.i.i.if.end7.i.i.i_crit_edge
  %hw_stats8.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %hw_stats8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_stats8.i.i.i, align 8
  %inc.i.i.i = add nuw i32 %i.024.i.i.i, 1
  %arrayidx11.i.i.i = getelementptr %struct.flow_action, ptr %actions, i32 0, i32 1, i32 %inc.i.i.i
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %3
  br i1 %exitcond.not.i.i.i, label %if.end3.i.i, label %if.end7.i.i.i.for.body.i.i.i_crit_edge

if.end7.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

if.end3.i.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i, label %do.end.i.i.i, label %if.end3.i.i.flow_action_first_entry_get.exit.i.i_crit_edge, !prof !119

if.end3.i.i.flow_action_first_entry_get.exit.i.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %flow_action_first_entry_get.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 334, i32 noundef 9, ptr noundef null) #11
  br label %flow_action_first_entry_get.exit.i.i

flow_action_first_entry_get.exit.i.i:             ; preds = %do.end.i.i.i, %if.end3.i.i.flow_action_first_entry_get.exit.i.i_crit_edge, %entry.flow_action_first_entry_get.exit.i.i_crit_edge
  %hw_stats.i.i = getelementptr inbounds %struct.flow_action, ptr %actions, i32 2
  %9 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_stats.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %flow_action_first_entry_get.exit.i.i.land.lhs.true.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.land.lhs.true.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

land.rhs.i.i:                                     ; preds = %flow_action_first_entry_get.exit.i.i
  %.b1.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.land.lhs.true.i.i_crit_edge, label %if.then14.i.i, !prof !120

land.rhs.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

if.then14.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 354, i32 noundef 9, ptr noundef null) #11
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then14.i.i, %land.rhs.i.i.land.lhs.true.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.land.lhs.true.i.i_crit_edge
  %11 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_stats.i.i, align 8
  %neg.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %neg.i.i)
  %tobool46.not.i.i = icmp eq i32 %neg.i.i, 3
  br i1 %tobool46.not.i.i, label %if.end, label %do.body48.i.i

do.body48.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg) #11
  %tobool49.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool49.not.i.i, label %do.body48.i.i.cleanup71_crit_edge, label %do.body48.i.i.cleanup.sink.split.i.i_crit_edge

do.body48.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i.i

do.body48.i.i.cleanup71_crit_edge:                ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

cleanup.sink.split.i.i:                           ; preds = %do.body48.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge
  %flow_action_mixed_hw_stats_check.__msg.sink.i.i = phi ptr [ @flow_action_mixed_hw_stats_check.__msg, %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ @__flow_action_hw_stats_check.__msg, %do.body48.i.i.cleanup.sink.split.i.i_crit_edge ]
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %flow_action_mixed_hw_stats_check.__msg.sink.i.i, ptr %extack, align 4
  br label %cleanup71

if.end:                                           ; preds = %land.lhs.true.i.i
  %14 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %actions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp205.not = icmp eq i32 %.pr, 0
  br i1 %cmp205.not, label %if.end.for.end52_crit_edge, label %for.body.lr.ph

if.end.for.end52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52

for.body.lr.ph:                                   ; preds = %if.end
  %entries = getelementptr inbounds %struct.flow_action, ptr %actions, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %matchall_filter)
  %tobool.not = icmp eq i8 %matchall_filter, 0
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc48.for.body_crit_edge, %for.body.lr.ph
  %i.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc50, %for.inc48.for.body_crit_edge ]
  %act_vlan.0.off0210 = phi i1 [ false, %for.body.lr.ph ], [ %act_vlan.2.off0, %for.inc48.for.body_crit_edge ]
  %act_pedit.0.off0209 = phi i1 [ false, %for.body.lr.ph ], [ %act_pedit.2.off0, %for.inc48.for.body_crit_edge ]
  %act_redir.0.off0208 = phi i1 [ false, %for.body.lr.ph ], [ %act_redir.2.off0, %for.inc48.for.body_crit_edge ]
  %act.0207 = phi ptr [ %entries, %for.body.lr.ph ], [ %arrayidx51, %for.inc48.for.body_crit_edge ]
  %natmode_flags.0206 = phi i8 [ 0, %for.body.lr.ph ], [ %natmode_flags.2, %for.inc48.for.body_crit_edge ]
  %15 = ptrtoint ptr %act.0207 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %act.0207, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %16, label %sw.default46 [
    i32 0, label %for.body.for.inc48_crit_edge
    i32 1, label %for.body.for.inc48_crit_edge221
    i32 5, label %for.body.sw.bb2_crit_edge
    i32 4, label %for.body.sw.bb2_crit_edge222
    i32 20, label %for.body.for.inc48_crit_edge223
    i32 13, label %sw.bb38
    i32 9, label %for.inc48.fold.split
    i32 8, label %for.body.sw.bb29_crit_edge
    i32 10, label %for.body.sw.bb29_crit_edge224
  ]

for.body.sw.bb29_crit_edge224:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29

for.body.sw.bb29_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29

for.body.for.inc48_crit_edge223:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

for.body.sw.bb2_crit_edge222:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

for.body.sw.bb2_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

for.body.for.inc48_crit_edge221:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

for.body.for.inc48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

sw.bb2:                                           ; preds = %for.body.sw.bb2_crit_edge, %for.body.sw.bb2_crit_edge222
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp5 = icmp eq i32 %16, 5
  %or.cond = and i1 %tobool.not, %cmp5
  br i1 %or.cond, label %do.body, label %if.end10

do.body:                                          ; preds = %sw.bb2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_validate_flow_actions.__msg) #11
  %tobool7.not = icmp eq ptr %extack, null
  br i1 %tobool7.not, label %do.body.cleanup71_crit_edge, label %if.then8

do.body.cleanup71_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cxgb4_validate_flow_actions.__msg, ptr %extack, align 4
  br label %cleanup71

if.end10:                                         ; preds = %sw.bb2
  %19 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0207, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nports, align 4
  %conv = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp12203.not = icmp eq i8 %23, 0
  br i1 %cmp12203.not, label %if.end10.if.then21.critedge_crit_edge, label %if.end10.for.body14_crit_edge

if.end10.for.body14_crit_edge:                    ; preds = %if.end10
  br label %for.body14

if.end10.if.then21.critedge_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.critedge

for.cond11:                                       ; preds = %for.body14
  %inc = add nuw nsw i32 %i3.0204, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond11.if.then21.critedge_crit_edge, label %for.cond11.for.body14_crit_edge

for.cond11.for.body14_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.cond11.if.then21.critedge_crit_edge:          ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.critedge

for.body14:                                       ; preds = %for.cond11.for.body14_crit_edge, %if.end10.for.body14_crit_edge
  %i3.0204 = phi i32 [ %inc, %for.cond11.for.body14_crit_edge ], [ 0, %if.end10.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.adapter, ptr %1, i32 0, i32 23, i32 %i3.0204
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15, align 4
  %cmp16 = icmp eq ptr %21, %25
  br i1 %cmp16, label %for.body14.for.inc48_crit_edge, label %for.cond11

for.body14.for.inc48_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

if.then21.critedge:                               ; preds = %for.cond11.if.then21.critedge_crit_edge, %if.end10.if.then21.critedge_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cxgb4_validate_flow_actions) #14
  br label %cleanup71

sw.bb29:                                          ; preds = %for.body.sw.bb29_crit_edge, %for.body.sw.bb29_crit_edge224
  %26 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0207, i32 0, i32 5
  %proto27 = getelementptr inbounds %struct.anon.196, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %proto27 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %proto27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %28)
  %cmp31.not = icmp eq i16 %28, -32512
  br i1 %cmp31.not, label %sw.bb29.for.inc48_crit_edge, label %if.then33

sw.bb29.for.inc48_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

if.then33:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxgb4_validate_flow_actions) #14
  br label %cleanup71

sw.bb38:                                          ; preds = %for.body
  %29 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0207, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %mask2.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.0207, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %mask2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask2.i, align 8
  %offset3.i = getelementptr inbounds %struct.anon.197, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset3.i, align 4
  %trunc.i = trunc i32 %31 to i8
  %36 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %trunc.i, label %sw.default60.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb6.i
    i8 3, label %sw.bb16.i
    i8 4, label %sw.bb27.i
    i8 5, label %sw.bb40.i
  ]

sw.bb.i:                                          ; preds = %sw.bb38
  %37 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %35, label %sw.default.i [
    i32 0, label %sw.bb.i.for.inc48_crit_edge
    i32 4, label %sw.bb.i.for.inc48_crit_edge225
    i32 8, label %sw.bb.i.for.inc48_crit_edge226
  ]

sw.bb.i.for.inc48_crit_edge226:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

sw.bb.i.for.inc48_crit_edge225:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

sw.bb.i.for.inc48_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

sw.default.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.valid_pedit_action) #14
  br label %cleanup71

sw.bb6.i:                                         ; preds = %sw.bb38
  %38 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %35, label %sw.default14.i [
    i32 12, label %sw.bb7.i
    i32 16, label %sw.bb10.i
  ]

sw.bb7.i:                                         ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = or i8 %natmode_flags.0206, 2
  br label %for.inc48

sw.bb10.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = or i8 %natmode_flags.0206, 1
  br label %for.inc48

sw.default14.i:                                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.valid_pedit_action) #14
  br label %cleanup71

sw.bb16.i:                                        ; preds = %sw.bb38
  %41 = add i32 %35, -8
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 30) #11
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %42, label %sw.default25.i [
    i32 0, label %sw.bb16.i.sw.bb17.i_crit_edge
    i32 1, label %sw.bb16.i.sw.bb17.i_crit_edge227
    i32 2, label %sw.bb16.i.sw.bb17.i_crit_edge228
    i32 3, label %sw.bb16.i.sw.bb17.i_crit_edge229
    i32 4, label %sw.bb16.i.sw.bb21.i_crit_edge
    i32 5, label %sw.bb16.i.sw.bb21.i_crit_edge230
    i32 6, label %sw.bb16.i.sw.bb21.i_crit_edge231
    i32 7, label %sw.bb16.i.sw.bb21.i_crit_edge232
  ]

sw.bb16.i.sw.bb21.i_crit_edge232:                 ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb21.i

sw.bb16.i.sw.bb21.i_crit_edge231:                 ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb21.i

sw.bb16.i.sw.bb21.i_crit_edge230:                 ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb21.i

sw.bb16.i.sw.bb21.i_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb21.i

sw.bb16.i.sw.bb17.i_crit_edge229:                 ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17.i

sw.bb16.i.sw.bb17.i_crit_edge228:                 ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17.i

sw.bb16.i.sw.bb17.i_crit_edge227:                 ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17.i

sw.bb16.i.sw.bb17.i_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17.i

sw.bb17.i:                                        ; preds = %sw.bb16.i.sw.bb17.i_crit_edge, %sw.bb16.i.sw.bb17.i_crit_edge227, %sw.bb16.i.sw.bb17.i_crit_edge228, %sw.bb16.i.sw.bb17.i_crit_edge229
  %44 = or i8 %natmode_flags.0206, 2
  br label %for.inc48

sw.bb21.i:                                        ; preds = %sw.bb16.i.sw.bb21.i_crit_edge, %sw.bb16.i.sw.bb21.i_crit_edge230, %sw.bb16.i.sw.bb21.i_crit_edge231, %sw.bb16.i.sw.bb21.i_crit_edge232
  %45 = or i8 %natmode_flags.0206, 1
  br label %for.inc48

sw.default25.i:                                   ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.valid_pedit_action) #14
  br label %cleanup71

sw.bb27.i:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cond64.i = icmp eq i32 %35, 0
  br i1 %cond64.i, label %sw.bb28.i, label %sw.default38.i

sw.bb28.i:                                        ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %33)
  %tobool.not.i.i126 = icmp ugt i32 %33, -65537
  %neg.i = and i32 %33, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %neg.i)
  %tobool5.i.i = icmp eq i32 %neg.i, 65535
  %46 = or i1 %tobool.not.i.i126, %tobool5.i.i
  br i1 %46, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.valid_pedit_action) #14
  br label %cleanup71

if.end.i:                                         ; preds = %sw.bb28.i
  br i1 %tobool5.i.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = or i8 %natmode_flags.0206, 8
  br label %for.inc48

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = or i8 %natmode_flags.0206, 4
  br label %for.inc48

sw.default38.i:                                   ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.valid_pedit_action) #14
  br label %cleanup71

sw.bb40.i:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cond.i = icmp eq i32 %35, 0
  br i1 %cond.i, label %sw.bb41.i, label %sw.default58.i

sw.bb41.i:                                        ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %33)
  %tobool.not.i88.i = icmp ugt i32 %33, -65537
  %neg42.i = and i32 %33, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %neg42.i)
  %tobool5.i90.i = icmp eq i32 %neg42.i, 65535
  %49 = or i1 %tobool.not.i88.i, %tobool5.i90.i
  br i1 %49, label %if.end45.i, label %if.then44.i

if.then44.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.valid_pedit_action) #14
  br label %cleanup71

if.end45.i:                                       ; preds = %sw.bb41.i
  br i1 %tobool5.i90.i, label %if.else53.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = or i8 %natmode_flags.0206, 8
  br label %for.inc48

if.else53.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = or i8 %natmode_flags.0206, 4
  br label %for.inc48

sw.default58.i:                                   ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.valid_pedit_action) #14
  br label %cleanup71

sw.default60.i:                                   ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.valid_pedit_action) #14
  br label %cleanup71

sw.default46:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.cxgb4_validate_flow_actions) #14
  br label %cleanup71

for.inc48.fold.split:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

for.inc48:                                        ; preds = %for.inc48.fold.split, %if.else53.i, %if.then49.i, %if.else.i, %if.then30.i, %sw.bb21.i, %sw.bb17.i, %sw.bb10.i, %sw.bb7.i, %sw.bb.i.for.inc48_crit_edge, %sw.bb.i.for.inc48_crit_edge225, %sw.bb.i.for.inc48_crit_edge226, %sw.bb29.for.inc48_crit_edge, %for.body14.for.inc48_crit_edge, %for.body.for.inc48_crit_edge, %for.body.for.inc48_crit_edge221, %for.body.for.inc48_crit_edge223
  %natmode_flags.2 = phi i8 [ %natmode_flags.0206, %for.body.for.inc48_crit_edge ], [ %natmode_flags.0206, %for.body.for.inc48_crit_edge221 ], [ %natmode_flags.0206, %for.body.for.inc48_crit_edge223 ], [ %natmode_flags.0206, %sw.bb29.for.inc48_crit_edge ], [ %51, %if.else53.i ], [ %50, %if.then49.i ], [ %48, %if.else.i ], [ %47, %if.then30.i ], [ %45, %sw.bb21.i ], [ %44, %sw.bb17.i ], [ %40, %sw.bb10.i ], [ %39, %sw.bb7.i ], [ %natmode_flags.0206, %sw.bb.i.for.inc48_crit_edge ], [ %natmode_flags.0206, %sw.bb.i.for.inc48_crit_edge225 ], [ %natmode_flags.0206, %sw.bb.i.for.inc48_crit_edge226 ], [ %natmode_flags.0206, %for.inc48.fold.split ], [ %natmode_flags.0206, %for.body14.for.inc48_crit_edge ]
  %act_redir.2.off0 = phi i1 [ %act_redir.0.off0208, %for.body.for.inc48_crit_edge ], [ %act_redir.0.off0208, %for.body.for.inc48_crit_edge221 ], [ %act_redir.0.off0208, %for.body.for.inc48_crit_edge223 ], [ %act_redir.0.off0208, %sw.bb29.for.inc48_crit_edge ], [ %act_redir.0.off0208, %if.else53.i ], [ %act_redir.0.off0208, %if.then49.i ], [ %act_redir.0.off0208, %if.else.i ], [ %act_redir.0.off0208, %if.then30.i ], [ %act_redir.0.off0208, %sw.bb21.i ], [ %act_redir.0.off0208, %sw.bb17.i ], [ %act_redir.0.off0208, %sw.bb10.i ], [ %act_redir.0.off0208, %sw.bb7.i ], [ %act_redir.0.off0208, %sw.bb.i.for.inc48_crit_edge ], [ %act_redir.0.off0208, %sw.bb.i.for.inc48_crit_edge225 ], [ %act_redir.0.off0208, %sw.bb.i.for.inc48_crit_edge226 ], [ %act_redir.0.off0208, %for.inc48.fold.split ], [ true, %for.body14.for.inc48_crit_edge ]
  %act_pedit.2.off0 = phi i1 [ %act_pedit.0.off0209, %for.body.for.inc48_crit_edge ], [ %act_pedit.0.off0209, %for.body.for.inc48_crit_edge221 ], [ %act_pedit.0.off0209, %for.body.for.inc48_crit_edge223 ], [ %act_pedit.0.off0209, %sw.bb29.for.inc48_crit_edge ], [ true, %if.else53.i ], [ true, %if.then49.i ], [ true, %if.else.i ], [ true, %if.then30.i ], [ true, %sw.bb21.i ], [ true, %sw.bb17.i ], [ true, %sw.bb10.i ], [ true, %sw.bb7.i ], [ true, %sw.bb.i.for.inc48_crit_edge ], [ true, %sw.bb.i.for.inc48_crit_edge225 ], [ true, %sw.bb.i.for.inc48_crit_edge226 ], [ %act_pedit.0.off0209, %for.inc48.fold.split ], [ %act_pedit.0.off0209, %for.body14.for.inc48_crit_edge ]
  %act_vlan.2.off0 = phi i1 [ %act_vlan.0.off0210, %for.body.for.inc48_crit_edge ], [ %act_vlan.0.off0210, %for.body.for.inc48_crit_edge221 ], [ %act_vlan.0.off0210, %for.body.for.inc48_crit_edge223 ], [ true, %sw.bb29.for.inc48_crit_edge ], [ %act_vlan.0.off0210, %if.else53.i ], [ %act_vlan.0.off0210, %if.then49.i ], [ %act_vlan.0.off0210, %if.else.i ], [ %act_vlan.0.off0210, %if.then30.i ], [ %act_vlan.0.off0210, %sw.bb21.i ], [ %act_vlan.0.off0210, %sw.bb17.i ], [ %act_vlan.0.off0210, %sw.bb10.i ], [ %act_vlan.0.off0210, %sw.bb7.i ], [ %act_vlan.0.off0210, %sw.bb.i.for.inc48_crit_edge ], [ %act_vlan.0.off0210, %sw.bb.i.for.inc48_crit_edge225 ], [ %act_vlan.0.off0210, %sw.bb.i.for.inc48_crit_edge226 ], [ true, %for.inc48.fold.split ], [ %act_vlan.0.off0210, %for.body14.for.inc48_crit_edge ]
  %inc50 = add nuw i32 %i.0211, 1
  %arrayidx51 = getelementptr %struct.flow_action, ptr %actions, i32 0, i32 1, i32 %inc50
  %exitcond216.not = icmp eq i32 %inc50, %.pr
  br i1 %exitcond216.not, label %for.inc48.for.end52_crit_edge, label %for.inc48.for.body_crit_edge

for.inc48.for.body_crit_edge:                     ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc48.for.end52_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52

for.end52:                                        ; preds = %for.inc48.for.end52_crit_edge, %if.end.for.end52_crit_edge, %entry.for.end52_crit_edge
  %natmode_flags.0.lcssa = phi i8 [ 0, %if.end.for.end52_crit_edge ], [ 0, %entry.for.end52_crit_edge ], [ %natmode_flags.2, %for.inc48.for.end52_crit_edge ]
  %act_redir.0.off0.lcssa = phi i1 [ false, %if.end.for.end52_crit_edge ], [ false, %entry.for.end52_crit_edge ], [ %act_redir.2.off0, %for.inc48.for.end52_crit_edge ]
  %act_pedit.0.off0.lcssa = phi i1 [ false, %if.end.for.end52_crit_edge ], [ false, %entry.for.end52_crit_edge ], [ %act_pedit.2.off0, %for.inc48.for.end52_crit_edge ]
  %act_vlan.0.off0.lcssa = phi i1 [ false, %if.end.for.end52_crit_edge ], [ false, %entry.for.end52_crit_edge ], [ %act_vlan.2.off0, %for.inc48.for.end52_crit_edge ]
  %brmerge = select i1 %act_pedit.0.off0.lcssa, i1 true, i1 %act_vlan.0.off0.lcssa
  %brmerge.not = xor i1 %brmerge, true
  %brmerge125 = select i1 %brmerge.not, i1 true, i1 %act_redir.0.off0.lcssa
  br i1 %brmerge125, label %if.end60, label %if.then59

if.then59:                                        ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cxgb4_validate_flow_actions) #14
  br label %cleanup71

if.end60:                                         ; preds = %for.end52
  br i1 %act_pedit.0.off0.lcssa, label %if.then62, label %if.end60.cleanup71_crit_edge

if.end60.cleanup71_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.then62:                                        ; preds = %if.end60
  %chip.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %52 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chip.i, align 8
  %shr.i = lshr i32 %53, 4
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp3.not.i = icmp ult i32 %and.i, 5
  br i1 %cmp3.not.i, label %if.then62.for.inc.critedge.10.i_crit_edge, label %land.lhs.true.i

if.then62.for.inc.critedge.10.i_crit_edge:        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.10.i

land.lhs.true.i:                                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %natmode_flags.0.lcssa)
  %54 = icmp ult i8 %natmode_flags.0.lcssa, 16
  br i1 %54, label %switch.hole_check, label %land.lhs.true.i.for.inc.critedge.7.i_crit_edge

land.lhs.true.i.for.inc.critedge.7.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.7.i

for.inc.critedge.7.i:                             ; preds = %switch.hole_check.for.inc.critedge.7.i_crit_edge, %land.lhs.true.i.for.inc.critedge.7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp3.not.8.i = icmp ult i32 %and.i, 6
  br i1 %cmp3.not.8.i, label %for.inc.critedge.7.i.for.inc.critedge.10.i_crit_edge, label %land.lhs.true.8.i

for.inc.critedge.7.i.for.inc.critedge.10.i_crit_edge: ; preds = %for.inc.critedge.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.10.i

land.lhs.true.8.i:                                ; preds = %for.inc.critedge.7.i
  %55 = zext i8 %natmode_flags.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %natmode_flags.0.lcssa, label %land.lhs.true.8.i.for.inc.critedge.10.i_crit_edge [
    i8 2, label %land.lhs.true.8.i.cleanup71_crit_edge
    i8 9, label %land.lhs.true.8.i.cleanup71_crit_edge233
    i8 3, label %land.lhs.true.8.i.cleanup71_crit_edge234
  ]

land.lhs.true.8.i.cleanup71_crit_edge234:         ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

land.lhs.true.8.i.cleanup71_crit_edge233:         ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

land.lhs.true.8.i.cleanup71_crit_edge:            ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

land.lhs.true.8.i.for.inc.critedge.10.i_crit_edge: ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.10.i

for.inc.critedge.10.i:                            ; preds = %land.lhs.true.8.i.for.inc.critedge.10.i_crit_edge, %for.inc.critedge.7.i.for.inc.critedge.10.i_crit_edge, %if.then62.for.inc.critedge.10.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_action_natmode_validate.__msg) #11
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %for.inc.critedge.10.i.cleanup71_crit_edge, label %if.then9.i

for.inc.critedge.10.i.cleanup71_crit_edge:        ; preds = %for.inc.critedge.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

if.then9.i:                                       ; preds = %for.inc.critedge.10.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @cxgb4_action_natmode_validate.__msg, ptr %extack, align 4
  br label %cleanup71

switch.hole_check:                                ; preds = %land.lhs.true.i
  %switch.maskindex = zext i8 %natmode_flags.0.lcssa to i16
  %switch.shifted = lshr i16 -21341, %switch.maskindex
  %57 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %switch.lobit.not = icmp eq i16 %57, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc.critedge.7.i_crit_edge, label %switch.hole_check.cleanup71_crit_edge

switch.hole_check.cleanup71_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

switch.hole_check.for.inc.critedge.7.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.critedge.7.i

cleanup71:                                        ; preds = %switch.hole_check.cleanup71_crit_edge, %if.then9.i, %for.inc.critedge.10.i.cleanup71_crit_edge, %land.lhs.true.8.i.cleanup71_crit_edge, %land.lhs.true.8.i.cleanup71_crit_edge233, %land.lhs.true.8.i.cleanup71_crit_edge234, %if.end60.cleanup71_crit_edge, %if.then59, %sw.default46, %sw.default60.i, %sw.default58.i, %if.then44.i, %sw.default38.i, %if.then.i, %sw.default25.i, %sw.default14.i, %sw.default.i, %if.then33, %if.then21.critedge, %if.then8, %do.body.cleanup71_crit_edge, %cleanup.sink.split.i.i, %do.body48.i.i.cleanup71_crit_edge, %do.body.i.i.i.cleanup71_crit_edge
  %retval.6 = phi i32 [ -95, %sw.default46 ], [ -22, %if.then59 ], [ -95, %if.then33 ], [ 0, %if.end60.cleanup71_crit_edge ], [ -95, %do.body48.i.i.cleanup71_crit_edge ], [ -95, %do.body.i.i.i.cleanup71_crit_edge ], [ -95, %cleanup.sink.split.i.i ], [ -95, %do.body.cleanup71_crit_edge ], [ -95, %if.then8 ], [ -22, %if.then21.critedge ], [ 0, %land.lhs.true.8.i.cleanup71_crit_edge ], [ 0, %land.lhs.true.8.i.cleanup71_crit_edge233 ], [ 0, %land.lhs.true.8.i.cleanup71_crit_edge234 ], [ -95, %sw.default60.i ], [ -95, %sw.default58.i ], [ -95, %if.then44.i ], [ -95, %sw.default38.i ], [ -95, %if.then.i ], [ -95, %sw.default25.i ], [ -95, %sw.default14.i ], [ -95, %sw.default.i ], [ -95, %for.inc.critedge.10.i.cleanup71_crit_edge ], [ -95, %if.then9.i ], [ 0, %switch.hole_check.cleanup71_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_flow_rule_replace(ptr noundef %dev, ptr noundef %rule, i32 noundef %tc_prio, ptr noundef %extack, ptr noundef %fs, ptr nocapture noundef writeonly %tid) local_unnamed_addr #2 align 64 {
entry:
  %match.i = alloca %struct.flow_match_control, align 4
  %match11.i = alloca %struct.flow_match_basic, align 4
  %match56.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match86.i = alloca %struct.flow_match_ipv6_addrs, align 4
  %match131.i = alloca %struct.flow_match_ports, align 4
  %match153.i = alloca %struct.flow_match_ip, align 4
  %match176.i = alloca %struct.flow_match_enc_keyid, align 4
  %match200.i = alloca %struct.flow_match_vlan, align 4
  %match4.i = alloca %struct.flow_match_basic, align 4
  %match12.i = alloca %struct.flow_match_ip, align 4
  %ctx = alloca %struct.filter_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ctx) #11
  %2 = call ptr @memset(ptr %ctx, i32 255, i32 68)
  %action = getelementptr inbounds %struct.flow_rule, ptr %rule, i32 0, i32 1
  %call1 = tail call i32 @cxgb4_validate_flow_actions(ptr noundef %dev, ptr noundef %action, ptr noundef %extack, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rule, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i = and i32 %6, -2114592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %6) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i.i.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match4.i) #11
  %7 = ptrtoint ptr %match4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %match4.i, align 4, !annotation !121
  %8 = getelementptr inbounds %struct.flow_match_basic, ptr %match4.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !121
  call void @flow_rule_match_basic(ptr noundef %rule, ptr noundef nonnull %match4.i) #11
  %10 = ptrtoint ptr %match4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %match4.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %8, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match4.i) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %ethtype_mask.0.i = phi i16 [ %17, %if.then3.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  %ethtype_key.0.i = phi i16 [ %13, %if.then3.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  %18 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rule, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i38.i = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.i.i39.not.i = icmp eq i32 %and.i.i38.i, 0
  br i1 %tobool.i.i39.not.i, label %if.end6.i.if.end5_crit_edge, label %if.then8.i

if.end6.i.if.end5_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then8.i:                                       ; preds = %if.end6.i
  %and10.i = and i16 %ethtype_key.0.i, %ethtype_mask.0.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match12.i) #11
  %22 = ptrtoint ptr %match12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %match12.i, align 4, !annotation !121
  %23 = getelementptr inbounds %struct.flow_match_ip, ptr %match12.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %23, align 4, !annotation !121
  %25 = zext i16 %and10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %and10.i, label %if.then18.i [
    i16 2048, label %if.then8.i.if.end19.i_crit_edge
    i16 -31011, label %if.then8.i.if.end19.i_crit_edge102
  ]

if.then8.i.if.end19.i_crit_edge102:               ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then8.i.if.end19.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #14
  br label %cleanup.thread.i

if.end19.i:                                       ; preds = %if.then8.i.if.end19.i_crit_edge, %if.then8.i.if.end19.i_crit_edge102
  call void @flow_rule_match_ip(ptr noundef %rule, ptr noundef nonnull %match12.i) #11
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %ttl.i = getelementptr inbounds %struct.flow_dissector_key_ip, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ttl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool21.not.i = icmp eq i8 %29, 0
  br i1 %tobool21.not.i, label %cleanup.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #14
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then22.i, %if.then18.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match12.i) #11
  br label %cleanup

cleanup.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match12.i) #11
  br label %if.end5

if.end5:                                          ; preds = %cleanup.i, %if.end6.i.if.end5_crit_edge
  %30 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rule, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %and.i.i.i96 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i96)
  %tobool.i.i.not.i97 = icmp eq i32 %and.i.i.i96, 0
  br i1 %tobool.i.i.not.i97, label %if.else.i, label %if.then.i98

if.then.i98:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #11
  %34 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !121
  %35 = getelementptr inbounds %struct.flow_match_control, ptr %match.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %35, align 4, !annotation !121
  call void @flow_rule_match_control(ptr noundef %rule, ptr noundef nonnull %match.i) #11
  %37 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %match.i, align 4
  %addr_type1.i = getelementptr inbounds %struct.flow_dissector_key_control, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %addr_type1.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr_type1.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #11
  br label %if.end8.i

if.else.i:                                        ; preds = %if.end5
  %and.i.i336.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i336.i)
  %tobool.i.i337.not.i = icmp eq i32 %and.i.i336.i, 0
  br i1 %tobool.i.i337.not.i, label %if.else4.i, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i338.i = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i338.i)
  %tobool.i.i339.not.i = icmp eq i32 %and.i.i338.i, 0
  %spec.select.i = select i1 %tobool.i.i339.not.i, i16 0, i16 3
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else4.i, %if.else.i.if.end8.i_crit_edge, %if.then.i98
  %addr_type.0.i = phi i16 [ %40, %if.then.i98 ], [ 2, %if.else.i.if.end8.i_crit_edge ], [ %spec.select.i, %if.else4.i ]
  %41 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rule, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %and.i.i340.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i340.i)
  %tobool.i.i341.not.i = icmp eq i32 %and.i.i340.i, 0
  br i1 %tobool.i.i341.not.i, label %if.end8.i.if.end51.i_crit_edge, label %if.then10.i

if.end8.i.if.end51.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match11.i) #11
  %45 = ptrtoint ptr %match11.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %match11.i, align 4, !annotation !121
  %46 = getelementptr inbounds %struct.flow_match_basic, ptr %match11.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %46, align 4, !annotation !121
  call void @flow_rule_match_basic(ptr noundef %rule, ptr noundef nonnull %match11.i) #11
  %48 = ptrtoint ptr %match11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %match11.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %46, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %53, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %51)
  %cmp.i = icmp eq i16 %51, 3
  %spec.select334.i = select i1 %cmp.i, i16 0, i16 %55
  %spec.select335.i = select i1 %cmp.i, i16 0, i16 %51
  %conv17.i = zext i16 %spec.select335.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %spec.select335.i)
  %cmp18.i = icmp eq i16 %spec.select335.i, -31011
  br i1 %cmp18.i, label %if.then20.i, label %if.then10.i.if.end21.i_crit_edge

if.then10.i.if.end21.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load.i = load i32, ptr %fs, align 8
  %bf.set.i = or i32 %bf.load.i, 536870912
  store i32 %bf.set.i, ptr %fs, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.then10.i.if.end21.i_crit_edge
  %val.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load23.i = load i32, ptr %val.i, align 4
  %bf.shl.i = shl nuw i32 %conv17.i, 16
  %bf.clear24.i = and i32 %bf.load23.i, 65535
  %bf.set25.i = or i32 %bf.clear24.i, %bf.shl.i
  store i32 %bf.set25.i, ptr %val.i, align 4
  %conv26.i = zext i16 %spec.select334.i to i32
  %mask27.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %58 = ptrtoint ptr %mask27.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load28.i = load i32, ptr %mask27.i, align 4
  %bf.shl30.i = shl nuw i32 %conv26.i, 16
  %bf.clear31.i = and i32 %bf.load28.i, 65535
  %bf.set32.i = or i32 %bf.clear31.i, %bf.shl30.i
  store i32 %bf.set32.i, ptr %mask27.i, align 4
  %ip_proto.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %49, i32 0, i32 1
  %59 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ip_proto.i, align 2
  %conv34.i = zext i8 %60 to i32
  %proto.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %61 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load36.i = load i32, ptr %proto.i, align 4
  %bf.shl38.i = shl nuw nsw i32 %conv34.i, 18
  %bf.clear39.i = and i32 %bf.load36.i, -66846721
  %bf.set40.i = or i32 %bf.clear39.i, %bf.shl38.i
  store i32 %bf.set40.i, ptr %proto.i, align 4
  %ip_proto42.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %53, i32 0, i32 1
  %62 = ptrtoint ptr %ip_proto42.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ip_proto42.i, align 2
  %conv43.i = zext i8 %63 to i32
  %proto45.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %64 = ptrtoint ptr %proto45.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load46.i = load i32, ptr %proto45.i, align 4
  %bf.shl48.i = shl nuw nsw i32 %conv43.i, 18
  %bf.clear49.i = and i32 %bf.load46.i, -66846721
  %bf.set50.i = or i32 %bf.clear49.i, %bf.shl48.i
  store i32 %bf.set50.i, ptr %proto45.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match11.i) #11
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end21.i, %if.end8.i.if.end51.i_crit_edge
  %65 = zext i16 %addr_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %addr_type.0.i, label %if.end51.i.if.end128.i_crit_edge [
    i16 2, label %if.then55.i
    i16 3, label %if.then85.i
  ]

if.end51.i.if.end128.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match56.i) #11
  %66 = ptrtoint ptr %match56.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %match56.i, align 4, !annotation !121
  %67 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match56.i, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -1 to ptr), ptr %67, align 4, !annotation !121
  call void @flow_rule_match_ipv4_addrs(ptr noundef %rule, ptr noundef nonnull %match56.i) #11
  %69 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load57.i = load i32, ptr %fs, align 8
  %bf.clear58.i = and i32 %bf.load57.i, -536870913
  store i32 %bf.clear58.i, ptr %fs, align 8
  %lip.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 6
  %70 = ptrtoint ptr %match56.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %match56.i, align 4
  %dst.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dst.i, align 4
  %74 = ptrtoint ptr %lip.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %lip.i, align 1
  %fip.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 7
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %71, align 4
  %77 = ptrtoint ptr %fip.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %fip.i, align 1
  %lip66.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6
  %78 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %67, align 4
  %dst69.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %dst69.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dst69.i, align 4
  %82 = ptrtoint ptr %lip66.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %81, ptr %lip66.i, align 1
  %fip71.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %79, align 4
  %85 = ptrtoint ptr %fip71.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %fip71.i, align 1
  %nat_lip.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 4
  %86 = load i32, ptr %dst.i, align 4
  %87 = ptrtoint ptr %nat_lip.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %86, ptr %nat_lip.i, align 2
  %nat_fip.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 5
  %88 = load i32, ptr %71, align 4
  %89 = ptrtoint ptr %nat_fip.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %nat_fip.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match56.i) #11
  br label %if.end128.i

if.then85.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match86.i) #11
  %90 = ptrtoint ptr %match86.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %match86.i, align 4, !annotation !121
  %91 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match86.i, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -1 to ptr), ptr %91, align 4, !annotation !121
  call void @flow_rule_match_ipv6_addrs(ptr noundef %rule, ptr noundef nonnull %match86.i) #11
  %93 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load87.i = load i32, ptr %fs, align 8
  %bf.set89.i = or i32 %bf.load87.i, 536870912
  store i32 %bf.set89.i, ptr %fs, align 8
  %lip91.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 6
  %94 = ptrtoint ptr %match86.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %match86.i, align 4
  %dst94.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %95, i32 0, i32 1
  %96 = call ptr @memcpy(ptr %lip91.i, ptr %dst94.i, i32 16)
  %fip96.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 7
  %97 = call ptr @memcpy(ptr %fip96.i, ptr %95, i32 16)
  %lip103.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6
  %98 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %91, align 4
  %dst106.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %99, i32 0, i32 1
  %100 = call ptr @memcpy(ptr %lip103.i, ptr %dst106.i, i32 16)
  %fip110.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7
  %101 = call ptr @memcpy(ptr %fip110.i, ptr %99, i32 16)
  %nat_lip116.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 4
  %102 = call ptr @memcpy(ptr %nat_lip116.i, ptr %dst94.i, i32 16)
  %nat_fip122.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 5
  %103 = call ptr @memcpy(ptr %nat_fip122.i, ptr %95, i32 16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match86.i) #11
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then85.i, %if.then55.i, %if.end51.i.if.end128.i_crit_edge
  %104 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rule, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %and.i.i342.i = and i32 %107, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i342.i)
  %tobool.i.i343.not.i = icmp eq i32 %and.i.i342.i, 0
  br i1 %tobool.i.i343.not.i, label %if.end128.i.if.end150.i_crit_edge, label %if.then130.i

if.end128.i.if.end150.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150.i

if.then130.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match131.i) #11
  %108 = ptrtoint ptr %match131.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 -1 to ptr), ptr %match131.i, align 4, !annotation !121
  %109 = getelementptr inbounds %struct.flow_match_ports, ptr %match131.i, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 -1 to ptr), ptr %109, align 4, !annotation !121
  call void @flow_rule_match_ports(ptr noundef %rule, ptr noundef nonnull %match131.i) #11
  %111 = ptrtoint ptr %match131.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %match131.i, align 4
  %dst133.i = getelementptr inbounds %struct.anon.214, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %dst133.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %dst133.i, align 2
  %lport.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 8
  %115 = ptrtoint ptr %lport.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %lport.i, align 4
  %116 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %109, align 4
  %dst136.i = getelementptr inbounds %struct.anon.214, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %dst136.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %dst136.i, align 2
  %lport138.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 8
  %120 = ptrtoint ptr %lport138.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %lport138.i, align 4
  %121 = ptrtoint ptr %112 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %112, align 4
  %fport.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 9
  %123 = ptrtoint ptr %fport.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %fport.i, align 2
  %124 = ptrtoint ptr %117 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %117, align 4
  %fport145.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 9
  %126 = ptrtoint ptr %fport145.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %fport145.i, align 2
  %nat_lport.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 6
  %127 = ptrtoint ptr %nat_lport.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %114, ptr %nat_lport.i, align 2
  %nat_fport.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 7
  %128 = ptrtoint ptr %nat_fport.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %122, ptr %nat_fport.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match131.i) #11
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then130.i, %if.end128.i.if.end150.i_crit_edge
  %129 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rule, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %and.i.i344.i = and i32 %132, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i344.i)
  %tobool.i.i345.not.i = icmp eq i32 %and.i.i344.i, 0
  br i1 %tobool.i.i345.not.i, label %if.end150.i.if.end173.i_crit_edge, label %if.then152.i

if.end150.i.if.end173.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173.i

if.then152.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match153.i) #11
  %133 = ptrtoint ptr %match153.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 -1 to ptr), ptr %match153.i, align 4, !annotation !121
  %134 = getelementptr inbounds %struct.flow_match_ip, ptr %match153.i, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 -1 to ptr), ptr %134, align 4, !annotation !121
  call void @flow_rule_match_ip(ptr noundef %rule, ptr noundef nonnull %match153.i) #11
  %136 = ptrtoint ptr %match153.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %match153.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 1
  %conv155.i = zext i8 %139 to i32
  %tos157.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %140 = ptrtoint ptr %tos157.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load158.i = load i32, ptr %tos157.i, align 4
  %bf.shl160.i = shl nuw nsw i32 %conv155.i, 10
  %bf.clear161.i = and i32 %bf.load158.i, -261121
  %bf.set162.i = or i32 %bf.clear161.i, %bf.shl160.i
  store i32 %bf.set162.i, ptr %tos157.i, align 4
  %141 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %134, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %142, align 1
  %conv165.i = zext i8 %144 to i32
  %tos167.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %145 = ptrtoint ptr %tos167.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %bf.load168.i = load i32, ptr %tos167.i, align 4
  %bf.shl170.i = shl nuw nsw i32 %conv165.i, 10
  %bf.clear171.i = and i32 %bf.load168.i, -261121
  %bf.set172.i = or i32 %bf.clear171.i, %bf.shl170.i
  store i32 %bf.set172.i, ptr %tos167.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match153.i) #11
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.then152.i, %if.end150.i.if.end173.i_crit_edge
  %146 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rule, align 8
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %and.i.i346.i = and i32 %149, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i346.i)
  %tobool.i.i347.not.i = icmp eq i32 %and.i.i346.i, 0
  br i1 %tobool.i.i347.not.i, label %if.end173.i.if.end197.i_crit_edge, label %if.then175.i

if.end173.i.if.end197.i_crit_edge:                ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end197.i

if.then175.i:                                     ; preds = %if.end173.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match176.i) #11
  %150 = ptrtoint ptr %match176.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr inttoptr (i32 -1 to ptr), ptr %match176.i, align 4, !annotation !121
  %151 = getelementptr inbounds %struct.flow_match_enc_keyid, ptr %match176.i, i32 0, i32 1
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 -1 to ptr), ptr %151, align 4, !annotation !121
  call void @flow_rule_match_enc_keyid(ptr noundef %rule, ptr noundef nonnull %match176.i) #11
  %153 = ptrtoint ptr %match176.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %match176.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %vni.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 5
  %157 = trunc i32 %156 to i24
  %158 = ptrtoint ptr %vni.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 3)
  store i24 %157, ptr %vni.i, align 4
  %159 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %151, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %vni182.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 5
  %163 = trunc i32 %162 to i24
  %164 = ptrtoint ptr %vni182.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 3)
  store i24 %163, ptr %vni182.i, align 4
  %bf.cast.i = and i32 %162, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool.not.i99 = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool.not.i99, label %if.then175.i.if.end196.i_crit_edge, label %if.then187.i

if.then175.i.if.end196.i_crit_edge:               ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end196.i

if.then187.i:                                     ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #13
  %mask181.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %val178.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %165 = ptrtoint ptr %val178.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %bf.load189.i = load i32, ptr %val178.i, align 4
  %bf.set191.i = or i32 %bf.load189.i, 2048
  store i32 %bf.set191.i, ptr %val178.i, align 4
  %166 = ptrtoint ptr %mask181.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %bf.load193.i = load i32, ptr %mask181.i, align 4
  %bf.set195.i = or i32 %bf.load193.i, 2048
  store i32 %bf.set195.i, ptr %mask181.i, align 4
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then187.i, %if.then175.i.if.end196.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match176.i) #11
  br label %if.end197.i

if.end197.i:                                      ; preds = %if.end196.i, %if.end173.i.if.end197.i_crit_edge
  %167 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rule, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %and.i.i348.i = and i32 %170, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i348.i)
  %tobool.i.i349.not.i = icmp eq i32 %and.i.i348.i, 0
  br i1 %tobool.i.i349.not.i, label %if.end197.i.cxgb4_process_flow_match.exit_crit_edge, label %if.then199.i

if.end197.i.cxgb4_process_flow_match.exit_crit_edge: ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_process_flow_match.exit

if.then199.i:                                     ; preds = %if.end197.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match200.i) #11
  %171 = ptrtoint ptr %match200.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr inttoptr (i32 -1 to ptr), ptr %match200.i, align 4, !annotation !121
  %172 = getelementptr inbounds %struct.flow_match_vlan, ptr %match200.i, i32 0, i32 1
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 -1 to ptr), ptr %172, align 4, !annotation !121
  call void @flow_rule_match_vlan(ptr noundef %rule, ptr noundef nonnull %match200.i) #11
  %174 = ptrtoint ptr %match200.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %match200.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load2_noabort(i32 %176)
  %bf.load202.i = load i16, ptr %175, align 2
  %bf.lshr.i = lshr i16 %bf.load202.i, 4
  %177 = shl i16 %bf.load202.i, 13
  %or332.i = or i16 %bf.lshr.i, %177
  %178 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %172, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load210.i = load i16, ptr %179, align 2
  %bf.lshr211.i = lshr i16 %bf.load210.i, 4
  %181 = shl i16 %bf.load210.i, 13
  %or218333.i = or i16 %bf.lshr211.i, %181
  %conv220.i = zext i16 %or332.i to i32
  %val221.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %ivlan.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 2
  %182 = ptrtoint ptr %ivlan.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %bf.load222.i = load i32, ptr %ivlan.i, align 4
  %bf.shl224.i = shl nuw nsw i32 %conv220.i, 8
  %bf.clear225.i = and i32 %bf.load222.i, -16776961
  %bf.set226.i = or i32 %bf.clear225.i, %bf.shl224.i
  store i32 %bf.set226.i, ptr %ivlan.i, align 4
  %conv227.i = zext i16 %or218333.i to i32
  %mask228.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %ivlan229.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 2
  %183 = ptrtoint ptr %ivlan229.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %bf.load230.i = load i32, ptr %ivlan229.i, align 4
  %bf.shl232.i = shl nuw nsw i32 %conv227.i, 8
  %bf.clear233.i = and i32 %bf.load230.i, -16776961
  %bf.set234.i = or i32 %bf.clear233.i, %bf.shl232.i
  store i32 %bf.set234.i, ptr %ivlan229.i, align 4
  %184 = ptrtoint ptr %val221.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %bf.load236.i = load i32, ptr %val221.i, align 4
  %bf.set238.i = or i32 %bf.load236.i, 16384
  store i32 %bf.set238.i, ptr %val221.i, align 4
  %185 = ptrtoint ptr %mask228.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %bf.load240.i = load i32, ptr %mask228.i, align 4
  %bf.set242.i = or i32 %bf.load240.i, 16384
  store i32 %bf.set242.i, ptr %mask228.i, align 4
  %bf.lshr245.mask.i = and i32 %bf.load236.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2130706432, i32 %bf.lshr245.mask.i)
  %cmp246.i = icmp eq i32 %bf.lshr245.mask.i, -2130706432
  br i1 %cmp246.i, label %if.then248.i, label %if.then199.i.if.end257.i_crit_edge

if.then199.i.if.end257.i_crit_edge:               ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.i

if.then248.i:                                     ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear251.i = and i32 %bf.set238.i, 65535
  %186 = ptrtoint ptr %val221.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %bf.clear251.i, ptr %val221.i, align 4
  %bf.clear255.i = and i32 %bf.set242.i, 65535
  %187 = ptrtoint ptr %mask228.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %bf.clear255.i, ptr %mask228.i, align 4
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.then248.i, %if.then199.i.if.end257.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match200.i) #11
  br label %cxgb4_process_flow_match.exit

cxgb4_process_flow_match.exit:                    ; preds = %if.end257.i, %if.end197.i.cxgb4_process_flow_match.exit_crit_edge
  %port_id.i = getelementptr i8, ptr %dev, i32 2325
  %188 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %port_id.i, align 1
  %iport.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %190 = ptrtoint ptr %iport.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %bf.load262.i = load i32, ptr %iport.i, align 4
  %bf.value263.i = zext i8 %189 to i32
  %bf.shl264.i = shl i32 %bf.value263.i, 29
  %bf.clear265.i = and i32 %bf.load262.i, 536870911
  %bf.set266.i = or i32 %bf.clear265.i, %bf.shl264.i
  store i32 %bf.set266.i, ptr %iport.i, align 4
  %iport268.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %191 = ptrtoint ptr %iport268.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %bf.load269.i = load i32, ptr %iport268.i, align 4
  %bf.set271.i = or i32 %bf.load269.i, -536870912
  store i32 %bf.set271.i, ptr %iport268.i, align 4
  call void @cxgb4_process_flow_actions(ptr undef, ptr noundef %action, ptr noundef %fs)
  %call7 = call zeroext i1 @is_filter_exact_match(ptr noundef %1, ptr noundef %fs) #11
  %192 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %192)
  %bf.load = load i32, ptr %fs, align 8
  %bf.shl = select i1 %call7, i32 268435456, i32 0
  %bf.clear = and i32 %bf.load, -268435457
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %fs, align 8
  %193 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool10.not = icmp eq i32 %193, 0
  %conv11 = select i1 %tobool10.not, i8 2, i8 10
  %call16 = call i32 @cxgb4_get_free_ftid(ptr noundef %dev, i8 noundef zeroext %conv11, i1 noundef zeroext %call7, i32 noundef %tc_prio) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.body, label %if.end22

do.body:                                          ; preds = %cxgb4_process_flow_match.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @cxgb4_flow_rule_replace.__msg) #11
  %tobool19.not = icmp eq ptr %extack, null
  br i1 %tobool19.not, label %do.body.cleanup_crit_edge, label %if.then20

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %194 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @cxgb4_flow_rule_replace.__msg, ptr %extack, align 4
  br label %cleanup

if.end22:                                         ; preds = %cxgb4_process_flow_match.exit
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 14
  %195 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %196)
  %cmp23 = icmp ult i32 %call16, %196
  br i1 %cmp23, label %if.then25, label %if.end22.if.end32_crit_edge

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %197)
  %bf.load26 = load i32, ptr %fs, align 8
  %bf.set28 = and i32 %bf.load26, -1342177281
  %bf.clear30 = or i32 %bf.set28, 1073741824
  store i32 %bf.clear30, ptr %fs, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end22.if.end32_crit_edge
  %198 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %198)
  %bf.load33 = load i32, ptr %fs, align 8
  %199 = and i32 %bf.load33, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool36.not = icmp eq i32 %199, 0
  %spec.select = select i1 %tobool36.not, i32 %call16, i32 0
  %tc_prio39 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 8
  %200 = ptrtoint ptr %tc_prio39 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %tc_prio, ptr %tc_prio39, align 8
  %201 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %ctx, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %ctx, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #11
  %call40 = call i32 @__cxgb4_set_filter(ptr noundef %dev, i32 noundef %spec.select, ptr noundef %fs, ptr noundef nonnull %ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cxgb4_flow_rule_replace, i32 noundef %call40) #14
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %call45 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %ctx, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.cleanup_crit_edge, label %if.end48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %result = getelementptr inbounds %struct.filter_ctx, ptr %ctx, i32 0, i32 2
  %202 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool49.not = icmp eq i32 %203, 0
  br i1 %tobool49.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %tid53 = getelementptr inbounds %struct.filter_ctx, ptr %ctx, i32 0, i32 3
  %204 = ptrtoint ptr %tid53 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %tid53, align 4
  %206 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %tid, align 4
  %207 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %207)
  %bf.load54 = load i32, ptr %fs, align 8
  %208 = and i32 %bf.load54, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool57.not = icmp eq i32 %208, 0
  br i1 %tobool57.not, label %if.end52.cleanup_crit_edge, label %if.then58

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cxgb4_tc_flower_hash_prio_add(ptr noundef %1, i32 noundef %tc_prio)
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then42, %if.then20, %do.body.cleanup_crit_edge, %cleanup.thread.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.then42 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.then20 ], [ -12, %do.body.cleanup_crit_edge ], [ -110, %if.end43.cleanup_crit_edge ], [ %203, %if.end48.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %if.end52.cleanup_crit_edge ], [ -95, %if.then.i ], [ -95, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ctx) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_filter_exact_match(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_get_free_ftid(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cxgb4_set_filter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_tc_flower_hash_prio_add(ptr noundef %adap, i32 noundef %tc_prio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ftid_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock) #11
  %tc_hash_tids_max_prio = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 41
  %0 = ptrtoint ptr %tc_hash_tids_max_prio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tc_hash_tids_max_prio, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tc_prio)
  %cmp = icmp ult i32 %1, %tc_prio
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %tc_hash_tids_max_prio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tc_prio, ptr %tc_hash_tids_max_prio, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_tc_flower_replace(ptr noundef %dev, ptr nocapture noundef readonly %cls) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 3
  %2 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 296) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cxgb4_tc_flower_replace) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @allocate_flower_entry.__key, i16 noundef signext 3) #11
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %call7.i.i.i, align 8
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %call7.i.i.i, align 8
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie, align 4
  %conv = zext i32 %9 to i64
  %tc_cookie = getelementptr inbounds %struct.ch_filter_specification, ptr %call7.i.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %tc_cookie to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %tc_cookie, align 8
  %prio = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls, i32 0, i32 2
  %11 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prio, align 8
  %filter_id = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call7.i.i.i, i32 0, i32 6
  %call6 = tail call i32 @cxgb4_flow_rule_replace(ptr noundef %dev, ptr noundef %1, i32 noundef %12, ptr noundef %3, ptr noundef nonnull %call7.i.i.i, ptr noundef %filter_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.free_entry_crit_edge

if.end.free_entry_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_entry

if.end9:                                          ; preds = %if.end
  %13 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cookie, align 4
  %tc_flower_cookie = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %tc_flower_cookie to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tc_flower_cookie, align 8
  %flower_tbl = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77
  %node = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call7.i.i.i, i32 0, i32 3
  %flower_ht_params = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 78
  %16 = ptrtoint ptr %flower_ht_params to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack = load i32, ptr %flower_ht_params, align 4
  %.elt52 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 78, i32 2
  %17 = ptrtoint ptr %.elt52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack53 = load i32, ptr %.elt52, align 4
  %.elt60 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 78, i32 8
  %18 = ptrtoint ptr %.elt60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack61 = load i32, ptr %.elt60, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.end9.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end9.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end9
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end9.rcu_read_lock.exit.i.i_crit_edge
  %23 = ptrtoint ptr %flower_tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %flower_tbl, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %flower_tbl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 715, ptr noundef nonnull @.str.23) #11
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %25 = inttoptr i32 %.unpack61 to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 3, i32 3
  %26 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %27 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node, i32 %idx.neg.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack61)
  %tobool.not.i3.i.i = icmp eq i32 %.unpack61, 0
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !119

cond.true.i.i.i:                                  ; preds = %do.end12.i.i
  %conv.i.i.i = and i32 %.unpack, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %key_len6.i.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 3, i32 1
  %28 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %29 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 2
  %30 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %25(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %31) #11
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 2
  %32 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %.unpack53, 16
  %add.ptr.i.i.i64 = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 3, i32 7
  %34 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 1
  %36 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %35(ptr noundef %add.ptr.i.i.i64, i32 noundef %37, i32 noundef %33) #11
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %24, align 128
  %sub.i.i.i.i.i = add i32 %39, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 1
  %40 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i4.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !120

cond.true.i6.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i5.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %flower_tbl, ptr noundef %24, i32 noundef %and.i3.i.i.i.i) #11
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %24, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %24, ptr noundef nonnull %cond.i8.i.i) #11
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 5
  %42 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %43, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !120

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %24, ptr noundef nonnull %cond.i8.i.i) #11
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %44 = tail call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i.i.i17.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %flower_tbl, ptr noundef null, ptr noundef %node) #11
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %24, i32 noundef %and.i3.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 377, ptr noundef nonnull @.str.25) #11
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %48 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cond.i8.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %and.i.i.i.i = and i32 %50, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %51 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %51, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i63.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.i.not64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.i.not64.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %52 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.066.i.i = phi ptr [ %54, %do.end147.i.i.for.body.i.i_crit_edge ], [ %52, %for.body.preheader.i.i ]
  %elasticity.065.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.065.i.i, -1
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %24, i32 noundef %and.i3.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.26, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_insert_fast.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 732, ptr noundef nonnull @.str.25) #11
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %53 = ptrtoint ptr %head.066.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.066.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %and.i.i.i = and i32 %55, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 8
  %call.i.i.i25.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #11
  %56 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 2
  %58 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i.not.i.i = icmp ult i32 %57, %59
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !120

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i27.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #11
  %60 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %nelems.i.i.i, align 4
  %62 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %24, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.i28.i.i = icmp ugt i32 %61, %63
  br i1 %cmp.i28.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 3, i32 4
  %64 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i29.i.i = icmp eq i32 %65, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp4.i.i.i = icmp ult i32 %63, %65
  %spec.select.i.i.i = select i1 %tobool.not.i29.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !119

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i30.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %24, i32 noundef %and.i3.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool.not.i31.i.i, label %land.lhs.true.i34.i.i, label %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge

if.end171.i.i.rht_ptr.exit42.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit42.i.i

land.lhs.true.i34.i.i:                            ; preds = %if.end171.i.i
  %call1.i32.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i)
  %tobool2.not.i33.i.i = icmp eq i32 %call1.i32.i.i, 0
  br i1 %tobool2.not.i33.i.i, label %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, label %land.lhs.true3.i36.i.i

land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit42.i.i

land.lhs.true3.i36.i.i:                           ; preds = %land.lhs.true.i34.i.i
  %.b7.i35.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i, label %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, label %if.then.i37.i.i

land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit42.i.i

if.then.i37.i.i:                                  ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 377, ptr noundef nonnull @.str.25) #11
  br label %rht_ptr.exit42.i.i

rht_ptr.exit42.i.i:                               ; preds = %if.then.i37.i.i, %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge
  %66 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cond.i8.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  %and.i.i38.i.i = and i32 %68, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i)
  %tobool.not.i.i39.i.i = icmp eq i32 %and.i.i38.i.i, 0
  %cond.i.i41.i.i = select i1 %tobool.not.i.i39.i.i, i32 %or.i.i.i.i, i32 %and.i.i38.i.i
  %69 = inttoptr i32 %cond.i.i41.i.i to ptr
  %70 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %69, ptr %node, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #11
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #11, !srcloc !124
  tail call fastcc void @rht_assign_unlock(ptr noundef %24, ptr noundef nonnull %cond.i8.i.i, ptr noundef %node) #11
  %call.i.i.i44.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #11
  %72 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %nelems.i.i.i, align 4
  %74 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %24, align 128
  %div8.i.i.i = lshr i32 %75, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %mul.i.i.i)
  %cmp.i45.i.i = icmp ugt i32 %73, %mul.i.i.i
  br i1 %cmp.i45.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit42.i.i.out.i.i_crit_edge

rht_ptr.exit42.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit42.i.i
  %max_size.i46.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 3, i32 4
  %76 = ptrtoint ptr %max_size.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_size.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i47.i.i = icmp eq i32 %77, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp4.i48.i.i = icmp ult i32 %75, %77
  %spec.select.i49.i.i = select i1 %tobool.not.i47.i.i, i1 true, i1 %cmp4.i48.i.i
  br i1 %spec.select.i49.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %run_work.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 77, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %78 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %run_work.i.i) #11
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit42.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.out.i.i_crit_edge ]
  %call.i52.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i52.i.i, label %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true.i55.i.i

out.i.i.rcu_read_unlock.exit62.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true.i55.i.i:                            ; preds = %out.i.i
  %call1.i53.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %call1.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true2.i57.i.i

land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true2.i57.i.i:                           ; preds = %land.lhs.true.i55.i.i
  %.b4.i56.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i, label %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %if.then.i58.i.i

land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit62.i.i

if.then.i58.i.i:                                  ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit62.i.i

rcu_read_unlock.exit62.i.i:                       ; preds = %if.then.i58.i.i, %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %79 = tail call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i.i.i59.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i59.i.i to ptr
  %preempt_count.i.i.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i, align 4
  %sub.i.i.i61.i.i = add i32 %82, -1
  store volatile i32 %sub.i.i.i61.i.i, ptr %preempt_count.i.i.i.i60.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rht_unlock(ptr noundef %24, ptr noundef nonnull %cond.i8.i.i) #11
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit62.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit62.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %83 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %83, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool12.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool12.not, label %rhashtable_insert_fast.exit.cleanup_crit_edge, label %del_filter

rhashtable_insert_fast.exit.cleanup_crit_edge:    ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

del_filter:                                       ; preds = %rhashtable_insert_fast.exit
  %84 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load15 = load i32, ptr %call7.i.i.i, align 8
  %85 = and i32 %bf.load15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool17.not = icmp eq i32 %85, 0
  br i1 %tobool17.not, label %del_filter.if.end21_crit_edge, label %if.then18

del_filter.if.end21_crit_edge:                    ; preds = %del_filter
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %del_filter
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %prio, align 8
  tail call fastcc void @cxgb4_tc_flower_hash_prio_del(ptr noundef %5, i32 noundef %87)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %del_filter.if.end21_crit_edge
  %88 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %filter_id, align 4
  %call24 = tail call i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %89, ptr noundef nonnull %call7.i.i.i) #11
  br label %free_entry

free_entry:                                       ; preds = %if.end21, %if.end.free_entry_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.free_entry_crit_edge ], [ %retval.0.i, %if.end21 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_entry, %rhashtable_insert_fast.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.0, %free_entry ], [ -12, %if.then ], [ 0, %rhashtable_insert_fast.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_tc_flower_hash_prio_del(ptr noundef %adap, i32 noundef %tc_prio) unnamed_addr #2 align 64 {
entry:
  %iter = alloca %struct.rhashtable_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #11
  %0 = call ptr @memset(ptr %iter, i32 255, i32 36)
  %ftid_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock) #11
  %tc_hash_tids_max_prio = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 41
  %1 = ptrtoint ptr %tc_hash_tids_max_prio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tc_hash_tids_max_prio, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %tc_prio)
  %cmp.not = icmp eq i32 %2, %tc_prio
  br i1 %cmp.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end:                                           ; preds = %entry
  %flower_tbl = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 77
  call void @rhashtable_walk_enter(ptr noundef %flower_tbl, ptr noundef nonnull %iter) #11
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %if.end
  %found.0 = phi i32 [ 0, %if.end ], [ %found.3, %while.end.do.body_crit_edge ]
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter) #11
  %call = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #11
  %tobool.not.i37 = icmp eq ptr %call, null
  %cmp.i38 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i39 = or i1 %tobool.not.i37, %cmp.i38
  br i1 %spec.select.i39, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %do.body.while.body_crit_edge
  %found.141 = phi i32 [ %found.2, %if.end15.while.body_crit_edge ], [ %found.0, %do.body.while.body_crit_edge ]
  %fe.040 = phi ptr [ %call16, %if.end15.while.body_crit_edge ], [ %call, %do.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %fe.040 to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %fe.040, align 8
  %4 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %while.body.if.end15_crit_edge, label %land.lhs.true

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %while.body
  %tc_prio3 = getelementptr inbounds %struct.ch_filter_specification, ptr %fe.040, i32 0, i32 8
  %5 = ptrtoint ptr %tc_prio3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tc_prio3, align 8
  %7 = ptrtoint ptr %tc_hash_tids_max_prio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tc_hash_tids_max_prio, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5.not = icmp ugt i32 %6, %8
  br i1 %cmp5.not, label %land.lhs.true.if.end15_crit_edge, label %if.then6

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then6:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %tc_hash_tids_max_prio to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %tc_hash_tids_max_prio, align 8
  %inc = add i32 %found.141, 1
  %10 = ptrtoint ptr %tc_prio3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tc_prio3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %tc_prio)
  %cmp12 = icmp eq i32 %11, %tc_prio
  br i1 %cmp12, label %if.then6.while.end_crit_edge, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then6.while.end_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end15:                                         ; preds = %if.then6.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %while.body.if.end15_crit_edge
  %found.2 = phi i32 [ %inc, %if.then6.if.end15_crit_edge ], [ %found.141, %land.lhs.true.if.end15_crit_edge ], [ %found.141, %while.body.if.end15_crit_edge ]
  %call16 = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #11
  %tobool.not.i = icmp eq ptr %call16, null
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %if.then6.while.end_crit_edge, %do.body.while.end_crit_edge
  %fe.0.lcssa = phi ptr [ %call, %do.body.while.end_crit_edge ], [ %fe.040, %if.then6.while.end_crit_edge ], [ %call16, %if.end15.while.end_crit_edge ]
  %found.3 = phi i32 [ %found.0, %do.body.while.end_crit_edge ], [ %inc, %if.then6.while.end_crit_edge ], [ %found.2, %if.end15.while.end_crit_edge ]
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #11
  %cmp18 = icmp eq ptr %fe.0.lcssa, inttoptr (i32 -11 to ptr)
  br i1 %cmp18, label %while.end.do.body_crit_edge, label %do.end

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %while.end
  call void @rhashtable_walk_exit(ptr noundef nonnull %iter) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.3)
  %tobool19.not = icmp eq i32 %found.3, 0
  br i1 %tobool19.not, label %if.then20, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %tc_hash_tids_max_prio to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tc_hash_tids_max_prio, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then20, %do.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_del_filter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_flow_rule_destroy(ptr noundef %dev, i32 noundef %tc_prio, ptr noundef %fs, i32 noundef %tid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %2 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %fs, align 8
  %call1 = tail call i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %tid, ptr noundef %fs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %3 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cxgb4_tc_flower_hash_prio_del(ptr noundef %1, i32 noundef %tc_prio)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_tc_flower_destroy(ptr noundef %dev, ptr nocapture noundef readonly %cls) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie, align 4
  %call1 = tail call fastcc ptr @ch_flower_lookup(ptr noundef %1, i32 noundef %3)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flower_tbl = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77
  %node = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 3
  %flower_ht_params = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 78
  %4 = ptrtoint ptr %flower_ht_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %flower_ht_params, align 4
  %.elt30 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 78, i32 2
  %5 = ptrtoint ptr %.elt30 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack31 = load i32, ptr %.elt30, align 4
  %.elt38 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 78, i32 8
  %6 = ptrtoint ptr %.elt38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack39 = load i32, ptr %.elt38, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i_crit_edge
  %11 = ptrtoint ptr %flower_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %flower_tbl, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %flower_tbl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1076, ptr noundef nonnull @.str.23) #11
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %13 = inttoptr i32 %.unpack39 to ptr
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack39)
  %tobool.not.i.i.i.i = icmp eq i32 %.unpack39, 0
  %conv.i.i.i.i = and i32 %.unpack, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  %key_len6.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77, i32 3, i32 1
  %params.sroa.3.4.extract.shift.i.i.i.i = lshr i32 %.unpack31, 16
  %hashfn.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77, i32 3, i32 7
  %key_len1.i.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %12, %do.end10.i.i ], [ %52, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %14 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %15 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %node, i32 %idx.neg.i.i.i.i.i
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.i.i, label %cond.true.i.i.i.i, !prof !119

cond.true.i.i.i.i:                                ; preds = %while.cond.i.i
  br i1 %tobool4.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge

cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge:     ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %key_len6.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %key_len6.i.i.i.i, align 2
  %conv7.i.i.i.i = zext i16 %17 to i32
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %conv7.i.i.i.i, %cond.false.i.i.i.i ], [ %conv.i.i.i.i, %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %call8.i.i.i.i = tail call i32 %13(ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %cond.i.i.i.i, i32 noundef %19) #11
  br label %rht_head_hashfn.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i.i
  %22 = ptrtoint ptr %hashfn.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hashfn.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %key_len1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key_len1.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 %23(ptr noundef %add.ptr.i.i.i.i, i32 noundef %25, i32 noundef %21) #11
  br label %rht_head_hashfn.exit.i.i.i

rht_head_hashfn.exit.i.i.i:                       ; preds = %if.then.i.i.i.i.i.i, %cond.end.i.i.i.i
  %hash.2.i.i.sink.i.i.i.i = phi i32 [ %call8.i.i.i.i, %cond.end.i.i.i.i ], [ %call.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ]
  %26 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %27, -1
  %and.i3.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i, %hash.2.i.i.sink.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i3.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !120

cond.true.i4.i.i.i:                               ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #11
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #11
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 377, ptr noundef nonnull @.str.25) #11
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %30 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cond.i6.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %and.i.i.i.i.i = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %33 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %33, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %34 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i20.i.i = icmp eq ptr %node, %34
  br i1 %cmp.not.i20.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %39, %node
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i21.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.33, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.33, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1032, ptr noundef nonnull @.str.25) #11
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %35 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %node, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  %37 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #11
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %36) #11
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i21.i.i = phi ptr [ %39, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %34, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.35, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1004, ptr noundef nonnull @.str.25) #11
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %38 = ptrtoint ptr %he.022.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %he.022.i21.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #11
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #11, !srcloc !126
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77, i32 3, i32 6
  %42 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool161.not.i.i.i = icmp eq i8 %43, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #11
  %44 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %nelems.i.i.i, align 4
  %46 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %47, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %45, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77, i32 3, i32 5
  %48 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %47, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !119

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %run_work.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 77, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %run_work.i.i.i) #11
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %flower_tbl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.31, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast.__warned.31, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1085, ptr noundef nonnull @.str.23) #11
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %52, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %53 = tail call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i.i.i11.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tc_prio = getelementptr inbounds %struct.ch_filter_specification, ptr %call1, i32 0, i32 8
  %57 = ptrtoint ptr %tc_prio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tc_prio, align 8
  %filter_id = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 6
  %59 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %filter_id, align 4
  %61 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i.i.i, align 8
  %63 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load.i = load i32, ptr %call1, align 8
  %call1.i = tail call i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %60, ptr noundef nonnull %call1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp ne i32 %call1.i, 0
  %64 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool2.not.i = icmp eq i32 %64, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %cxgb4_flow_rule_destroy.exit, label %cxgb4_flow_rule_destroy.exit.thread

cxgb4_flow_rule_destroy.exit.thread:              ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cxgb4_tc_flower_hash_prio_del(ptr noundef %62, i32 noundef %58) #11
  br label %do.end

cxgb4_flow_rule_destroy.exit:                     ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %cxgb4_flow_rule_destroy.exit.do.end_crit_edge, label %if.then6

cxgb4_flow_rule_destroy.exit.do.end_crit_edge:    ; preds = %cxgb4_flow_rule_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then6:                                         ; preds = %cxgb4_flow_rule_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %filter_id, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %66, i32 noundef %call1.i) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %cxgb4_flow_rule_destroy.exit.do.end_crit_edge, %cxgb4_flow_rule_destroy.exit.thread
  %rcu = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 4
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 240 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %do.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ch_flower_lookup(ptr noundef %adap, i32 noundef %flower_cookie) unnamed_addr #2 align 64 {
entry:
  %arg.i.i.i = alloca %struct.rhashtable_compare_arg, align 4
  %flower_cookie.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flower_cookie.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flower_cookie, ptr %flower_cookie.addr, align 4
  %flower_tbl = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 77
  %.elt12 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 78, i32 9
  %1 = ptrtoint ptr %.elt12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack13 = load i32, ptr %.elt12, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %6 = inttoptr i32 %.unpack13 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i.i) #11
  %7 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %flower_tbl, ptr %arg.i.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %flower_cookie.addr, ptr %7, align 4
  %10 = ptrtoint ptr %flower_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %flower_tbl, align 4
  %call.i.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %flower_tbl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 594, ptr noundef nonnull @.str.23) #11
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 77, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 77, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack13)
  %tobool19.not.i.i.i = icmp eq i32 %.unpack13, 0
  %head_offset.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 77, i32 3, i32 3
  br label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.end60.i.i.i.if.then.i.i.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %11, %do.end12.i.i.i ], [ %42, %do.end60.i.i.i.if.then.i.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %14 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 %15(ptr noundef nonnull %flower_cookie.addr, i32 noundef %17, i32 noundef %13) #11
  %18 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %19, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %call.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !120

cond.true.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #11
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %22 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %22, 1
  %23 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !128
  %24 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 369, ptr noundef nonnull @.str.23) #11
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %26 = ptrtoint ptr %25 to i32
  %and.i.i95.i.i.i = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %27 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond34.i.i.i

rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge:  ; preds = %rht_ptr_rcu.exit.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge
  %he.0108.i.i.i = phi ptr [ %39, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %27, %rht_ptr_rcu.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %29 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  br i1 %tobool19.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i

cond.true.i.i.i:                                  ; preds = %for.body.i.i.i
  %call22.i.i.i = call i32 %6(ptr noundef nonnull %arg.i.i.i, ptr noundef %add.ptr.i100.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %cond.true.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge, label %cond.true.i.i.i.for.inc.i.i.i_crit_edge

cond.true.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

cond.true.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge: ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_lookup.exit.i.i

cond.false.i.i.i:                                 ; preds = %for.body.i.i.i
  %30 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arg.i.i.i, align 4
  %key_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %31, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i101.i.i.i = zext i16 %33 to i32
  %add.ptr.i102.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i, i32 %conv.i101.i.i.i
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 4
  %key_len.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %31, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %37 to i32
  %bcmp.i.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i.i, ptr %35, i32 %conv3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %cond.false.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge, label %cond.false.i.i.i.for.inc.i.i.i_crit_edge

cond.false.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

cond.false.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge: ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_lookup.exit.i.i

for.inc.i.i.i:                                    ; preds = %cond.false.i.i.i.for.inc.i.i.i_crit_edge, %cond.true.i.i.i.for.inc.i.i.i_crit_edge
  %38 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i.i.i.i = and i32 %40, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %27, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %39, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %23
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %flower_tbl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.30, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_lookup.__warned.30, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 614, ptr noundef nonnull @.str.23) #11
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool62.not.i.i.i, label %__rhashtable_lookup.exit.thread.i.i, label %do.end60.i.i.i.if.then.i.i.i.i.i_crit_edge, !prof !120

do.end60.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i.i

__rhashtable_lookup.exit.thread.i.i:              ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i.i) #11
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %cond.false.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge, %cond.true.i.i.i.__rhashtable_lookup.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i.i) #11
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  br i1 %tobool.not.i1.i, label %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i

__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %__rhashtable_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_lookup.exit.i

cond.true.i.i:                                    ; preds = %__rhashtable_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i = zext i16 %44 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %cond.true.i.i, %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge, %__rhashtable_lookup.exit.thread.i.i
  %cond.i.i = phi ptr [ %add.ptr.i.i.i, %cond.true.i.i ], [ null, %__rhashtable_lookup.exit.i.i.rhashtable_lookup.exit.i_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i.i ]
  %call.i2.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %45 = call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i.i.i9.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %cond.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_tc_flower_stats(ptr noundef %dev, ptr nocapture noundef %cls) local_unnamed_addr #2 align 64 {
entry:
  %packets = alloca i64, align 8
  %bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets) #11
  %2 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %packets, align 8, !annotation !121
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #11
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %bytes, align 8, !annotation !121
  %cookie = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 2
  %4 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie, align 4
  %call1 = tail call fastcc ptr @ch_flower_lookup(ptr noundef %1, i32 noundef %5)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_id = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 6
  %6 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %filter_id, align 4
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %call1, align 8
  %9 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2 = icmp ne i32 %9, 0
  %call3 = call i32 @cxgb4_get_filter_counters(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull %packets, ptr noundef nonnull %bytes, i1 noundef zeroext %tobool2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %stats = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 1
  %packet_count = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %packet_count to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %packet_count, align 8
  %12 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %packets, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp6.not = icmp eq i64 %11, %13
  br i1 %cmp6.not, label %if.end5.if.end18_crit_edge, label %if.then7

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then7:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %stats, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %13)
  %cmp8.not = icmp eq i64 %15, %13
  br i1 %cmp8.not, label %if.then7.if.end10_crit_edge, label %if.then9

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %16 to i64
  %last_used = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %last_used to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %last_used, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7.if.end10_crit_edge
  %stats11 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 4
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bytes, align 8
  %byte_count = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %byte_count, align 8
  %sub = sub i64 %19, %21
  %22 = ptrtoint ptr %packet_count to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %packet_count, align 8
  %sub13 = sub i64 %13, %23
  %last_used14 = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call1, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %last_used14 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %last_used14, align 8
  %26 = ptrtoint ptr %stats11 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %stats11, align 8
  %add.i = add i64 %sub13, %27
  store i64 %add.i, ptr %stats11, align 8
  %bytes2.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %bytes2.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bytes2.i, align 8
  %add3.i = add i64 %sub, %29
  store i64 %add3.i, ptr %bytes2.i, align 8
  %lastused6.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %lastused6.i, align 8
  %32 = call i64 @llvm.umax.i64(i64 %31, i64 %25) #11
  %33 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %lastused6.i, align 8
  %used_hw_stats28.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %used_hw_stats28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %used_hw_stats28.i, align 8
  %or.i = or i32 %35, 1
  store i32 %or.i, ptr %used_hw_stats28.i, align 8
  %used_hw_stats_valid.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls, i32 0, i32 4, i32 5
  %36 = ptrtoint ptr %used_hw_stats_valid.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %used_hw_stats_valid.i, align 4
  %37 = ptrtoint ptr %packet_count to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %13, ptr %packet_count, align 8
  %38 = ptrtoint ptr %byte_count to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %19, ptr %byte_count, align 8
  %39 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %13, ptr %stats, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end10, %if.end5.if.end18_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call3, %if.end.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_get_filter_counters(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_init_tc_flower(ptr noundef %adap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_flower_initialized = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 76
  %0 = ptrtoint ptr %tc_flower_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tc_flower_initialized, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flower_ht_params = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 78
  %2 = call ptr @memcpy(ptr %flower_ht_params, ptr @cxgb4_tc_flower_ht_params, i32 28)
  %flower_tbl = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 77
  %call = tail call i32 @rhashtable_init(ptr noundef %flower_tbl, ptr noundef %flower_ht_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flower_stats_work = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 80
  tail call void @__init_work(ptr noundef %flower_stats_work, i32 noundef 0) #11
  %3 = ptrtoint ptr %flower_stats_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %flower_stats_work, align 16
  %lockdep_map = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 80, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @cxgb4_init_tc_flower.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry8 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 80, i32 1
  %4 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 80, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 80, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ch_flower_stats_handler, ptr %func, align 4
  %flower_stats_timer = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 79
  tail call void @init_timer_key(ptr noundef %flower_stats_timer, ptr noundef nonnull @ch_flower_stats_cb, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @cxgb4_init_tc_flower.__key.9) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 50
  %call14 = tail call i32 @mod_timer(ptr noundef %flower_stats_timer, i32 noundef %add) #11
  %8 = ptrtoint ptr %tc_flower_initialized to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %tc_flower_initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -17, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch_flower_stats_handler(ptr noundef %work) #2 align 64 {
entry:
  %iter = alloca %struct.rhashtable_iter, align 4
  %packets = alloca i64, align 8
  %bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iter) #11
  %0 = call ptr @memset(ptr %iter, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets) #11
  %1 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %packets, align 8, !annotation !121
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #11
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %bytes, align 8, !annotation !121
  %flower_tbl = getelementptr i8, ptr %work, i32 -304
  call void @rhashtable_walk_enter(ptr noundef %flower_tbl, ptr noundef nonnull %iter) #11
  %port = getelementptr i8, ptr %work, i32 -2064
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %call.i = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %iter) #11
  %call25 = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #11
  %tobool.not26 = icmp eq ptr %call25, null
  br i1 %tobool.not26, label %do.body.while.end.thread_crit_edge, label %do.body.land.rhs_crit_edge

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  br label %land.rhs

do.body.while.end.thread_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.thread

while.end.thread:                                 ; preds = %if.end8.while.end.thread_crit_edge, %do.body.while.end.thread_crit_edge
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #11
  br label %do.end

land.rhs:                                         ; preds = %if.end8.land.rhs_crit_edge, %do.body.land.rhs_crit_edge
  %call27 = phi ptr [ %call, %if.end8.land.rhs_crit_edge ], [ %call25, %do.body.land.rhs_crit_edge ]
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 128
  %filter_id = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call27, i32 0, i32 6
  %5 = ptrtoint ptr %filter_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %filter_id, align 4
  %7 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %call27, align 8
  %8 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2 = icmp ne i32 %8, 0
  %call3 = call i32 @cxgb4_get_filter_counters(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %packets, ptr noundef nonnull %bytes, i1 noundef zeroext %tobool2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %while.body
  %lock = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call27, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %lock) #11
  %stats = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call27, i32 0, i32 1
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stats, align 8
  %11 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %packets, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.not = icmp eq i64 %10, %12
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %stats, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %14 to i64
  %last_used = getelementptr inbounds %struct.ch_tc_flower_entry, ptr %call27, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %last_used to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %last_used, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %if.end8

if.end8:                                          ; preds = %if.end, %while.body.if.end8_crit_edge
  %call = call ptr @rhashtable_walk_next(ptr noundef nonnull %iter) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end8.while.end.thread_crit_edge, label %if.end8.land.rhs_crit_edge

if.end8.land.rhs_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end8.while.end.thread_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.thread

while.end:                                        ; preds = %land.rhs
  call void @rhashtable_walk_stop(ptr noundef nonnull %iter) #11
  %cmp10 = icmp eq ptr %call27, inttoptr (i32 -11 to ptr)
  br i1 %cmp10, label %while.end.do.body_crit_edge, label %while.end.do.end_crit_edge

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %while.end.do.end_crit_edge, %while.end.thread
  call void @rhashtable_walk_exit(ptr noundef nonnull %iter) #11
  %flower_stats_timer = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 50
  %call12 = call i32 @mod_timer(ptr noundef %flower_stats_timer, i32 noundef %add) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iter) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch_flower_stats_cb(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flower_stats_work = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %flower_stats_work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_cleanup_tc_flower(ptr noundef %adap) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_flower_initialized = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 76
  %0 = ptrtoint ptr %tc_flower_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tc_flower_initialized, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %function = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 79, i32 2
  %2 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %function, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flower_stats_timer = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 79
  %call = tail call i32 @del_timer_sync(ptr noundef %flower_stats_timer) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %flower_stats_work = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 80
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %flower_stats_work) #11
  %flower_tbl = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 77
  tail call void @rhashtable_destroy(ptr noundef %flower_tbl) #11
  %4 = ptrtoint ptr %tc_flower_initialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tc_flower_initialized, align 4
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_enc_keyid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_vlan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !130
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #11
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !131

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #11, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !133
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !120

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !134
  %7 = tail call i32 @llvm.read_register.i32(metadata !109) #11
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !136
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i32 @llvm.read_register.i32(metadata !109) #11
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #11
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !119

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #11, !srcloc !138
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #11, !srcloc !140
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %3 = tail call i32 @llvm.read_register.i32(metadata !109) #11
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
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !142
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !143
  %2 = tail call i32 @llvm.read_register.i32(metadata !109) #11
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !80, !81, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @cxgb4_validate_flow_actions.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 712, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 730, i32 21}
!4 = !{ptr @__func__.cxgb4_validate_flow_actions, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 731, i32 9}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 748, i32 22}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 754, i32 21}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 774, i32 20}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 780, i32 19}
!14 = !{ptr @cxgb4_flow_rule_replace.__msg, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 883, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 904, i32 19}
!18 = !{ptr @__func__.cxgb4_flow_rule_replace, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 905, i32 7}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 938, i32 19}
!22 = !{ptr @__func__.cxgb4_tc_flower_replace, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 938, i32 52}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 1006, i32 19}
!26 = !{ptr @cxgb4_init_tc_flower.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 1125, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cxgb4_init_tc_flower.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 1126, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"pedits", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 46, i32 34}
!34 = !{ptr @cxgb4_natmode_config_array, !35, !"cxgb4_natmode_config_array", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 63, i32 42}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/net/flow_offload.h", i32 354, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__flow_action_hw_stats_check.__msg, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../include/net/flow_offload.h", i32 358, i32 3}
!41 = distinct !{null, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../include/net/flow_offload.h", i32 362, i32 3}
!43 = !{ptr @flow_action_mixed_hw_stats_check.__msg, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 598, i32 20}
!47 = !{ptr @__func__.valid_pedit_action, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 599, i32 8}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 641, i32 21}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 660, i32 21}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 676, i32 19}
!55 = !{ptr @cxgb4_action_natmode_validate.__msg, !56, !"__msg", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 487, i32 2}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 324, i32 20}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 342, i32 20}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 348, i32 21}
!63 = !{ptr @init_completion.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/completion.h", i32 87, i32 2}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @allocate_flower_entry.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 150, i32 3}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!107 = !{ptr @cxgb4_tc_flower_ht_params, !108, !"cxgb4_tc_flower_ht_params", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c", i32 1103, i32 39}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{!"auto-init"}
!122 = !{i64 2149762809}
!123 = !{i64 2149763075}
!124 = !{i64 2148169777, i64 2148169803, i64 2148169832, i64 2148169866, i64 2148169897, i64 2148169920}
!125 = !{i64 2157144308}
!126 = !{i64 2148172242, i64 2148172268, i64 2148172297, i64 2148172331, i64 2148172362, i64 2148172385}
!127 = !{i8 0, i8 2}
!128 = !{i64 2157076932}
!129 = !{i64 2157080366}
!130 = !{i64 2149927931}
!131 = !{!"branch_weights", i32 2146410443, i32 1073205}
!132 = !{i64 2148178635, i64 2148178667, i64 2148178696, i64 2148178730, i64 2148178761, i64 2148178784}
!133 = !{i64 2148267716}
!134 = !{i64 2149928091}
!135 = !{i64 2149928368}
!136 = !{i64 2149928210}
!137 = !{i64 2149928573}
!138 = !{i64 2149929636, i64 2149930128, i64 2149929673, i64 2149929729, i64 2149929763, i64 2149929787, i64 2149929828, i64 2149929849, i64 2149929877, i64 2149929911}
!139 = !{i64 2148266603}
!140 = !{i64 2148177022, i64 2148177054, i64 2148177083, i64 2148177117, i64 2148177148, i64 2148177171}
!141 = !{i64 2149931031}
!142 = !{i64 2157070005}
!143 = !{i64 2157072304}
