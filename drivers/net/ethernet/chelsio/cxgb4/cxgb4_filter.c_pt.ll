; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.filter_entry = type { i8, ptr, ptr, ptr, ptr, i32, %struct.ch_filter_specification }
%struct.ch_filter_specification = type { i32, [6 x i8], [6 x i8], i16, [16 x i8], [16 x i8], i16, i16, i32, i64, [12 x i8], %struct.ch_filter_tuple, %struct.ch_filter_tuple }
%struct.ch_filter_tuple = type { i32, i32, i24, i16, [2 x i8], [3 x i8], [16 x i8], [16 x i8], i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.fw_filter2_wr = type { i32, i32, i64, i32, i32, i16, i16, i8, i8, i16, i32, i8, i8, i8, i8, i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i16, i16, i16, i16, [6 x i8], i16, i8, i8, i16, i16, [16 x i8], [16 x i8], i32, i32, i64, i64, i64, i64 }
%struct.l2t_entry = type { i16, i16, [4 x i32], i32, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, i16, i16, i8, i8, [6 x i8] }
%struct.smt_entry = type { i16, i16, i16, [6 x i8], i32, %struct.spinlock }
%struct.filter_ctx = type { %struct.completion, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.ulp_txpkt = type { i32, i32 }
%struct.cpl_set_tcb_field = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64 }
%union.opcode_tid = type { i32 }
%struct.cpl_abort_req = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_abort_rpl = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_abort_rpl_rss = type { %union.opcode_tid, [3 x i8], i8 }
%struct.cpl_act_open_rpl = type { %union.opcode_tid, i32 }
%union.aopen_entry = type { ptr }
%struct.cpl_set_tcb_rpl = type { %union.opcode_tid, i16, i8, i8, i64 }
%struct.cpl_act_open_req6 = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64, i64, i64, i64, i32, i32 }
%struct.cpl_t6_act_open_req6 = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32 }
%struct.cpl_act_open_req = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i32, i32, i64, i32, i32 }
%struct.cpl_t6_act_open_req = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i32, i32, i64, i32, i32, i64, i32, i32 }

@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: Exact-match filters only supported with Hash Filter configuration\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.__cxgb4_set_filter = private unnamed_addr constant [19 x i8] c"__cxgb4_set_filter\00", align 1
@__cxgb4_set_filter._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @__func__.__cxgb4_set_filter, ptr @.str.2, i32 1594, ptr @.str.3, ptr @.str.4 }, align 1
@.str.1 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Invalid location. IPv6 requires 4 slots and is occupying slots %u to %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__cxgb4_set_filter._entry_ptr = internal global ptr @__cxgb4_set_filter._entry, section ".printk_index", align 4
@__cxgb4_set_filter._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @__func__.__cxgb4_set_filter, ptr @.str.2, i32 1605, ptr @.str.3, ptr @.str.4 }, align 1
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Invalid location. IPv6 must be aligned on a 4-slot boundary\0A\00", [35 x i8] zeroinitializer }, align 32
@__cxgb4_set_filter._entry_ptr.7 = internal global ptr @__cxgb4_set_filter._entry.5, section ".printk_index", align 4
@__cxgb4_set_filter._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @__func__.__cxgb4_set_filter, ptr @.str.2, i32 1618, ptr @.str.3, ptr @.str.4 }, align 1
@.str.9 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Invalid location.  IPv6 requires 4 slots and an IPv4 filter exists at %u\0A\00", [54 x i8] zeroinitializer }, align 32
@__cxgb4_set_filter._entry_ptr.10 = internal global ptr @__cxgb4_set_filter._entry.8, section ".printk_index", align 4
@__cxgb4_set_filter._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @__func__.__cxgb4_set_filter, ptr @.str.2, i32 1633, ptr null, ptr null }, align 1
@.str.12 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013%s: IPv6 filter requires 2 indices. IPv4 filter already present at %d. Please remove IPv4 filter first.\0A\00", [53 x i8] zeroinitializer }, align 32
@__cxgb4_set_filter._entry_ptr.13 = internal global ptr @__cxgb4_set_filter._entry.11, section ".printk_index", align 4
@__cxgb4_set_filter.match_all_mac = internal constant [6 x i8] zeroinitializer, align 1
@__func__.__cxgb4_del_filter = private unnamed_addr constant [19 x i8] c"__cxgb4_del_filter\00", align 1
@hash_del_filter_rpl.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cxgb4\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_del_filter_rpl\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: status = %u; tid = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@hash_del_filter_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1982, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:could not find filter entry\00", [33 x i8] zeroinitializer }, align 32
@hash_del_filter_rpl._entry_ptr = internal global ptr @hash_del_filter_rpl._entry, section ".printk_index", align 4
@hash_filter_rpl.__UNIQUE_ID_ddebug660 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hash_filter_rpl\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: tid = %u; atid = %u; status = %u\0A\00", [58 x i8] zeroinitializer }, align 32
@hash_filter_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 2011, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@hash_filter_rpl._entry_ptr = internal global ptr @hash_filter_rpl._entry, section ".printk_index", align 4
@hash_filter_rpl._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 2057, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: filter creation PROBLEM; status = %u\0A\00", [54 x i8] zeroinitializer }, align 32
@hash_filter_rpl._entry_ptr.22 = internal global ptr @hash_filter_rpl._entry.20, section ".printk_index", align 4
@filter_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 2130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"filter %u setup failed with error %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"filter_rpl\00", [21 x i8] zeroinitializer }, align 32
@filter_rpl._entry_ptr = internal global ptr @filter_rpl._entry, section ".printk_index", align 4
@init_hash_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 2151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid hash filter + ofld config\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init_hash_filter\00", [47 x i8] zeroinitializer }, align 32
@init_hash_filter._entry_ptr = internal global ptr @init_hash_filter._entry, section ".printk_index", align 4
@init_hash_filter._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 2157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid hash filter config\0A\00", [36 x i8] zeroinitializer }, align 32
@init_hash_filter._entry_ptr.29 = internal global ptr @init_hash_filter._entry.27, section ".printk_index", align 4
@init_hash_filter._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 2163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@init_hash_filter._entry_ptr.31 = internal global ptr @init_hash_filter._entry.30, section ".printk_index", align 4
@init_hash_filter._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.2, i32 2169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Hash filter supported only on T6\0A\00", [62 x i8] zeroinitializer }, align 32
@init_hash_filter._entry_ptr.34 = internal global ptr @init_hash_filter._entry.32, section ".printk_index", align 4
@cxgb4_set_hash_filter.match_all_mac = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxgb4_del_hash_filter.__UNIQUE_ID_ddebug658 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgb4_del_hash_filter\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: filter_id = %d ; nftids = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: no filter entry for filter_id = %d\00", [57 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: could not allocate skb ..\0A\00", [33 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@configure_filter_tcb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Invalid NAT mode: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"configure_filter_tcb\00", [43 x i8] zeroinitializer }, align 32
@configure_filter_tcb._entry_ptr = internal global ptr @configure_filter_tcb._entry, section ".printk_index", align 4
@configure_filter_smac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"filter %u smac config failed with error %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"configure_filter_smac\00", [42 x i8] zeroinitializer }, align 32
@configure_filter_smac._entry_ptr = internal global ptr @configure_filter_smac._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1542, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1592, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1604, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1616, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1632, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1976, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1981, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2005, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2010, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2056, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2129, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2151, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2157, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2163, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2169, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"match_all_mac\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1444, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1749, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1757, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1775, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 87, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1959, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [53 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 159, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__cxgb4_set_filter._entry, ptr @__cxgb4_set_filter._entry.11, ptr @__cxgb4_set_filter._entry.5, ptr @__cxgb4_set_filter._entry.8, ptr @__cxgb4_set_filter._entry_ptr, ptr @__cxgb4_set_filter._entry_ptr.10, ptr @__cxgb4_set_filter._entry_ptr.13, ptr @__cxgb4_set_filter._entry_ptr.7, ptr @configure_filter_smac._entry, ptr @configure_filter_smac._entry_ptr, ptr @configure_filter_tcb._entry, ptr @configure_filter_tcb._entry_ptr, ptr @filter_rpl._entry, ptr @filter_rpl._entry_ptr, ptr @hash_del_filter_rpl._entry, ptr @hash_del_filter_rpl._entry_ptr, ptr @hash_filter_rpl._entry, ptr @hash_filter_rpl._entry.20, ptr @hash_filter_rpl._entry_ptr, ptr @hash_filter_rpl._entry_ptr.22, ptr @init_hash_filter._entry, ptr @init_hash_filter._entry.27, ptr @init_hash_filter._entry.30, ptr @init_hash_filter._entry.32, ptr @init_hash_filter._entry_ptr, ptr @init_hash_filter._entry_ptr.29, ptr @init_hash_filter._entry_ptr.31, ptr @init_hash_filter._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.33, ptr @cxgb4_set_hash_filter.match_all_mac, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @init_completion.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_del_filter_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_filter_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_filter_rpl._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hash_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hash_filter._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hash_filter._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hash_filter._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_set_hash_filter.match_all_mac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_filter_tcb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_filter_smac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_get_filter_counters(ptr nocapture noundef readonly %dev, i32 noundef %fidx, ptr nocapture noundef writeonly %hitcnt, ptr nocapture noundef writeonly %bytecnt, i1 noundef zeroext %hash) local_unnamed_addr #0 align 64 {
entry:
  %be64_byte_count.i = alloca i64, align 8
  %be64_count.i = alloca i64, align 8
  %be32_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %be64_byte_count.i) #11
  %2 = ptrtoint ptr %be64_byte_count.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %be64_byte_count.i, align 8, !annotation !100
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 32016
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !101
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !102
  %hash_filter.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 28
  %7 = ptrtoint ptr %hash_filter.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hash_filter.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp ne i8 %8, 0
  %9 = and i1 %tobool.not.i, %hash
  br i1 %9, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %tid_base.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 1
  %10 = ptrtoint ptr %tid_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tid_base.i.i, align 4
  %sub.i.i = sub i32 %fidx, %11
  %ntids.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 2
  %12 = ptrtoint ptr %ntids.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ntids.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %13)
  %cmp.i.not.i = icmp ult i32 %sub.i.i, %13
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i.get_filter_count.exit_crit_edge

if.then.i.get_filter_count.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_filter_count.exit

if.end.i:                                         ; preds = %if.then.i
  %tids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48
  %14 = ptrtoint ptr %tids.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tids.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %sub.i.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %if.end.i.get_filter_count.exit_crit_edge, label %if.end.i.if.end40.i_crit_edge

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.end.i.get_filter_count.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_filter_count.exit

if.else.i:                                        ; preds = %entry
  %nftids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 18
  %18 = ptrtoint ptr %nftids.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nftids.i, align 8
  %nsftids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 23
  %20 = ptrtoint ptr %nsftids.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nsftids.i, align 4
  %nhpftids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 14
  %22 = ptrtoint ptr %nhpftids.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nhpftids.i, align 8
  %add.i = add i32 %23, %19
  %add13.i = add i32 %21, -1
  %sub14.i = add i32 %add13.i, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14.i, i32 %fidx)
  %cmp.not.i = icmp eq i32 %sub14.i, %fidx
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %fidx)
  %cmp21.not.i = icmp ugt i32 %add.i, %fidx
  %or.cond.i = or i1 %cmp.not.i, %cmp21.not.i
  br i1 %or.cond.i, label %if.end23.i, label %if.else.i.get_filter_count.exit_crit_edge

if.else.i.get_filter_count.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_filter_count.exit

if.end23.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %fidx)
  %cmp26.i = icmp ugt i32 %23, %fidx
  br i1 %cmp26.i, label %if.then27.i, label %if.else30.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_tab.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 12
  %24 = ptrtoint ptr %hpftid_tab.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hpftid_tab.i, align 16
  %arrayidx29.i = getelementptr %struct.filter_entry, ptr %25, i32 %fidx
  br label %if.end36.i

if.else30.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_tab.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 16
  %26 = ptrtoint ptr %ftid_tab.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ftid_tab.i, align 64
  %sub34.i = sub i32 %fidx, %23
  %arrayidx35.i = getelementptr %struct.filter_entry, ptr %27, i32 %sub34.i
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else30.i, %if.then27.i
  %f.0.i = phi ptr [ %arrayidx29.i, %if.then27.i ], [ %arrayidx35.i, %if.else30.i ]
  %28 = ptrtoint ptr %f.0.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %f.0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool37.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool37.not.i, label %if.end36.i.get_filter_count.exit_crit_edge, label %if.end36.i.if.end40.i_crit_edge

if.end36.i.if.end40.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.end36.i.get_filter_count.exit_crit_edge:       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_filter_count.exit

if.end40.i:                                       ; preds = %if.end36.i.if.end40.i_crit_edge, %if.end.i.if.end40.i_crit_edge
  %f.1.i = phi ptr [ %17, %if.end.i.if.end40.i_crit_edge ], [ %f.0.i, %if.end36.i.if.end40.i_crit_edge ]
  %tid.i = getelementptr inbounds %struct.filter_entry, ptr %f.1.i, i32 0, i32 5
  %29 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tid.i, align 4
  %mul.i = shl i32 %30, 7
  %add41.i = add i32 %mul.i, %6
  %win0_lock.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 70
  tail call void @_raw_spin_lock(ptr noundef %win0_lock.i) #11
  %chip.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %31 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip.i, align 8
  %33 = and i32 %32, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %33)
  %cmp.i113.not.i = icmp eq i32 %33, 64
  br i1 %cmp.i113.not.i, label %if.then44.i, label %if.else51.i

if.then44.i:                                      ; preds = %if.end40.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %be64_count.i) #11
  %34 = ptrtoint ptr %be64_count.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %be64_count.i, align 8, !annotation !100
  %35 = ptrtoint ptr %bytecnt to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %bytecnt, align 8
  %add46.i = add i32 %add41.i, 16
  %call47.i = call i32 @t4_memory_rw(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %add46.i, i32 noundef 8, ptr noundef nonnull %be64_count.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %if.then44.i.cleanup.i_crit_edge, label %if.end50.i

if.then44.i.cleanup.i_crit_edge:                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end50.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %be64_count.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %be64_count.i, align 8
  %38 = ptrtoint ptr %hitcnt to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %hitcnt, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end50.i, %if.then44.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %be64_count.i) #11
  br label %out.i

if.else51.i:                                      ; preds = %if.end40.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %be32_count.i) #11
  %39 = ptrtoint ptr %be32_count.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %be32_count.i, align 4, !annotation !100
  %add53.i = add i32 %add41.i, 16
  %call54.i = call i32 @t4_memory_rw(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %add53.i, i32 noundef 8, ptr noundef nonnull %be64_byte_count.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %if.else51.i.cleanup64.i_crit_edge, label %if.end57.i

if.else51.i.cleanup64.i_crit_edge:                ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64.i

if.end57.i:                                       ; preds = %if.else51.i
  %40 = ptrtoint ptr %be64_byte_count.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %be64_byte_count.i, align 8
  %42 = ptrtoint ptr %bytecnt to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %bytecnt, align 8
  %add59.i = add i32 %add41.i, 24
  %call60.i = call i32 @t4_memory_rw(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %add59.i, i32 noundef 4, ptr noundef nonnull %be32_count.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %if.end57.i.cleanup64.i_crit_edge, label %if.end63.i

if.end57.i.cleanup64.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup64.i

if.end63.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %be32_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %be32_count.i, align 4
  %conv.i = zext i32 %44 to i64
  %45 = ptrtoint ptr %hitcnt to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv.i, ptr %hitcnt, align 8
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.end63.i, %if.end57.i.cleanup64.i_crit_edge, %if.else51.i.cleanup64.i_crit_edge
  %ret.0.i = phi i32 [ %call60.i, %if.end63.i ], [ %call54.i, %if.else51.i.cleanup64.i_crit_edge ], [ %call60.i, %if.end57.i.cleanup64.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %be32_count.i) #11
  br label %out.i

out.i:                                            ; preds = %cleanup64.i, %cleanup.i
  %ret.1.i = phi i32 [ %call47.i, %cleanup.i ], [ %ret.0.i, %cleanup64.i ]
  call void @_raw_spin_unlock(ptr noundef %win0_lock.i) #11
  br label %get_filter_count.exit

get_filter_count.exit:                            ; preds = %out.i, %if.end36.i.get_filter_count.exit_crit_edge, %if.else.i.get_filter_count.exit_crit_edge, %if.end.i.get_filter_count.exit_crit_edge, %if.then.i.get_filter_count.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %out.i ], [ -7, %if.then.i.get_filter_count.exit_crit_edge ], [ -22, %if.end.i.get_filter_count.exit_crit_edge ], [ -7, %if.else.i.get_filter_count.exit_crit_edge ], [ -22, %if.end36.i.get_filter_count.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %be64_byte_count.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_get_free_ftid(ptr nocapture noundef readonly %dev, i8 noundef zeroext %family, i1 noundef zeroext %hash_en, i32 noundef %tc_prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %family)
  %cmp = icmp eq i8 %family, 10
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 8
  %4 = and i32 %3, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %4)
  %cmp2 = icmp ult i32 %4, 96
  %spec.select = select i1 %cmp2, i8 4, i8 2
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %n.0 = phi i8 [ 1, %entry.if.end7_crit_edge ], [ %spec.select, %if.then ]
  %ftid_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock) #11
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 14
  %5 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %tc_prio)
  %cmp8.not = icmp ult i32 %6, %tc_prio
  %spec.select181 = select i1 %cmp8.not, i32 %6, i32 0
  %nftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 18
  %7 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nftids, align 8
  %add12 = add i32 %8, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select181, i32 %add12)
  %cmp13199 = icmp ult i32 %spec.select181, %add12
  br i1 %cmp13199, label %while.body.lr.ph, label %if.end7.out_unlock.thread_crit_edge

if.end7.out_unlock.thread_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.thread

while.body.lr.ph:                                 ; preds = %if.end7
  %tc_hash_tids_max_prio68 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 41
  %conv76 = zext i8 %n.0 to i32
  %ftid_bmap82 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 17
  %hpftid_bmap = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 13
  %ftid_tab27.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 16
  %hpftid_tab39.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 12
  %neg.i = sub nsw i32 0, %conv76
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %ftid.0200 = phi i32 [ %spec.select181, %while.body.lr.ph ], [ %ftid.0.be, %while.cond.backedge.while.body_crit_edge ]
  %9 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ftid.0200, i32 %10)
  %cmp16 = icmp ult i32 %ftid.0200, %10
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.body
  %11 = ptrtoint ptr %tc_hash_tids_max_prio68 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tc_hash_tids_max_prio68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %tc_prio)
  %cmp20 = icmp ult i32 %12, %tc_prio
  %or.cond = and i1 %tobool.not, %cmp20
  %add23 = add i32 %ftid.0200, %conv76
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %10)
  %cmp25 = icmp ugt i32 %add23, %10
  %or.cond202 = select i1 %or.cond, i1 true, i1 %cmp25
  br i1 %or.cond202, label %if.then18.while.cond.backedge_crit_edge, label %if.then18.if.end85_crit_edge

if.then18.if.end85_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then18.while.cond.backedge_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end109, %if.then18.while.cond.backedge_crit_edge
  %ftid.0.be = phi i32 [ %add111, %if.end109 ], [ %10, %if.then18.while.cond.backedge_crit_edge ]
  %cmp13 = icmp ult i32 %ftid.0.be, %add12
  br i1 %cmp13, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_unlock.thread_crit_edge

while.cond.backedge.out_unlock.thread_crit_edge:  ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.thread

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.else:                                          ; preds = %while.body
  br i1 %hash_en, label %if.end.i, label %if.else67

if.end.i:                                         ; preds = %if.else
  %13 = ptrtoint ptr %hpftid_bmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hpftid_bmap, align 4
  %call5.i = tail call i32 @_find_last_bit(ptr noundef %14, i32 noundef %10) #11
  %15 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %16)
  %cmp36 = icmp ult i32 %call5.i, %16
  br i1 %cmp36, label %if.then38, label %if.end.i.if.end46_crit_edge

if.end.i.if.end46_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then38:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %hpftid_tab39.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hpftid_tab39.i, align 16
  %arrayidx = getelementptr %struct.filter_entry, ptr %18, i32 %call5.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool39.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool39.not, label %if.then38.if.end46_crit_edge, label %land.lhs.true40

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true40:                                  ; preds = %if.then38
  %tc_prio41 = getelementptr %struct.filter_entry, ptr %18, i32 %call5.i, i32 6, i32 8
  %20 = ptrtoint ptr %tc_prio41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tc_prio41, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %tc_prio)
  %cmp42 = icmp ugt i32 %21, %tc_prio
  br i1 %cmp42, label %land.lhs.true40.out_unlock.thread_crit_edge, label %land.lhs.true40.if.end46_crit_edge

land.lhs.true40.if.end46_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true40.out_unlock.thread_crit_edge:      ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.thread

if.end46:                                         ; preds = %land.lhs.true40.if.end46_crit_edge, %if.then38.if.end46_crit_edge, %if.end.i.if.end46_crit_edge
  %22 = ptrtoint ptr %ftid_bmap82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ftid_bmap82, align 4
  %24 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nftids, align 8
  %call48 = tail call i32 @_find_first_bit_be(ptr noundef %23, i32 noundef %25) #11
  %26 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call48, i32 %27)
  %cmp50 = icmp ult i32 %call48, %27
  br i1 %cmp50, label %if.then52, label %if.end46.if.end65_crit_edge

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then52:                                        ; preds = %if.end46
  %28 = ptrtoint ptr %ftid_tab27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ftid_tab27.i, align 64
  %arrayidx53 = getelementptr %struct.filter_entry, ptr %29, i32 %call48
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load54 = load i8, ptr %arrayidx53, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load54)
  %tobool57.not = icmp sgt i8 %bf.load54, -1
  br i1 %tobool57.not, label %if.then52.if.end65_crit_edge, label %land.lhs.true58

if.then52.if.end65_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

land.lhs.true58:                                  ; preds = %if.then52
  %tc_prio60 = getelementptr %struct.filter_entry, ptr %29, i32 %call48, i32 6, i32 8
  %31 = ptrtoint ptr %tc_prio60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tc_prio60, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %tc_prio)
  %cmp61 = icmp ult i32 %32, %tc_prio
  br i1 %cmp61, label %land.lhs.true58.out_unlock.thread_crit_edge, label %land.lhs.true58.if.end65_crit_edge

land.lhs.true58.if.end65_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

land.lhs.true58.out_unlock.thread_crit_edge:      ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.thread

if.end65:                                         ; preds = %land.lhs.true58.if.end65_crit_edge, %if.then52.if.end65_crit_edge, %if.end46.if.end65_crit_edge
  %33 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nhpftids, align 8
  br label %out_unlock.thread

if.else67:                                        ; preds = %if.else
  %35 = ptrtoint ptr %tc_hash_tids_max_prio68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tc_hash_tids_max_prio68, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %tc_prio)
  %cmp72 = icmp ugt i32 %36, %tc_prio
  %add77 = add i32 %ftid.0200, %conv76
  call void @__sanitizer_cov_trace_cmp4(i32 %add77, i32 %add12)
  %cmp78 = icmp ugt i32 %add77, %add12
  %or.cond203 = select i1 %cmp72, i1 true, i1 %cmp78
  br i1 %or.cond203, label %if.else67.out_unlock.thread_crit_edge, label %if.end81

if.else67.out_unlock.thread_crit_edge:            ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.thread

if.end81:                                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %ftid.0200, %10
  br label %if.end85

if.end85:                                         ; preds = %if.end81, %if.then18.if.end85_crit_edge
  %bmap_ftid.0 = phi i32 [ %sub, %if.end81 ], [ %ftid.0200, %if.then18.if.end85_crit_edge ]
  %bmap.0.in = phi ptr [ %ftid_bmap82, %if.end81 ], [ %hpftid_bmap, %if.then18.if.end85_crit_edge ]
  %37 = ptrtoint ptr %bmap.0.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %bmap.0 = load ptr, ptr %bmap.0.in, align 4
  br label %for.body

for.body:                                         ; preds = %if.end95.for.body_crit_edge, %if.end85
  %indvars.iv = phi i32 [ 0, %if.end85 ], [ %indvars.iv.next, %if.end95.for.body_crit_edge ]
  %cnt.0198 = phi i8 [ 0, %if.end85 ], [ %inc96, %if.end95.for.body_crit_edge ]
  %add91 = add i32 %bmap_ftid.0, %indvars.iv
  %div3.i = lshr i32 %add91, 5
  %arrayidx.i = getelementptr i32, ptr %bmap.0, i32 %div3.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %add91, 31
  %40 = shl nuw i32 1, %and.i
  %41 = and i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool93.not = icmp eq i32 %41, 0
  br i1 %tobool93.not, label %if.end95, label %for.end

if.end95:                                         ; preds = %for.body
  %inc96 = add nuw nsw i8 %cnt.0198, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv76
  br i1 %exitcond.not, label %if.end95.if.then102_crit_edge, label %if.end95.for.body_crit_edge

if.end95.for.body_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end95.if.then102_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then102

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp1(i8 %cnt.0198, i8 %n.0)
  %cmp100 = icmp eq i8 %cnt.0198, %n.0
  br i1 %cmp100, label %for.end.if.then102_crit_edge, label %for.end.if.end109_crit_edge

for.end.if.end109_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

for.end.if.then102_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then102

if.then102:                                       ; preds = %for.end.if.then102_crit_edge, %if.end95.if.then102_crit_edge
  %42 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ftid.0200, i32 %43)
  %cmp.i = icmp ult i32 %ftid.0200, %43
  br i1 %cmp.i, label %if.then.i186, label %if.else20.i

if.then.i186:                                     ; preds = %if.then102
  %44 = ptrtoint ptr %hpftid_bmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hpftid_bmap, align 4
  %div3.i.i = lshr i32 %ftid.0200, 5
  %arrayidx.i.i = getelementptr i32, ptr %45, i32 %div3.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %ftid.0200, 31
  %48 = shl nuw i32 1, %and.i.i
  %49 = and i32 %47, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i185 = icmp eq i32 %49, 0
  br i1 %tobool.not.i185, label %if.end.i187, label %if.then.i186.if.end109_crit_edge

if.then.i186.if.end109_crit_edge:                 ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.end.i187:                                      ; preds = %if.then.i186
  %50 = ptrtoint ptr %hpftid_tab39.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hpftid_tab39.i, align 16
  %call4.i = tail call i32 @_find_next_bit_be(ptr noundef %45, i32 noundef %43, i32 noundef %ftid.0200) #11
  %52 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %53)
  %cmp6.not.i = icmp ult i32 %call4.i, %53
  br i1 %cmp6.not.i, label %if.end.i187.if.end.i.i_crit_edge, label %if.then7.i

if.end.i187.if.end.i.i_crit_edge:                 ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then7.i:                                       ; preds = %if.end.i187
  %54 = ptrtoint ptr %ftid_bmap82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ftid_bmap82, align 4
  %56 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nftids, align 8
  %call8.i = tail call i32 @_find_first_bit_be(ptr noundef %55, i32 noundef %57) #11
  %58 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %59)
  %cmp10.not.i = icmp ult i32 %call8.i, %59
  br i1 %cmp10.not.i, label %if.else.i, label %if.then7.i.if.end.i.i_crit_edge

if.then7.i.if.end.i.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.else.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %ftid_tab27.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ftid_tab27.i, align 64
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i, %if.then7.i.if.end.i.i_crit_edge, %if.end.i187.if.end.i.i_crit_edge
  %next_tab.0.i = phi ptr [ %61, %if.else.i ], [ %51, %if.end.i187.if.end.i.i_crit_edge ], [ %51, %if.then7.i.if.end.i.i_crit_edge ]
  %next_ftid.0.i = phi i32 [ %call8.i, %if.else.i ], [ %call4.i, %if.end.i187.if.end.i.i_crit_edge ], [ %ftid.0200, %if.then7.i.if.end.i.i_crit_edge ]
  %62 = ptrtoint ptr %hpftid_bmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hpftid_bmap, align 4
  %call5.i.i = tail call i32 @_find_last_bit(ptr noundef %63, i32 noundef %ftid.0200) #11
  %64 = tail call i32 @llvm.umin.i32(i32 %call5.i.i, i32 %ftid.0200) #11
  %65 = ptrtoint ptr %hpftid_tab39.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hpftid_tab39.i, align 16
  br label %if.end50.i

if.else20.i:                                      ; preds = %if.then102
  %sub.i = sub i32 %ftid.0200, %43
  %67 = ptrtoint ptr %ftid_bmap82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ftid_bmap82, align 4
  %div3.i129.i = lshr i32 %sub.i, 5
  %arrayidx.i130.i = getelementptr i32, ptr %68, i32 %div3.i129.i
  %69 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %arrayidx.i130.i, align 4
  %and.i131.i = and i32 %sub.i, 31
  %71 = shl nuw i32 1, %and.i131.i
  %72 = and i32 %70, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool24.not.i = icmp eq i32 %72, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.else20.i.if.end109_crit_edge

if.else20.i.if.end109_crit_edge:                  ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.end26.i:                                       ; preds = %if.else20.i
  %73 = ptrtoint ptr %ftid_tab27.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ftid_tab27.i, align 64
  %call5.i142.i = tail call i32 @_find_last_bit(ptr noundef %68, i32 noundef %sub.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i142.i, i32 %sub.i)
  %cmp30.not.i = icmp ult i32 %call5.i142.i, %sub.i
  br i1 %cmp30.not.i, label %if.end26.i.if.end41.i_crit_edge, label %if.end.i154.i

if.end26.i.if.end41.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.end.i154.i:                                    ; preds = %if.end26.i
  %75 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nhpftids, align 8
  %77 = ptrtoint ptr %hpftid_bmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hpftid_bmap, align 4
  %call5.i153.i = tail call i32 @_find_last_bit(ptr noundef %78, i32 noundef %76) #11
  %79 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i153.i, i32 %80)
  %cmp36.not.i = icmp ult i32 %call5.i153.i, %80
  br i1 %cmp36.not.i, label %if.else38.i, label %if.end.i154.i.if.end41.i_crit_edge

if.end.i154.i.if.end41.i_crit_edge:               ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41.i

if.else38.i:                                      ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %hpftid_tab39.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hpftid_tab39.i, align 16
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else38.i, %if.end.i154.i.if.end41.i_crit_edge, %if.end26.i.if.end41.i_crit_edge
  %prev_tab.0.i = phi ptr [ %82, %if.else38.i ], [ %74, %if.end26.i.if.end41.i_crit_edge ], [ %74, %if.end.i154.i.if.end41.i_crit_edge ]
  %prev_ftid.1.i = phi i32 [ %call5.i153.i, %if.else38.i ], [ %call5.i142.i, %if.end26.i.if.end41.i_crit_edge ], [ %sub.i, %if.end.i154.i.if.end41.i_crit_edge ]
  %83 = ptrtoint ptr %ftid_bmap82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ftid_bmap82, align 4
  %85 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nftids, align 8
  %call44.i = tail call i32 @_find_next_bit_be(ptr noundef %84, i32 noundef %86, i32 noundef %sub.i) #11
  %87 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call44.i, i32 %88)
  %cmp46.not.i = icmp ult i32 %call44.i, %88
  %spec.select127.i = select i1 %cmp46.not.i, i32 %call44.i, i32 %sub.i
  %89 = ptrtoint ptr %ftid_tab27.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ftid_tab27.i, align 64
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end41.i, %if.end.i.i
  %prev_tab.1.i = phi ptr [ %66, %if.end.i.i ], [ %prev_tab.0.i, %if.end41.i ]
  %next_tab.1.i = phi ptr [ %next_tab.0.i, %if.end.i.i ], [ %90, %if.end41.i ]
  %prev_ftid.2.i = phi i32 [ %64, %if.end.i.i ], [ %prev_ftid.1.i, %if.end41.i ]
  %next_ftid.2.i = phi i32 [ %next_ftid.0.i, %if.end.i.i ], [ %spec.select127.i, %if.end41.i ]
  %arrayidx.i188 = getelementptr %struct.filter_entry, ptr %next_tab.1.i, i32 %next_ftid.2.i
  %and.i189 = and i32 %prev_ftid.2.i, %neg.i
  %fs.i = getelementptr %struct.filter_entry, ptr %prev_tab.1.i, i32 %and.i189, i32 6
  %91 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %bf.load.i = load i32, ptr %fs.i, align 8
  %92 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool53.not.i = icmp eq i32 %92, 0
  %spec.select128.i = select i1 %tobool53.not.i, i32 %prev_ftid.2.i, i32 %and.i189
  %prev_fe.0.i = getelementptr %struct.filter_entry, ptr %prev_tab.1.i, i32 %spec.select128.i
  %93 = ptrtoint ptr %prev_fe.0.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load57.i = load i8, ptr %prev_fe.0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load57.i)
  %tobool59.not.i = icmp sgt i8 %bf.load57.i, -1
  br i1 %tobool59.not.i, label %if.end50.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end50.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end50.i
  %tc_prio.i = getelementptr %struct.filter_entry, ptr %prev_tab.1.i, i32 %spec.select128.i, i32 6, i32 8
  %94 = ptrtoint ptr %tc_prio.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tc_prio.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %tc_prio)
  %cmp61.i = icmp ugt i32 %95, %tc_prio
  br i1 %cmp61.i, label %land.lhs.true.i.if.end109_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true.i.if.end109_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end50.i.lor.lhs.false.i_crit_edge
  %96 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load63.i = load i8, ptr %arrayidx.i188, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load63.i)
  %tobool66.not.i = icmp sgt i8 %bf.load63.i, -1
  br i1 %tobool66.not.i, label %lor.lhs.false.i.if.then104_crit_edge, label %land.lhs.true67.i

lor.lhs.false.i.if.then104_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

land.lhs.true67.i:                                ; preds = %lor.lhs.false.i
  %tc_prio69.i = getelementptr %struct.filter_entry, ptr %next_tab.1.i, i32 %next_ftid.2.i, i32 6, i32 8
  %97 = ptrtoint ptr %tc_prio69.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tc_prio69.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %tc_prio)
  %cmp70.i = icmp ult i32 %98, %tc_prio
  br i1 %cmp70.i, label %land.lhs.true67.i.if.end109_crit_edge, label %land.lhs.true67.i.if.then104_crit_edge

land.lhs.true67.i.if.then104_crit_edge:           ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then104

land.lhs.true67.i.if.end109_crit_edge:            ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then104:                                       ; preds = %land.lhs.true67.i.if.then104_crit_edge, %lor.lhs.false.i.if.then104_crit_edge
  %and107 = and i32 %ftid.0200, %neg.i
  br label %out_unlock.thread

if.end109:                                        ; preds = %land.lhs.true67.i.if.end109_crit_edge, %land.lhs.true.i.if.end109_crit_edge, %if.else20.i.if.end109_crit_edge, %if.then.i186.if.end109_crit_edge, %for.end.if.end109_crit_edge
  %add111 = add i32 %ftid.0200, %conv76
  br label %while.cond.backedge

out_unlock.thread:                                ; preds = %if.then104, %if.else67.out_unlock.thread_crit_edge, %if.end65, %land.lhs.true58.out_unlock.thread_crit_edge, %land.lhs.true40.out_unlock.thread_crit_edge, %while.cond.backedge.out_unlock.thread_crit_edge, %if.end7.out_unlock.thread_crit_edge
  %99 = phi i32 [ -12, %if.end7.out_unlock.thread_crit_edge ], [ -12, %land.lhs.true40.out_unlock.thread_crit_edge ], [ -12, %land.lhs.true58.out_unlock.thread_crit_edge ], [ %and107, %if.then104 ], [ %34, %if.end65 ], [ -12, %if.else67.out_unlock.thread_crit_edge ], [ -12, %while.cond.backedge.out_unlock.thread_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #11
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_filter_wr(ptr noundef %adapter, i32 noundef %fidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 14
  %0 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fidx)
  %cmp = icmp ugt i32 %1, %fidx
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_tab = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 12
  %2 = ptrtoint ptr %hpftid_tab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpftid_tab, align 16
  %arrayidx = getelementptr %struct.filter_entry, ptr %3, i32 %fidx
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_tab = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 16
  %4 = ptrtoint ptr %ftid_tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ftid_tab, align 64
  %sub = sub i32 %fidx, %1
  %arrayidx5 = getelementptr %struct.filter_entry, ptr %5, i32 %sub
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %f.0 = phi ptr [ %arrayidx, %if.then ], [ %arrayidx5, %if.else ]
  %call.i = tail call ptr @__alloc_skb(i32 noundef 208, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %fs = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6
  %6 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %fs, align 8
  %7 = and i32 %bf.load, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end7.if.end26_crit_edge, label %if.then14

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then14:                                        ; preds = %if.end7
  %vlan = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan, align 8
  %bf.lshr18 = lshr i32 %bf.load, 10
  %11 = trunc i32 %bf.lshr18 to i8
  %conv = and i8 %11, 3
  %dmac = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 1
  %call21 = tail call ptr @t4_l2t_alloc_switching(ptr noundef %adapter, i16 noundef zeroext %10, i8 noundef zeroext %conv, ptr noundef %dmac) #11
  %l2t = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 2
  %12 = ptrtoint ptr %l2t to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %l2t, align 8
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.then24, label %if.then14.if.end26_crit_edge

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %cleanup

if.end26:                                         ; preds = %if.then14.if.end26_crit_edge, %if.end7.if.end26_crit_edge
  %13 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load28 = load i32, ptr %fs, align 8
  %14 = and i32 %bf.load28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool31.not = icmp eq i32 %14, 0
  br i1 %tobool31.not, label %if.end26.if.end46_crit_edge, label %if.then32

if.end26.if.end46_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then32:                                        ; preds = %if.end26
  %dev = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %smac = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 2
  %call35 = tail call ptr @cxgb4_smt_alloc_switching(ptr noundef %16, ptr noundef %smac) #11
  %smt = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 3
  %17 = ptrtoint ptr %smt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call35, ptr %smt, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %if.then38, label %if.then32.if.end46_crit_edge

if.then32.if.end46_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then38:                                        ; preds = %if.then32
  %l2t39 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 2
  %18 = ptrtoint ptr %l2t39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %l2t39, align 8
  %tobool40.not = icmp eq ptr %19, null
  br i1 %tobool40.not, label %if.then38.if.end44_crit_edge, label %if.then41

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cxgb4_l2t_release(ptr noundef nonnull %19) #11
  %20 = ptrtoint ptr %l2t39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %l2t39, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then38.if.end44_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %cleanup

if.end46:                                         ; preds = %if.then32.if.end46_crit_edge, %if.end26.if.end46_crit_edge
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !103

do.body3.i.i:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit:                              ; preds = %if.end46
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 208
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %26, 208
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %27 = call ptr @memset(ptr %24, i32 0, i32 208)
  %filter2_wr_support = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 36
  %28 = ptrtoint ptr %filter2_wr_support to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %filter2_wr_support, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool48.not = icmp eq i8 %29, 0
  %. = select i1 %tobool48.not, i32 33554432, i32 1996488704
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %., ptr %24, align 8
  %len16_pkd = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %len16_pkd to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 13, ptr %len16_pkd, align 4
  %tid = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 5
  %32 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tid, align 4
  %shl = shl i32 %33, 12
  %34 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load54 = load i32, ptr %fs, align 8
  %35 = lshr i32 %bf.load54, 18
  %shl57 = and i32 %35, 2048
  %or = or i32 %shl57, %shl
  %bf.lshr61 = lshr i32 %bf.load54, 14
  %bf.clear62 = and i32 %bf.lshr61, 1023
  %or64 = or i32 %or, %bf.clear62
  %tid_to_iq = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 3
  %36 = ptrtoint ptr %tid_to_iq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or64, ptr %tid_to_iq, align 8
  %bf.load66 = load i32, ptr %fs, align 8
  %bf.clear68 = and i32 %bf.load66, 33554432
  %bf.lshr72 = lshr i32 %bf.load66, 26
  %bf.clear73 = and i32 %bf.lshr72, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear73)
  %cmp74 = icmp eq i32 %bf.clear73, 1
  %shl76 = select i1 %cmp74, i32 16777216, i32 0
  %37 = lshr i32 %bf.load66, 1
  %shl82 = and i32 %37, 8388608
  %38 = shl i32 %bf.load66, 9
  %shl88 = and i32 %38, 4194304
  %shl94 = and i32 %38, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear73)
  %cmp100 = icmp eq i32 %bf.clear73, 2
  %shl102 = select i1 %cmp100, i32 1048576, i32 0
  %39 = shl i32 %bf.load66, 10
  %shl108 = and i32 %39, 524288
  %shl114 = and i32 %39, 262144
  %40 = and i32 %39, 131072
  %41 = and i32 %39, 65536
  %42 = lshr i32 %bf.load66, 16
  %shl150 = and i32 %42, 32768
  %43 = shl i32 %bf.load66, 3
  %shl156 = and i32 %43, 24576
  %44 = lshr i32 %bf.load66, 18
  %shl162 = and i32 %44, 4096
  %l2t164 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 2
  %45 = ptrtoint ptr %l2t164 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %l2t164, align 8
  %tobool165.not = icmp eq ptr %46, null
  br i1 %tobool165.not, label %__skb_put_zero.exit.cond.end_crit_edge, label %cond.true

__skb_put_zero.exit.cond.end_crit_edge:           ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %__skb_put_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %idx, align 2
  %conv167 = zext i16 %48 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__skb_put_zero.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv167, %cond.true ], [ 0, %__skb_put_zero.exit.cond.end_crit_edge ]
  %or77 = or i32 %shl82, %bf.clear68
  %or83 = or i32 %or77, %shl88
  %or89 = or i32 %or83, %shl94
  %or95 = or i32 %or89, %shl108
  %or103 = or i32 %or95, %shl114
  %or109 = or i32 %or103, %40
  %or115 = or i32 %or109, %41
  %or129 = or i32 %or115, %shl150
  %or146 = or i32 %or129, %shl156
  %or151 = or i32 %or146, %shl162
  %or157 = or i32 %or151, %shl76
  %or163 = or i32 %or157, %shl102
  %or169 = or i32 %or163, %cond
  %del_filter_to_l2tix = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 4
  %49 = ptrtoint ptr %del_filter_to_l2tix to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or169, ptr %del_filter_to_l2tix, align 4
  %val = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 11
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load171 = load i32, ptr %val, align 4
  %bf.lshr172 = lshr i32 %bf.load171, 16
  %conv173 = trunc i32 %bf.lshr172 to i16
  %ethtype = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 5
  %51 = ptrtoint ptr %ethtype to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv173, ptr %ethtype, align 8
  %mask = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 12
  %52 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load175 = load i32, ptr %mask, align 4
  %bf.lshr176 = lshr i32 %bf.load175, 16
  %conv177 = trunc i32 %bf.lshr176 to i16
  %ethtypem = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 6
  %53 = ptrtoint ptr %ethtypem to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv177, ptr %ethtypem, align 2
  %bf.load180 = load i32, ptr %val, align 4
  %54 = lshr i32 %bf.load180, 8
  %shl183 = and i32 %54, 128
  %bf.load186 = load i32, ptr %mask, align 4
  %55 = lshr i32 %bf.load186, 9
  %shl189 = and i32 %55, 64
  %56 = lshr i32 %bf.load180, 9
  %shl196 = and i32 %56, 32
  %shl203 = and i32 %56, 16
  %57 = lshr i32 %bf.load186, 11
  %shl210 = and i32 %57, 8
  %shl217 = and i32 %57, 4
  %or190 = or i32 %shl196, %shl183
  %or197 = or i32 %or190, %shl203
  %or204 = or i32 %or197, %shl189
  %or211 = or i32 %or204, %shl210
  %or218 = or i32 %or211, %shl217
  %conv219 = trunc i32 %or218 to i8
  %frag_to_ovlan_vldm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 7
  %58 = ptrtoint ptr %frag_to_ovlan_vldm to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv219, ptr %frag_to_ovlan_vldm, align 4
  %59 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load221 = load i32, ptr %fs, align 8
  %60 = and i32 %bf.load221, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool224.not = icmp eq i32 %60, 0
  br i1 %tobool224.not, label %cond.end.if.end229_crit_edge, label %if.then225

cond.end.if.end229_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

if.then225:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %smt226 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 3
  %61 = ptrtoint ptr %smt226 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %smt226, align 4
  %idx227 = getelementptr inbounds %struct.smt_entry, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %idx227 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %idx227, align 2
  %conv228 = trunc i16 %64 to i8
  %smac_sel = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 8
  %65 = ptrtoint ptr %smac_sel to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv228, ptr %smac_sel, align 1
  br label %if.end229

if.end229:                                        ; preds = %if.then225, %cond.end.if.end229_crit_edge
  %abs_id = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22, i32 4, i32 12
  %66 = ptrtoint ptr %abs_id to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %abs_id, align 2
  %rx_chan_rx_rpl_iq = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 9
  %68 = ptrtoint ptr %rx_chan_rx_rpl_iq to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %rx_chan_rx_rpl_iq, align 2
  %69 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load236 = load i32, ptr %val, align 4
  %70 = shl i32 %bf.load236, 21
  %shl239 = and i32 %70, -8388608
  %71 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load242 = load i32, ptr %mask, align 4
  %72 = shl i32 %bf.load242, 12
  %shl245 = and i32 %72, 8372224
  %73 = shl i32 %bf.load236, 12
  %shl252 = and i32 %73, 8192
  %74 = shl i32 %bf.load242, 11
  %shl259 = and i32 %74, 4096
  %iport = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 11, i32 1
  %75 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load263 = load i32, ptr %iport, align 4
  %76 = lshr i32 %bf.load263, 20
  %shl265 = and i32 %76, 3584
  %iport269 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 12, i32 1
  %77 = ptrtoint ptr %iport269 to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load270 = load i32, ptr %iport269, align 4
  %78 = lshr i32 %bf.load270, 23
  %shl272 = and i32 %78, 448
  %79 = lshr i32 %bf.load263, 23
  %shl279 = and i32 %79, 56
  %bf.lshr285 = lshr i32 %bf.load270, 26
  %bf.clear286 = and i32 %bf.lshr285, 7
  %or246 = or i32 %shl252, %shl239
  %or253 = or i32 %or246, %shl245
  %or260 = or i32 %or253, %shl259
  %or266 = or i32 %or260, %shl265
  %or273 = or i32 %or266, %shl279
  %or280 = or i32 %or273, %shl272
  %or288 = or i32 %or280, %bf.clear286
  %maci_to_matchtypem = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 10
  %80 = ptrtoint ptr %maci_to_matchtypem to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or288, ptr %maci_to_matchtypem, align 8
  %bf.load291 = load i32, ptr %iport, align 4
  %bf.lshr292 = lshr i32 %bf.load291, 18
  %conv294 = trunc i32 %bf.lshr292 to i8
  %ptcl = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 11
  %81 = ptrtoint ptr %ptcl to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv294, ptr %ptcl, align 4
  %bf.load298 = load i32, ptr %iport269, align 4
  %bf.lshr299 = lshr i32 %bf.load298, 18
  %conv301 = trunc i32 %bf.lshr299 to i8
  %ptclm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 12
  %82 = ptrtoint ptr %ptclm to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv301, ptr %ptclm, align 1
  %bf.load304 = load i32, ptr %iport, align 4
  %bf.lshr305 = lshr i32 %bf.load304, 10
  %conv307 = trunc i32 %bf.lshr305 to i8
  %ttyp = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 13
  %83 = ptrtoint ptr %ttyp to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv307, ptr %ttyp, align 2
  %bf.load311 = load i32, ptr %iport269, align 4
  %bf.lshr312 = lshr i32 %bf.load311, 10
  %conv314 = trunc i32 %bf.lshr312 to i8
  %ttypm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 14
  %84 = ptrtoint ptr %ttypm to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv314, ptr %ttypm, align 1
  %ivlan = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 11, i32 2
  %85 = ptrtoint ptr %ivlan to i32
  call void @__asan_load4_noabort(i32 %85)
  %bf.load317 = load i32, ptr %ivlan, align 4
  %bf.lshr318 = lshr i32 %bf.load317, 8
  %conv320 = trunc i32 %bf.lshr318 to i16
  %ivlan321 = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 15
  %86 = ptrtoint ptr %ivlan321 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv320, ptr %ivlan321, align 8
  %ivlan324 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 12, i32 2
  %87 = ptrtoint ptr %ivlan324 to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load325 = load i32, ptr %ivlan324, align 4
  %bf.lshr326 = lshr i32 %bf.load325, 8
  %conv328 = trunc i32 %bf.lshr326 to i16
  %ivlanm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 16
  %88 = ptrtoint ptr %ivlanm to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv328, ptr %ivlanm, align 2
  %ovlan = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 11, i32 3
  %89 = ptrtoint ptr %ovlan to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load331 = load i16, ptr %ovlan, align 4
  %ovlan333 = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 17
  %90 = ptrtoint ptr %ovlan333 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %bf.load331, ptr %ovlan333, align 4
  %ovlan336 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 12, i32 3
  %91 = ptrtoint ptr %ovlan336 to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load337 = load i16, ptr %ovlan336, align 4
  %ovlanm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 18
  %92 = ptrtoint ptr %ovlanm to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %bf.load337, ptr %ovlanm, align 2
  %lip = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 19
  %lip343 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 11, i32 6
  %93 = call ptr @memcpy(ptr %lip, ptr %lip343, i32 16)
  %lipm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 20
  %lip348 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 12, i32 6
  %94 = call ptr @memcpy(ptr %lipm, ptr %lip348, i32 16)
  %fip = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 21
  %fip353 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 11, i32 7
  %95 = call ptr @memcpy(ptr %fip, ptr %fip353, i32 16)
  %fipm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 22
  %fip358 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 12, i32 7
  %96 = call ptr @memcpy(ptr %fipm, ptr %fip358, i32 16)
  %lport = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 11, i32 8
  %97 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %lport, align 4
  %lp = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 23
  %99 = ptrtoint ptr %lp to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %lp, align 8
  %lport364 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 12, i32 8
  %100 = ptrtoint ptr %lport364 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %lport364, align 4
  %lpm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 24
  %102 = ptrtoint ptr %lpm to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %lpm, align 2
  %fport = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 11, i32 9
  %103 = ptrtoint ptr %fport to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %fport, align 2
  %fp = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 25
  %105 = ptrtoint ptr %fp to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %fp, align 4
  %fport369 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 12, i32 9
  %106 = ptrtoint ptr %fport369 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %fport369, align 2
  %fpm = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 26
  %108 = ptrtoint ptr %fpm to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %fpm, align 2
  %109 = ptrtoint ptr %filter2_wr_support to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %filter2_wr_support, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool372.not = icmp eq i8 %110, 0
  br i1 %tobool372.not, label %if.end229.if.end410_crit_edge, label %if.then373

if.end229.if.end410_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end410

if.then373:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  %nat_lport = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 6
  %nat_fport = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 7
  %111 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load377 = load i32, ptr %fs, align 8
  %bf.lshr378 = lshr i32 %bf.load377, 3
  %bf.clear379 = and i32 %bf.lshr378, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear379)
  %tobool380.not = icmp eq i32 %bf.clear379, 0
  %cond381 = select i1 %tobool380.not, i32 0, i32 5
  %shl387 = shl nuw nsw i32 %bf.clear379, 5
  %or388 = or i32 %cond381, %shl387
  %conv389 = trunc i32 %or388 to i8
  %natmode_to_ulp_type = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 31
  %112 = ptrtoint ptr %natmode_to_ulp_type to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv389, ptr %natmode_to_ulp_type, align 1
  %newlip = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 34
  %nat_lip = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 4
  %113 = call ptr @memcpy(ptr %newlip, ptr %nat_lip, i32 16)
  %newfip = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 35
  %nat_fip = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6, i32 5
  %114 = call ptr @memcpy(ptr %newfip, ptr %nat_fip, i32 16)
  %arrayidx396 = getelementptr i8, ptr %nat_lport, i32 1
  %115 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx396, align 1
  %conv397 = zext i8 %116 to i16
  %117 = ptrtoint ptr %nat_lport to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %nat_lport, align 1
  %conv399 = zext i8 %118 to i16
  %shl400 = shl nuw i16 %conv399, 8
  %or401 = or i16 %shl400, %conv397
  %newlport = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 32
  %119 = ptrtoint ptr %newlport to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %or401, ptr %newlport, align 4
  %arrayidx403 = getelementptr i8, ptr %nat_fport, i32 1
  %120 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx403, align 1
  %conv404 = zext i8 %121 to i16
  %122 = ptrtoint ptr %nat_fport to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %nat_fport, align 1
  %conv406 = zext i8 %123 to i16
  %shl407 = shl nuw i16 %conv406, 8
  %or408 = or i16 %shl407, %conv404
  %newfport = getelementptr inbounds %struct.fw_filter2_wr, ptr %24, i32 0, i32 33
  %124 = ptrtoint ptr %newfport to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %or408, ptr %newfport, align 2
  br label %if.end410

if.end410:                                        ; preds = %if.then373, %if.end229.if.end410_crit_edge
  %125 = ptrtoint ptr %f.0 to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load411 = load i8, ptr %f.0, align 8
  %bf.set = or i8 %bf.load411, 32
  store i8 %bf.set, ptr %f.0, align 8
  %126 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %126)
  %bf.load416 = load i32, ptr %iport, align 4
  %sh.diff = lshr i32 %bf.load416, 28
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %127 = and i16 %tr.sh.diff, 6
  %conv.i = or i16 %127, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %128 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %call418 = tail call i32 @t4_ofld_send(ptr noundef %adapter, ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end410, %if.end44, %if.then24, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end410 ], [ -12, %if.end44 ], [ -12, %if.then24 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @t4_l2t_alloc_switching(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_smt_alloc_switching(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_l2t_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @writable_filter(ptr nocapture noundef readonly %f) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %f, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  %. = select i1 %tobool5.not, i32 0, i32 -16
  %retval.0 = select i1 %tobool.not, i32 %., i32 -1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delete_filter(ptr noundef %adapter, i32 noundef %fidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nftids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 18
  %0 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nftids, align 8
  %nsftids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 23
  %2 = ptrtoint ptr %nsftids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsftids, align 4
  %add = add i32 %3, %1
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 14
  %4 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nhpftids, align 8
  %add3 = add i32 %add, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %fidx)
  %cmp.not = icmp ugt i32 %add3, %fidx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %fidx)
  %cmp6 = icmp ugt i32 %5, %fidx
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_tab = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 12
  %6 = ptrtoint ptr %hpftid_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hpftid_tab, align 16
  %arrayidx = getelementptr %struct.filter_entry, ptr %7, i32 %fidx
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_tab = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 16
  %8 = ptrtoint ptr %ftid_tab to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ftid_tab, align 64
  %sub = sub i32 %fidx, %5
  %arrayidx12 = getelementptr %struct.filter_entry, ptr %9, i32 %sub
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %f.0 = phi ptr [ %arrayidx, %if.then7 ], [ %arrayidx12, %if.else ]
  %10 = ptrtoint ptr %f.0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %f.0, align 8
  %11 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %12 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not.i = icmp eq i8 %12, 0
  %..i = select i1 %tobool5.not.i, i32 0, i32 -16
  %retval.0.i = select i1 %tobool.not.i, i32 %..i, i32 -1
  %13 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %if.end15, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool16.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  br i1 %cmp6, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_tab.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 12
  %15 = ptrtoint ptr %hpftid_tab.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hpftid_tab.i, align 16
  %arrayidx.i = getelementptr %struct.filter_entry, ptr %16, i32 %fidx
  br label %if.end.i

if.else.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_tab.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 16
  %17 = ptrtoint ptr %ftid_tab.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ftid_tab.i, align 64
  %sub.i = sub i32 %fidx, %5
  %arrayidx5.i = getelementptr %struct.filter_entry, ptr %18, i32 %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %f.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx5.i, %if.else.i ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i34 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i34, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !103

do.body3.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 128
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %24, 128
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %tid.i = getelementptr inbounds %struct.filter_entry, ptr %f.0.i, i32 0, i32 5
  %25 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tid.i, align 4
  %abs_id.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 22, i32 4, i32 12
  %27 = ptrtoint ptr %abs_id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %abs_id.i, align 2
  %conv.i = zext i16 %28 to i32
  tail call void @t4_mk_filtdelwr(i32 noundef %26, ptr noundef %22, i32 noundef %conv.i) #11
  %29 = ptrtoint ptr %f.0.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i35 = load i8, ptr %f.0.i, align 8
  %bf.set.i = or i8 %bf.load.i35, 32
  store i8 %bf.set.i, ptr %f.0.i, align 8
  %call9.i = tail call i32 @t4_mgmt_tx(ptr noundef %adapter, ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %__skb_put.exit.i, %if.end.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i, %if.end13.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %__skb_put.exit.i ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_filter(ptr noundef %adap, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %l2t = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l2t, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cxgb4_l2t_release(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %smt = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %smt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smt, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cxgb4_smt_release(ptr noundef nonnull %5) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %fs = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6
  %val = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %val, align 4
  %7 = and i32 %bf.load, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %7)
  %.not = icmp eq i32 %7, 10240
  br i1 %.not, label %if.then13, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %viid = getelementptr i8, ptr %1, i32 2308
  %8 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %viid, align 4
  %conv = zext i16 %9 to i32
  %ovlan = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 3
  %10 = ptrtoint ptr %ovlan to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load16 = load i16, ptr %ovlan, align 4
  %11 = and i16 %bf.load16, 511
  %and = zext i16 %11 to i32
  %call17 = tail call i32 @t4_free_encap_mac_filt(ptr noundef %adap, i32 noundef %conv, i32 noundef %and, i1 noundef zeroext false) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end5.if.end18_crit_edge
  %12 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load20 = load i32, ptr %fs, align 8
  %13 = and i32 %bf.load20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %land.lhs.true26

lor.lhs.false:                                    ; preds = %if.end18
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip, align 8
  %16 = and i32 %15, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %16)
  %cmp.i = icmp ne i32 %16, 96
  %17 = and i32 %bf.load20, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool31.not = icmp eq i32 %17, 0
  %or.cond51 = select i1 %cmp.i, i1 true, i1 %tobool31.not
  br i1 %or.cond51, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true26:                                  ; preds = %if.end18
  %.old = and i32 %bf.load20, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.old)
  %tobool31.not.old = icmp eq i32 %.old, 0
  br i1 %tobool31.not.old, label %land.lhs.true26.if.end36_crit_edge, label %land.lhs.true26.if.then32_crit_edge

land.lhs.true26.if.then32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

land.lhs.true26.if.end36_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then32:                                        ; preds = %land.lhs.true26.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %lip = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 6
  tail call void @cxgb4_clip_release(ptr noundef %19, ptr noundef %lip, i8 noundef zeroext 1) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %land.lhs.true26.if.end36_crit_edge, %lor.lhs.false.if.end36_crit_edge
  %20 = call ptr @memset(ptr %f, i32 0, i32 224)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_smt_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_free_encap_mac_filt(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_clip_release(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_all_filters(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  %ctx.i192 = alloca %struct.filter_ctx, align 4
  %ctx.i176 = alloca %struct.filter_ctx, align 4
  %ctx.i160 = alloca %struct.filter_ctx, align 4
  %ctx.i = alloca %struct.filter_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 23
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 128
  %tids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48
  %hpftid_tab = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 12
  %2 = ptrtoint ptr %hpftid_tab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpftid_tab, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %for.cond.preheader

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.cond.preheader:                               ; preds = %entry
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 14
  %4 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp208.not = icmp eq i32 %5, 0
  br i1 %cmp208.not, label %for.cond.preheader.if.end11_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = getelementptr inbounds i8, ptr %ctx.i, i32 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 2304
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %f.0212 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0209 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %f.0212 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %f.0212, align 8
  %8 = and i8 %bf.load, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ctx.i) #11
  %10 = call ptr @memset(ptr %6, i32 255, i32 64)
  %11 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  %flags.i = getelementptr inbounds %struct.adapter, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.cxgb4_del_filter.exit_crit_edge

if.then10.cxgb4_del_filter.exit_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_del_filter.exit

if.end.i:                                         ; preds = %if.then10
  %fs = getelementptr inbounds %struct.filter_entry, ptr %f.0212, i32 0, i32 6
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ctx.i, align 4
  call void @__init_swait_queue_head(ptr noundef %6, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #11
  %call1.i = call i32 @__cxgb4_del_filter(ptr noundef %1, i32 noundef %i.0209, ptr noundef %fs, ptr noundef nonnull %ctx.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cxgb4_del_filter.exit_crit_edge

if.end.i.cxgb4_del_filter.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_del_filter.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %ctx.i, i32 noundef 1000) #11
  br label %cxgb4_del_filter.exit

cxgb4_del_filter.exit:                            ; preds = %if.end4.i, %if.end.i.cxgb4_del_filter.exit_crit_edge, %if.then10.cxgb4_del_filter.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ctx.i) #11
  br label %for.inc

for.inc:                                          ; preds = %cxgb4_del_filter.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0209, 1
  %incdec.ptr = getelementptr %struct.filter_entry, ptr %f.0212, i32 1
  %16 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nhpftids, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end11_crit_edge

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end11:                                         ; preds = %for.inc.if.end11_crit_edge, %for.cond.preheader.if.end11_crit_edge, %entry.if.end11_crit_edge
  %ftid_tab = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 16
  %18 = ptrtoint ptr %ftid_tab to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ftid_tab, align 64
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %if.end11.if.end47_crit_edge, label %if.then14

if.end11.if.end47_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then14:                                        ; preds = %if.end11
  %nftids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 18
  %20 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nftids, align 8
  %nsftids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 23
  %22 = ptrtoint ptr %nsftids to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nsftids, align 4
  %add = add i32 %23, %21
  %nhpftids22 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 14
  %24 = ptrtoint ptr %nhpftids22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nhpftids22, align 8
  %add23 = add i32 %add, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add23)
  %cmp27213 = icmp ult i32 %25, %add23
  br i1 %cmp27213, label %for.body28.lr.ph, label %if.then14.if.end47_crit_edge

if.then14.if.end47_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

for.body28.lr.ph:                                 ; preds = %if.then14
  %26 = getelementptr inbounds i8, ptr %ctx.i160, i32 4
  %add.ptr.i.i.i.i161 = getelementptr i8, ptr %1, i32 2304
  br label %for.body28

for.body28:                                       ; preds = %for.inc43.for.body28_crit_edge, %for.body28.lr.ph
  %f15.0217 = phi ptr [ %19, %for.body28.lr.ph ], [ %incdec.ptr45, %for.inc43.for.body28_crit_edge ]
  %i.1214 = phi i32 [ %25, %for.body28.lr.ph ], [ %inc44, %for.inc43.for.body28_crit_edge ]
  %27 = ptrtoint ptr %f15.0217 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load29 = load i8, ptr %f15.0217, align 8
  %28 = and i8 %bf.load29, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %for.body28.for.inc43_crit_edge, label %if.then39

for.body28.for.inc43_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43

if.then39:                                        ; preds = %for.body28
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ctx.i160) #11
  %30 = call ptr @memset(ptr %26, i32 255, i32 64)
  %31 = ptrtoint ptr %add.ptr.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i.i.i.i161, align 8
  %flags.i162 = getelementptr inbounds %struct.adapter, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %flags.i162 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i162, align 32
  %and.i163 = and i32 %34, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.not.i164 = icmp eq i32 %and.i163, 0
  br i1 %tobool.not.i164, label %if.end.i168, label %if.then39.cxgb4_del_filter.exit175_crit_edge

if.then39.cxgb4_del_filter.exit175_crit_edge:     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_del_filter.exit175

if.end.i168:                                      ; preds = %if.then39
  %fs40 = getelementptr inbounds %struct.filter_entry, ptr %f15.0217, i32 0, i32 6
  %35 = ptrtoint ptr %ctx.i160 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ctx.i160, align 4
  call void @__init_swait_queue_head(ptr noundef %26, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #11
  %call1.i166 = call i32 @__cxgb4_del_filter(ptr noundef %1, i32 noundef %i.1214, ptr noundef %fs40, ptr noundef nonnull %ctx.i160) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i166)
  %tobool2.not.i167 = icmp eq i32 %call1.i166, 0
  br i1 %tobool2.not.i167, label %if.end4.i171, label %if.end.i168.cxgb4_del_filter.exit175_crit_edge

if.end.i168.cxgb4_del_filter.exit175_crit_edge:   ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_del_filter.exit175

if.end4.i171:                                     ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i169 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %ctx.i160, i32 noundef 1000) #11
  br label %cxgb4_del_filter.exit175

cxgb4_del_filter.exit175:                         ; preds = %if.end4.i171, %if.end.i168.cxgb4_del_filter.exit175_crit_edge, %if.then39.cxgb4_del_filter.exit175_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ctx.i160) #11
  br label %for.inc43

for.inc43:                                        ; preds = %cxgb4_del_filter.exit175, %for.body28.for.inc43_crit_edge
  %inc44 = add i32 %i.1214, 1
  %incdec.ptr45 = getelementptr %struct.filter_entry, ptr %f15.0217, i32 1
  %exitcond.not = icmp eq i32 %inc44, %add23
  br i1 %exitcond.not, label %for.inc43.if.end47_crit_edge, label %for.inc43.for.body28_crit_edge

for.inc43.for.body28_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

for.inc43.if.end47_crit_edge:                     ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end47:                                         ; preds = %for.inc43.if.end47_crit_edge, %if.then14.if.end47_crit_edge, %if.end11.if.end47_crit_edge
  %hash_filter.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 28
  %36 = ptrtoint ptr %hash_filter.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hash_filter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool49.not = icmp eq i8 %37, 0
  br i1 %tobool49.not, label %if.end47.if.end108_crit_edge, label %land.lhs.true

if.end47.if.end108_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

land.lhs.true:                                    ; preds = %if.end47
  %38 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tids, align 128
  %tobool51.not = icmp eq ptr %39, null
  br i1 %tobool51.not, label %land.lhs.true.if.end108_crit_edge, label %if.then52

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then52:                                        ; preds = %land.lhs.true
  %hash_base = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 8
  %40 = ptrtoint ptr %hash_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hash_base, align 32
  %ntids = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 2
  %42 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ntids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp57.not218 = icmp ugt i32 %41, %43
  br i1 %cmp57.not218, label %if.then52.for.end80_crit_edge, label %for.body58.lr.ph

if.then52.for.end80_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end80

for.body58.lr.ph:                                 ; preds = %if.then52
  %44 = getelementptr inbounds i8, ptr %ctx.i176, i32 4
  %add.ptr.i.i.i.i177 = getelementptr i8, ptr %1, i32 2304
  br label %for.body58

for.body58:                                       ; preds = %for.inc78.for.body58_crit_edge, %for.body58.lr.ph
  %i.2219 = phi i32 [ %41, %for.body58.lr.ph ], [ %inc79, %for.inc78.for.body58_crit_edge ]
  %45 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tids, align 128
  %arrayidx61 = getelementptr ptr, ptr %46, i32 %i.2219
  %47 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %48, null
  br i1 %tobool62.not, label %for.body58.for.inc78_crit_edge, label %land.lhs.true63

for.body58.for.inc78_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc78

land.lhs.true63:                                  ; preds = %for.body58
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load64 = load i8, ptr %48, align 8
  %50 = and i8 %bf.load64, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %land.lhs.true63.for.inc78_crit_edge, label %if.then74

land.lhs.true63.for.inc78_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc78

if.then74:                                        ; preds = %land.lhs.true63
  %tid = getelementptr inbounds %struct.filter_entry, ptr %48, i32 0, i32 5
  %52 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tid, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ctx.i176) #11
  %54 = call ptr @memset(ptr %44, i32 255, i32 64)
  %55 = ptrtoint ptr %add.ptr.i.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i.i.i.i177, align 8
  %flags.i178 = getelementptr inbounds %struct.adapter, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %flags.i178 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i178, align 32
  %and.i179 = and i32 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i180 = icmp eq i32 %and.i179, 0
  br i1 %tobool.not.i180, label %if.end.i184, label %if.then74.cxgb4_del_filter.exit191_crit_edge

if.then74.cxgb4_del_filter.exit191_crit_edge:     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_del_filter.exit191

if.end.i184:                                      ; preds = %if.then74
  %fs75 = getelementptr inbounds %struct.filter_entry, ptr %48, i32 0, i32 6
  %59 = ptrtoint ptr %ctx.i176 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %ctx.i176, align 4
  call void @__init_swait_queue_head(ptr noundef %44, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #11
  %call1.i182 = call i32 @__cxgb4_del_filter(ptr noundef %1, i32 noundef %53, ptr noundef %fs75, ptr noundef nonnull %ctx.i176) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i182)
  %tobool2.not.i183 = icmp eq i32 %call1.i182, 0
  br i1 %tobool2.not.i183, label %if.end4.i187, label %if.end.i184.cxgb4_del_filter.exit191_crit_edge

if.end.i184.cxgb4_del_filter.exit191_crit_edge:   ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_del_filter.exit191

if.end4.i187:                                     ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i185 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %ctx.i176, i32 noundef 1000) #11
  br label %cxgb4_del_filter.exit191

cxgb4_del_filter.exit191:                         ; preds = %if.end4.i187, %if.end.i184.cxgb4_del_filter.exit191_crit_edge, %if.then74.cxgb4_del_filter.exit191_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ctx.i176) #11
  br label %for.inc78

for.inc78:                                        ; preds = %cxgb4_del_filter.exit191, %land.lhs.true63.for.inc78_crit_edge, %for.body58.for.inc78_crit_edge
  %inc79 = add i32 %i.2219, 1
  %60 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ntids, align 8
  %cmp57.not = icmp ugt i32 %inc79, %61
  br i1 %cmp57.not, label %for.inc78.for.end80_crit_edge, label %for.inc78.for.body58_crit_edge

for.inc78.for.body58_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body58

for.inc78.for.end80_crit_edge:                    ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end80

for.end80:                                        ; preds = %for.inc78.for.end80_crit_edge, %if.then52.for.end80_crit_edge
  %stid_base = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 48, i32 6
  %62 = ptrtoint ptr %stid_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %stid_base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp83220.not = icmp eq i32 %63, 0
  br i1 %cmp83220.not, label %for.end80.if.end108_crit_edge, label %for.body84.lr.ph

for.end80.if.end108_crit_edge:                    ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

for.body84.lr.ph:                                 ; preds = %for.end80
  %64 = getelementptr inbounds i8, ptr %ctx.i192, i32 4
  %add.ptr.i.i.i.i193 = getelementptr i8, ptr %1, i32 2304
  br label %for.body84

for.body84:                                       ; preds = %for.inc105.for.body84_crit_edge, %for.body84.lr.ph
  %i.3221 = phi i32 [ 0, %for.body84.lr.ph ], [ %inc106, %for.inc105.for.body84_crit_edge ]
  %65 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tids, align 128
  %arrayidx87 = getelementptr ptr, ptr %66, i32 %i.3221
  %67 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq ptr %68, null
  br i1 %tobool88.not, label %for.body84.for.inc105_crit_edge, label %land.lhs.true89

for.body84.for.inc105_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc105

land.lhs.true89:                                  ; preds = %for.body84
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load90 = load i8, ptr %68, align 8
  %70 = and i8 %bf.load90, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %land.lhs.true89.for.inc105_crit_edge, label %if.then100

land.lhs.true89.for.inc105_crit_edge:             ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc105

if.then100:                                       ; preds = %land.lhs.true89
  %tid101 = getelementptr inbounds %struct.filter_entry, ptr %68, i32 0, i32 5
  %72 = ptrtoint ptr %tid101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tid101, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ctx.i192) #11
  %74 = call ptr @memset(ptr %64, i32 255, i32 64)
  %75 = ptrtoint ptr %add.ptr.i.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i.i.i.i193, align 8
  %flags.i194 = getelementptr inbounds %struct.adapter, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %flags.i194 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i194, align 32
  %and.i195 = and i32 %78, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195)
  %tobool.not.i196 = icmp eq i32 %and.i195, 0
  br i1 %tobool.not.i196, label %if.end.i200, label %if.then100.cxgb4_del_filter.exit207_crit_edge

if.then100.cxgb4_del_filter.exit207_crit_edge:    ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_del_filter.exit207

if.end.i200:                                      ; preds = %if.then100
  %fs102 = getelementptr inbounds %struct.filter_entry, ptr %68, i32 0, i32 6
  %79 = ptrtoint ptr %ctx.i192 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %ctx.i192, align 4
  call void @__init_swait_queue_head(ptr noundef %64, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #11
  %call1.i198 = call i32 @__cxgb4_del_filter(ptr noundef %1, i32 noundef %73, ptr noundef %fs102, ptr noundef nonnull %ctx.i192) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i198)
  %tobool2.not.i199 = icmp eq i32 %call1.i198, 0
  br i1 %tobool2.not.i199, label %if.end4.i203, label %if.end.i200.cxgb4_del_filter.exit207_crit_edge

if.end.i200.cxgb4_del_filter.exit207_crit_edge:   ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %cxgb4_del_filter.exit207

if.end4.i203:                                     ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i201 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %ctx.i192, i32 noundef 1000) #11
  br label %cxgb4_del_filter.exit207

cxgb4_del_filter.exit207:                         ; preds = %if.end4.i203, %if.end.i200.cxgb4_del_filter.exit207_crit_edge, %if.then100.cxgb4_del_filter.exit207_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ctx.i192) #11
  br label %for.inc105

for.inc105:                                       ; preds = %cxgb4_del_filter.exit207, %land.lhs.true89.for.inc105_crit_edge, %for.body84.for.inc105_crit_edge
  %inc106 = add nuw i32 %i.3221, 1
  %exitcond222.not = icmp eq i32 %inc106, %63
  br i1 %exitcond222.not, label %for.inc105.if.end108_crit_edge, label %for.inc105.for.body84_crit_edge

for.inc105.for.body84_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body84

for.inc105.if.end108_crit_edge:                   ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.end108:                                        ; preds = %for.inc105.if.end108_crit_edge, %for.end80.if.end108_crit_edge, %land.lhs.true.if.end108_crit_edge, %if.end47.if.end108_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_del_filter(ptr noundef %dev, i32 noundef %filter_id, ptr noundef %fs) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.filter_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ctx) #11
  %0 = getelementptr inbounds i8, ptr %ctx, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %flags = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 32
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ctx, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %ctx, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #11
  %call1 = call i32 @__cxgb4_del_filter(ptr noundef %dev, i32 noundef %filter_id, ptr noundef %fs, ptr noundef nonnull %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %ctx, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.filter_ctx, ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -110, %if.end4.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %8, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ctx) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_filter_exact_match(ptr noundef %adap, ptr noundef %fs) local_unnamed_addr #0 align 64 {
entry:
  %addr6.i301 = alloca ptr, align 4
  %addr6.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_filter_mask2 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 19
  %0 = ptrtoint ptr %hash_filter_mask2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hash_filter_mask2, align 8
  %hash_filter.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 28
  %2 = ptrtoint ptr %hash_filter.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hash_filter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hash_tids_in_use = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hash_tids_in_use, i32 noundef 4) #11
  %4 = ptrtoint ptr %hash_tids_in_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %hash_tids_in_use, align 4
  %tids_in_use = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 36
  %call.i.i297 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tids_in_use, i32 noundef 4) #11
  %6 = ptrtoint ptr %tids_in_use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tids_in_use, align 4
  %add = add i32 %7, %5
  %nhash = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 7
  %8 = ptrtoint ptr %nhash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nhash, align 4
  %stid_base = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 6
  %10 = ptrtoint ptr %stid_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stid_base, align 8
  %tid_base = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 1
  %12 = ptrtoint ptr %tid_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tid_base, align 4
  %sub = add i32 %11, %9
  %add9 = sub i32 %sub, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add9)
  %cmp.not = icmp ult i32 %add, %add9
  br i1 %cmp.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %mask = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %mask, align 4
  %15 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %16 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load15 = load i32, ptr %fs, align 8
  %17 = and i32 %bf.load15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  %fip38 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 7
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr6.i) #11
  %18 = ptrtoint ptr %addr6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fip38, ptr %addr6.i, align 4
  %call.i.i298 = call i32 @__ipv6_addr_type(ptr noundef nonnull %addr6.i) #11
  %and.i.i = and i32 %call.i.i298, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp5.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr6.i) #11
  br i1 %cmp5.i, label %if.then19.cleanup_crit_edge, label %lor.lhs.false

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then19
  %fip22 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7
  %19 = ptrtoint ptr %fip22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fip22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp5.i299 = icmp eq i32 %20, -1
  br i1 %cmp5.i299, label %land.lhs.true.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %arrayidx7.i = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7, i32 4
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp8.i = icmp eq i32 %22, -1
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %arrayidx11.i = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7, i32 8
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp12.i = icmp eq i32 %24, -1
  br i1 %cmp12.i, label %land.lhs.true13.i, label %land.lhs.true9.i.cleanup_crit_edge

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true13.i:                                ; preds = %land.lhs.true9.i
  %arrayidx15.i = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7, i32 12
  %25 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp16.i = icmp eq i32 %26, -1
  br i1 %cmp16.i, label %if.end26, label %land.lhs.true13.i.cleanup_crit_edge

land.lhs.true13.i.cleanup_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true13.i
  %lip = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr6.i301) #11
  %27 = ptrtoint ptr %addr6.i301 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lip, ptr %addr6.i301, align 4
  %call.i.i302 = call i32 @__ipv6_addr_type(ptr noundef nonnull %addr6.i301) #11
  %and.i.i303 = and i32 %call.i.i302, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i303)
  %cmp5.i304 = icmp eq i32 %and.i.i303, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr6.i301) #11
  br i1 %cmp5.i304, label %if.end26.cleanup_crit_edge, label %lor.lhs.false30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false30:                                  ; preds = %if.end26
  %lip32 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6
  %28 = ptrtoint ptr %lip32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lip32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp5.i308 = icmp eq i32 %29, -1
  br i1 %cmp5.i308, label %land.lhs.true.i311, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i311:                               ; preds = %lor.lhs.false30
  %arrayidx7.i309 = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6, i32 4
  %30 = ptrtoint ptr %arrayidx7.i309 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.i309, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp8.i310 = icmp eq i32 %31, -1
  br i1 %cmp8.i310, label %land.lhs.true9.i314, label %land.lhs.true.i311.cleanup_crit_edge

land.lhs.true.i311.cleanup_crit_edge:             ; preds = %land.lhs.true.i311
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true9.i314:                              ; preds = %land.lhs.true.i311
  %arrayidx11.i312 = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6, i32 8
  %32 = ptrtoint ptr %arrayidx11.i312 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11.i312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp12.i313 = icmp eq i32 %33, -1
  br i1 %cmp12.i313, label %land.lhs.true13.i317, label %land.lhs.true9.i314.cleanup_crit_edge

land.lhs.true9.i314.cleanup_crit_edge:            ; preds = %land.lhs.true9.i314
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true13.i317:                             ; preds = %land.lhs.true9.i314
  %arrayidx15.i315 = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6, i32 12
  %34 = ptrtoint ptr %arrayidx15.i315 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx15.i315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp16.i316 = icmp eq i32 %35, -1
  br i1 %cmp16.i316, label %land.lhs.true13.i317.if.end59_crit_edge, label %land.lhs.true13.i317.cleanup_crit_edge

land.lhs.true13.i317.cleanup_crit_edge:           ; preds = %land.lhs.true13.i317
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true13.i317.if.end59_crit_edge:          ; preds = %land.lhs.true13.i317
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.else:                                          ; preds = %if.end14
  %36 = ptrtoint ptr %fip38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fip38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1.i = icmp eq i32 %37, 0
  br i1 %cmp1.i, label %if.else.cleanup_crit_edge, label %lor.lhs.false41

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false41:                                  ; preds = %if.else
  %fip43 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7
  %38 = ptrtoint ptr %fip43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fip43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp1.not.i = icmp eq i32 %39, -1
  br i1 %cmp1.not.i, label %if.end47, label %lor.lhs.false41.cleanup_crit_edge

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false41
  %lip49 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 6
  %40 = ptrtoint ptr %lip49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lip49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp1.i329 = icmp eq i32 %41, 0
  br i1 %cmp1.i329, label %if.end47.cleanup_crit_edge, label %lor.lhs.false52

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false52:                                  ; preds = %if.end47
  %lip54 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6
  %42 = ptrtoint ptr %lip54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lip54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp1.not.i333 = icmp eq i32 %43, -1
  br i1 %cmp1.not.i333, label %lor.lhs.false52.if.end59_crit_edge, label %lor.lhs.false52.cleanup_crit_edge

lor.lhs.false52.cleanup_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false52.if.end59_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.end59:                                         ; preds = %lor.lhs.false52.if.end59_crit_edge, %land.lhs.true13.i317.if.end59_crit_edge
  %lport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 8
  %44 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %lport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool61.not = icmp eq i16 %45, 0
  br i1 %tobool61.not, label %if.end59.cleanup_crit_edge, label %lor.lhs.false62

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false62:                                  ; preds = %if.end59
  %lport64 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 8
  %46 = ptrtoint ptr %lport64 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %lport64, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %47)
  %cmp65.not = icmp eq i16 %47, -1
  br i1 %cmp65.not, label %if.end68, label %lor.lhs.false62.cleanup_crit_edge

lor.lhs.false62.cleanup_crit_edge:                ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68:                                         ; preds = %lor.lhs.false62
  %fport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 9
  %48 = ptrtoint ptr %fport to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %fport, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool70.not = icmp eq i16 %49, 0
  br i1 %tobool70.not, label %if.end68.cleanup_crit_edge, label %lor.lhs.false71

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false71:                                  ; preds = %if.end68
  %fport73 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 9
  %50 = ptrtoint ptr %fport73 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fport73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp75.not = icmp eq i16 %51, -1
  br i1 %cmp75.not, label %if.end78, label %lor.lhs.false71.cleanup_crit_edge

lor.lhs.false71.cleanup_crit_edge:                ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end78:                                         ; preds = %lor.lhs.false71
  %fcoe_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 9
  %52 = ptrtoint ptr %fcoe_shift to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fcoe_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp79 = icmp sgt i32 %53, -1
  br i1 %cmp79, label %if.then81, label %if.end78.if.end88_crit_edge

if.end78.if.end88_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load83 = load i32, ptr %mask, align 4
  %bf.lshr84 = lshr i32 %bf.load83, 1
  %bf.clear85 = and i32 %bf.lshr84, 1
  %conv86 = zext i32 %bf.clear85 to i64
  %sh_prom = zext i32 %53 to i64
  %shl = shl nuw i64 %conv86, %sh_prom
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.end78.if.end88_crit_edge
  %ntuple_mask.0 = phi i64 [ %shl, %if.then81 ], [ 0, %if.end78.if.end88_crit_edge ]
  %port_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 10
  %55 = ptrtoint ptr %port_shift to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp89 = icmp sgt i32 %56, -1
  br i1 %cmp89, label %if.then91, label %if.end88.if.end100_crit_edge

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %iport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load93 = load i32, ptr %iport, align 4
  %bf.lshr94 = lshr i32 %bf.load93, 29
  %conv95 = zext i32 %bf.lshr94 to i64
  %sh_prom97 = zext i32 %56 to i64
  %shl98 = shl i64 %conv95, %sh_prom97
  %or99 = or i64 %shl98, %ntuple_mask.0
  br label %if.end100

if.end100:                                        ; preds = %if.then91, %if.end88.if.end100_crit_edge
  %ntuple_mask.1 = phi i64 [ %or99, %if.then91 ], [ %ntuple_mask.0, %if.end88.if.end100_crit_edge ]
  %vnic_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 11
  %58 = ptrtoint ptr %vnic_shift to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vnic_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp101 = icmp sgt i32 %59, -1
  br i1 %cmp101, label %if.then103, label %if.end100.if.end128_crit_edge

if.end100.if.end128_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then103:                                       ; preds = %if.end100
  %ingress_config = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 7
  %60 = ptrtoint ptr %ingress_config to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ingress_config, align 8
  %and = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool106.not = icmp eq i32 %and, 0
  %62 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load119 = load i32, ptr %mask, align 4
  br i1 %tobool106.not, label %if.else117, label %if.then107

if.then107:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr110 = lshr i32 %bf.load119, 12
  %bf.clear111 = and i32 %bf.lshr110, 1
  %conv112 = zext i32 %bf.clear111 to i64
  %sh_prom114 = zext i32 %59 to i64
  %shl115 = shl nuw i64 %conv112, %sh_prom114
  %or116 = or i64 %shl115, %ntuple_mask.1
  br label %if.end128

if.else117:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr120 = lshr i32 %bf.load119, 13
  %bf.clear121 = and i32 %bf.lshr120, 1
  %conv122 = zext i32 %bf.clear121 to i64
  %sh_prom124 = zext i32 %59 to i64
  %shl125 = shl nuw i64 %conv122, %sh_prom124
  %or126 = or i64 %shl125, %ntuple_mask.1
  br label %if.end128

if.end128:                                        ; preds = %if.else117, %if.then107, %if.end100.if.end128_crit_edge
  %ntuple_mask.2 = phi i64 [ %or116, %if.then107 ], [ %or126, %if.else117 ], [ %ntuple_mask.1, %if.end100.if.end128_crit_edge ]
  %vlan_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 12
  %63 = ptrtoint ptr %vlan_shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vlan_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp129 = icmp sgt i32 %64, -1
  br i1 %cmp129, label %if.then131, label %if.end128.if.end141_crit_edge

if.end128.if.end141_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %ivlan = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 2
  %65 = ptrtoint ptr %ivlan to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load133 = load i32, ptr %ivlan, align 4
  %bf.lshr134 = lshr i32 %bf.load133, 8
  %bf.clear135 = and i32 %bf.lshr134, 65535
  %conv136 = zext i32 %bf.clear135 to i64
  %sh_prom138 = zext i32 %64 to i64
  %shl139 = shl i64 %conv136, %sh_prom138
  %or140 = or i64 %shl139, %ntuple_mask.2
  br label %if.end141

if.end141:                                        ; preds = %if.then131, %if.end128.if.end141_crit_edge
  %ntuple_mask.3 = phi i64 [ %or140, %if.then131 ], [ %ntuple_mask.2, %if.end128.if.end141_crit_edge ]
  %tos_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 13
  %66 = ptrtoint ptr %tos_shift to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tos_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp142 = icmp sgt i32 %67, -1
  br i1 %cmp142, label %if.then144, label %if.end141.if.end154_crit_edge

if.end141.if.end154_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  %tos = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %68 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load146 = load i32, ptr %tos, align 4
  %bf.lshr147 = lshr i32 %bf.load146, 10
  %bf.clear148 = and i32 %bf.lshr147, 255
  %conv149 = zext i32 %bf.clear148 to i64
  %sh_prom151 = zext i32 %67 to i64
  %shl152 = shl i64 %conv149, %sh_prom151
  %or153 = or i64 %shl152, %ntuple_mask.3
  br label %if.end154

if.end154:                                        ; preds = %if.then144, %if.end141.if.end154_crit_edge
  %ntuple_mask.4 = phi i64 [ %or153, %if.then144 ], [ %ntuple_mask.3, %if.end141.if.end154_crit_edge ]
  %protocol_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 14
  %69 = ptrtoint ptr %protocol_shift to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %protocol_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp155 = icmp sgt i32 %70, -1
  br i1 %cmp155, label %if.then157, label %if.end154.if.end167_crit_edge

if.end154.if.end167_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  %proto = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %71 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load159 = load i32, ptr %proto, align 4
  %bf.lshr160 = lshr i32 %bf.load159, 18
  %bf.clear161 = and i32 %bf.lshr160, 255
  %conv162 = zext i32 %bf.clear161 to i64
  %sh_prom164 = zext i32 %70 to i64
  %shl165 = shl i64 %conv162, %sh_prom164
  %or166 = or i64 %shl165, %ntuple_mask.4
  br label %if.end167

if.end167:                                        ; preds = %if.then157, %if.end154.if.end167_crit_edge
  %ntuple_mask.5 = phi i64 [ %or166, %if.then157 ], [ %ntuple_mask.4, %if.end154.if.end167_crit_edge ]
  %ethertype_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 15
  %72 = ptrtoint ptr %ethertype_shift to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ethertype_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp168 = icmp sgt i32 %73, -1
  br i1 %cmp168, label %if.then170, label %if.end167.if.end179_crit_edge

if.end167.if.end179_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load172 = load i32, ptr %mask, align 4
  %bf.lshr173 = lshr i32 %bf.load172, 16
  %conv174 = zext i32 %bf.lshr173 to i64
  %sh_prom176 = zext i32 %73 to i64
  %shl177 = shl i64 %conv174, %sh_prom176
  %or178 = or i64 %shl177, %ntuple_mask.5
  br label %if.end179

if.end179:                                        ; preds = %if.then170, %if.end167.if.end179_crit_edge
  %ntuple_mask.6 = phi i64 [ %or178, %if.then170 ], [ %ntuple_mask.5, %if.end167.if.end179_crit_edge ]
  %macmatch_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 16
  %75 = ptrtoint ptr %macmatch_shift to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %macmatch_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp180 = icmp sgt i32 %76, -1
  br i1 %cmp180, label %if.then182, label %if.end179.if.end192_crit_edge

if.end179.if.end192_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192

if.then182:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load184 = load i32, ptr %mask, align 4
  %bf.lshr185 = lshr i32 %bf.load184, 2
  %bf.clear186 = and i32 %bf.lshr185, 511
  %conv187 = zext i32 %bf.clear186 to i64
  %sh_prom189 = zext i32 %76 to i64
  %shl190 = shl i64 %conv187, %sh_prom189
  %or191 = or i64 %shl190, %ntuple_mask.6
  br label %if.end192

if.end192:                                        ; preds = %if.then182, %if.end179.if.end192_crit_edge
  %ntuple_mask.7 = phi i64 [ %or191, %if.then182 ], [ %ntuple_mask.6, %if.end179.if.end192_crit_edge ]
  %matchtype_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 17
  %78 = ptrtoint ptr %matchtype_shift to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %matchtype_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp193 = icmp sgt i32 %79, -1
  br i1 %cmp193, label %if.then195, label %if.end192.if.end205_crit_edge

if.end192.if.end205_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end205

if.then195:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  %matchtype = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %80 = ptrtoint ptr %matchtype to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load197 = load i32, ptr %matchtype, align 4
  %bf.lshr198 = lshr i32 %bf.load197, 26
  %bf.clear199 = and i32 %bf.lshr198, 7
  %conv200 = zext i32 %bf.clear199 to i64
  %sh_prom202 = zext i32 %79 to i64
  %shl203 = shl i64 %conv200, %sh_prom202
  %or204 = or i64 %shl203, %ntuple_mask.7
  br label %if.end205

if.end205:                                        ; preds = %if.then195, %if.end192.if.end205_crit_edge
  %ntuple_mask.8 = phi i64 [ %or204, %if.then195 ], [ %ntuple_mask.7, %if.end192.if.end205_crit_edge ]
  %frag_shift = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 18
  %81 = ptrtoint ptr %frag_shift to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %frag_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %cmp206 = icmp sgt i32 %82, -1
  br i1 %cmp206, label %if.then208, label %if.end205.if.end218_crit_edge

if.end205.if.end218_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end218

if.then208:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load210 = load i32, ptr %mask, align 4
  %bf.lshr211 = lshr i32 %bf.load210, 15
  %bf.clear212 = and i32 %bf.lshr211, 1
  %conv213 = zext i32 %bf.clear212 to i64
  %sh_prom215 = zext i32 %82 to i64
  %shl216 = shl nuw i64 %conv213, %sh_prom215
  %or217 = or i64 %shl216, %ntuple_mask.8
  br label %if.end218

if.end218:                                        ; preds = %if.then208, %if.end205.if.end218_crit_edge
  %ntuple_mask.9 = phi i64 [ %or217, %if.then208 ], [ %ntuple_mask.8, %if.end205.if.end218_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %ntuple_mask.9, i64 %1)
  %cmp219.not = icmp eq i64 %ntuple_mask.9, %1
  br label %cleanup

cleanup:                                          ; preds = %if.end218, %lor.lhs.false71.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %lor.lhs.false62.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %lor.lhs.false52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true13.i317.cleanup_crit_edge, %land.lhs.true9.i314.cleanup_crit_edge, %land.lhs.true.i311.cleanup_crit_edge, %lor.lhs.false30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %land.lhs.true13.i.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end11.cleanup_crit_edge ], [ false, %lor.lhs.false62.cleanup_crit_edge ], [ false, %if.end59.cleanup_crit_edge ], [ false, %lor.lhs.false71.cleanup_crit_edge ], [ false, %if.end68.cleanup_crit_edge ], [ %cmp219.not, %if.end218 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %land.lhs.true.i.cleanup_crit_edge ], [ false, %land.lhs.true9.i.cleanup_crit_edge ], [ false, %land.lhs.true13.i.cleanup_crit_edge ], [ false, %lor.lhs.false30.cleanup_crit_edge ], [ false, %land.lhs.true.i311.cleanup_crit_edge ], [ false, %land.lhs.true9.i314.cleanup_crit_edge ], [ false, %land.lhs.true13.i317.cleanup_crit_edge ], [ false, %lor.lhs.false41.cleanup_crit_edge ], [ false, %lor.lhs.false52.cleanup_crit_edge ], [ false, %if.then19.cleanup_crit_edge ], [ false, %if.end26.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ false, %if.end47.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cxgb4_set_filter(ptr noundef %dev, i32 noundef %ftid, ptr noundef %fs, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 8
  %shr = lshr i32 %3, 4
  %and = and i32 %shr, 15
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %fs, align 8
  %5 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %hash_filter.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 28
  %6 = ptrtoint ptr %hash_filter.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hash_filter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %tids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48
  tail call fastcc void @fill_default_mask(ptr noundef %fs) #11
  %call2.i = tail call fastcc i32 @validate_filter(ptr noundef %dev, ptr noundef %fs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.cleanup288_crit_edge

if.then3.cleanup288_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.end.i:                                         ; preds = %if.then3
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i.i, align 8
  %10 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i.i = load i32, ptr %fs, align 8
  %11 = and i32 %bf.load.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %12 = and i32 %bf.load.i.i, 16760832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.end5.i_crit_edge, label %if.then.i.i.cleanup288_crit_edge

if.then.i.i.cleanup288_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.then.i.i.if.end5.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.else.i.i:                                      ; preds = %if.end.i
  %bf.lshr8.i.i = lshr i32 %bf.load.i.i, 14
  %bf.clear9.i.i = and i32 %bf.lshr8.i.i, 1023
  %nqsets.i.i = getelementptr i8, ptr %dev, i32 2328
  %13 = ptrtoint ptr %nqsets.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nqsets.i.i, align 8
  %conv.i.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear9.i.i, i32 %conv.i.i)
  %cmp.i.i = icmp ult i32 %bf.clear9.i.i, %conv.i.i
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.else.i.i.if.end5.i_crit_edge

if.else.i.i.if.end5.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %first_qset.i.i = getelementptr i8, ptr %dev, i32 2329
  %15 = ptrtoint ptr %first_qset.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %first_qset.i.i, align 1
  %conv12.i.i = zext i8 %16 to i32
  %add.i.i = add nuw nsw i32 %bf.clear9.i.i, %conv12.i.i
  %abs_id.i.i = getelementptr %struct.adapter, ptr %9, i32 0, i32 22, i32 3, i32 %add.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %abs_id.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %abs_id.i.i, align 2
  %conv16.i.i = zext i16 %18 to i32
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then11.i.i, %if.else.i.i.if.end5.i_crit_edge, %if.then.i.i.if.end5.i_crit_edge
  %iq.1.i.i = phi i32 [ 0, %if.then.i.i.if.end5.i_crit_edge ], [ %conv16.i.i, %if.then11.i.i ], [ %bf.clear9.i.i, %if.else.i.i.if.end5.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 224) #14
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cleanup288_crit_edge, label %if.end9.i

if.end5.i.cleanup288_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.end9.i:                                        ; preds = %if.end5.i
  %fs10.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6
  %20 = call ptr @memcpy(ptr %fs10.i, ptr %fs, i32 200)
  %ctx11.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %ctx11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ctx, ptr %ctx11.i, align 4
  %dev12.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %dev12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev12.i, align 8
  %23 = ptrtoint ptr %fs10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load i32, ptr %fs10.i, align 8
  %bf.value.i = shl nuw nsw i32 %iq.1.i.i, 14
  %bf.shl.i = and i32 %bf.value.i, 16760832
  %bf.clear.i = and i32 %bf.load.i, -16760833
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %fs10.i, align 8
  %24 = and i32 %bf.load.i, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %if.end9.i.if.end35.i_crit_edge, label %if.then23.i

if.end9.i.if.end35.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then23.i:                                      ; preds = %if.end9.i
  %vlan.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vlan.i, align 8
  %bf.lshr27.i = lshr i32 %bf.load.i, 10
  %28 = trunc i32 %bf.lshr27.i to i8
  %conv.i420 = and i8 %28, 3
  %dmac.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %call30.i = tail call ptr @t4_l2t_alloc_switching(ptr noundef %1, i16 noundef zeroext %27, i8 noundef zeroext %conv.i420, ptr noundef %dmac.i) #11
  %l2t.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %l2t.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call30.i, ptr %l2t.i, align 8
  %tobool32.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool32.not.i, label %if.then23.i.out_err.i_crit_edge, label %if.then23.i.if.end35.i_crit_edge

if.then23.i.if.end35.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then23.i.out_err.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i

if.end35.i:                                       ; preds = %if.then23.i.if.end35.i_crit_edge, %if.end9.i.if.end35.i_crit_edge
  %30 = ptrtoint ptr %fs10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load37.i = load i32, ptr %fs10.i, align 8
  %31 = and i32 %bf.load37.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool40.not.i = icmp eq i32 %31, 0
  br i1 %tobool40.not.i, label %if.end35.i.if.end56.i_crit_edge, label %if.then41.i

if.end35.i.if.end56.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i

if.then41.i:                                      ; preds = %if.end35.i
  %32 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev12.i, align 8
  %smac.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %call45.i = tail call ptr @cxgb4_smt_alloc_switching(ptr noundef %33, ptr noundef %smac.i) #11
  %smt.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %smt.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call45.i, ptr %smt.i, align 4
  %tobool47.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool47.not.i, label %if.then48.i, label %if.then41.i.if.end56.i_crit_edge

if.then41.i.if.end56.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i

if.then48.i:                                      ; preds = %if.then41.i
  %l2t49.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %l2t49.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %l2t49.i, align 8
  %tobool50.not.i = icmp eq ptr %36, null
  br i1 %tobool50.not.i, label %if.then48.i.free_l2t.i_crit_edge, label %if.then51.i

if.then48.i.free_l2t.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_l2t.i

if.then51.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cxgb4_l2t_release(ptr noundef nonnull %36) #11
  %37 = ptrtoint ptr %l2t49.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %l2t49.i, align 8
  br label %free_l2t.i

if.end56.i:                                       ; preds = %if.then41.i.if.end56.i_crit_edge, %if.end35.i.if.end56.i_crit_edge
  %call57.i = tail call i32 @cxgb4_alloc_atid(ptr noundef %tids.i, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.end56.i.free_smt.i_crit_edge, label %if.end61.i

if.end56.i.free_smt.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_smt.i

if.end61.i:                                       ; preds = %if.end56.i
  %ingress_config.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 7
  %38 = ptrtoint ptr %ingress_config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ingress_config.i, align 8
  %and.i = and i32 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool62.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool62.not.i, label %if.else.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  %val.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %pf.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %40 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load64.i = load i32, ptr %pf.i, align 4
  %41 = shl i32 %bf.load64.i, 11
  %shl.i = and i32 %41, 57344
  %vf.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 2
  %42 = ptrtoint ptr %vf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load68.i = load i32, ptr %vf.i, align 4
  %bf.lshr69.i = lshr i32 %bf.load68.i, 24
  %or.i = or i32 %shl.i, %bf.lshr69.i
  %val71.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11
  %ovlan.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11, i32 3
  %43 = trunc i32 %or.i to i16
  %44 = ptrtoint ptr %ovlan.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %ovlan.i, align 8
  %mask.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %pf72.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %45 = ptrtoint ptr %pf72.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load73.i = load i32, ptr %pf72.i, align 4
  %46 = shl i32 %bf.load73.i, 11
  %shl76.i = and i32 %46, 57344
  %vf78.i = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 2
  %47 = ptrtoint ptr %vf78.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load79.i = load i32, ptr %vf78.i, align 4
  %bf.lshr80.i = lshr i32 %bf.load79.i, 24
  %or81.i = or i32 %shl76.i, %bf.lshr80.i
  %mask83.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 12
  %ovlan84.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 12, i32 3
  %48 = trunc i32 %or81.i to i16
  %49 = ptrtoint ptr %ovlan84.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %ovlan84.i, align 8
  %50 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load87.i = load i32, ptr %val.i, align 4
  %51 = ptrtoint ptr %val71.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load92.i = load i32, ptr %val71.i, align 4
  %52 = shl i32 %bf.load87.i, 1
  %bf.shl94.i = and i32 %52, 8192
  %bf.clear95.i = and i32 %bf.load92.i, -8193
  %bf.set96.i = or i32 %bf.clear95.i, %bf.shl94.i
  store i32 %bf.set96.i, ptr %val71.i, align 4
  %53 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load98.i = load i32, ptr %mask.i, align 4
  %54 = ptrtoint ptr %mask83.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load103.i = load i32, ptr %mask83.i, align 4
  %55 = shl i32 %bf.load98.i, 1
  %bf.shl105.i = and i32 %55, 8192
  %bf.clear106.i = and i32 %bf.load103.i, -8193
  %bf.set107.i = or i32 %bf.clear106.i, %bf.shl105.i
  store i32 %bf.set107.i, ptr %mask83.i, align 4
  br label %if.end154.i

if.else.i:                                        ; preds = %if.end61.i
  %and108.i = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %if.else.i.if.end154.i_crit_edge, label %if.then110.i

if.else.i.if.end154.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154.i

if.then110.i:                                     ; preds = %if.else.i
  %val112.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11
  %56 = ptrtoint ptr %val112.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load113.i = load i32, ptr %val112.i, align 4
  %57 = and i32 %bf.load113.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool116.not.i = icmp eq i32 %57, 0
  br i1 %tobool116.not.i, label %if.then110.i.if.end154.i_crit_edge, label %if.then117.i

if.then110.i.if.end154.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154.i

if.then117.i:                                     ; preds = %if.then110.i
  %58 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev12.i, align 8
  %viid.i = getelementptr i8, ptr %59, i32 2308
  %60 = ptrtoint ptr %viid.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %viid.i, align 4
  %conv121.i = zext i16 %61 to i32
  %vni.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11, i32 5
  %62 = ptrtoint ptr %vni.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 3)
  %bf.load124.i = load i24, ptr %vni.i, align 4
  %bf.cast.i = zext i24 %bf.load124.i to i32
  %vni127.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 12, i32 5
  %63 = ptrtoint ptr %vni127.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 3)
  %bf.load128.i = load i24, ptr %vni127.i, align 4
  %bf.cast129.i = zext i24 %bf.load128.i to i32
  %call130.i = tail call i32 @t4_alloc_encap_mac_filt(ptr noundef %1, i32 noundef %conv121.i, ptr noundef nonnull @cxgb4_set_hash_filter.match_all_mac, ptr noundef nonnull @cxgb4_set_hash_filter.match_all_mac, i32 noundef %bf.cast.i, i32 noundef %bf.cast129.i, i8 noundef zeroext 0, i8 noundef zeroext 1, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %cmp131.i = icmp slt i32 %call130.i, 0
  br i1 %cmp131.i, label %if.then117.i.free_atid.i_crit_edge, label %cleanup.thread.i

if.then117.i.free_atid.i_crit_edge:               ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_atid.i

cleanup.thread.i:                                 ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #13
  %mask126.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 12
  %ovlan137.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11, i32 3
  %64 = trunc i32 %call130.i to i16
  %65 = ptrtoint ptr %ovlan137.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %ovlan137.i, align 8
  %ovlan141.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 12, i32 3
  %66 = ptrtoint ptr %ovlan141.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %ovlan141.i, align 8
  %67 = ptrtoint ptr %val112.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load144.i = load i32, ptr %val112.i, align 4
  %bf.set146.i = or i32 %bf.load144.i, 8192
  store i32 %bf.set146.i, ptr %val112.i, align 4
  %68 = ptrtoint ptr %mask126.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load149.i = load i32, ptr %mask126.i, align 4
  %bf.set151.i = or i32 %bf.load149.i, 8192
  store i32 %bf.set151.i, ptr %mask126.i, align 4
  br label %if.end154.i

if.end154.i:                                      ; preds = %cleanup.thread.i, %if.then110.i.if.end154.i_crit_edge, %if.else.i.if.end154.i_crit_edge, %if.then63.i
  %69 = ptrtoint ptr %fs10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load156.i = load i32, ptr %fs10.i, align 8
  %70 = and i32 %bf.load156.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool159.not.i = icmp eq i32 %70, 0
  br i1 %tobool159.not.i, label %if.else175.i, label %if.then160.i

if.then160.i:                                     ; preds = %if.end154.i
  %71 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev12.i, align 8
  %lip.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11, i32 6
  %call164.i = tail call i32 @cxgb4_clip_get(ptr noundef %72, ptr noundef %lip.i, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %if.end167.i, label %if.then160.i.free_mps.i_crit_edge

if.then160.i.free_mps.i_crit_edge:                ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_mps.i

if.end167.i:                                      ; preds = %if.then160.i
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool169.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool169.not.i, label %if.then170.i, label %if.end171.i

if.then170.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev12.i, align 8
  tail call void @cxgb4_clip_release(ptr noundef %74, ptr noundef %lip.i, i8 noundef zeroext 1) #11
  br label %free_mps.i

if.end171.i:                                      ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #13
  %abs_id.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 12
  %75 = ptrtoint ptr %abs_id.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %abs_id.i, align 2
  %conv172.i = zext i16 %76 to i32
  %shl173.i = shl nuw nsw i32 %conv172.i, 14
  %or174.i = or i32 %shl173.i, %call57.i
  tail call fastcc void @mk_act_open_req6(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call.i.i, i32 noundef %or174.i) #11
  br label %if.end186.i

if.else175.i:                                     ; preds = %if.end154.i
  %call.i340.i = tail call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool177.not.i = icmp eq ptr %call.i340.i, null
  br i1 %tobool177.not.i, label %if.else175.i.free_mps.i_crit_edge, label %if.end179.i

if.else175.i.free_mps.i_crit_edge:                ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_mps.i

if.end179.i:                                      ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #13
  %abs_id182.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 12
  %77 = ptrtoint ptr %abs_id182.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %abs_id182.i, align 2
  %conv183.i = zext i16 %78 to i32
  %shl184.i = shl nuw nsw i32 %conv183.i, 14
  %or185.i = or i32 %shl184.i, %call57.i
  tail call fastcc void @mk_act_open_req(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call.i340.i, i32 noundef %or185.i) #11
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.end179.i, %if.end171.i
  %skb.0.i = phi ptr [ %call.i.i, %if.end171.i ], [ %call.i340.i, %if.end179.i ]
  %79 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load187.i = load i8, ptr %call7.i.i.i, align 8
  %bf.set189.i = or i8 %bf.load187.i, 32
  store i8 %bf.set189.i, ptr %call7.i.i.i, align 8
  %iport.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11, i32 1
  %80 = ptrtoint ptr %iport.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load192.i = load i32, ptr %iport.i, align 8
  %sh.diff.i = lshr i32 %bf.load192.i, 28
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i16
  %81 = and i16 %tr.sh.diff.i, 6
  %conv.i341.i = or i16 %81, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 10
  %82 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i341.i, ptr %queue_mapping1.i.i.i, align 8
  %call195.i = tail call i32 @t4_ofld_send(ptr noundef %1, ptr noundef nonnull %skb.0.i) #11
  br label %cleanup288

free_mps.i:                                       ; preds = %if.else175.i.free_mps.i_crit_edge, %if.then170.i, %if.then160.i.free_mps.i_crit_edge
  %ret.0.i = phi i32 [ %call164.i, %if.then160.i.free_mps.i_crit_edge ], [ -12, %if.then170.i ], [ -12, %if.else175.i.free_mps.i_crit_edge ]
  %val201.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11
  %83 = ptrtoint ptr %val201.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load202.i = load i32, ptr %val201.i, align 4
  %84 = and i32 %bf.load202.i, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %84)
  %.not.i = icmp eq i32 %84, 10240
  br i1 %.not.i, label %if.then212.i, label %free_mps.i.free_atid.i_crit_edge

free_mps.i.free_atid.i_crit_edge:                 ; preds = %free_mps.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_atid.i

if.then212.i:                                     ; preds = %free_mps.i
  call void @__sanitizer_cov_trace_pc() #13
  %viid213.i = getelementptr i8, ptr %dev, i32 2308
  %85 = ptrtoint ptr %viid213.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %viid213.i, align 4
  %conv214.i = zext i16 %86 to i32
  %ovlan217.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 11, i32 3
  %87 = ptrtoint ptr %ovlan217.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load218.i = load i16, ptr %ovlan217.i, align 8
  %bf.cast219.i = zext i16 %bf.load218.i to i32
  %call220.i = tail call i32 @t4_free_encap_mac_filt(ptr noundef %1, i32 noundef %conv214.i, i32 noundef %bf.cast219.i, i1 noundef zeroext true) #11
  br label %free_atid.i

free_atid.i:                                      ; preds = %if.then212.i, %free_mps.i.free_atid.i_crit_edge, %if.then117.i.free_atid.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.then212.i ], [ %ret.0.i, %free_mps.i.free_atid.i_crit_edge ], [ %call130.i, %if.then117.i.free_atid.i_crit_edge ]
  tail call void @cxgb4_free_atid(ptr noundef %tids.i, i32 noundef %call57.i) #11
  br label %free_smt.i

free_smt.i:                                       ; preds = %free_atid.i, %if.end56.i.free_smt.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %free_atid.i ], [ %call57.i, %if.end56.i.free_smt.i_crit_edge ]
  %smt222.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %smt222.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %smt222.i, align 4
  %tobool223.not.i = icmp eq ptr %89, null
  br i1 %tobool223.not.i, label %free_smt.i.free_l2t.i_crit_edge, label %if.then224.i

free_smt.i.free_l2t.i_crit_edge:                  ; preds = %free_smt.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_l2t.i

if.then224.i:                                     ; preds = %free_smt.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cxgb4_smt_release(ptr noundef nonnull %89) #11
  %90 = ptrtoint ptr %smt222.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %smt222.i, align 4
  br label %free_l2t.i

free_l2t.i:                                       ; preds = %if.then224.i, %free_smt.i.free_l2t.i_crit_edge, %if.then51.i, %if.then48.i.free_l2t.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %if.then224.i ], [ %ret.2.i, %free_smt.i.free_l2t.i_crit_edge ], [ -12, %if.then51.i ], [ -12, %if.then48.i.free_l2t.i_crit_edge ]
  %l2t228.i = getelementptr inbounds %struct.filter_entry, ptr %call7.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %l2t228.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %l2t228.i, align 8
  %tobool229.not.i = icmp eq ptr %92, null
  br i1 %tobool229.not.i, label %free_l2t.i.out_err.i_crit_edge, label %if.then230.i

free_l2t.i.out_err.i_crit_edge:                   ; preds = %free_l2t.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err.i

if.then230.i:                                     ; preds = %free_l2t.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cxgb4_l2t_release(ptr noundef nonnull %92) #11
  %93 = ptrtoint ptr %l2t228.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %l2t228.i, align 8
  br label %out_err.i

out_err.i:                                        ; preds = %if.then230.i, %free_l2t.i.out_err.i_crit_edge, %if.then23.i.out_err.i_crit_edge
  %ret.4.i = phi i32 [ %ret.3.i, %if.then230.i ], [ %ret.3.i, %free_l2t.i.out_err.i_crit_edge ], [ -12, %if.then23.i.out_err.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup288

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__cxgb4_set_filter) #15
  br label %cleanup288

if.end5:                                          ; preds = %entry
  %tids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48
  %nftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 18
  %94 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nftids, align 8
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 14
  %96 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nhpftids, align 8
  %add = add i32 %97, %95
  %nsftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 23
  %98 = ptrtoint ptr %nsftids to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nsftids, align 4
  %add8 = add i32 %99, -1
  %sub = add i32 %add8, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %ftid)
  %cmp.not = icmp eq i32 %sub, %ftid
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %ftid)
  %cmp9.not = icmp ugt i32 %add, %ftid
  %or.cond = or i1 %cmp.not, %cmp9.not
  br i1 %or.cond, label %if.end11, label %if.end5.cleanup288_crit_edge

if.end5.cleanup288_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.end11:                                         ; preds = %if.end5
  tail call fastcc void @fill_default_mask(ptr noundef %fs)
  %call12 = tail call fastcc i32 @validate_filter(ptr noundef %dev, ptr noundef %fs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup288_crit_edge

if.end11.cleanup288_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.end15:                                         ; preds = %if.end11
  %100 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i.i.i, align 8
  %102 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load.i422 = load i32, ptr %fs, align 8
  %103 = and i32 %bf.load.i422, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i423 = icmp eq i32 %103, 0
  br i1 %tobool.not.i423, label %if.then.i, label %if.else.i425

if.then.i:                                        ; preds = %if.end15
  %104 = and i32 %bf.load.i422, 16760832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool4.not.i = icmp eq i32 %104, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end19_crit_edge, label %if.then.i.cleanup288_crit_edge

if.then.i.cleanup288_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.then.i.if.end19_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else.i425:                                     ; preds = %if.end15
  %bf.lshr8.i = lshr i32 %bf.load.i422, 14
  %bf.clear9.i = and i32 %bf.lshr8.i, 1023
  %nqsets.i = getelementptr i8, ptr %dev, i32 2328
  %105 = ptrtoint ptr %nqsets.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %nqsets.i, align 8
  %conv.i424 = zext i8 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear9.i, i32 %conv.i424)
  %cmp.i = icmp ult i32 %bf.clear9.i, %conv.i424
  br i1 %cmp.i, label %if.then11.i, label %if.else.i425.if.end19_crit_edge

if.else.i425.if.end19_crit_edge:                  ; preds = %if.else.i425
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then11.i:                                      ; preds = %if.else.i425
  call void @__sanitizer_cov_trace_pc() #13
  %first_qset.i = getelementptr i8, ptr %dev, i32 2329
  %107 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %first_qset.i, align 1
  %conv12.i = zext i8 %108 to i32
  %add.i = add nuw nsw i32 %bf.clear9.i, %conv12.i
  %abs_id.i426 = getelementptr %struct.adapter, ptr %101, i32 0, i32 22, i32 3, i32 %add.i, i32 0, i32 12
  %109 = ptrtoint ptr %abs_id.i426 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %abs_id.i426, align 2
  %conv16.i = zext i16 %110 to i32
  br label %if.end19

if.end19:                                         ; preds = %if.then11.i, %if.else.i425.if.end19_crit_edge, %if.then.i.if.end19_crit_edge
  %iq.1.i = phi i32 [ 0, %if.then.i.if.end19_crit_edge ], [ %conv16.i, %if.then11.i ], [ %bf.clear9.i, %if.else.i425.if.end19_crit_edge ]
  %111 = and i32 %bf.load.i422, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool23.not = icmp eq i32 %111, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_tab = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 12
  br label %if.end31

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_tab = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 16
  %112 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nhpftids, align 8
  %sub30 = sub i32 %ftid, %113
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24
  %filter_id.0 = phi i32 [ %ftid, %if.then24 ], [ %sub30, %if.else ]
  %tab.0.in = phi ptr [ %hpftid_tab, %if.then24 ], [ %ftid_tab, %if.else ]
  %114 = ptrtoint ptr %tab.0.in to i32
  call void @__asan_load4_noabort(i32 %114)
  %tab.0 = load ptr, ptr %tab.0.in, align 16
  %115 = and i32 %bf.load.i422, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp35 = icmp eq i32 %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp37 = icmp ult i32 %and, 6
  br i1 %cmp35, label %if.then36, label %if.else60

if.then36:                                        ; preds = %if.end31
  %fidx.0.v = select i1 %cmp37, i32 -4, i32 -2
  %fidx.0 = and i32 %filter_id.0, %fidx.0.v
  call void @__sanitizer_cov_trace_cmp4(i32 %fidx.0, i32 %filter_id.0)
  %cmp43.not = icmp eq i32 %fidx.0, %filter_id.0
  br i1 %cmp43.not, label %if.then36.if.end103_crit_edge, label %land.lhs.true44

if.then36.if.end103_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

land.lhs.true44:                                  ; preds = %if.then36
  %fs46 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %fidx.0, i32 6
  %116 = ptrtoint ptr %fs46 to i32
  call void @__asan_load4_noabort(i32 %116)
  %bf.load47 = load i32, ptr %fs46, align 8
  %117 = and i32 %bf.load47, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool50.not = icmp eq i32 %117, 0
  br i1 %tobool50.not, label %land.lhs.true44.if.end103_crit_edge, label %if.then51

land.lhs.true44.if.end103_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then51:                                        ; preds = %land.lhs.true44
  %arrayidx45 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %fidx.0
  %118 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load53 = load i8, ptr %arrayidx45, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load53)
  %tobool55.not = icmp sgt i8 %bf.load53, -1
  br i1 %tobool55.not, label %if.then51.if.end103_crit_edge, label %do.end

if.then51.if.end103_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %119 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev_dev, align 16
  %add57 = add i32 %fidx.0, 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.1, i32 noundef %fidx.0, i32 noundef %add57) #15
  br label %cleanup288

if.else60:                                        ; preds = %if.end31
  br i1 %cmp37, label %if.then62, label %if.else85

if.then62:                                        ; preds = %if.else60
  %and63 = and i32 %filter_id.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %for.cond.preheader, label %do.end68

for.cond.preheader:                               ; preds = %if.then62
  %add72 = add i32 %filter_id.0, 4
  %fidx.1 = add i32 %filter_id.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %fidx.1, i32 %add72)
  %cmp73 = icmp ult i32 %fidx.1, %add72
  br i1 %cmp73, label %for.body, label %for.cond.preheader.if.end103_crit_edge

for.cond.preheader.if.end103_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

do.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %pdev_dev69 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %121 = ptrtoint ptr %pdev_dev69 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdev_dev69, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.6) #15
  br label %cleanup288

for.body:                                         ; preds = %for.cond.preheader
  %arrayidx74 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %fidx.1
  %123 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load75 = load i8, ptr %arrayidx74, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load75)
  %tobool78.not = icmp sgt i8 %bf.load75, -1
  br i1 %tobool78.not, label %for.cond.1, label %for.body.do.end82_crit_edge

for.body.do.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

for.cond.1:                                       ; preds = %for.body
  %fidx.1.1 = add i32 %filter_id.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %fidx.1.1, i32 %add72)
  %cmp73.1 = icmp ult i32 %fidx.1.1, %add72
  br i1 %cmp73.1, label %for.body.1, label %for.cond.1.if.end103_crit_edge

for.cond.1.if.end103_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

for.body.1:                                       ; preds = %for.cond.1
  %arrayidx74.1 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %fidx.1.1
  %124 = ptrtoint ptr %arrayidx74.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load75.1 = load i8, ptr %arrayidx74.1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load75.1)
  %tobool78.not.1 = icmp sgt i8 %bf.load75.1, -1
  br i1 %tobool78.not.1, label %for.cond.2, label %for.body.1.do.end82_crit_edge

for.body.1.do.end82_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

for.cond.2:                                       ; preds = %for.body.1
  %fidx.1.2 = add i32 %filter_id.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %fidx.1.2, i32 %add72)
  %cmp73.2 = icmp ult i32 %fidx.1.2, %add72
  br i1 %cmp73.2, label %for.body.2, label %for.cond.2.if.end103_crit_edge

for.cond.2.if.end103_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

for.body.2:                                       ; preds = %for.cond.2
  %arrayidx74.2 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %fidx.1.2
  %125 = ptrtoint ptr %arrayidx74.2 to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load75.2 = load i8, ptr %arrayidx74.2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load75.2)
  %tobool78.not.2 = icmp sgt i8 %bf.load75.2, -1
  br i1 %tobool78.not.2, label %for.cond.3, label %for.body.2.do.end82_crit_edge

for.body.2.do.end82_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

for.cond.3:                                       ; preds = %for.body.2
  %fidx.1.3 = add i32 %filter_id.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fidx.1.3, i32 %add72)
  %cmp73.3 = icmp ult i32 %fidx.1.3, %add72
  br i1 %cmp73.3, label %for.cond.3.do.end82_crit_edge, label %for.cond.3.if.end103_crit_edge

for.cond.3.if.end103_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

for.cond.3.do.end82_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

do.end82:                                         ; preds = %for.cond.3.do.end82_crit_edge, %for.body.2.do.end82_crit_edge, %for.body.1.do.end82_crit_edge, %for.body.do.end82_crit_edge
  %fidx.1.lcssa441 = phi i32 [ %fidx.1, %for.body.do.end82_crit_edge ], [ %fidx.1.1, %for.body.1.do.end82_crit_edge ], [ %fidx.1.2, %for.body.2.do.end82_crit_edge ], [ %fidx.1.3, %for.cond.3.do.end82_crit_edge ]
  %pdev_dev83 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %126 = ptrtoint ptr %pdev_dev83 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdev_dev83, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.9, i32 noundef %fidx.1.lcssa441) #15
  br label %cleanup288

if.else85:                                        ; preds = %if.else60
  %and86 = and i32 %filter_id.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end89, label %if.else85.cleanup288_crit_edge

if.else85.cleanup288_crit_edge:                   ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.end89:                                         ; preds = %if.else85
  %add90 = add nuw i32 %filter_id.0, 1
  %arrayidx91 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %add90
  %128 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load92 = load i8, ptr %arrayidx91, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load92)
  %tobool95.not = icmp sgt i8 %bf.load92, -1
  br i1 %tobool95.not, label %if.end89.if.end103_crit_edge, label %do.end99

if.end89.if.end103_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

do.end99:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.__cxgb4_set_filter, i32 noundef %add90) #15
  br label %cleanup288

if.end103:                                        ; preds = %if.end89.if.end103_crit_edge, %for.cond.3.if.end103_crit_edge, %for.cond.2.if.end103_crit_edge, %for.cond.1.if.end103_crit_edge, %for.cond.preheader.if.end103_crit_edge, %if.then51.if.end103_crit_edge, %land.lhs.true44.if.end103_crit_edge, %if.then36.if.end103_crit_edge
  %arrayidx104 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0
  %129 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load105 = load i8, ptr %arrayidx104, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load105)
  %tobool108.not = icmp sgt i8 %bf.load105, -1
  br i1 %tobool108.not, label %if.end110, label %if.end103.cleanup288_crit_edge

if.end103.cleanup288_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.end110:                                        ; preds = %if.end103
  br i1 %tobool23.not, label %if.else124, label %if.then115

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 15
  %130 = ptrtoint ptr %hpftid_base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hpftid_base, align 4
  %cond = select i1 %cmp35, i32 2, i32 10
  %call123 = tail call fastcc i32 @cxgb4_set_hpftid(ptr noundef %tids, i32 noundef %filter_id.0, i32 noundef %cond)
  br label %if.end134

if.else124:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 19
  %132 = ptrtoint ptr %ftid_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ftid_base, align 4
  %cond132 = select i1 %cmp35, i32 2, i32 10
  %call133 = tail call fastcc i32 @cxgb4_set_ftid(ptr noundef %tids, i32 noundef %filter_id.0, i32 noundef %cond132, i32 noundef %and)
  br label %if.end134

if.end134:                                        ; preds = %if.else124, %if.then115
  %.pn = phi i32 [ %131, %if.then115 ], [ %133, %if.else124 ]
  %ret.0 = phi i32 [ %call123, %if.then115 ], [ %call133, %if.else124 ]
  %fidx.2 = add i32 %.pn, %filter_id.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool135.not = icmp eq i32 %ret.0, 0
  br i1 %tobool135.not, label %if.end137, label %if.end134.cleanup288_crit_edge

if.end134.cleanup288_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

if.end137:                                        ; preds = %if.end134
  %134 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load.i428 = load i8, ptr %arrayidx104, align 8
  %135 = and i8 %bf.load.i428, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i429 = icmp eq i8 %135, 0
  %136 = and i8 %bf.load.i428, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool5.not.i = icmp eq i8 %136, 0
  %..i = select i1 %tobool5.not.i, i32 0, i32 -16
  %retval.0.i430 = select i1 %tobool.not.i429, i32 %..i, i32 -1
  %137 = and i8 %bf.load.i428, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %if.end141, label %if.end137.free_tid_crit_edge

if.end137.free_tid_crit_edge:                     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_tid

if.end141:                                        ; preds = %if.end137
  %139 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %chip, align 8
  %141 = and i32 %140, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %141)
  %cmp.i431.not = icmp eq i32 %141, 96
  br i1 %cmp.i431.not, label %land.lhs.true146, label %if.end141.if.end161_crit_edge

if.end141.if.end161_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

land.lhs.true146:                                 ; preds = %if.end141
  %142 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %142)
  %bf.load147 = load i32, ptr %fs, align 8
  %143 = and i32 %bf.load147, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool150.not = icmp eq i32 %143, 0
  br i1 %tobool150.not, label %land.lhs.true146.if.end161_crit_edge, label %land.lhs.true151

land.lhs.true146.if.end161_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

land.lhs.true151:                                 ; preds = %land.lhs.true146
  %lip = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 6
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %lip) #11
  %and.i433 = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i433)
  %cmp153.not = icmp eq i32 %and.i433, 0
  br i1 %cmp153.not, label %land.lhs.true151.if.end161_crit_edge, label %if.then154

land.lhs.true151.if.end161_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

if.then154:                                       ; preds = %land.lhs.true151
  %call157 = tail call i32 @cxgb4_clip_get(ptr noundef %dev, ptr noundef %lip, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.then154.if.end161_crit_edge, label %if.then154.free_tid_crit_edge

if.then154.free_tid_crit_edge:                    ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_tid

if.then154.if.end161_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

if.end161:                                        ; preds = %if.then154.if.end161_crit_edge, %land.lhs.true151.if.end161_crit_edge, %land.lhs.true146.if.end161_crit_edge, %if.end141.if.end161_crit_edge
  %fs162 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6
  %144 = call ptr @memcpy(ptr %fs162, ptr %fs, i32 200)
  %145 = ptrtoint ptr %fs162 to i32
  call void @__asan_load4_noabort(i32 %145)
  %bf.load164 = load i32, ptr %fs162, align 8
  %bf.value = shl nuw nsw i32 %iq.1.i, 14
  %bf.shl = and i32 %bf.value, 16760832
  %bf.clear165 = and i32 %bf.load164, -16760833
  %bf.set = or i32 %bf.clear165, %bf.shl
  store i32 %bf.set, ptr %fs162, align 8
  %dev166 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 4
  %146 = ptrtoint ptr %dev166 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %dev, ptr %dev166, align 8
  %ingress_config = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 7
  %147 = ptrtoint ptr %ingress_config to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ingress_config, align 8
  %and168 = and i32 %148, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.else216, label %if.then170

if.then170:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  %val171 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %pf = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %149 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %149)
  %bf.load172 = load i32, ptr %pf, align 4
  %150 = shl i32 %bf.load172, 11
  %shl = and i32 %150, 57344
  %vf = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 2
  %151 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %151)
  %bf.load176 = load i32, ptr %vf, align 4
  %bf.lshr177 = lshr i32 %bf.load176, 24
  %or = or i32 %shl, %bf.lshr177
  %val179 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 11
  %ovlan = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 11, i32 3
  %152 = trunc i32 %or to i16
  %153 = ptrtoint ptr %ovlan to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %ovlan, align 4
  %mask = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %pf180 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %154 = ptrtoint ptr %pf180 to i32
  call void @__asan_load4_noabort(i32 %154)
  %bf.load181 = load i32, ptr %pf180, align 4
  %155 = shl i32 %bf.load181, 11
  %shl184 = and i32 %155, 57344
  %vf186 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 2
  %156 = ptrtoint ptr %vf186 to i32
  call void @__asan_load4_noabort(i32 %156)
  %bf.load187 = load i32, ptr %vf186, align 4
  %bf.lshr188 = lshr i32 %bf.load187, 24
  %or189 = or i32 %shl184, %bf.lshr188
  %mask191 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 12
  %ovlan192 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 12, i32 3
  %157 = trunc i32 %or189 to i16
  %158 = ptrtoint ptr %ovlan192 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %ovlan192, align 4
  %159 = ptrtoint ptr %val171 to i32
  call void @__asan_load4_noabort(i32 %159)
  %bf.load195 = load i32, ptr %val171, align 4
  %160 = ptrtoint ptr %val179 to i32
  call void @__asan_load4_noabort(i32 %160)
  %bf.load200 = load i32, ptr %val179, align 4
  %161 = shl i32 %bf.load195, 1
  %bf.shl202 = and i32 %161, 8192
  %bf.clear203 = and i32 %bf.load200, -8193
  %bf.set204 = or i32 %bf.clear203, %bf.shl202
  store i32 %bf.set204, ptr %val179, align 4
  %162 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %162)
  %bf.load206 = load i32, ptr %mask, align 4
  %163 = ptrtoint ptr %mask191 to i32
  call void @__asan_load4_noabort(i32 %163)
  %bf.load211 = load i32, ptr %mask191, align 4
  %164 = shl i32 %bf.load206, 1
  %bf.shl213 = and i32 %164, 8192
  %bf.clear214 = and i32 %bf.load211, -8193
  %bf.set215 = or i32 %bf.clear214, %bf.shl213
  store i32 %bf.set215, ptr %mask191, align 4
  br label %if.end262

if.else216:                                       ; preds = %if.end161
  %and217 = and i32 %148, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.else216.if.end262_crit_edge, label %if.then219

if.else216.if.end262_crit_edge:                   ; preds = %if.else216
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262

if.then219:                                       ; preds = %if.else216
  %val221 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 11
  %165 = ptrtoint ptr %val221 to i32
  call void @__asan_load4_noabort(i32 %165)
  %bf.load222 = load i32, ptr %val221, align 4
  %166 = and i32 %bf.load222, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool225.not = icmp eq i32 %166, 0
  br i1 %tobool225.not, label %if.then219.if.end262_crit_edge, label %if.then226

if.then219.if.end262_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262

if.then226:                                       ; preds = %if.then219
  %viid = getelementptr i8, ptr %dev, i32 2308
  %167 = ptrtoint ptr %viid to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %viid, align 4
  %conv = zext i16 %168 to i32
  %vni = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 11, i32 5
  %169 = ptrtoint ptr %vni to i32
  call void @__asan_loadN_noabort(i32 %169, i32 3)
  %bf.load231 = load i24, ptr %vni, align 4
  %bf.cast232 = zext i24 %bf.load231 to i32
  %vni235 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 12, i32 5
  %170 = ptrtoint ptr %vni235 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 3)
  %bf.load236 = load i24, ptr %vni235, align 4
  %bf.cast237 = zext i24 %bf.load236 to i32
  %call238 = tail call i32 @t4_alloc_encap_mac_filt(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull @__cxgb4_set_filter.match_all_mac, ptr noundef nonnull @__cxgb4_set_filter.match_all_mac, i32 noundef %bf.cast232, i32 noundef %bf.cast237, i8 noundef zeroext 0, i8 noundef zeroext 1, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %if.then226.free_tid_crit_edge, label %cleanup.thread

if.then226.free_tid_crit_edge:                    ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_tid

cleanup.thread:                                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #13
  %mask234 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 12
  %ovlan245 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 11, i32 3
  %171 = trunc i32 %call238 to i16
  %172 = ptrtoint ptr %ovlan245 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %ovlan245, align 4
  %ovlan249 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6, i32 12, i32 3
  %173 = ptrtoint ptr %ovlan249 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 511, ptr %ovlan249, align 4
  %174 = ptrtoint ptr %val221 to i32
  call void @__asan_load4_noabort(i32 %174)
  %bf.load252 = load i32, ptr %val221, align 4
  %bf.set254 = or i32 %bf.load252, 8192
  store i32 %bf.set254, ptr %val221, align 4
  %175 = ptrtoint ptr %mask234 to i32
  call void @__asan_load4_noabort(i32 %175)
  %bf.load257 = load i32, ptr %mask234, align 4
  %bf.set259 = or i32 %bf.load257, 8192
  store i32 %bf.set259, ptr %mask234, align 4
  br label %if.end262

if.end262:                                        ; preds = %cleanup.thread, %if.then219.if.end262_crit_edge, %if.else216.if.end262_crit_edge, %if.then170
  %ctx263 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 1
  %176 = ptrtoint ptr %ctx263 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %ctx, ptr %ctx263, align 4
  %tid = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 5
  %177 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %fidx.2, ptr %tid, align 4
  %call264 = tail call i32 @set_filter_wr(ptr noundef %1, i32 noundef %ftid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end262.cleanup288_crit_edge, label %if.end262.free_tid_crit_edge

if.end262.free_tid_crit_edge:                     ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_tid

if.end262.cleanup288_crit_edge:                   ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup288

free_tid:                                         ; preds = %if.end262.free_tid_crit_edge, %if.then226.free_tid_crit_edge, %if.then154.free_tid_crit_edge, %if.end137.free_tid_crit_edge
  %ret.1 = phi i32 [ %retval.0.i430, %if.end137.free_tid_crit_edge ], [ %call157, %if.then154.free_tid_crit_edge ], [ %call264, %if.end262.free_tid_crit_edge ], [ %call238, %if.then226.free_tid_crit_edge ]
  %fs268 = getelementptr %struct.filter_entry, ptr %tab.0, i32 %filter_id.0, i32 6
  %178 = ptrtoint ptr %fs268 to i32
  call void @__asan_load4_noabort(i32 %178)
  %bf.load269 = load i32, ptr %fs268, align 8
  %179 = and i32 %bf.load269, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool272.not = icmp eq i32 %179, 0
  %180 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %180)
  %bf.load282 = load i32, ptr %fs, align 8
  %181 = and i32 %bf.load282, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool285.not = icmp eq i32 %181, 0
  %cond286 = select i1 %tobool285.not, i32 2, i32 10
  br i1 %tobool272.not, label %if.else280, label %if.then273

if.then273:                                       ; preds = %free_tid
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cxgb4_clear_hpftid(ptr noundef %tids, i32 noundef %filter_id.0, i32 noundef %cond286)
  br label %if.end287

if.else280:                                       ; preds = %free_tid
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cxgb4_clear_ftid(ptr noundef %tids, i32 noundef %filter_id.0, i32 noundef %cond286, i32 noundef %and)
  br label %if.end287

if.end287:                                        ; preds = %if.else280, %if.then273
  tail call void @clear_filter(ptr noundef %1, ptr noundef %arrayidx104)
  br label %cleanup288

cleanup288:                                       ; preds = %if.end287, %if.end262.cleanup288_crit_edge, %if.end134.cleanup288_crit_edge, %if.end103.cleanup288_crit_edge, %do.end99, %if.else85.cleanup288_crit_edge, %do.end82, %do.end68, %do.end, %if.then.i.cleanup288_crit_edge, %if.end11.cleanup288_crit_edge, %if.end5.cleanup288_crit_edge, %if.end, %out_err.i, %if.end186.i, %if.end5.i.cleanup288_crit_edge, %if.then.i.i.cleanup288_crit_edge, %if.then3.cleanup288_crit_edge
  %retval.0 = phi i32 [ -22, %if.end ], [ -22, %do.end ], [ %ret.1, %if.end287 ], [ -22, %do.end68 ], [ -16, %do.end82 ], [ -16, %do.end99 ], [ -7, %if.end5.cleanup288_crit_edge ], [ %call12, %if.end11.cleanup288_crit_edge ], [ -22, %if.else85.cleanup288_crit_edge ], [ -16, %if.end103.cleanup288_crit_edge ], [ %ret.0, %if.end134.cleanup288_crit_edge ], [ 0, %if.end262.cleanup288_crit_edge ], [ %ret.4.i, %out_err.i ], [ 0, %if.end186.i ], [ %call2.i, %if.then3.cleanup288_crit_edge ], [ -12, %if.end5.i.cleanup288_crit_edge ], [ -22, %if.then.i.i.cleanup288_crit_edge ], [ -22, %if.then.i.cleanup288_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_default_mask(ptr noundef %fs) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %iport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %iport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %tobool.not = icmp ult i32 %bf.load, 536870912
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %iport1 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %iport1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load2 = load i32, ptr %iport1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load2)
  %tobool4.not = icmp ult i32 %bf.load2, 536870912
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i32 %bf.load2, -536870912
  %2 = ptrtoint ptr %iport1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bf.set, ptr %iport1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load11 = load i32, ptr %val, align 4
  %4 = and i32 %bf.load11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.end.if.end32_crit_edge, label %land.lhs.true15

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true15:                                  ; preds = %if.end
  %mask16 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %5 = ptrtoint ptr %mask16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load17 = load i32, ptr %mask16, align 4
  %6 = and i32 %bf.load17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool20.not = icmp eq i32 %6, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true15.if.end32_crit_edge

land.lhs.true15.if.end32_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then21:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set31 = or i32 %bf.load17, 2
  %7 = ptrtoint ptr %mask16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.set31, ptr %mask16, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %land.lhs.true15.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %8 = and i32 %bf.load, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool37.not = icmp eq i32 %8, 0
  br i1 %tobool37.not, label %if.end32.if.end57_crit_edge, label %land.lhs.true38

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.lhs.true38:                                  ; preds = %if.end32
  %matchtype40 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %matchtype40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load41 = load i32, ptr %matchtype40, align 4
  %10 = and i32 %bf.load41, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool44.not = icmp eq i32 %10, 0
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true38.if.end57_crit_edge

land.lhs.true38.if.end57_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then45:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set56 = or i32 %bf.load41, 469762048
  %11 = ptrtoint ptr %matchtype40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %bf.set56, ptr %matchtype40, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then45, %land.lhs.true38.if.end57_crit_edge, %if.end32.if.end57_crit_edge
  %12 = and i32 %bf.load11, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool62.not = icmp eq i32 %12, 0
  br i1 %tobool62.not, label %if.end57.if.end80_crit_edge, label %land.lhs.true63

if.end57.if.end80_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

land.lhs.true63:                                  ; preds = %if.end57
  %mask64 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %13 = ptrtoint ptr %mask64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load65 = load i32, ptr %mask64, align 4
  %14 = and i32 %bf.load65, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool68.not = icmp eq i32 %14, 0
  br i1 %tobool68.not, label %if.then69, label %land.lhs.true63.if.end80_crit_edge

land.lhs.true63.if.end80_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then69:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set79 = or i32 %bf.load65, 2044
  %15 = ptrtoint ptr %mask64 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.set79, ptr %mask64, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then69, %land.lhs.true63.if.end80_crit_edge, %if.end57.if.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load11)
  %tobool84.not = icmp ult i32 %bf.load11, 65536
  br i1 %tobool84.not, label %if.end80.if.end100_crit_edge, label %land.lhs.true85

if.end80.if.end100_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

land.lhs.true85:                                  ; preds = %if.end80
  %mask86 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %16 = ptrtoint ptr %mask86 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load87 = load i32, ptr %mask86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load87)
  %tobool89.not = icmp ult i32 %bf.load87, 65536
  br i1 %tobool89.not, label %if.then90, label %land.lhs.true85.if.end100_crit_edge

land.lhs.true85.if.end100_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then90:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set99 = or i32 %bf.load87, -65536
  %17 = ptrtoint ptr %mask86 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bf.set99, ptr %mask86, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then90, %land.lhs.true85.if.end100_crit_edge, %if.end80.if.end100_crit_edge
  %ivlan = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 2
  %18 = ptrtoint ptr %ivlan to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load102 = load i32, ptr %ivlan, align 4
  %19 = and i32 %bf.load102, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool105.not = icmp eq i32 %19, 0
  br i1 %tobool105.not, label %if.end100.if.end125_crit_edge, label %land.lhs.true106

if.end100.if.end125_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

land.lhs.true106:                                 ; preds = %if.end100
  %ivlan108 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %ivlan108 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load109 = load i32, ptr %ivlan108, align 4
  %21 = and i32 %bf.load109, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool112.not = icmp eq i32 %21, 0
  br i1 %tobool112.not, label %if.then113, label %land.lhs.true106.if.end125_crit_edge

land.lhs.true106.if.end125_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then113:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set124 = or i32 %bf.load109, 16776960
  %22 = ptrtoint ptr %ivlan108 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.set124, ptr %ivlan108, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then113, %land.lhs.true106.if.end125_crit_edge, %if.end100.if.end125_crit_edge
  %ovlan = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 3
  %23 = ptrtoint ptr %ovlan to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load127 = load i16, ptr %ovlan, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load127)
  %tobool128.not = icmp eq i16 %bf.load127, 0
  br i1 %tobool128.not, label %if.end125.if.end141_crit_edge, label %land.lhs.true129

if.end125.if.end141_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

land.lhs.true129:                                 ; preds = %if.end125
  %ovlan131 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 3
  %24 = ptrtoint ptr %ovlan131 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load132 = load i16, ptr %ovlan131, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load132)
  %tobool134.not = icmp eq i16 %bf.load132, 0
  br i1 %tobool134.not, label %if.then135, label %land.lhs.true129.if.end141_crit_edge

land.lhs.true129.if.end141_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then135:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %ovlan131 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %ovlan131, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then135, %land.lhs.true129.if.end141_crit_edge, %if.end125.if.end141_crit_edge
  %26 = and i32 %bf.load11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool146.not = icmp eq i32 %26, 0
  br i1 %tobool146.not, label %if.end141.if.end164_crit_edge, label %land.lhs.true147

if.end141.if.end164_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

land.lhs.true147:                                 ; preds = %if.end141
  %mask148 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %27 = ptrtoint ptr %mask148 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load149 = load i32, ptr %mask148, align 4
  %28 = and i32 %bf.load149, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool152.not = icmp eq i32 %28, 0
  br i1 %tobool152.not, label %if.then153, label %land.lhs.true147.if.end164_crit_edge

land.lhs.true147.if.end164_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then153:                                       ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set163 = or i32 %bf.load149, 32768
  %29 = ptrtoint ptr %mask148 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bf.set163, ptr %mask148, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then153, %land.lhs.true147.if.end164_crit_edge, %if.end141.if.end164_crit_edge
  %30 = and i32 %bf.load, 261120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool169.not = icmp eq i32 %30, 0
  br i1 %tobool169.not, label %if.end164.if.end189_crit_edge, label %land.lhs.true170

if.end164.if.end189_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

land.lhs.true170:                                 ; preds = %if.end164
  %tos172 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %tos172 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load173 = load i32, ptr %tos172, align 4
  %32 = and i32 %bf.load173, 261120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool176.not = icmp eq i32 %32, 0
  br i1 %tobool176.not, label %if.then177, label %land.lhs.true170.if.end189_crit_edge

land.lhs.true170.if.end189_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

if.then177:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set188 = or i32 %bf.load173, 261120
  %33 = ptrtoint ptr %tos172 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bf.set188, ptr %tos172, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then177, %land.lhs.true170.if.end189_crit_edge, %if.end164.if.end189_crit_edge
  %34 = and i32 %bf.load, 66846720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool194.not = icmp eq i32 %34, 0
  br i1 %tobool194.not, label %if.end189.if.end214_crit_edge, label %land.lhs.true195

if.end189.if.end214_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

land.lhs.true195:                                 ; preds = %if.end189
  %proto197 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %35 = ptrtoint ptr %proto197 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load198 = load i32, ptr %proto197, align 4
  %36 = and i32 %bf.load198, 66846720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool201.not = icmp eq i32 %36, 0
  br i1 %tobool201.not, label %if.then202, label %land.lhs.true195.if.end214_crit_edge

land.lhs.true195.if.end214_crit_edge:             ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

if.then202:                                       ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set213 = or i32 %bf.load198, 66846720
  %37 = ptrtoint ptr %proto197 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bf.set213, ptr %proto197, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then202, %land.lhs.true195.if.end214_crit_edge, %if.end189.if.end214_crit_edge
  %38 = and i32 %bf.load11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool219.not = icmp eq i32 %38, 0
  br i1 %tobool219.not, label %if.end214.if.end237_crit_edge, label %land.lhs.true220

if.end214.if.end237_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end237

land.lhs.true220:                                 ; preds = %if.end214
  %mask221 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %39 = ptrtoint ptr %mask221 to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load222 = load i32, ptr %mask221, align 4
  %40 = and i32 %bf.load222, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool225.not = icmp eq i32 %40, 0
  br i1 %tobool225.not, label %if.then226, label %land.lhs.true220.if.end237_crit_edge

land.lhs.true220.if.end237_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end237

if.then226:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set236 = or i32 %bf.load222, 4096
  %41 = ptrtoint ptr %mask221 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %bf.set236, ptr %mask221, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then226, %land.lhs.true220.if.end237_crit_edge, %if.end214.if.end237_crit_edge
  %42 = and i32 %bf.load, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool242.not = icmp eq i32 %42, 0
  br i1 %tobool242.not, label %if.end237.if.end262_crit_edge, label %land.lhs.true243

if.end237.if.end262_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262

land.lhs.true243:                                 ; preds = %if.end237
  %pf245 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %pf245 to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load246 = load i32, ptr %pf245, align 4
  %44 = and i32 %bf.load246, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool249.not = icmp eq i32 %44, 0
  br i1 %tobool249.not, label %if.then250, label %land.lhs.true243.if.end262_crit_edge

land.lhs.true243.if.end262_crit_edge:             ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262

if.then250:                                       ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set261 = or i32 %bf.load246, 1020
  %45 = ptrtoint ptr %pf245 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bf.set261, ptr %pf245, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then250, %land.lhs.true243.if.end262_crit_edge, %if.end237.if.end262_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load102)
  %tobool266.not = icmp ult i32 %bf.load102, 16777216
  br i1 %tobool266.not, label %if.end262.for.body.preheader_crit_edge, label %land.lhs.true267

if.end262.for.body.preheader_crit_edge:           ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

land.lhs.true267:                                 ; preds = %if.end262
  %vf269 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 2
  %46 = ptrtoint ptr %vf269 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load270 = load i32, ptr %vf269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load270)
  %tobool272.not = icmp ult i32 %bf.load270, 16777216
  br i1 %tobool272.not, label %if.then273, label %land.lhs.true267.for.body.preheader_crit_edge

land.lhs.true267.for.body.preheader_crit_edge:    ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.then273:                                       ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set283 = or i32 %bf.load270, -16777216
  %47 = ptrtoint ptr %vf269 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bf.set283, ptr %vf269, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then273, %land.lhs.true267.for.body.preheader_crit_edge, %if.end262.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0404 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %fip_mask.0403 = phi i32 [ %or302, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %fip.0402 = phi i32 [ %or297, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %lip_mask.0401 = phi i32 [ %or292, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %lip.0400 = phi i32 [ %or287, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 6, i32 %i.0404
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %49 to i32
  %or287 = or i32 %lip.0400, %conv
  %arrayidx290 = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6, i32 %i.0404
  %50 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx290, align 1
  %conv291 = zext i8 %51 to i32
  %or292 = or i32 %lip_mask.0401, %conv291
  %arrayidx295 = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 7, i32 %i.0404
  %52 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx295, align 1
  %conv296 = zext i8 %53 to i32
  %or297 = or i32 %fip.0402, %conv296
  %arrayidx300 = getelementptr %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7, i32 %i.0404
  %54 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx300, align 1
  %conv301 = zext i8 %55 to i32
  %or302 = or i32 %fip_mask.0403, %conv301
  %inc = add nuw nsw i32 %i.0404, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or287)
  %tobool303.not = icmp ne i32 %or287, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or292)
  %tobool305.not = icmp eq i32 %or292, 0
  %or.cond = select i1 %tobool303.not, i1 %tobool305.not, i1 false
  br i1 %or.cond, label %if.then306, label %for.end.if.end309_crit_edge

for.end.if.end309_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end309

if.then306:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %lip308 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 6
  %56 = call ptr @memset(ptr %lip308, i32 255, i32 16)
  br label %if.end309

if.end309:                                        ; preds = %if.then306, %for.end.if.end309_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or297)
  %tobool310.not = icmp ne i32 %or297, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or302)
  %tobool312.not = icmp eq i32 %or302, 0
  %or.cond399 = select i1 %tobool310.not, i1 %tobool312.not, i1 false
  br i1 %or.cond399, label %if.then313, label %if.end309.if.end317_crit_edge

if.end309.if.end317_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end317

if.then313:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #13
  %fip315 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 7
  %57 = call ptr @memset(ptr %fip315, i32 255, i32 16)
  br label %if.end317

if.end317:                                        ; preds = %if.then313, %if.end309.if.end317_crit_edge
  %lport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 8
  %58 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %lport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool320.not = icmp eq i16 %59, 0
  br i1 %tobool320.not, label %if.end317.if.end328_crit_edge, label %land.lhs.true321

if.end317.if.end328_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end328

land.lhs.true321:                                 ; preds = %if.end317
  %lport323 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 8
  %60 = ptrtoint ptr %lport323 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %lport323, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool324.not = icmp eq i16 %61, 0
  br i1 %tobool324.not, label %if.then325, label %land.lhs.true321.if.end328_crit_edge

land.lhs.true321.if.end328_crit_edge:             ; preds = %land.lhs.true321
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end328

if.then325:                                       ; preds = %land.lhs.true321
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %lport323 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %lport323, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.then325, %land.lhs.true321.if.end328_crit_edge, %if.end317.if.end328_crit_edge
  %fport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 9
  %63 = ptrtoint ptr %fport to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %fport, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool331.not = icmp eq i16 %64, 0
  br i1 %tobool331.not, label %if.end328.if.end339_crit_edge, label %land.lhs.true332

if.end328.if.end339_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339

land.lhs.true332:                                 ; preds = %if.end328
  %fport334 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 9
  %65 = ptrtoint ptr %fport334 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %fport334, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool335.not = icmp eq i16 %66, 0
  br i1 %tobool335.not, label %if.then336, label %land.lhs.true332.if.end339_crit_edge

land.lhs.true332.if.end339_crit_edge:             ; preds = %land.lhs.true332
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339

if.then336:                                       ; preds = %land.lhs.true332
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %fport334 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -1, ptr %fport334, align 2
  br label %if.end339

if.end339:                                        ; preds = %if.then336, %land.lhs.true332.if.end339_crit_edge, %if.end328.if.end339_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @validate_filter(ptr nocapture noundef readonly %dev, ptr nocapture noundef %fs) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %ingress_config = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 7
  %2 = ptrtoint ptr %ingress_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ingress_config, align 8
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %fs, align 8
  %5 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %filter_mask = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 6
  %vlan_pri_map = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 5
  %cond.in = select i1 %tobool.not, ptr %vlan_pri_map, ptr %filter_mask
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  %val = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load5 = load i32, ptr %val, align 4
  %mask = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load8 = load i32, ptr %mask, align 4
  %and.i = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %bf.lshr9402 = or i32 %bf.load8, %bf.load5
  %9 = and i32 %bf.lshr9402, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp ne i32 %9, 0
  %11 = and i1 %tobool.not.i, %10
  br i1 %11, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %iport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load13 = load i32, ptr %iport, align 4
  %bf.lshr14 = lshr i32 %bf.load13, 29
  %iport16 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %iport16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load17 = load i32, ptr %iport16, align 4
  %bf.lshr18 = lshr i32 %bf.load17, 29
  %and.i364 = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i364)
  %tobool.not.i365 = icmp eq i32 %and.i364, 0
  %14 = or i32 %bf.lshr18, %bf.lshr14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp ne i32 %14, 0
  %16 = and i1 %tobool.not.i365, %15
  br i1 %16, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %and.i366 = and i32 %cond, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i366)
  %tobool.not.i367 = icmp eq i32 %and.i366, 0
  %bf.lshr28404 = or i32 %bf.load17, %bf.load13
  %17 = and i32 %bf.lshr28404, 261120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp ne i32 %17, 0
  %19 = and i1 %tobool.not.i367, %18
  br i1 %19, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false31

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false31:                                  ; preds = %lor.lhs.false20
  %and.i368 = and i32 %cond, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i368)
  %tobool.not.i369 = icmp eq i32 %and.i368, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bf.lshr9402)
  %20 = icmp ugt i32 %bf.lshr9402, 65535
  %21 = and i1 %tobool.not.i369, %20
  br i1 %21, label %lor.lhs.false31.cleanup_crit_edge, label %lor.lhs.false39

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false31
  %and.i370 = and i32 %cond, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i370)
  %tobool.not.i371 = icmp eq i32 %and.i370, 0
  %22 = and i32 %bf.lshr9402, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp ne i32 %22, 0
  %24 = and i1 %tobool.not.i371, %23
  br i1 %24, label %lor.lhs.false39.cleanup_crit_edge, label %lor.lhs.false49

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false49:                                  ; preds = %lor.lhs.false39
  %and.i372 = and i32 %cond, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i372)
  %tobool.not.i373 = icmp eq i32 %and.i372, 0
  %25 = and i32 %bf.lshr28404, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp ne i32 %25, 0
  %27 = and i1 %tobool.not.i373, %26
  br i1 %27, label %lor.lhs.false49.cleanup_crit_edge, label %lor.lhs.false60

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false60:                                  ; preds = %lor.lhs.false49
  %and.i374 = and i32 %cond, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i374)
  %tobool.not.i375 = icmp eq i32 %and.i374, 0
  %28 = and i32 %bf.lshr9402, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp ne i32 %28, 0
  %30 = and i1 %tobool.not.i375, %29
  br i1 %30, label %lor.lhs.false60.cleanup_crit_edge, label %lor.lhs.false70

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false70:                                  ; preds = %lor.lhs.false60
  %and.i376 = and i32 %cond, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i376)
  %tobool.not.i377 = icmp eq i32 %and.i376, 0
  %31 = and i32 %bf.lshr28404, 66846720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp ne i32 %31, 0
  %33 = and i1 %tobool.not.i377, %32
  br i1 %33, label %lor.lhs.false70.cleanup_crit_edge, label %lor.lhs.false81

lor.lhs.false70.cleanup_crit_edge:                ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false81:                                  ; preds = %lor.lhs.false70
  %and.i378 = and i32 %cond, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i378)
  %tobool.not.i379 = icmp eq i32 %and.i378, 0
  %34 = and i32 %bf.lshr9402, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp ne i32 %34, 0
  %36 = and i1 %tobool.not.i379, %35
  br i1 %36, label %lor.lhs.false81.cleanup_crit_edge, label %lor.lhs.false91

lor.lhs.false81.cleanup_crit_edge:                ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false91:                                  ; preds = %lor.lhs.false81
  %37 = and i32 %bf.lshr9402, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %tobool.not.i379, %38
  br i1 %39, label %lor.lhs.false91.cleanup_crit_edge, label %lor.lhs.false101

lor.lhs.false91.cleanup_crit_edge:                ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false101:                                 ; preds = %lor.lhs.false91
  %40 = and i32 %bf.lshr9402, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp ne i32 %40, 0
  %42 = and i1 %tobool.not.i379, %41
  br i1 %42, label %lor.lhs.false101.cleanup_crit_edge, label %lor.lhs.false111

lor.lhs.false101.cleanup_crit_edge:               ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false111:                                 ; preds = %lor.lhs.false101
  %and.i384 = and i32 %cond, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i384)
  %tobool.not.i385 = icmp eq i32 %and.i384, 0
  %43 = and i32 %bf.lshr9402, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %44 = icmp ne i32 %43, 0
  %45 = and i1 %tobool.not.i385, %44
  br i1 %45, label %lor.lhs.false111.cleanup_crit_edge, label %if.end

lor.lhs.false111.cleanup_crit_edge:               ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false111
  br i1 %35, label %land.lhs.true, label %lor.lhs.false159

land.lhs.true:                                    ; preds = %if.end
  %46 = and i32 %bf.lshr9402, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %.not = icmp ne i32 %46, 0
  %and.i386 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i386)
  %tobool.not.i387 = icmp eq i32 %and.i386, 0
  %or.cond = select i1 %.not, i1 true, i1 %tobool.not.i387
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end203_crit_edge

land.lhs.true.if.end203_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false159:                                 ; preds = %if.end
  br i1 %38, label %land.lhs.true169, label %lor.lhs.false159.if.end203_crit_edge

lor.lhs.false159.if.end203_crit_edge:             ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

land.lhs.true169:                                 ; preds = %lor.lhs.false159
  %.not422 = xor i1 %41, true
  %and.i386388 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i386388)
  %tobool.not.i387389 = icmp eq i32 %and.i386388, 0
  %or.cond423 = select i1 %.not422, i1 %tobool.not.i387389, i1 false
  br i1 %or.cond423, label %land.lhs.true169.if.end203_crit_edge, label %land.lhs.true169.cleanup_crit_edge

land.lhs.true169.cleanup_crit_edge:               ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true169.if.end203_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

if.end203:                                        ; preds = %land.lhs.true169.if.end203_crit_edge, %lor.lhs.false159.if.end203_crit_edge, %land.lhs.true.if.end203_crit_edge
  %47 = and i32 %bf.load13, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not = icmp eq i32 %47, 0
  br i1 %cmp.not, label %lor.lhs.false208, label %if.end203.cleanup_crit_edge

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false208:                                 ; preds = %if.end203
  %vf = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 2
  %48 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load210 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load210)
  %cmp212 = icmp slt i32 %bf.load210, 0
  br i1 %cmp212, label %lor.lhs.false208.cleanup_crit_edge, label %if.end214

lor.lhs.false208.cleanup_crit_edge:               ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end214:                                        ; preds = %lor.lhs.false208
  %bf.set = and i32 %bf.load17, -993
  %49 = ptrtoint ptr %iport16 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %bf.set, ptr %iport16, align 4
  %vf224 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 2
  %50 = ptrtoint ptr %vf224 to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load225 = load i32, ptr %vf224, align 4
  %bf.set232 = and i32 %bf.load225, 2147483647
  store i32 %bf.set232, ptr %vf224, align 4
  %51 = and i32 %bf.load, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %51)
  %cmp236 = icmp eq i32 %51, 134217728
  br i1 %cmp236, label %land.lhs.true237, label %if.end214.if.end245_crit_edge

if.end214.if.end245_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end245

land.lhs.true237:                                 ; preds = %if.end214
  %bf.lshr239 = lshr i32 %bf.load, 10
  %bf.clear240 = and i32 %bf.lshr239, 3
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 20
  %52 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nports, align 4
  %conv = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear240, i32 %conv)
  %cmp242.not = icmp ult i32 %bf.clear240, %conv
  br i1 %cmp242.not, label %land.lhs.true237.if.end245_crit_edge, label %land.lhs.true237.cleanup_crit_edge

land.lhs.true237.cleanup_crit_edge:               ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true237.if.end245_crit_edge:             ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end245

if.end245:                                        ; preds = %land.lhs.true237.if.end245_crit_edge, %if.end214.if.end245_crit_edge
  %nports251 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 20
  %54 = ptrtoint ptr %nports251 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nports251, align 4
  %conv252 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr14, i32 %conv252)
  %cmp253.not = icmp ult i32 %bf.lshr14, %conv252
  br i1 %cmp253.not, label %if.end256, label %if.end245.cleanup_crit_edge

if.end245.cleanup_crit_edge:                      ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end256:                                        ; preds = %if.end245
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %56 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chip, align 8
  %58 = and i32 %57, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %58)
  %cmp.i = icmp ne i32 %58, 64
  %cmp236.not = xor i1 %cmp236, true
  %brmerge399 = select i1 %cmp.i, i1 true, i1 %cmp236.not
  br i1 %brmerge399, label %if.end256.if.end279_crit_edge, label %land.lhs.true266

if.end256.if.end279_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end279

land.lhs.true266:                                 ; preds = %if.end256
  %bf.lshr268 = lshr i32 %bf.load, 6
  %bf.clear269 = and i32 %bf.lshr268, 3
  %59 = zext i32 %bf.clear269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear269, label %land.lhs.true266.if.end279_crit_edge [
    i32 1, label %land.lhs.true266.cleanup_crit_edge
    i32 3, label %land.lhs.true266.cleanup_crit_edge424
  ]

land.lhs.true266.cleanup_crit_edge424:            ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true266.cleanup_crit_edge:               ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true266.if.end279_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end279

if.end279:                                        ; preds = %land.lhs.true266.if.end279_crit_edge, %if.end256.if.end279_crit_edge
  %60 = and i32 %bf.load5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool284.not = icmp ne i32 %60, 0
  %61 = and i32 %57, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %61)
  %cmp289 = icmp ult i32 %61, 96
  %or.cond400 = select i1 %tobool284.not, i1 %cmp289, i1 false
  %spec.select = select i1 %or.cond400, i32 -95, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end279, %land.lhs.true266.cleanup_crit_edge, %land.lhs.true266.cleanup_crit_edge424, %if.end245.cleanup_crit_edge, %land.lhs.true237.cleanup_crit_edge, %lor.lhs.false208.cleanup_crit_edge, %if.end203.cleanup_crit_edge, %land.lhs.true169.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false111.cleanup_crit_edge, %lor.lhs.false101.cleanup_crit_edge, %lor.lhs.false91.cleanup_crit_edge, %lor.lhs.false81.cleanup_crit_edge, %lor.lhs.false70.cleanup_crit_edge, %lor.lhs.false60.cleanup_crit_edge, %lor.lhs.false49.cleanup_crit_edge, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false31.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false111.cleanup_crit_edge ], [ -95, %lor.lhs.false101.cleanup_crit_edge ], [ -95, %lor.lhs.false91.cleanup_crit_edge ], [ -95, %lor.lhs.false81.cleanup_crit_edge ], [ -95, %lor.lhs.false70.cleanup_crit_edge ], [ -95, %lor.lhs.false60.cleanup_crit_edge ], [ -95, %lor.lhs.false49.cleanup_crit_edge ], [ -95, %lor.lhs.false39.cleanup_crit_edge ], [ -95, %lor.lhs.false31.cleanup_crit_edge ], [ -95, %lor.lhs.false20.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true169.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -34, %lor.lhs.false208.cleanup_crit_edge ], [ -34, %if.end203.cleanup_crit_edge ], [ -34, %land.lhs.true237.cleanup_crit_edge ], [ -34, %if.end245.cleanup_crit_edge ], [ -95, %land.lhs.true266.cleanup_crit_edge ], [ -95, %land.lhs.true266.cleanup_crit_edge424 ], [ %spec.select, %if.end279 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_set_hpftid(ptr noundef %t, i32 noundef %fidx, i32 noundef %family) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ftid_lock = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock) #11
  %hpftid_bmap = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 13
  %0 = ptrtoint ptr %hpftid_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpftid_bmap, align 4
  %div3.i = lshr i32 %fidx, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %fidx, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %family)
  %cmp = icmp eq i32 %family, 2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %3, %4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @bitmap_allocate_region(ptr noundef %1, i32 noundef %fidx, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %if.else, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ 0, %if.else ], [ 0, %if.then2 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_set_ftid(ptr noundef %t, i32 noundef %fidx, i32 noundef %family, i32 noundef %chip_ver) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ftid_lock = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock) #11
  %ftid_bmap = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 17
  %0 = ptrtoint ptr %ftid_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ftid_bmap, align 4
  %div3.i = lshr i32 %fidx, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %fidx, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %family)
  %cmp = icmp eq i32 %family, 2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %3, %4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %chip_ver)
  %cmp4 = icmp ult i32 %chip_ver, 6
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @bitmap_allocate_region(ptr noundef %1, i32 noundef %fidx, i32 noundef 2) #11
  br label %return

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 @bitmap_allocate_region(ptr noundef %1, i32 noundef %fidx, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %if.else8, %if.then5, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ 0, %if.then5 ], [ 0, %if.else8 ], [ 0, %if.then2 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_clip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_alloc_encap_mac_filt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_clear_hpftid(ptr noundef %t, i32 noundef %fidx, i32 noundef %family) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ftid_lock = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %family)
  %cmp = icmp eq i32 %family, 2
  %hpftid_bmap = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 13
  %0 = ptrtoint ptr %hpftid_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpftid_bmap, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i = and i32 %fidx, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %fidx, 5
  %add.ptr.i = getelementptr i32, ptr %1, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bitmap_release_region(ptr noundef %1, i32 noundef %fidx, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_clear_ftid(ptr noundef %t, i32 noundef %fidx, i32 noundef %family, i32 noundef %chip_ver) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ftid_lock = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %family)
  %cmp = icmp eq i32 %family, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_bmap = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 17
  %0 = ptrtoint ptr %ftid_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ftid_bmap, align 4
  %rem.i = and i32 %fidx, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %fidx, 5
  %add.ptr.i = getelementptr i32, ptr %1, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %chip_ver)
  %cmp1 = icmp ult i32 %chip_ver, 6
  %ftid_bmap3 = getelementptr inbounds %struct.tid_info, ptr %t, i32 0, i32 17
  %4 = ptrtoint ptr %ftid_bmap3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ftid_bmap3, align 4
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bitmap_release_region(ptr noundef %5, i32 noundef %fidx, i32 noundef 2) #11
  br label %if.end6

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bitmap_release_region(ptr noundef %5, i32 noundef %fidx, i32 noundef 1) #11
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then2, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cxgb4_del_filter(ptr noundef %dev, i32 noundef %filter_id, ptr noundef readonly %fs, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 8
  %tobool.not = icmp eq ptr %fs, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %fs, align 8
  %5 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %hash_filter.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 28
  %6 = ptrtoint ptr %hash_filter.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hash_filter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call fastcc i32 @cxgb4_del_hash_filter(ptr noundef %dev, i32 noundef %filter_id, ptr noundef %ctx)
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__cxgb4_del_filter) #15
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %nftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 18
  %8 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nftids, align 8
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 14
  %10 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nhpftids, align 8
  %add = add i32 %11, %9
  %nsftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 23
  %12 = ptrtoint ptr %nsftids to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nsftids, align 4
  %add9 = add i32 %13, -1
  %sub = add i32 %add9, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %filter_id)
  %cmp.not = icmp eq i32 %sub, %filter_id
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %filter_id)
  %cmp11.not = icmp ugt i32 %add, %filter_id
  %or.cond = or i1 %cmp.not, %cmp11.not
  br i1 %or.cond, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %filter_id)
  %cmp16 = icmp ugt i32 %11, %filter_id
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_tab = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 12
  %14 = ptrtoint ptr %hpftid_tab to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hpftid_tab, align 16
  %arrayidx = getelementptr %struct.filter_entry, ptr %15, i32 %filter_id
  br label %if.end24

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_tab = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 16
  %16 = ptrtoint ptr %ftid_tab to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ftid_tab, align 64
  %sub22 = sub i32 %filter_id, %11
  %arrayidx23 = getelementptr %struct.filter_entry, ptr %17, i32 %sub22
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %f.0 = phi ptr [ %arrayidx, %if.then17 ], [ %arrayidx23, %if.else ]
  %18 = ptrtoint ptr %f.0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %f.0, align 8
  %19 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %20 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  %..i = select i1 %tobool5.not.i, i32 0, i32 -16
  %retval.0.i = select i1 %tobool.not.i, i32 %..i, i32 -1
  %21 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool31.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool31.not, label %if.end61, label %if.then32

if.then32:                                        ; preds = %if.end28
  %ctx33 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 1
  %23 = ptrtoint ptr %ctx33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ctx, ptr %ctx33, align 4
  %fs34 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 6
  %24 = ptrtoint ptr %fs34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load35 = load i32, ptr %fs34, align 8
  %25 = and i32 %bf.load35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool38.not = icmp eq i32 %25, 0
  %tid50 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 5
  %26 = ptrtoint ptr %tid50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tid50, align 4
  br i1 %tobool38.not, label %if.else48, label %if.then39

if.then39:                                        ; preds = %if.then32
  %hpftid_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 15
  %28 = ptrtoint ptr %hpftid_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hpftid_base, align 4
  %sub42 = sub i32 %27, %29
  %30 = and i32 %bf.load35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool47.not = icmp eq i32 %30, 0
  %ftid_lock.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock.i) #11
  %hpftid_bmap.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 13
  %31 = ptrtoint ptr %hpftid_bmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hpftid_bmap.i, align 4
  br i1 %tobool47.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i.i = and i32 %sub42, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub42, 5
  %add.ptr.i.i = getelementptr i32, ptr %32, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %34, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end59

if.else.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bitmap_release_region(ptr noundef %32, i32 noundef %sub42, i32 noundef 1) #11
  br label %if.end59

if.else48:                                        ; preds = %if.then32
  %ftid_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 19
  %35 = ptrtoint ptr %ftid_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ftid_base, align 4
  %sub52 = sub i32 %27, %36
  %37 = and i32 %bf.load35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool57.not = icmp eq i32 %37, 0
  %ftid_lock.i105 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %ftid_lock.i105) #11
  br i1 %tobool57.not, label %if.then.i112, label %if.else.i113

if.then.i112:                                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_bmap.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 17
  %38 = ptrtoint ptr %ftid_bmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ftid_bmap.i, align 4
  %rem.i.i106 = and i32 %sub52, 31
  %shl.i.i107 = shl nuw i32 1, %rem.i.i106
  %div2.i.i108 = lshr i32 %sub52, 5
  %add.ptr.i.i109 = getelementptr i32, ptr %39, i32 %div2.i.i108
  %neg.i.i110 = xor i32 %shl.i.i107, -1
  %40 = ptrtoint ptr %add.ptr.i.i109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i109, align 4
  %and.i.i111 = and i32 %41, %neg.i.i110
  store i32 %and.i.i111, ptr %add.ptr.i.i109, align 4
  br label %if.end59

if.else.i113:                                     ; preds = %if.else48
  %42 = and i32 %3, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %42)
  %cmp1.i = icmp ult i32 %42, 96
  %ftid_bmap3.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 17
  %43 = ptrtoint ptr %ftid_bmap3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ftid_bmap3.i, align 4
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i113
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bitmap_release_region(ptr noundef %44, i32 noundef %sub52, i32 noundef 2) #11
  br label %if.end59

if.else4.i:                                       ; preds = %if.else.i113
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @bitmap_release_region(ptr noundef %44, i32 noundef %sub52, i32 noundef 1) #11
  br label %if.end59

if.end59:                                         ; preds = %if.else4.i, %if.then2.i, %if.then.i112, %if.else.i, %if.then.i
  %ftid_lock.i105.sink = phi ptr [ %ftid_lock.i, %if.then.i ], [ %ftid_lock.i, %if.else.i ], [ %ftid_lock.i105, %if.then.i112 ], [ %ftid_lock.i105, %if.then2.i ], [ %ftid_lock.i105, %if.else4.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %ftid_lock.i105.sink) #11
  %45 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %filter_id)
  %cmp.i = icmp ugt i32 %46, %filter_id
  br i1 %cmp.i, label %if.then.i114, label %if.else.i115

if.then.i114:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_tab.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 12
  %47 = ptrtoint ptr %hpftid_tab.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hpftid_tab.i, align 16
  %arrayidx.i = getelementptr %struct.filter_entry, ptr %48, i32 %filter_id
  br label %if.end.i

if.else.i115:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %ftid_tab.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 16
  %49 = ptrtoint ptr %ftid_tab.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ftid_tab.i, align 64
  %sub.i = sub i32 %filter_id, %46
  %arrayidx5.i = getelementptr %struct.filter_entry, ptr %50, i32 %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i115, %if.then.i114
  %f.0.i = phi ptr [ %arrayidx.i, %if.then.i114 ], [ %arrayidx5.i, %if.else.i115 ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i116 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i116, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !103

do.body3.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %53 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i117 = getelementptr i8, ptr %54, i32 128
  store ptr %add.ptr.i.i117, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %56, 128
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %tid.i = getelementptr inbounds %struct.filter_entry, ptr %f.0.i, i32 0, i32 5
  %57 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tid.i, align 4
  %abs_id.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 12
  %59 = ptrtoint ptr %abs_id.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %abs_id.i, align 2
  %conv.i118 = zext i16 %60 to i32
  tail call void @t4_mk_filtdelwr(i32 noundef %58, ptr noundef %54, i32 noundef %conv.i118) #11
  %61 = ptrtoint ptr %f.0.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i119 = load i8, ptr %f.0.i, align 8
  %bf.set.i = or i8 %bf.load.i119, 32
  store i8 %bf.set.i, ptr %f.0.i, align 8
  %call9.i = tail call i32 @t4_mgmt_tx(ptr noundef %1, ptr noundef nonnull %call.i.i) #11
  br label %cleanup

if.end61:                                         ; preds = %if.end28
  %tobool62.not = icmp eq ptr %ctx, null
  br i1 %tobool62.not, label %if.end61.cleanup_crit_edge, label %if.then63

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.filter_ctx, ptr %ctx, i32 0, i32 2
  %62 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %result, align 4
  tail call void @complete(ptr noundef nonnull %ctx) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end61.cleanup_crit_edge, %__skb_put.exit.i, %if.end.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end, %if.then4
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ -22, %if.end ], [ -7, %if.end6.cleanup_crit_edge ], [ %retval.0.i, %if.end24.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %if.end61.cleanup_crit_edge ], [ 0, %__skb_put.exit.i ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_del_hash_filter(ptr noundef %dev, i32 noundef %filter_id, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb4_del_hash_filter.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb4_del_hash_filter, %if.then)) #11
          to label %do.end7 [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %nftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 18
  %2 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nftids, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cxgb4_del_hash_filter.__UNIQUE_ID_ddebug658, ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %filter_id, i32 noundef %3) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %tid_base.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 1
  %4 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %filter_id, %5
  %ntids.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 2
  %6 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp.i.not = icmp ult i32 %sub.i, %7
  br i1 %cmp.i.not, label %lookup_tid.exit, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lookup_tid.exit:                                  ; preds = %do.end7
  %8 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tids, align 128
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %filter_id) #15
  br label %cleanup

if.end14:                                         ; preds = %lookup_tid.exit
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %11, align 8
  %13 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %14 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not.i = icmp eq i8 %14, 0
  %..i = select i1 %tobool5.not.i, i32 0, i32 -16
  %retval.0.i94 = select i1 %tobool.not.i, i32 %..i, i32 -1
  %15 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool19.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %ctx22 = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %ctx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctx, ptr %ctx22, align 4
  %bf.set = or i8 %bf.load.i, 32
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.set, ptr %11, align 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %iport = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %19 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load29 = load i32, ptr %iport, align 4
  %sh.diff = lshr i32 %bf.load29, 28
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %20 = and i16 %tr.sh.diff, 6
  %conv.i = or i16 %20, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !103

do.body3.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put.exit:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 128
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %27, 128
  store i32 %add.i, ptr %len9.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 67108864, ptr %25, align 8
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %wr_lo, align 8
  %incdec.ptr = getelementptr %struct.work_request_hdr, ptr %25, i32 1
  %abs_id = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 12
  %31 = ptrtoint ptr %abs_id to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %abs_id, align 2
  %33 = zext i16 %32 to i64
  %add.ptr.i95 = getelementptr %struct.work_request_hdr, ptr %25, i32 1, i32 2
  %34 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 67108864, ptr %incdec.ptr, align 4
  %len.i = getelementptr %struct.work_request_hdr, ptr %25, i32 1, i32 1
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %len.i, align 4
  %36 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2130706432, ptr %add.ptr.i95, align 4
  %len1.i = getelementptr %struct.ulp_txpkt, ptr %incdec.ptr, i32 1, i32 1
  %37 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 24, ptr %len1.i, align 4
  %tid.i = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 5
  %38 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tid.i, align 4
  %or.i = or i32 %39, 83886080
  %ot.i = getelementptr %struct.work_request_hdr, ptr %25, i32 2
  %40 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i, ptr %ot.i, align 8
  %reply_ctrl.i = getelementptr %struct.work_request_hdr, ptr %25, i32 2, i32 1
  %41 = ptrtoint ptr %reply_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -32768, ptr %reply_ctrl.i, align 4
  %word_cookie.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %incdec.ptr, i32 0, i32 3
  %42 = ptrtoint ptr %word_cookie.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 3, ptr %word_cookie.i, align 2
  %mask9.i = getelementptr %struct.work_request_hdr, ptr %25, i32 2, i32 2
  %43 = ptrtoint ptr %mask9.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1023, ptr %mask9.i, align 8
  %val10.i = getelementptr %struct.work_request_hdr, ptr %25, i32 3
  %44 = ptrtoint ptr %val10.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %33, ptr %val10.i, align 8
  %add.ptr11.i = getelementptr %struct.work_request_hdr, ptr %25, i32 3, i32 2
  %45 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -2147483648, ptr %add.ptr11.i, align 4
  %len13.i = getelementptr %struct.cpl_set_tcb_field, ptr %incdec.ptr, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %len13.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %len13.i, align 4
  %add.ptr43 = getelementptr %struct.work_request_hdr, ptr %25, i32 4
  %47 = load i32, ptr %tid.i, align 4
  %add.ptr.i96 = getelementptr %struct.work_request_hdr, ptr %25, i32 4, i32 2
  %48 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 67108864, ptr %add.ptr43, align 4
  %len.i97 = getelementptr %struct.work_request_hdr, ptr %25, i32 4, i32 1
  %49 = ptrtoint ptr %len.i97 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %len.i97, align 4
  %50 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -2130706432, ptr %add.ptr.i96, align 4
  %len1.i98 = getelementptr %struct.ulp_txpkt, ptr %add.ptr43, i32 1, i32 1
  %51 = ptrtoint ptr %len1.i98 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16, ptr %len1.i98, align 4
  %or.i99 = or i32 %47, 167772160
  %ot.i100 = getelementptr %struct.work_request_hdr, ptr %25, i32 5
  %52 = ptrtoint ptr %ot.i100 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i99, ptr %ot.i100, align 8
  %rsvd0.i = getelementptr %struct.work_request_hdr, ptr %25, i32 5, i32 1
  %53 = ptrtoint ptr %rsvd0.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rsvd0.i, align 4
  %rsvd1.i = getelementptr %struct.work_request_hdr, ptr %25, i32 5, i32 2
  %54 = ptrtoint ptr %rsvd1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %rsvd1.i, align 8
  %cmd.i = getelementptr inbounds %struct.cpl_abort_req, ptr %add.ptr43, i32 0, i32 4
  %55 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %cmd.i, align 1
  %add.ptr44 = getelementptr %struct.work_request_hdr, ptr %25, i32 6
  %56 = load i32, ptr %tid.i, align 4
  %add.ptr.i101 = getelementptr %struct.work_request_hdr, ptr %25, i32 6, i32 2
  %57 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 67108864, ptr %add.ptr44, align 4
  %len.i102 = getelementptr %struct.work_request_hdr, ptr %25, i32 6, i32 1
  %58 = ptrtoint ptr %len.i102 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %len.i102, align 4
  %59 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -2130706432, ptr %add.ptr.i101, align 4
  %len1.i103 = getelementptr %struct.ulp_txpkt, ptr %add.ptr44, i32 1, i32 1
  %60 = ptrtoint ptr %len1.i103 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16, ptr %len1.i103, align 4
  %or.i104 = or i32 %56, 184549376
  %ot.i105 = getelementptr %struct.work_request_hdr, ptr %25, i32 7
  %61 = ptrtoint ptr %ot.i105 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or.i104, ptr %ot.i105, align 8
  %rsvd0.i106 = getelementptr %struct.work_request_hdr, ptr %25, i32 7, i32 1
  %62 = ptrtoint ptr %rsvd0.i106 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %rsvd0.i106, align 4
  %rsvd1.i107 = getelementptr %struct.work_request_hdr, ptr %25, i32 7, i32 2
  %63 = ptrtoint ptr %rsvd1.i107 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %rsvd1.i107, align 8
  %cmd.i108 = getelementptr inbounds %struct.cpl_abort_rpl, ptr %add.ptr44, i32 0, i32 4
  %64 = ptrtoint ptr %cmd.i108 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %cmd.i108, align 1
  %call46 = tail call i32 @t4_ofld_send(ptr noundef %1, ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %__skb_put.exit, %if.then27, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then13, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__skb_put.exit ], [ -12, %if.then27 ], [ -22, %if.then13 ], [ -7, %do.end7.cleanup_crit_edge ], [ %retval.0.i94, %if.end14.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_set_filter(ptr noundef %dev, i32 noundef %filter_id, ptr noundef %fs) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.filter_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ctx) #11
  %0 = getelementptr inbounds i8, ptr %ctx, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ctx, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %ctx, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #11
  %call = call i32 @__cxgb4_set_filter(ptr noundef %dev, i32 noundef %filter_id, ptr noundef %fs, ptr noundef nonnull %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %ctx, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.filter_ctx, ptr %ctx, i32 0, i32 2
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %4, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ctx) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hash_del_filter_rpl(ptr noundef %adap, ptr nocapture noundef readonly %rpl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.cpl_abort_rpl_rss, ptr %rpl, i32 0, i32 2
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status1, align 1
  %tids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48
  %2 = ptrtoint ptr %rpl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpl, align 4
  %and = and i32 %3, 16777215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_del_filter_rpl.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_del_filter_rpl, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %1 to i32
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %4 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_del_filter_rpl.__UNIQUE_ID_ddebug659, ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %and) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tid_base.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 1
  %6 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %7
  %ntids.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 2
  %8 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %lookup_tid.exit, label %do.end.do.end9_crit_edge

do.end.do.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

lookup_tid.exit:                                  ; preds = %do.end
  %10 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tids, align 128
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %lookup_tid.exit.do.end9_crit_edge, label %if.end11

lookup_tid.exit.do.end9_crit_edge:                ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end9:                                          ; preds = %lookup_tid.exit.do.end9_crit_edge, %do.end.do.end9_crit_edge
  %pdev_dev10 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %14 = ptrtoint ptr %pdev_dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev_dev10, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end11:                                         ; preds = %lookup_tid.exit
  %ctx12 = getelementptr inbounds %struct.filter_entry, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %ctx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx12, align 4
  store ptr null, ptr %ctx12, align 4
  tail call void @clear_filter(ptr noundef %adap, ptr noundef nonnull %13)
  tail call void @cxgb4_remove_tid(ptr noundef %tids, i32 noundef 0, i32 noundef %and, i16 noundef zeroext 0) #11
  tail call void @kfree(ptr noundef nonnull %13) #11
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.filter_ctx, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %result, align 4
  tail call void @complete(ptr noundef nonnull %17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end11.cleanup_crit_edge, %do.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_remove_tid(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hash_filter_rpl(ptr noundef %adap, ptr nocapture noundef readonly %rpl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %atid_status = getelementptr inbounds %struct.cpl_act_open_rpl, ptr %rpl, i32 0, i32 1
  %0 = ptrtoint ptr %atid_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %atid_status, align 4
  %shr = lshr i32 %1, 8
  %and2 = and i32 %shr, 16383
  %and5 = and i32 %1, 255
  %tids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48
  %2 = ptrtoint ptr %rpl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpl, align 4
  %and6 = and i32 %3, 16777215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_filter_rpl.__UNIQUE_ID_ddebug660, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_filter_rpl, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %4 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hash_filter_rpl.__UNIQUE_ID_ddebug660, ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %and6, i32 noundef %and2, i32 noundef %and5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %natids.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 10
  %6 = ptrtoint ptr %natids.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %natids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and2)
  %cmp.i = icmp ugt i32 %7, %and2
  br i1 %cmp.i, label %lookup_atid.exit, label %do.end.do.end14_crit_edge

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

lookup_atid.exit:                                 ; preds = %do.end
  %atid_tab.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 9
  %8 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %atid_tab.i, align 4
  %arrayidx.i = getelementptr %union.aopen_entry, ptr %9, i32 %and2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %lookup_atid.exit.do.end14_crit_edge, label %if.end16

lookup_atid.exit.do.end14_crit_edge:              ; preds = %lookup_atid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end14:                                         ; preds = %lookup_atid.exit.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %pdev_dev15 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %12 = ptrtoint ptr %pdev_dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev_dev15, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #15
  br label %cleanup

if.end16:                                         ; preds = %lookup_atid.exit
  %ctx17 = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %ctx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx17, align 4
  store ptr null, ptr %ctx17, align 4
  %trunc = trunc i32 %1 to i8
  %16 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %trunc, label %if.end57 [
    i8 0, label %sw.bb
    i8 3, label %if.end57.thread
  ]

sw.bb:                                            ; preds = %if.end16
  %tid19 = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 5
  %17 = ptrtoint ptr %tid19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and6, ptr %tid19, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %11, align 8
  %bf.clear21 = and i8 %bf.load, 95
  %bf.set22 = or i8 %bf.clear21, -128
  store i8 %bf.set22, ptr %11, align 8
  %19 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tids, align 128
  %tid_base.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 1
  %21 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and6, %22
  %arrayidx.i132 = getelementptr ptr, ptr %20, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %11, ptr %arrayidx.i132, align 4
  %hash_base.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 8
  %24 = ptrtoint ptr %hash_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_base.i, align 32
  %26 = add i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %and6)
  %.not.i = icmp ult i32 %26, %and6
  br i1 %.not.i, label %if.else.i, label %if.else11.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %hash_tids_in_use5.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 37
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hash_tids_in_use5.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %hash_tids_in_use5.i, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use5.i, ptr %hash_tids_in_use5.i, i32 1, ptr elementtype(i32) %hash_tids_in_use5.i) #11, !srcloc !107
  br label %cxgb4_insert_tid.exit

if.else11.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %tids_in_use12.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 36
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tids_in_use12.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tids_in_use12.i, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use12.i, ptr %tids_in_use12.i, i32 1, ptr elementtype(i32) %tids_in_use12.i) #11, !srcloc !107
  br label %cxgb4_insert_tid.exit

cxgb4_insert_tid.exit:                            ; preds = %if.else11.i, %if.else.i
  %conns_in_use.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 38
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conns_in_use.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %conns_in_use.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conns_in_use.i, ptr %conns_in_use.i, i32 1, ptr elementtype(i32) %conns_in_use.i) #11, !srcloc !107
  tail call void @cxgb4_free_atid(ptr noundef %tids, i32 noundef %and2) #11
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %cxgb4_insert_tid.exit.if.end28_crit_edge, label %if.then25

cxgb4_insert_tid.exit.if.end28_crit_edge:         ; preds = %cxgb4_insert_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then25:                                        ; preds = %cxgb4_insert_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %tid19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tid19, align 4
  %tid27 = getelementptr inbounds %struct.filter_ctx, ptr %15, i32 0, i32 3
  %32 = ptrtoint ptr %tid27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tid27, align 4
  %result = getelementptr inbounds %struct.filter_ctx, ptr %15, i32 0, i32 2
  %33 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %result, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %cxgb4_insert_tid.exit.if.end28_crit_edge
  %fs.i = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6
  %34 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load.i = load i32, ptr %fs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end28.if.end.i_crit_edge, label %if.then.i

if.end28.if.end.i_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end28
  %call.i.i.i133 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i133, null
  br i1 %tobool.not.i.i, label %if.then.i.set_tcb_field.exit.i_crit_edge, label %if.end.i.i

if.then.i.set_tcb_field.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tcb_field.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i133, i32 0, i32 7
  %35 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i.i.i.i, label %__skb_put_zero.exit.i.i, label %do.body3.i.i.i.i, !prof !103

do.body3.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i133, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %38, i32 40
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i133, i32 0, i32 6
  %39 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len9.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 40
  store i32 %add.i.i.i.i, ptr %len9.i.i.i.i, align 4
  %41 = getelementptr inbounds i8, ptr %38, i32 20
  %42 = call ptr @memset(ptr %41, i32 0, i32 20)
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 83886104, ptr %38, align 8
  %shl.i.i = shl nuw i32 %and6, 8
  %or.i.i = or i32 %shl.i.i, 3
  %wr_mid.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %38, i32 0, i32 1
  %44 = ptrtoint ptr %wr_mid.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i.i, ptr %wr_mid.i.i, align 4
  %wr_lo.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %38, i32 0, i32 2
  %45 = ptrtoint ptr %wr_lo.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %wr_lo.i.i, align 8
  %or5.i.i = or i32 %and6, 83886080
  %ot.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %ot.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or5.i.i, ptr %ot.i.i, align 8
  %abs_id.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %47 = ptrtoint ptr %abs_id.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %abs_id.i.i, align 2
  %49 = or i16 %48, -32768
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %41, align 4
  %ftid.tr.i.i = trunc i32 %3 to i16
  %51 = shl i16 %ftid.tr.i.i, 5
  %conv17.i.i = or i16 %51, 5
  %word_cookie.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %38, i32 0, i32 3
  %52 = ptrtoint ptr %word_cookie.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv17.i.i, ptr %word_cookie.i.i, align 2
  %mask18.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %38, i32 0, i32 4
  %53 = ptrtoint ptr %mask18.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 4294967295, ptr %mask18.i.i, align 8
  %val19.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %38, i32 0, i32 5
  %54 = ptrtoint ptr %val19.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %val19.i.i, align 8
  %iport.i.i = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %55 = ptrtoint ptr %iport.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i.i = load i32, ptr %iport.i.i, align 4
  %sh.diff.i.i = lshr i32 %bf.load.i.i, 28
  %tr.sh.diff.i.i = trunc i32 %sh.diff.i.i to i16
  %56 = and i16 %tr.sh.diff.i.i, 6
  %conv.i.i.i = or i16 %56, 1
  %queue_mapping1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i133, i32 0, i32 10
  %57 = ptrtoint ptr %queue_mapping1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i.i.i, ptr %queue_mapping1.i.i.i.i, align 8
  %call21.i.i = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i.i133) #11
  br label %set_tcb_field.exit.i

set_tcb_field.exit.i:                             ; preds = %__skb_put_zero.exit.i.i, %if.then.i.set_tcb_field.exit.i_crit_edge
  %call.i.i91.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i92.i = icmp eq ptr %call.i.i91.i, null
  br i1 %tobool.not.i92.i, label %set_tcb_field.exit.i.if.end.i_crit_edge, label %if.end.i95.i

set_tcb_field.exit.i.if.end.i_crit_edge:          ; preds = %set_tcb_field.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i95.i:                                     ; preds = %set_tcb_field.exit.i
  %data_len.i.i.i.i93.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i91.i, i32 0, i32 7
  %58 = ptrtoint ptr %data_len.i.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len.i.i.i.i93.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not.i.i.i94.i = icmp eq i32 %59, 0
  br i1 %tobool.i.not.i.i.i94.i, label %__skb_put_zero.exit.i121.i, label %do.body3.i.i.i96.i, !prof !103

do.body3.i.i.i96.i:                               ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i121.i:                       ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i97.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i91.i, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i.i.i97.i, align 8
  %add.ptr.i.i.i98.i = getelementptr i8, ptr %61, i32 40
  store ptr %add.ptr.i.i.i98.i, ptr %tail.i.i.i.i97.i, align 8
  %len9.i.i.i99.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i91.i, i32 0, i32 6
  %62 = ptrtoint ptr %len9.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len9.i.i.i99.i, align 4
  %add.i.i.i100.i = add i32 %63, 40
  store i32 %add.i.i.i100.i, ptr %len9.i.i.i99.i, align 4
  %64 = getelementptr inbounds i8, ptr %61, i32 20
  %65 = call ptr @memset(ptr %64, i32 0, i32 20)
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 83886104, ptr %61, align 8
  %shl.i101.i = shl nuw i32 %and6, 8
  %or.i102.i = or i32 %shl.i101.i, 3
  %wr_mid.i103.i = getelementptr inbounds %struct.work_request_hdr, ptr %61, i32 0, i32 1
  %67 = ptrtoint ptr %wr_mid.i103.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i102.i, ptr %wr_mid.i103.i, align 4
  %wr_lo.i104.i = getelementptr inbounds %struct.work_request_hdr, ptr %61, i32 0, i32 2
  %68 = ptrtoint ptr %wr_lo.i104.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %wr_lo.i104.i, align 8
  %or5.i105.i = or i32 %and6, 83886080
  %ot.i106.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %61, i32 0, i32 1
  %69 = ptrtoint ptr %ot.i106.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or5.i105.i, ptr %ot.i106.i, align 8
  %abs_id.i107.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %70 = ptrtoint ptr %abs_id.i107.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %abs_id.i107.i, align 2
  %72 = or i16 %71, -32768
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %64, align 4
  %ftid.tr.i109.i = trunc i32 %3 to i16
  %74 = shl i16 %ftid.tr.i109.i, 5
  %conv17.i110.i = or i16 %74, 6
  %word_cookie.i111.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %61, i32 0, i32 3
  %75 = ptrtoint ptr %word_cookie.i111.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv17.i110.i, ptr %word_cookie.i111.i, align 2
  %mask18.i112.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %61, i32 0, i32 4
  %76 = ptrtoint ptr %mask18.i112.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 4294967295, ptr %mask18.i112.i, align 8
  %val19.i113.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %61, i32 0, i32 5
  %77 = ptrtoint ptr %val19.i113.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 0, ptr %val19.i113.i, align 8
  %iport.i114.i = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %78 = ptrtoint ptr %iport.i114.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load.i115.i = load i32, ptr %iport.i114.i, align 4
  %sh.diff.i116.i = lshr i32 %bf.load.i115.i, 28
  %tr.sh.diff.i117.i = trunc i32 %sh.diff.i116.i to i16
  %79 = and i16 %tr.sh.diff.i117.i, 6
  %conv.i.i118.i = or i16 %79, 1
  %queue_mapping1.i.i.i119.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i91.i, i32 0, i32 10
  %80 = ptrtoint ptr %queue_mapping1.i.i.i119.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i.i118.i, ptr %queue_mapping1.i.i.i119.i, align 8
  %call21.i120.i = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i91.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %__skb_put_zero.exit.i121.i, %set_tcb_field.exit.i.if.end.i_crit_edge, %if.end28.if.end.i_crit_edge
  %81 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load3.i = load i32, ptr %fs.i, align 8
  %82 = and i32 %bf.load3.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool5.not.i = icmp eq i32 %82, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then6.i.if.end8.i_crit_edge, label %if.end.i.i.i

if.then6.i.if.end8.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end.i.i.i:                                     ; preds = %if.then6.i
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 7
  %83 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %84, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %__skb_put_zero.exit.i.i.i, label %do.body3.i.i.i.i.i, !prof !103

do.body3.i.i.i.i.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i.i.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %85 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %86, i32 40
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  %len9.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %len9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len9.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %88, 40
  store i32 %add.i.i.i.i.i, ptr %len9.i.i.i.i.i, align 4
  %89 = getelementptr inbounds i8, ptr %86, i32 20
  %90 = call ptr @memset(ptr %89, i32 0, i32 20)
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 83886104, ptr %86, align 8
  %shl.i.i.i = shl nuw i32 %and6, 8
  %or.i.i.i = or i32 %shl.i.i.i, 3
  %wr_mid.i.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %86, i32 0, i32 1
  %92 = ptrtoint ptr %wr_mid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or.i.i.i, ptr %wr_mid.i.i.i, align 4
  %wr_lo.i.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %86, i32 0, i32 2
  %93 = ptrtoint ptr %wr_lo.i.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %wr_lo.i.i.i, align 8
  %or5.i.i.i = or i32 %and6, 83886080
  %ot.i.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %86, i32 0, i32 1
  %94 = ptrtoint ptr %ot.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or5.i.i.i, ptr %ot.i.i.i, align 8
  %abs_id.i.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %95 = ptrtoint ptr %abs_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %abs_id.i.i.i, align 2
  %97 = or i16 %96, -32768
  %98 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %89, align 4
  %ftid.tr.i.i.i = trunc i32 %3 to i16
  %99 = shl i16 %ftid.tr.i.i.i, 5
  %conv17.i.i.i = or i16 %99, 1
  %word_cookie.i.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %86, i32 0, i32 3
  %100 = ptrtoint ptr %word_cookie.i.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv17.i.i.i, ptr %word_cookie.i.i.i, align 2
  %mask18.i.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %86, i32 0, i32 4
  %101 = ptrtoint ptr %mask18.i.i.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 1152921504606846976, ptr %mask18.i.i.i, align 8
  %val19.i.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %86, i32 0, i32 5
  %102 = ptrtoint ptr %val19.i.i.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 1152921504606846976, ptr %val19.i.i.i, align 8
  %iport.i.i.i = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %103 = ptrtoint ptr %iport.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load.i.i.i = load i32, ptr %iport.i.i.i, align 4
  %sh.diff.i.i.i = lshr i32 %bf.load.i.i.i, 28
  %tr.sh.diff.i.i.i = trunc i32 %sh.diff.i.i.i to i16
  %104 = and i16 %tr.sh.diff.i.i.i, 6
  %conv.i.i.i.i = or i16 %104, 1
  %queue_mapping1.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 10
  %105 = ptrtoint ptr %queue_mapping1.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i.i.i.i, ptr %queue_mapping1.i.i.i.i.i, align 8
  %call21.i.i.i = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i.i.i) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %__skb_put_zero.exit.i.i.i, %if.then6.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %106 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %bf.load10.i = load i32, ptr %fs.i, align 8
  %107 = and i32 %bf.load10.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %switch.not.i = icmp eq i32 %107, 0
  br i1 %switch.not.i, label %if.end8.i.if.end20.i_crit_edge, label %if.then18.i

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end8.i
  %call.i.i.i124.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i125.i = icmp eq ptr %call.i.i.i124.i, null
  br i1 %tobool.not.i.i125.i, label %if.then18.i.if.end20.i_crit_edge, label %if.end.i.i128.i

if.then18.i.if.end20.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end.i.i128.i:                                  ; preds = %if.then18.i
  %data_len.i.i.i.i.i126.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i124.i, i32 0, i32 7
  %108 = ptrtoint ptr %data_len.i.i.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %data_len.i.i.i.i.i126.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.i.not.i.i.i.i127.i = icmp eq i32 %109, 0
  br i1 %tobool.i.not.i.i.i.i127.i, label %__skb_put_zero.exit.i.i153.i, label %do.body3.i.i.i.i129.i, !prof !103

do.body3.i.i.i.i129.i:                            ; preds = %if.end.i.i128.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i.i153.i:                     ; preds = %if.end.i.i128.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i.i130.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i124.i, i32 0, i32 16
  %110 = ptrtoint ptr %tail.i.i.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tail.i.i.i.i.i130.i, align 8
  %add.ptr.i.i.i.i131.i = getelementptr i8, ptr %111, i32 40
  store ptr %add.ptr.i.i.i.i131.i, ptr %tail.i.i.i.i.i130.i, align 8
  %len9.i.i.i.i132.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i124.i, i32 0, i32 6
  %112 = ptrtoint ptr %len9.i.i.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len9.i.i.i.i132.i, align 4
  %add.i.i.i.i133.i = add i32 %113, 40
  store i32 %add.i.i.i.i133.i, ptr %len9.i.i.i.i132.i, align 4
  %114 = getelementptr inbounds i8, ptr %111, i32 20
  %115 = call ptr @memset(ptr %114, i32 0, i32 20)
  %116 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 83886104, ptr %111, align 8
  %shl.i.i134.i = shl nuw i32 %and6, 8
  %or.i.i135.i = or i32 %shl.i.i134.i, 3
  %wr_mid.i.i136.i = getelementptr inbounds %struct.work_request_hdr, ptr %111, i32 0, i32 1
  %117 = ptrtoint ptr %wr_mid.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or.i.i135.i, ptr %wr_mid.i.i136.i, align 4
  %wr_lo.i.i137.i = getelementptr inbounds %struct.work_request_hdr, ptr %111, i32 0, i32 2
  %118 = ptrtoint ptr %wr_lo.i.i137.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 0, ptr %wr_lo.i.i137.i, align 8
  %or5.i.i138.i = or i32 %and6, 83886080
  %ot.i.i139.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %111, i32 0, i32 1
  %119 = ptrtoint ptr %ot.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or5.i.i138.i, ptr %ot.i.i139.i, align 8
  %abs_id.i.i140.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %120 = ptrtoint ptr %abs_id.i.i140.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %abs_id.i.i140.i, align 2
  %122 = or i16 %121, -32768
  %123 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %114, align 4
  %ftid.tr.i.i141.i = trunc i32 %3 to i16
  %124 = shl i16 %ftid.tr.i.i141.i, 5
  %conv17.i.i142.i = or i16 %124, 1
  %word_cookie.i.i143.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %111, i32 0, i32 3
  %125 = ptrtoint ptr %word_cookie.i.i143.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv17.i.i142.i, ptr %word_cookie.i.i143.i, align 2
  %mask18.i.i144.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %111, i32 0, i32 4
  %126 = ptrtoint ptr %mask18.i.i144.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 4611686018427387904, ptr %mask18.i.i144.i, align 8
  %val19.i.i145.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %111, i32 0, i32 5
  %127 = ptrtoint ptr %val19.i.i145.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 4611686018427387904, ptr %val19.i.i145.i, align 8
  %iport.i.i146.i = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %128 = ptrtoint ptr %iport.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %bf.load.i.i147.i = load i32, ptr %iport.i.i146.i, align 4
  %sh.diff.i.i148.i = lshr i32 %bf.load.i.i147.i, 28
  %tr.sh.diff.i.i149.i = trunc i32 %sh.diff.i.i148.i to i16
  %129 = and i16 %tr.sh.diff.i.i149.i, 6
  %conv.i.i.i150.i = or i16 %129, 1
  %queue_mapping1.i.i.i.i151.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i124.i, i32 0, i32 10
  %130 = ptrtoint ptr %queue_mapping1.i.i.i.i151.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i.i.i150.i, ptr %queue_mapping1.i.i.i.i151.i, align 8
  %call21.i.i152.i = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i.i124.i) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %__skb_put_zero.exit.i.i153.i, %if.then18.i.if.end20.i_crit_edge, %if.end8.i.if.end20.i_crit_edge
  %131 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %bf.load22.i = load i32, ptr %fs.i, align 8
  %132 = and i32 %bf.load22.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool25.not.i = icmp eq i32 %132, 0
  br i1 %tobool25.not.i, label %if.end20.i.if.end28.i_crit_edge, label %if.then26.i

if.end20.i.if.end28.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end20.i
  %133 = ptrtoint ptr %tid19 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tid19, align 4
  %smt.i.i = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 3
  %135 = ptrtoint ptr %smt.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %smt.i.i, align 4
  %idx.i.i = getelementptr inbounds %struct.smt_entry, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %idx.i.i, align 2
  %conv.i.i = zext i16 %138 to i32
  %shl.i156.i = shl i32 %conv.i.i, 24
  %conv1.i.i = sext i32 %shl.i156.i to i64
  %call.i.i.i157.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i158.i = icmp eq ptr %call.i.i.i157.i, null
  br i1 %tobool.not.i.i158.i, label %if.then26.i.do.end.i.i_crit_edge, label %if.end.i.i161.i

if.then26.i.do.end.i.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end.i.i161.i:                                  ; preds = %if.then26.i
  %data_len.i.i.i.i.i159.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i157.i, i32 0, i32 7
  %139 = ptrtoint ptr %data_len.i.i.i.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %data_len.i.i.i.i.i159.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.i.not.i.i.i.i160.i = icmp eq i32 %140, 0
  br i1 %tobool.i.not.i.i.i.i160.i, label %if.end.i185.i, label %do.body3.i.i.i.i162.i, !prof !103

do.body3.i.i.i.i162.i:                            ; preds = %if.end.i.i161.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

if.end.i185.i:                                    ; preds = %if.end.i.i161.i
  %tail.i.i.i.i.i163.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i157.i, i32 0, i32 16
  %141 = ptrtoint ptr %tail.i.i.i.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tail.i.i.i.i.i163.i, align 8
  %add.ptr.i.i.i.i164.i = getelementptr i8, ptr %142, i32 40
  store ptr %add.ptr.i.i.i.i164.i, ptr %tail.i.i.i.i.i163.i, align 8
  %len9.i.i.i.i165.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i157.i, i32 0, i32 6
  %143 = ptrtoint ptr %len9.i.i.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len9.i.i.i.i165.i, align 4
  %add.i.i.i.i166.i = add i32 %144, 40
  store i32 %add.i.i.i.i166.i, ptr %len9.i.i.i.i165.i, align 4
  %145 = getelementptr inbounds i8, ptr %142, i32 20
  %146 = call ptr @memset(ptr %145, i32 0, i32 20)
  %147 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 83886104, ptr %142, align 8
  %shl.i.i167.i = shl i32 %134, 8
  %or.i.i168.i = or i32 %shl.i.i167.i, 3
  %wr_mid.i.i169.i = getelementptr inbounds %struct.work_request_hdr, ptr %142, i32 0, i32 1
  %148 = ptrtoint ptr %wr_mid.i.i169.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or.i.i168.i, ptr %wr_mid.i.i169.i, align 4
  %wr_lo.i.i170.i = getelementptr inbounds %struct.work_request_hdr, ptr %142, i32 0, i32 2
  %149 = ptrtoint ptr %wr_lo.i.i170.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 0, ptr %wr_lo.i.i170.i, align 8
  %or5.i.i171.i = or i32 %134, 83886080
  %ot.i.i172.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %142, i32 0, i32 1
  %150 = ptrtoint ptr %ot.i.i172.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or5.i.i171.i, ptr %ot.i.i172.i, align 8
  %abs_id.i.i173.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %151 = ptrtoint ptr %abs_id.i.i173.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %abs_id.i.i173.i, align 2
  %153 = or i16 %152, -32768
  %154 = ptrtoint ptr %145 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %145, align 4
  %ftid.tr.i.i174.i = trunc i32 %134 to i16
  %155 = shl i16 %ftid.tr.i.i174.i, 5
  %word_cookie.i.i175.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %142, i32 0, i32 3
  %156 = ptrtoint ptr %word_cookie.i.i175.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %word_cookie.i.i175.i, align 2
  %mask18.i.i176.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %142, i32 0, i32 4
  %157 = ptrtoint ptr %mask18.i.i176.i to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 4278190080, ptr %mask18.i.i176.i, align 8
  %val19.i.i177.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %142, i32 0, i32 5
  %158 = ptrtoint ptr %val19.i.i177.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %conv1.i.i, ptr %val19.i.i177.i, align 8
  %iport.i.i178.i = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %159 = ptrtoint ptr %iport.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %bf.load.i.i179.i = load i32, ptr %iport.i.i178.i, align 4
  %sh.diff.i.i180.i = lshr i32 %bf.load.i.i179.i, 28
  %tr.sh.diff.i.i181.i = trunc i32 %sh.diff.i.i180.i to i16
  %160 = and i16 %tr.sh.diff.i.i181.i, 6
  %conv.i.i.i182.i = or i16 %160, 1
  %queue_mapping1.i.i.i.i183.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i157.i, i32 0, i32 10
  %161 = ptrtoint ptr %queue_mapping1.i.i.i.i183.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv.i.i.i182.i, ptr %queue_mapping1.i.i.i.i183.i, align 8
  %call21.i.i184.i = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i.i157.i) #11
  %162 = ptrtoint ptr %tid19 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tid19, align 4
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i185.i.do.end.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i185.i.do.end.i.i_crit_edge:               ; preds = %if.end.i185.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i185.i
  %data_len.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 7
  %164 = ptrtoint ptr %data_len.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %data_len.i.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %165, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %set_tcb_tflag.exit.thread.i.i, label %do.body3.i.i.i.i.i.i, !prof !103

do.body3.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

set_tcb_tflag.exit.thread.i.i:                    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %166 = ptrtoint ptr %tail.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tail.i.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %167, i32 40
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i.i, align 8
  %len9.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 6
  %168 = ptrtoint ptr %len9.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %len9.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %169, 40
  store i32 %add.i.i.i.i.i.i, ptr %len9.i.i.i.i.i.i, align 4
  %170 = getelementptr inbounds i8, ptr %167, i32 20
  %171 = call ptr @memset(ptr %170, i32 0, i32 20)
  %172 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 83886104, ptr %167, align 8
  %shl.i.i.i.i = shl i32 %163, 8
  %or.i.i.i.i = or i32 %shl.i.i.i.i, 3
  %wr_mid.i.i.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %167, i32 0, i32 1
  %173 = ptrtoint ptr %wr_mid.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or.i.i.i.i, ptr %wr_mid.i.i.i.i, align 4
  %wr_lo.i.i.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %167, i32 0, i32 2
  %174 = ptrtoint ptr %wr_lo.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 0, ptr %wr_lo.i.i.i.i, align 8
  %or5.i.i.i.i = or i32 %163, 83886080
  %ot.i.i.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %167, i32 0, i32 1
  %175 = ptrtoint ptr %ot.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %or5.i.i.i.i, ptr %ot.i.i.i.i, align 8
  %176 = ptrtoint ptr %abs_id.i.i173.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %abs_id.i.i173.i, align 2
  %178 = or i16 %177, -32768
  %179 = ptrtoint ptr %170 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %170, align 4
  %ftid.tr.i.i.i.i = trunc i32 %163 to i16
  %180 = shl i16 %ftid.tr.i.i.i.i, 5
  %conv17.i.i.i.i = or i16 %180, 1
  %word_cookie.i.i.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %167, i32 0, i32 3
  %181 = ptrtoint ptr %word_cookie.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv17.i.i.i.i, ptr %word_cookie.i.i.i.i, align 2
  %mask18.i.i.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %167, i32 0, i32 4
  %182 = ptrtoint ptr %mask18.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 2305843009213693952, ptr %mask18.i.i.i.i, align 8
  %val19.i.i.i.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %167, i32 0, i32 5
  %183 = ptrtoint ptr %val19.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 2305843009213693952, ptr %val19.i.i.i.i, align 8
  %184 = ptrtoint ptr %iport.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %bf.load.i.i.i.i = load i32, ptr %iport.i.i178.i, align 4
  %sh.diff.i.i.i.i = lshr i32 %bf.load.i.i.i.i, 28
  %tr.sh.diff.i.i.i.i = trunc i32 %sh.diff.i.i.i.i to i16
  %185 = and i16 %tr.sh.diff.i.i.i.i, 6
  %conv.i.i.i.i.i = or i16 %185, 1
  %queue_mapping1.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 10
  %186 = ptrtoint ptr %queue_mapping1.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv.i.i.i.i.i, ptr %queue_mapping1.i.i.i.i.i.i, align 8
  %call21.i.i.i.i = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i.i.i.i) #11
  br label %if.end28.i

do.end.i.i:                                       ; preds = %if.end.i185.i.do.end.i.i_crit_edge, %if.then26.i.do.end.i.i_crit_edge
  %pdev_dev.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %187 = ptrtoint ptr %pdev_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pdev_dev.i.i, align 16
  %189 = ptrtoint ptr %tid19 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %tid19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.42, i32 noundef %190, i32 noundef -12) #15
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i.i, %set_tcb_tflag.exit.thread.i.i, %if.end20.i.if.end28.i_crit_edge
  %191 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %bf.load30.i = load i32, ptr %fs.i, align 8
  %bf.lshr31.i = lshr i32 %bf.load30.i, 3
  %bf.clear32.i = and i32 %bf.lshr31.i, 7
  %192 = zext i32 %bf.clear32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %bf.clear32.i, label %if.end28.unreachabledefault.i [
    i32 0, label %if.end28.i.if.end36_crit_edge
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb39.i
    i32 3, label %sw.bb40.i
    i32 4, label %sw.bb41.i
    i32 5, label %sw.bb42.i
    i32 6, label %sw.bb43.i
    i32 7, label %sw.bb44.i
  ]

if.end28.i.if.end36_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

sw.bb.i:                                          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_nat_params(ptr noundef %adap, ptr noundef nonnull %11, i32 noundef %and6, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end36

sw.bb39.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_nat_params(ptr noundef %adap, ptr noundef nonnull %11, i32 noundef %and6, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %if.end36

sw.bb40.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_nat_params(ptr noundef %adap, ptr noundef nonnull %11, i32 noundef %and6, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %if.end36

sw.bb41.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_nat_params(ptr noundef %adap, ptr noundef nonnull %11, i32 noundef %and6, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %if.end36

sw.bb42.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_nat_params(ptr noundef %adap, ptr noundef nonnull %11, i32 noundef %and6, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %if.end36

sw.bb43.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_nat_params(ptr noundef %adap, ptr noundef nonnull %11, i32 noundef %and6, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %if.end36

sw.bb44.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_nat_params(ptr noundef %adap, ptr noundef nonnull %11, i32 noundef %and6, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %if.end36

if.end28.unreachabledefault.i:                    ; preds = %if.end28.i
  unreachable

if.end36:                                         ; preds = %sw.bb44.i, %sw.bb43.i, %sw.bb42.i, %sw.bb41.i, %sw.bb40.i, %sw.bb39.i, %sw.bb.i, %if.end28.i.if.end36_crit_edge
  %193 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %bf.load37 = load i32, ptr %fs.i, align 8
  %bf.lshr = lshr i32 %bf.load37, 26
  %bf.clear38 = and i32 %bf.lshr, 3
  %194 = zext i32 %bf.clear38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %bf.clear38, label %if.end36.sw.epilog66_crit_edge [
    i32 0, label %sw.bb39
    i32 1, label %sw.bb48
    i32 2, label %sw.bb50
  ]

if.end36.sw.epilog66_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog66

sw.bb39:                                          ; preds = %if.end36
  %195 = and i32 %bf.load37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool44.not = icmp eq i32 %195, 0
  br i1 %tobool44.not, label %sw.bb39.sw.epilog66_crit_edge, label %if.then45

sw.bb39.sw.epilog66_crit_edge:                    ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog66

if.then45:                                        ; preds = %sw.bb39
  %call.i.i.i134 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i135 = icmp eq ptr %call.i.i.i134, null
  br i1 %tobool.not.i.i135, label %if.then45.sw.epilog66_crit_edge, label %if.end.i.i138

if.then45.sw.epilog66_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog66

if.end.i.i138:                                    ; preds = %if.then45
  %data_len.i.i.i.i.i136 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i134, i32 0, i32 7
  %196 = ptrtoint ptr %data_len.i.i.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %data_len.i.i.i.i.i136, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.i.not.i.i.i.i137 = icmp eq i32 %197, 0
  br i1 %tobool.i.not.i.i.i.i137, label %__skb_put_zero.exit.i.i163, label %do.body3.i.i.i.i139, !prof !103

do.body3.i.i.i.i139:                              ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i.i163:                       ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i.i140 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i134, i32 0, i32 16
  %198 = ptrtoint ptr %tail.i.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %tail.i.i.i.i.i140, align 8
  %add.ptr.i.i.i.i141 = getelementptr i8, ptr %199, i32 40
  store ptr %add.ptr.i.i.i.i141, ptr %tail.i.i.i.i.i140, align 8
  %len9.i.i.i.i142 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i134, i32 0, i32 6
  %200 = ptrtoint ptr %len9.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %len9.i.i.i.i142, align 4
  %add.i.i.i.i143 = add i32 %201, 40
  store i32 %add.i.i.i.i143, ptr %len9.i.i.i.i142, align 4
  %202 = getelementptr inbounds i8, ptr %199, i32 20
  %203 = call ptr @memset(ptr %202, i32 0, i32 20)
  %204 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 83886104, ptr %199, align 8
  %shl.i.i144 = shl nuw i32 %and6, 8
  %or.i.i145 = or i32 %shl.i.i144, 3
  %wr_mid.i.i146 = getelementptr inbounds %struct.work_request_hdr, ptr %199, i32 0, i32 1
  %205 = ptrtoint ptr %wr_mid.i.i146 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %or.i.i145, ptr %wr_mid.i.i146, align 4
  %wr_lo.i.i147 = getelementptr inbounds %struct.work_request_hdr, ptr %199, i32 0, i32 2
  %206 = ptrtoint ptr %wr_lo.i.i147 to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 0, ptr %wr_lo.i.i147, align 8
  %or5.i.i148 = or i32 %and6, 83886080
  %ot.i.i149 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %199, i32 0, i32 1
  %207 = ptrtoint ptr %ot.i.i149 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %or5.i.i148, ptr %ot.i.i149, align 8
  %abs_id.i.i150 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %208 = ptrtoint ptr %abs_id.i.i150 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %abs_id.i.i150, align 2
  %210 = or i16 %209, -32768
  %211 = ptrtoint ptr %202 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %210, ptr %202, align 4
  %ftid.tr.i.i151 = trunc i32 %3 to i16
  %212 = shl i16 %ftid.tr.i.i151, 5
  %conv17.i.i152 = or i16 %212, 1
  %word_cookie.i.i153 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %199, i32 0, i32 3
  %213 = ptrtoint ptr %word_cookie.i.i153 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv17.i.i152, ptr %word_cookie.i.i153, align 2
  %mask18.i.i154 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %199, i32 0, i32 4
  %214 = ptrtoint ptr %mask18.i.i154 to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 8388608, ptr %mask18.i.i154, align 8
  %val19.i.i155 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %199, i32 0, i32 5
  %215 = ptrtoint ptr %val19.i.i155 to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 8388608, ptr %val19.i.i155, align 8
  %iport.i.i156 = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %216 = ptrtoint ptr %iport.i.i156 to i32
  call void @__asan_load4_noabort(i32 %216)
  %bf.load.i.i157 = load i32, ptr %iport.i.i156, align 4
  %sh.diff.i.i158 = lshr i32 %bf.load.i.i157, 28
  %tr.sh.diff.i.i159 = trunc i32 %sh.diff.i.i158 to i16
  %217 = and i16 %tr.sh.diff.i.i159, 6
  %conv.i.i.i160 = or i16 %217, 1
  %queue_mapping1.i.i.i.i161 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i134, i32 0, i32 10
  %218 = ptrtoint ptr %queue_mapping1.i.i.i.i161 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %conv.i.i.i160, ptr %queue_mapping1.i.i.i.i161, align 8
  %call21.i.i162 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i.i134) #11
  br label %sw.epilog66

sw.bb48:                                          ; preds = %if.end36
  %call.i.i.i165 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i166 = icmp eq ptr %call.i.i.i165, null
  br i1 %tobool.not.i.i166, label %sw.bb48.sw.epilog66_crit_edge, label %if.end.i.i169

sw.bb48.sw.epilog66_crit_edge:                    ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog66

if.end.i.i169:                                    ; preds = %sw.bb48
  %data_len.i.i.i.i.i167 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i165, i32 0, i32 7
  %219 = ptrtoint ptr %data_len.i.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %data_len.i.i.i.i.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.i.not.i.i.i.i168 = icmp eq i32 %220, 0
  br i1 %tobool.i.not.i.i.i.i168, label %__skb_put_zero.exit.i.i194, label %do.body3.i.i.i.i170, !prof !103

do.body3.i.i.i.i170:                              ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i.i194:                       ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i.i171 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i165, i32 0, i32 16
  %221 = ptrtoint ptr %tail.i.i.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %tail.i.i.i.i.i171, align 8
  %add.ptr.i.i.i.i172 = getelementptr i8, ptr %222, i32 40
  store ptr %add.ptr.i.i.i.i172, ptr %tail.i.i.i.i.i171, align 8
  %len9.i.i.i.i173 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i165, i32 0, i32 6
  %223 = ptrtoint ptr %len9.i.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %len9.i.i.i.i173, align 4
  %add.i.i.i.i174 = add i32 %224, 40
  store i32 %add.i.i.i.i174, ptr %len9.i.i.i.i173, align 4
  %225 = getelementptr inbounds i8, ptr %222, i32 20
  %226 = call ptr @memset(ptr %225, i32 0, i32 20)
  %227 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 83886104, ptr %222, align 8
  %shl.i.i175 = shl nuw i32 %and6, 8
  %or.i.i176 = or i32 %shl.i.i175, 3
  %wr_mid.i.i177 = getelementptr inbounds %struct.work_request_hdr, ptr %222, i32 0, i32 1
  %228 = ptrtoint ptr %wr_mid.i.i177 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %or.i.i176, ptr %wr_mid.i.i177, align 4
  %wr_lo.i.i178 = getelementptr inbounds %struct.work_request_hdr, ptr %222, i32 0, i32 2
  %229 = ptrtoint ptr %wr_lo.i.i178 to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 0, ptr %wr_lo.i.i178, align 8
  %or5.i.i179 = or i32 %and6, 83886080
  %ot.i.i180 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %222, i32 0, i32 1
  %230 = ptrtoint ptr %ot.i.i180 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %or5.i.i179, ptr %ot.i.i180, align 8
  %abs_id.i.i181 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %231 = ptrtoint ptr %abs_id.i.i181 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %abs_id.i.i181, align 2
  %233 = or i16 %232, -32768
  %234 = ptrtoint ptr %225 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %233, ptr %225, align 4
  %ftid.tr.i.i182 = trunc i32 %3 to i16
  %235 = shl i16 %ftid.tr.i.i182, 5
  %conv17.i.i183 = or i16 %235, 1
  %word_cookie.i.i184 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %222, i32 0, i32 3
  %236 = ptrtoint ptr %word_cookie.i.i184 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %conv17.i.i183, ptr %word_cookie.i.i184, align 2
  %mask18.i.i185 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %222, i32 0, i32 4
  %237 = ptrtoint ptr %mask18.i.i185 to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 4194304, ptr %mask18.i.i185, align 8
  %val19.i.i186 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %222, i32 0, i32 5
  %238 = ptrtoint ptr %val19.i.i186 to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 4194304, ptr %val19.i.i186, align 8
  %iport.i.i187 = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %239 = ptrtoint ptr %iport.i.i187 to i32
  call void @__asan_load4_noabort(i32 %239)
  %bf.load.i.i188 = load i32, ptr %iport.i.i187, align 4
  %sh.diff.i.i189 = lshr i32 %bf.load.i.i188, 28
  %tr.sh.diff.i.i190 = trunc i32 %sh.diff.i.i189 to i16
  %240 = and i16 %tr.sh.diff.i.i190, 6
  %conv.i.i.i191 = or i16 %240, 1
  %queue_mapping1.i.i.i.i192 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i165, i32 0, i32 10
  %241 = ptrtoint ptr %queue_mapping1.i.i.i.i192 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %conv.i.i.i191, ptr %queue_mapping1.i.i.i.i192, align 8
  %call21.i.i193 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i.i165) #11
  br label %sw.epilog66

sw.bb50:                                          ; preds = %if.end36
  %call.i.i.i198 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i.i199 = icmp eq ptr %call.i.i.i198, null
  br i1 %tobool.not.i.i199, label %sw.bb50.sw.epilog66_crit_edge, label %if.end.i.i202

sw.bb50.sw.epilog66_crit_edge:                    ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog66

if.end.i.i202:                                    ; preds = %sw.bb50
  %data_len.i.i.i.i.i200 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i198, i32 0, i32 7
  %242 = ptrtoint ptr %data_len.i.i.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %data_len.i.i.i.i.i200, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool.i.not.i.i.i.i201 = icmp eq i32 %243, 0
  br i1 %tobool.i.not.i.i.i.i201, label %__skb_put_zero.exit.i.i227, label %do.body3.i.i.i.i203, !prof !103

do.body3.i.i.i.i203:                              ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i.i227:                       ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i.i204 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i198, i32 0, i32 16
  %244 = ptrtoint ptr %tail.i.i.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %tail.i.i.i.i.i204, align 8
  %add.ptr.i.i.i.i205 = getelementptr i8, ptr %245, i32 40
  store ptr %add.ptr.i.i.i.i205, ptr %tail.i.i.i.i.i204, align 8
  %len9.i.i.i.i206 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i198, i32 0, i32 6
  %246 = ptrtoint ptr %len9.i.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %len9.i.i.i.i206, align 4
  %add.i.i.i.i207 = add i32 %247, 40
  store i32 %add.i.i.i.i207, ptr %len9.i.i.i.i206, align 4
  %248 = getelementptr inbounds i8, ptr %245, i32 20
  %249 = call ptr @memset(ptr %248, i32 0, i32 20)
  %250 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 83886104, ptr %245, align 8
  %shl.i.i208 = shl nuw i32 %and6, 8
  %or.i.i209 = or i32 %shl.i.i208, 3
  %wr_mid.i.i210 = getelementptr inbounds %struct.work_request_hdr, ptr %245, i32 0, i32 1
  %251 = ptrtoint ptr %wr_mid.i.i210 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %or.i.i209, ptr %wr_mid.i.i210, align 4
  %wr_lo.i.i211 = getelementptr inbounds %struct.work_request_hdr, ptr %245, i32 0, i32 2
  %252 = ptrtoint ptr %wr_lo.i.i211 to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 0, ptr %wr_lo.i.i211, align 8
  %or5.i.i212 = or i32 %and6, 83886080
  %ot.i.i213 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %245, i32 0, i32 1
  %253 = ptrtoint ptr %ot.i.i213 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %or5.i.i212, ptr %ot.i.i213, align 8
  %abs_id.i.i214 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %254 = ptrtoint ptr %abs_id.i.i214 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %abs_id.i.i214, align 2
  %256 = or i16 %255, -32768
  %257 = ptrtoint ptr %248 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %256, ptr %248, align 4
  %ftid.tr.i.i215 = trunc i32 %3 to i16
  %258 = shl i16 %ftid.tr.i.i215, 5
  %conv17.i.i216 = or i16 %258, 1
  %word_cookie.i.i217 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %245, i32 0, i32 3
  %259 = ptrtoint ptr %word_cookie.i.i217 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %conv17.i.i216, ptr %word_cookie.i.i217, align 2
  %mask18.i.i218 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %245, i32 0, i32 4
  %260 = ptrtoint ptr %mask18.i.i218 to i32
  call void @__asan_store8_noabort(i32 %260)
  store i64 576460752303423488, ptr %mask18.i.i218, align 8
  %val19.i.i219 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %245, i32 0, i32 5
  %261 = ptrtoint ptr %val19.i.i219 to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 576460752303423488, ptr %val19.i.i219, align 8
  %iport.i.i220 = getelementptr inbounds %struct.filter_entry, ptr %11, i32 0, i32 6, i32 11, i32 1
  %262 = ptrtoint ptr %iport.i.i220 to i32
  call void @__asan_load4_noabort(i32 %262)
  %bf.load.i.i221 = load i32, ptr %iport.i.i220, align 4
  %sh.diff.i.i222 = lshr i32 %bf.load.i.i221, 28
  %tr.sh.diff.i.i223 = trunc i32 %sh.diff.i.i222 to i16
  %263 = and i16 %tr.sh.diff.i.i223, 6
  %conv.i.i.i224 = or i16 %263, 1
  %queue_mapping1.i.i.i.i225 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i198, i32 0, i32 10
  %264 = ptrtoint ptr %queue_mapping1.i.i.i.i225 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %conv.i.i.i224, ptr %queue_mapping1.i.i.i.i225, align 8
  %call21.i.i226 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i.i198) #11
  br label %sw.epilog66

if.end57:                                         ; preds = %if.end16
  %pdev_dev56 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %265 = ptrtoint ptr %pdev_dev56 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %pdev_dev56, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %266, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18, i32 noundef %and5) #15
  %tobool58.not = icmp eq ptr %15, null
  br i1 %tobool58.not, label %if.end57.if.end65_crit_edge, label %if.then59

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.end57.thread:                                  ; preds = %if.end16
  %tobool58.not234 = icmp eq ptr %15, null
  br i1 %tobool58.not234, label %if.end57.thread.if.end65_crit_edge, label %if.end57.thread.if.end65.sink.split_crit_edge

if.end57.thread.if.end65.sink.split_crit_edge:    ; preds = %if.end57.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.sink.split

if.end57.thread.if.end65_crit_edge:               ; preds = %if.end57.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and5)
  %cmp60 = icmp eq i32 %and5, 3
  %spec.select = select i1 %cmp60, i32 -28, i32 -22
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %if.then59, %if.end57.thread.if.end65.sink.split_crit_edge
  %.sink = phi i32 [ -28, %if.end57.thread.if.end65.sink.split_crit_edge ], [ %spec.select, %if.then59 ]
  %result62 = getelementptr inbounds %struct.filter_ctx, ptr %15, i32 0, i32 2
  %267 = ptrtoint ptr %result62 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %.sink, ptr %result62, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.end57.thread.if.end65_crit_edge, %if.end57.if.end65_crit_edge
  tail call void @clear_filter(ptr noundef %adap, ptr noundef nonnull %11)
  tail call void @cxgb4_free_atid(ptr noundef %tids, i32 noundef %and2) #11
  tail call void @kfree(ptr noundef nonnull %11) #11
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %if.end65, %__skb_put_zero.exit.i.i227, %sw.bb50.sw.epilog66_crit_edge, %__skb_put_zero.exit.i.i194, %sw.bb48.sw.epilog66_crit_edge, %__skb_put_zero.exit.i.i163, %if.then45.sw.epilog66_crit_edge, %sw.bb39.sw.epilog66_crit_edge, %if.end36.sw.epilog66_crit_edge
  %tobool67.not = icmp eq ptr %15, null
  br i1 %tobool67.not, label %sw.epilog66.cleanup_crit_edge, label %if.then68

sw.epilog66.cleanup_crit_edge:                    ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then68:                                        ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @complete(ptr noundef nonnull %15) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %sw.epilog66.cleanup_crit_edge, %do.end14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_free_atid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @filter_rpl(ptr noundef %adap, ptr nocapture noundef readonly %rpl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rpl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rpl, align 8
  %and = and i32 %1, 16777215
  %nftids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 18
  %2 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nftids, align 8
  %nsftids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 23
  %4 = ptrtoint ptr %nsftids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsftids, align 4
  %add = add i32 %5, %3
  %ftid_tab = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 16
  %6 = ptrtoint ptr %ftid_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ftid_tab, align 64
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %hpftid_base = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 15
  %8 = ptrtoint ptr %hpftid_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hpftid_base, align 4
  %sub = sub i32 %and, %9
  %nhpftids = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 14
  %10 = ptrtoint ptr %nhpftids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nhpftids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %11)
  %cmp = icmp ult i32 %sub, %11
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %hpftid_tab = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 12
  %12 = ptrtoint ptr %hpftid_tab to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hpftid_tab, align 16
  %arrayidx = getelementptr %struct.filter_entry, ptr %13, i32 %sub
  br label %if.end17

if.else:                                          ; preds = %if.then
  %ftid_base = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 19
  %14 = ptrtoint ptr %ftid_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ftid_base, align 4
  %sub8 = sub i32 %and, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %add)
  %cmp9.not = icmp ult i32 %sub8, %add
  br i1 %cmp9.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx13 = getelementptr %struct.filter_entry, ptr %7, i32 %sub8
  %add16 = add i32 %sub8, %11
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then5
  %f.0 = phi ptr [ %arrayidx, %if.then5 ], [ %arrayidx13, %if.end ]
  %idx.0 = phi i32 [ %sub, %if.then5 ], [ %add16, %if.end ]
  %tid18 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 5
  %16 = ptrtoint ptr %tid18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tid18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %and)
  %cmp19.not = icmp ne i32 %17, %and
  %tobool23.not = icmp eq ptr %f.0, null
  %or.cond = select i1 %cmp19.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %if.end17.cleanup_crit_edge, label %if.then24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %if.end17
  %cookie = getelementptr inbounds %struct.cpl_set_tcb_rpl, ptr %rpl, i32 0, i32 2
  %18 = ptrtoint ptr %cookie to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cookie, align 2
  %20 = lshr i8 %19, 5
  %ctx26 = getelementptr inbounds %struct.filter_entry, ptr %f.0, i32 0, i32 1
  %21 = ptrtoint ptr %ctx26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx26, align 4
  store ptr null, ptr %ctx26, align 4
  %trunc = trunc i8 %20 to i3
  %23 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.47)
  switch i3 %trunc, label %do.end [
    i3 2, label %if.then30
    i3 1, label %if.then37
  ]

if.then30:                                        ; preds = %if.then24
  tail call void @clear_filter(ptr noundef %adap, ptr noundef nonnull %f.0)
  %cond = icmp eq ptr %22, null
  br i1 %cond, label %if.then30.cleanup_crit_edge, label %if.then32

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %result = getelementptr inbounds %struct.filter_ctx, ptr %22, i32 0, i32 2
  %24 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %result, align 4
  br label %if.then54

if.then37:                                        ; preds = %if.then24
  %25 = ptrtoint ptr %f.0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %f.0, align 8
  %bf.clear39 = and i8 %bf.load, 95
  %bf.set40 = or i8 %bf.clear39, -128
  store i8 %bf.set40, ptr %f.0, align 8
  %cond101 = icmp eq ptr %22, null
  br i1 %cond101, label %if.then37.cleanup_crit_edge, label %if.then42

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %result43 = getelementptr inbounds %struct.filter_ctx, ptr %22, i32 0, i32 2
  %26 = ptrtoint ptr %result43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %result43, align 4
  %tid44 = getelementptr inbounds %struct.filter_ctx, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %tid44 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %idx.0, ptr %tid44, align 4
  br label %if.then54

do.end:                                           ; preds = %if.then24
  %28 = zext i8 %20 to i32
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %29 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.23, i32 noundef %idx.0, i32 noundef %28) #15
  tail call void @clear_filter(ptr noundef %adap, ptr noundef nonnull %f.0)
  %cond102 = icmp eq ptr %22, null
  br i1 %cond102, label %do.end.cleanup_crit_edge, label %if.then48

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then48:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %result49 = getelementptr inbounds %struct.filter_ctx, ptr %22, i32 0, i32 2
  %31 = ptrtoint ptr %result49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -22, ptr %result49, align 4
  br label %if.then54

if.then54:                                        ; preds = %if.then48, %if.then42, %if.then32
  tail call void @complete(ptr noundef nonnull %22) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %do.end.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_hash_filter(ptr nocapture noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip, align 8
  %2 = and i32 %1, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 96
  br i1 %cmp.i.not, label %if.then, label %do.end29

if.then:                                          ; preds = %entry
  %offload.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 24
  %3 = ptrtoint ptr %offload.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 128
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %6, i32 32008
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !102
  %8 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %do.end, label %if.then3.if.end31_crit_edge

if.then3.if.end31_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %9 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25) #15
  br label %cleanup

if.else:                                          ; preds = %if.then
  %add.ptr.i44 = getelementptr i8, ptr %6, i32 105588
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #11, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !102
  %12 = and i32 %11, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %12)
  %cmp.not = icmp eq i32 %12, 67108864
  br i1 %cmp.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %pdev_dev13 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %13 = ptrtoint ptr %pdev_dev13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev_dev13, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 128
  %add.ptr.i45 = getelementptr i8, ptr %16, i32 105592
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #11, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !102
  %18 = and i32 %17, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp18.not = icmp eq i32 %18, 8
  br i1 %cmp18.not, label %if.end14.if.end31_crit_edge, label %do.end22

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %pdev_dev23 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %19 = ptrtoint ptr %pdev_dev23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev_dev23, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.28) #15
  br label %cleanup

do.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev_dev30 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %21 = ptrtoint ptr %pdev_dev30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev_dev30, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33) #15
  br label %cleanup

if.end31:                                         ; preds = %if.end14.if.end31_crit_edge, %if.then3.if.end31_crit_edge
  %hash_filter = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 28
  %23 = ptrtoint ptr %hash_filter to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %hash_filter, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end29, %do.end22, %do.end12, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_memory_rw(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_mk_filtdelwr(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_mgmt_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_alloc_atid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mk_act_open_req6(ptr noundef %f, ptr nocapture noundef %skb, i32 noundef %qid_filterid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !103

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put.exit:                                   ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 88
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %5, 88
  store i32 %add.i, ptr %len9.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 83886152, ptr %3, align 8
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %wr_lo, align 8
  %or = or i32 %qid_filterid, -2097152000
  %ot = getelementptr inbounds %struct.cpl_act_open_req6, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %ot, align 8
  %fs = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6
  %lport = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 8
  %10 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lport, align 4
  %local_port = getelementptr inbounds %struct.cpl_act_open_req6, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %local_port, align 4
  %fport = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 9
  %13 = ptrtoint ptr %fport to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fport, align 2
  %peer_port = getelementptr inbounds %struct.cpl_act_open_req6, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %peer_port to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %peer_port, align 2
  %lip = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 6
  %16 = ptrtoint ptr %lip to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %lip, align 1
  %local_ip_hi = getelementptr inbounds %struct.cpl_act_open_req6, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %local_ip_hi to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %local_ip_hi, align 8
  %add.ptr = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 6, i32 8
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr, align 8
  %local_ip_lo = getelementptr inbounds %struct.cpl_act_open_req6, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %local_ip_lo to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %local_ip_lo, align 8
  %fip = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 7
  %22 = ptrtoint ptr %fip to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %fip, align 1
  %peer_ip_hi = getelementptr inbounds %struct.cpl_act_open_req6, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %peer_ip_hi to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %peer_ip_hi, align 8
  %add.ptr15 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 7, i32 8
  %25 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr15, align 8
  %peer_ip_lo = getelementptr inbounds %struct.cpl_act_open_req6, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %peer_ip_lo to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %peer_ip_lo, align 8
  %28 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load = load i32, ptr %fs, align 8
  %l2t = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 2
  %29 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %l2t, align 8
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %__skb_put.exit.cond.end_crit_edge, label %cond.true

__skb_put.exit.cond.end_crit_edge:                ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idx, align 2
  %conv29 = zext i16 %32 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__skb_put.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv29, %cond.true ], [ 0, %__skb_put.exit.cond.end_crit_edge ]
  %33 = lshr i32 %bf.load, 6
  %.lobit = and i32 %33, 1
  %34 = zext i32 %.lobit to i64
  %shl = shl nuw nsw i64 %34, 49
  %35 = lshr i32 %bf.load, 26
  %shl25 = and i32 %35, 32
  %36 = zext i32 %shl25 to i64
  %or27 = or i64 %shl, %36
  %37 = zext i32 %cond to i64
  %shl31 = shl nuw nsw i64 %37, 36
  %or32 = or i64 %or27, %shl31
  %dev = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 4
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %call33 = tail call i32 @cxgb4_port_viid(ptr noundef %39) #11
  %and = shl i32 %call33, 1
  %shl34 = and i32 %and, 254
  %conv35 = zext i32 %shl34 to i64
  %shl36 = shl nuw nsw i64 %conv35, 28
  %or37 = or i64 %shl36, %or32
  %40 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load39 = load i32, ptr %fs, align 8
  %41 = lshr i32 %bf.load39, 8
  %shl42 = and i32 %41, 12
  %42 = zext i32 %shl42 to i64
  %or44 = or i64 %or37, %42
  %43 = lshr i32 %bf.load39, 21
  %shl49 = and i32 %43, 16
  %44 = zext i32 %shl49 to i64
  %or51 = or i64 %or44, %44
  %45 = and i32 %bf.load39, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool56.not = icmp eq i32 %45, 0
  %cond57 = select i1 %tobool56.not, i32 0, i32 1280
  %46 = zext i32 %cond57 to i64
  %or60 = or i64 %or51, %46
  %or62 = or i64 %or60, 281474976710784
  %opt0 = getelementptr inbounds %struct.cpl_act_open_req6, ptr %3, i32 0, i32 8
  %47 = ptrtoint ptr %opt0 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %or62, ptr %opt0, align 8
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %call65 = tail call fastcc i64 @hash_filter_ntuple(ptr noundef %fs, ptr noundef %49)
  %shl66 = shl i64 %call65, 24
  %params = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %3, i32 0, i32 11
  %50 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shl66, ptr %params, align 8
  %51 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load68 = load i32, ptr %fs, align 8
  %bf.lshr69 = lshr i32 %bf.load68, 14
  %bf.clear70 = and i32 %bf.lshr69, 1023
  %52 = shl i32 %bf.load68, 20
  %shl77 = and i32 %52, 58720256
  %or72 = or i32 %bf.clear70, %shl77
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %call81 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %54) #11
  %shl82 = shl i32 %call81, 26
  %or79 = or i32 %or72, %shl82
  %55 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load85 = load i32, ptr %fs, align 8
  %bf.lshr86 = lshr i32 %bf.load85, 13
  %bf.clear87 = and i32 %bf.lshr86, 1
  %56 = lshr i32 %bf.load85, 11
  %shl92 = and i32 %56, 2
  %or93 = or i32 %bf.clear87, %shl92
  %shl94 = shl nuw nsw i32 %or93, 16
  %or83 = or i32 %shl94, %or79
  %or95 = or i32 %or83, -2147482624
  %opt2 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %3, i32 0, i32 10
  %57 = ptrtoint ptr %opt2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or95, ptr %opt2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mk_act_open_req(ptr noundef %f, ptr nocapture noundef %skb, i32 noundef %qid_filterid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !103

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put.exit:                                   ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %5, 64
  store i32 %add.i, ptr %len9.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 83886128, ptr %3, align 8
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %wr_lo, align 8
  %or = or i32 %qid_filterid, 50331648
  %ot = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %ot, align 8
  %fs = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6
  %lport = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 8
  %10 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lport, align 4
  %local_port = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %local_port, align 4
  %fport = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 9
  %13 = ptrtoint ptr %fport to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fport, align 2
  %peer_port = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %peer_port to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %peer_port, align 2
  %local_ip = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 4
  %lip = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 6
  %16 = ptrtoint ptr %lip to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %lip, align 1
  %18 = ptrtoint ptr %local_ip to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %local_ip, align 8
  %peer_ip = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 5
  %fip = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 7
  %19 = ptrtoint ptr %fip to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %fip, align 1
  %21 = ptrtoint ptr %peer_ip to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %peer_ip, align 4
  %22 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load i32, ptr %fs, align 8
  %l2t = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 2
  %23 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %l2t, align 8
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %__skb_put.exit.cond.end_crit_edge, label %cond.true

__skb_put.exit.cond.end_crit_edge:                ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idx, align 2
  %conv23 = zext i16 %26 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %__skb_put.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv23, %cond.true ], [ 0, %__skb_put.exit.cond.end_crit_edge ]
  %27 = lshr i32 %bf.load, 6
  %.lobit = and i32 %27, 1
  %28 = zext i32 %.lobit to i64
  %shl = shl nuw nsw i64 %28, 49
  %29 = lshr i32 %bf.load, 26
  %shl19 = and i32 %29, 32
  %30 = zext i32 %shl19 to i64
  %or21 = or i64 %shl, %30
  %31 = zext i32 %cond to i64
  %shl25 = shl nuw nsw i64 %31, 36
  %or26 = or i64 %or21, %shl25
  %dev = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %call27 = tail call i32 @cxgb4_port_viid(ptr noundef %33) #11
  %and = shl i32 %call27, 1
  %shl28 = and i32 %and, 254
  %conv29 = zext i32 %shl28 to i64
  %shl30 = shl nuw nsw i64 %conv29, 28
  %or31 = or i64 %shl30, %or26
  %34 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load33 = load i32, ptr %fs, align 8
  %35 = lshr i32 %bf.load33, 8
  %shl36 = and i32 %35, 12
  %36 = zext i32 %shl36 to i64
  %or38 = or i64 %or31, %36
  %37 = lshr i32 %bf.load33, 21
  %shl43 = and i32 %37, 16
  %38 = zext i32 %shl43 to i64
  %or45 = or i64 %or38, %38
  %39 = and i32 %bf.load33, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool50.not = icmp eq i32 %39, 0
  %cond51 = select i1 %tobool50.not, i32 0, i32 1280
  %40 = zext i32 %cond51 to i64
  %or54 = or i64 %or45, %40
  %or56 = or i64 %or54, 281474976710784
  %opt0 = getelementptr inbounds %struct.cpl_act_open_req, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %opt0 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %or56, ptr %opt0, align 8
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  %call59 = tail call fastcc i64 @hash_filter_ntuple(ptr noundef %fs, ptr noundef %43)
  %shl60 = shl i64 %call59, 24
  %params = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %3, i32 0, i32 9
  %44 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %shl60, ptr %params, align 8
  %45 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load62 = load i32, ptr %fs, align 8
  %bf.lshr63 = lshr i32 %bf.load62, 14
  %bf.clear64 = and i32 %bf.lshr63, 1023
  %46 = shl i32 %bf.load62, 20
  %shl71 = and i32 %46, 58720256
  %or66 = or i32 %bf.clear64, %shl71
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %call75 = tail call i32 @cxgb4_port_e2cchan(ptr noundef %48) #11
  %shl76 = shl i32 %call75, 26
  %or73 = or i32 %or66, %shl76
  %49 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load79 = load i32, ptr %fs, align 8
  %bf.lshr80 = lshr i32 %bf.load79, 13
  %bf.clear81 = and i32 %bf.lshr80, 1
  %50 = lshr i32 %bf.load79, 11
  %shl86 = and i32 %50, 2
  %or87 = or i32 %bf.clear81, %shl86
  %shl88 = shl nuw nsw i32 %or87, 16
  %or77 = or i32 %shl88, %or73
  %or89 = or i32 %or77, -2147482624
  %opt2 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %3, i32 0, i32 8
  %51 = ptrtoint ptr %opt2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or89, ptr %opt2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_viid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @hash_filter_ntuple(ptr noundef readonly %fs, ptr nocapture noundef readonly %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %vlan_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 12
  %2 = ptrtoint ptr %vlan_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlan_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ivlan = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %ivlan to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %ivlan, align 4
  %5 = and i32 %bf.load, 16776960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %ivlan2 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %ivlan2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load3 = load i32, ptr %ivlan2, align 4
  %bf.lshr4 = lshr i32 %bf.load3, 8
  %bf.clear5 = and i32 %bf.lshr4, 65535
  %or = or i32 %bf.clear5, 65536
  %shl = shl i32 %or, %3
  %conv = zext i32 %shl to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ntuple.0 = phi i64 [ %conv, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %port_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 10
  %7 = ptrtoint ptr %port_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp8 = icmp sgt i32 %8, -1
  br i1 %cmp8, label %land.lhs.true10, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true10:                                  ; preds = %if.end
  %iport = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %iport to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load12 = load i32, ptr %iport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load12)
  %tobool14.not = icmp ult i32 %bf.load12, 536870912
  br i1 %tobool14.not, label %land.lhs.true10.if.end24_crit_edge, label %if.then15

land.lhs.true10.if.end24_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then15:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  %iport17 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %iport17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load18 = load i32, ptr %iport17, align 4
  %bf.lshr19 = lshr i32 %bf.load18, 29
  %conv20 = zext i32 %bf.lshr19 to i64
  %sh_prom = zext i32 %8 to i64
  %shl22 = shl i64 %conv20, %sh_prom
  %or23 = or i64 %shl22, %ntuple.0
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %land.lhs.true10.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %ntuple.1 = phi i64 [ %or23, %if.then15 ], [ %ntuple.0, %land.lhs.true10.if.end24_crit_edge ], [ %ntuple.0, %if.end.if.end24_crit_edge ]
  %protocol_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 14
  %11 = ptrtoint ptr %protocol_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %protocol_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp25 = icmp sgt i32 %12, -1
  br i1 %cmp25, label %if.then27, label %if.end24.if.end49_crit_edge

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then27:                                        ; preds = %if.end24
  %proto = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load29 = load i32, ptr %proto, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 18
  %bf.clear31 = and i32 %bf.lshr30, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear31)
  %tobool32.not = icmp eq i32 %bf.clear31, 0
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %sh_prom35 = zext i32 %12 to i64
  %shl36 = shl i64 6, %sh_prom35
  %or37 = or i64 %shl36, %ntuple.1
  br label %if.end49

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %conv43 = zext i32 %bf.clear31 to i64
  %sh_prom45 = zext i32 %12 to i64
  %shl46 = shl i64 %conv43, %sh_prom45
  %or47 = or i64 %shl46, %ntuple.1
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then33, %if.end24.if.end49_crit_edge
  %ntuple.2 = phi i64 [ %or47, %if.else ], [ %or37, %if.then33 ], [ %ntuple.1, %if.end24.if.end49_crit_edge ]
  %tos_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 13
  %14 = ptrtoint ptr %tos_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tos_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp50 = icmp sgt i32 %15, -1
  br i1 %cmp50, label %land.lhs.true52, label %if.end49.if.end69_crit_edge

if.end49.if.end69_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

land.lhs.true52:                                  ; preds = %if.end49
  %tos = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %tos to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load54 = load i32, ptr %tos, align 4
  %17 = and i32 %bf.load54, 261120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool57.not = icmp eq i32 %17, 0
  br i1 %tobool57.not, label %land.lhs.true52.if.end69_crit_edge, label %if.then58

land.lhs.true52.if.end69_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then58:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  %tos60 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %tos60 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load61 = load i32, ptr %tos60, align 4
  %bf.lshr62 = lshr i32 %bf.load61, 10
  %bf.clear63 = and i32 %bf.lshr62, 255
  %conv64 = zext i32 %bf.clear63 to i64
  %sh_prom66 = zext i32 %15 to i64
  %shl67 = shl i64 %conv64, %sh_prom66
  %or68 = or i64 %shl67, %ntuple.2
  br label %if.end69

if.end69:                                         ; preds = %if.then58, %land.lhs.true52.if.end69_crit_edge, %if.end49.if.end69_crit_edge
  %ntuple.3 = phi i64 [ %or68, %if.then58 ], [ %ntuple.2, %land.lhs.true52.if.end69_crit_edge ], [ %ntuple.2, %if.end49.if.end69_crit_edge ]
  %vnic_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 11
  %19 = ptrtoint ptr %vnic_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vnic_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp70 = icmp sgt i32 %20, -1
  br i1 %cmp70, label %if.then72, label %if.end69.if.end147_crit_edge

if.end69.if.end147_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then72:                                        ; preds = %if.end69
  %ingress_config = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 7
  %21 = ptrtoint ptr %ingress_config to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ingress_config, align 8
  %and = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %if.then72.if.else96_crit_edge, label %land.lhs.true76

if.then72.if.else96_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96

land.lhs.true76:                                  ; preds = %if.then72
  %mask77 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %23 = ptrtoint ptr %mask77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load78 = load i32, ptr %mask77, align 4
  %24 = and i32 %bf.load78, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool81.not = icmp eq i32 %24, 0
  br i1 %tobool81.not, label %land.lhs.true76.if.else96_crit_edge, label %if.then82

land.lhs.true76.if.else96_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96

if.then82:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #13
  %val83 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %25 = ptrtoint ptr %val83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load84 = load i32, ptr %val83, align 4
  %26 = shl i32 %bf.load84, 5
  %shl87 = and i32 %26, 65536
  %ovlan = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 3
  %27 = ptrtoint ptr %ovlan to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load89 = load i16, ptr %ovlan, align 4
  %bf.cast = zext i16 %bf.load89 to i32
  %or90 = or i32 %shl87, %bf.cast
  %conv91 = zext i32 %or90 to i64
  %sh_prom93 = zext i32 %20 to i64
  %shl94 = shl i64 %conv91, %sh_prom93
  %or95 = or i64 %shl94, %ntuple.3
  br label %if.end147

if.else96:                                        ; preds = %land.lhs.true76.if.else96_crit_edge, %if.then72.if.else96_crit_edge
  %and100 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else96.if.else129_crit_edge, label %land.lhs.true102

if.else96.if.else129_crit_edge:                   ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129

land.lhs.true102:                                 ; preds = %if.else96
  %mask103 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %28 = ptrtoint ptr %mask103 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load104 = load i32, ptr %mask103, align 4
  %29 = and i32 %bf.load104, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool107.not = icmp eq i32 %29, 0
  br i1 %tobool107.not, label %land.lhs.true102.if.else129_crit_edge, label %if.then108

land.lhs.true102.if.else129_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else129

if.then108:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #13
  %val109 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %30 = ptrtoint ptr %val109 to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load110 = load i32, ptr %val109, align 4
  %31 = shl i32 %bf.load110, 4
  %shl113 = and i32 %31, 65536
  %pf = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load115 = load i32, ptr %pf, align 4
  %33 = shl i32 %bf.load115, 11
  %shl118 = and i32 %33, 2088960
  %or119 = or i32 %shl118, %shl113
  %vf = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 2
  %34 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load121 = load i32, ptr %vf, align 4
  %bf.lshr122 = lshr i32 %bf.load121, 24
  %or123 = or i32 %or119, %bf.lshr122
  %conv124 = zext i32 %or123 to i64
  %sh_prom126 = zext i32 %20 to i64
  %shl127 = shl i64 %conv124, %sh_prom126
  %or128 = or i64 %shl127, %ntuple.3
  br label %if.end147

if.else129:                                       ; preds = %land.lhs.true102.if.else129_crit_edge, %if.else96.if.else129_crit_edge
  %val130 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %35 = ptrtoint ptr %val130 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load131 = load i32, ptr %val130, align 4
  %36 = shl i32 %bf.load131, 3
  %shl134 = and i32 %36, 65536
  %ovlan136 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 3
  %37 = ptrtoint ptr %ovlan136 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load137 = load i16, ptr %ovlan136, align 4
  %bf.cast138 = zext i16 %bf.load137 to i32
  %or139 = or i32 %shl134, %bf.cast138
  %conv140 = zext i32 %or139 to i64
  %sh_prom142 = zext i32 %20 to i64
  %shl143 = shl i64 %conv140, %sh_prom142
  %or144 = or i64 %shl143, %ntuple.3
  br label %if.end147

if.end147:                                        ; preds = %if.else129, %if.then108, %if.then82, %if.end69.if.end147_crit_edge
  %ntuple.4 = phi i64 [ %or95, %if.then82 ], [ %or128, %if.then108 ], [ %or144, %if.else129 ], [ %ntuple.3, %if.end69.if.end147_crit_edge ]
  %macmatch_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 16
  %38 = ptrtoint ptr %macmatch_shift to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %macmatch_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp148 = icmp sgt i32 %39, -1
  br i1 %cmp148, label %land.lhs.true150, label %if.end147.if.end166_crit_edge

if.end147.if.end166_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

land.lhs.true150:                                 ; preds = %if.end147
  %mask151 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %40 = ptrtoint ptr %mask151 to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load152 = load i32, ptr %mask151, align 4
  %41 = and i32 %bf.load152, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool155.not = icmp eq i32 %41, 0
  br i1 %tobool155.not, label %land.lhs.true150.if.end166_crit_edge, label %if.then156

land.lhs.true150.if.end166_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

if.then156:                                       ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #13
  %val157 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %42 = ptrtoint ptr %val157 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load158 = load i32, ptr %val157, align 4
  %bf.lshr159 = lshr i32 %bf.load158, 2
  %bf.clear160 = and i32 %bf.lshr159, 511
  %conv161 = zext i32 %bf.clear160 to i64
  %sh_prom163 = zext i32 %39 to i64
  %shl164 = shl i64 %conv161, %sh_prom163
  %or165 = or i64 %shl164, %ntuple.4
  br label %if.end166

if.end166:                                        ; preds = %if.then156, %land.lhs.true150.if.end166_crit_edge, %if.end147.if.end166_crit_edge
  %ntuple.5 = phi i64 [ %or165, %if.then156 ], [ %ntuple.4, %land.lhs.true150.if.end166_crit_edge ], [ %ntuple.4, %if.end147.if.end166_crit_edge ]
  %ethertype_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 15
  %43 = ptrtoint ptr %ethertype_shift to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ethertype_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp167 = icmp sgt i32 %44, -1
  br i1 %cmp167, label %land.lhs.true169, label %if.end166.if.end183_crit_edge

if.end166.if.end183_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end183

land.lhs.true169:                                 ; preds = %if.end166
  %mask170 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %45 = ptrtoint ptr %mask170 to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load171 = load i32, ptr %mask170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load171)
  %tobool173.not = icmp ult i32 %bf.load171, 65536
  br i1 %tobool173.not, label %land.lhs.true169.if.end183_crit_edge, label %if.then174

land.lhs.true169.if.end183_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end183

if.then174:                                       ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #13
  %val175 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %46 = ptrtoint ptr %val175 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load176 = load i32, ptr %val175, align 4
  %bf.lshr177 = lshr i32 %bf.load176, 16
  %conv178 = zext i32 %bf.lshr177 to i64
  %sh_prom180 = zext i32 %44 to i64
  %shl181 = shl i64 %conv178, %sh_prom180
  %or182 = or i64 %shl181, %ntuple.5
  br label %if.end183

if.end183:                                        ; preds = %if.then174, %land.lhs.true169.if.end183_crit_edge, %if.end166.if.end183_crit_edge
  %ntuple.6 = phi i64 [ %or182, %if.then174 ], [ %ntuple.5, %land.lhs.true169.if.end183_crit_edge ], [ %ntuple.5, %if.end166.if.end183_crit_edge ]
  %matchtype_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 17
  %47 = ptrtoint ptr %matchtype_shift to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %matchtype_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp184 = icmp sgt i32 %48, -1
  br i1 %cmp184, label %land.lhs.true186, label %if.end183.if.end203_crit_edge

if.end183.if.end203_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

land.lhs.true186:                                 ; preds = %if.end183
  %matchtype = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12, i32 1
  %49 = ptrtoint ptr %matchtype to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load188 = load i32, ptr %matchtype, align 4
  %50 = and i32 %bf.load188, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool191.not = icmp eq i32 %50, 0
  br i1 %tobool191.not, label %land.lhs.true186.if.end203_crit_edge, label %if.then192

land.lhs.true186.if.end203_crit_edge:             ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

if.then192:                                       ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #13
  %matchtype194 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %matchtype194 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load195 = load i32, ptr %matchtype194, align 4
  %bf.lshr196 = lshr i32 %bf.load195, 26
  %bf.clear197 = and i32 %bf.lshr196, 7
  %conv198 = zext i32 %bf.clear197 to i64
  %sh_prom200 = zext i32 %48 to i64
  %shl201 = shl i64 %conv198, %sh_prom200
  %or202 = or i64 %shl201, %ntuple.6
  br label %if.end203

if.end203:                                        ; preds = %if.then192, %land.lhs.true186.if.end203_crit_edge, %if.end183.if.end203_crit_edge
  %ntuple.7 = phi i64 [ %or202, %if.then192 ], [ %ntuple.6, %land.lhs.true186.if.end203_crit_edge ], [ %ntuple.6, %if.end183.if.end203_crit_edge ]
  %frag_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 18
  %52 = ptrtoint ptr %frag_shift to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %frag_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp204 = icmp sgt i32 %53, -1
  br i1 %cmp204, label %land.lhs.true206, label %if.end203.if.end222_crit_edge

if.end203.if.end222_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end222

land.lhs.true206:                                 ; preds = %if.end203
  %mask207 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %54 = ptrtoint ptr %mask207 to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load208 = load i32, ptr %mask207, align 4
  %55 = and i32 %bf.load208, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool211.not = icmp eq i32 %55, 0
  br i1 %tobool211.not, label %land.lhs.true206.if.end222_crit_edge, label %if.then212

land.lhs.true206.if.end222_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end222

if.then212:                                       ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #13
  %val213 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %56 = ptrtoint ptr %val213 to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load214 = load i32, ptr %val213, align 4
  %bf.lshr215 = lshr i32 %bf.load214, 15
  %bf.clear216 = and i32 %bf.lshr215, 1
  %conv217 = zext i32 %bf.clear216 to i64
  %sh_prom219 = zext i32 %53 to i64
  %shl220 = shl nuw i64 %conv217, %sh_prom219
  %or221 = or i64 %shl220, %ntuple.7
  br label %if.end222

if.end222:                                        ; preds = %if.then212, %land.lhs.true206.if.end222_crit_edge, %if.end203.if.end222_crit_edge
  %ntuple.8 = phi i64 [ %or221, %if.then212 ], [ %ntuple.7, %land.lhs.true206.if.end222_crit_edge ], [ %ntuple.7, %if.end203.if.end222_crit_edge ]
  %fcoe_shift = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 1, i32 9
  %57 = ptrtoint ptr %fcoe_shift to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fcoe_shift, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp223 = icmp sgt i32 %58, -1
  br i1 %cmp223, label %land.lhs.true225, label %if.end222.if.end241_crit_edge

if.end222.if.end241_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

land.lhs.true225:                                 ; preds = %if.end222
  %mask226 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 12
  %59 = ptrtoint ptr %mask226 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load227 = load i32, ptr %mask226, align 4
  %60 = and i32 %bf.load227, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool230.not = icmp eq i32 %60, 0
  br i1 %tobool230.not, label %land.lhs.true225.if.end241_crit_edge, label %if.then231

land.lhs.true225.if.end241_crit_edge:             ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.then231:                                       ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #13
  %val232 = getelementptr inbounds %struct.ch_filter_specification, ptr %fs, i32 0, i32 11
  %61 = ptrtoint ptr %val232 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load233 = load i32, ptr %val232, align 4
  %bf.lshr234 = lshr i32 %bf.load233, 1
  %bf.clear235 = and i32 %bf.lshr234, 1
  %conv236 = zext i32 %bf.clear235 to i64
  %sh_prom238 = zext i32 %58 to i64
  %shl239 = shl nuw i64 %conv236, %sh_prom238
  %or240 = or i64 %shl239, %ntuple.8
  br label %if.end241

if.end241:                                        ; preds = %if.then231, %land.lhs.true225.if.end241_crit_edge, %if.end222.if.end241_crit_edge
  %ntuple.9 = phi i64 [ %or240, %if.then231 ], [ %ntuple.8, %land.lhs.true225.if.end241_crit_edge ], [ %ntuple.8, %if.end222.if.end241_crit_edge ]
  ret i64 %ntuple.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_e2cchan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_allocate_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_nat_params(ptr noundef %adap, ptr noundef readonly %f, i32 noundef %tid, i1 noundef zeroext %dip, i1 noundef zeroext %sip, i1 noundef zeroext %dp, i1 noundef zeroext %sp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6
  %nat_lport = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 6
  %nat_fport = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 7
  br i1 %dip, label %if.then, label %entry.if.end122_crit_edge

entry.if.end122_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %fs, align 8
  %1 = and i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  %nat_lip99 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %arrayidx = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 15
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx11 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 14
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 2
  %conv12 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %or = or i32 %shl, %conv
  %arrayidx15 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 13
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  %shl17 = shl nuw nsw i32 %conv16, 16
  %or18 = or i32 %or, %shl17
  %conv19 = zext i32 %or18 to i64
  %arrayidx22 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 12
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx22, align 2
  %conv23 = zext i8 %9 to i64
  %shl24 = shl nuw nsw i64 %conv23, 24
  %or25 = or i64 %shl24, %conv19
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then7.set_tcb_field.exit_crit_edge, label %if.end.i

if.then7.set_tcb_field.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tcb_field.exit

if.end.i:                                         ; preds = %if.then7
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put_zero.exit.i, label %do.body3.i.i.i, !prof !103

do.body3.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 40
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %15, 40
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %16 = getelementptr inbounds i8, ptr %13, i32 20
  %17 = call ptr @memset(ptr %16, i32 0, i32 20)
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 83886104, ptr %13, align 8
  %shl.i = shl i32 %tid, 8
  %or.i = or i32 %shl.i, 3
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %wr_lo.i, align 8
  %or5.i = or i32 %tid, 83886080
  %ot.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or5.i, ptr %ot.i, align 8
  %abs_id.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %22 = ptrtoint ptr %abs_id.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %abs_id.i, align 2
  %24 = or i16 %23, -32768
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %16, align 4
  %ftid.tr.i = trunc i32 %tid to i16
  %26 = shl i16 %ftid.tr.i, 5
  %conv17.i = or i16 %26, 10
  %word_cookie.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 3
  %27 = ptrtoint ptr %word_cookie.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv17.i, ptr %word_cookie.i, align 2
  %mask18.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 4
  %28 = ptrtoint ptr %mask18.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 4294967295, ptr %mask18.i, align 8
  %val19.i = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 5
  %29 = ptrtoint ptr %val19.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or25, ptr %val19.i, align 8
  %iport.i = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %30 = ptrtoint ptr %iport.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i = load i32, ptr %iport.i, align 4
  %sh.diff.i = lshr i32 %bf.load.i, 28
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i16
  %31 = and i16 %tr.sh.diff.i, 6
  %conv.i.i = or i16 %31, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i, ptr %queue_mapping1.i.i.i, align 8
  %call21.i = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i) #11
  br label %set_tcb_field.exit

set_tcb_field.exit:                               ; preds = %__skb_put_zero.exit.i, %if.then7.set_tcb_field.exit_crit_edge
  %arrayidx28 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 11
  %33 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %34 to i32
  %arrayidx32 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 10
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx32, align 2
  %conv33 = zext i8 %36 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %or35 = or i32 %shl34, %conv29
  %arrayidx38 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 9
  %37 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %38 to i32
  %shl40 = shl nuw nsw i32 %conv39, 16
  %or41 = or i32 %or35, %shl40
  %conv42 = zext i32 %or41 to i64
  %arrayidx45 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 8
  %39 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx45, align 2
  %conv46 = zext i8 %40 to i64
  %shl47 = shl nuw nsw i64 %conv46, 24
  %or48 = or i64 %shl47, %conv42
  %call.i.i354 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i355 = icmp eq ptr %call.i.i354, null
  br i1 %tobool.not.i355, label %set_tcb_field.exit.set_tcb_field.exit386_crit_edge, label %if.end.i358

set_tcb_field.exit.set_tcb_field.exit386_crit_edge: ; preds = %set_tcb_field.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tcb_field.exit386

if.end.i358:                                      ; preds = %set_tcb_field.exit
  %data_len.i.i.i.i356 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i354, i32 0, i32 7
  %41 = ptrtoint ptr %data_len.i.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i.i.i356, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i.i.i357 = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i.i.i357, label %__skb_put_zero.exit.i384, label %do.body3.i.i.i359, !prof !103

do.body3.i.i.i359:                                ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i384:                         ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i360 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i354, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i.i.i360 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i.i360, align 8
  %add.ptr.i.i.i361 = getelementptr i8, ptr %44, i32 40
  store ptr %add.ptr.i.i.i361, ptr %tail.i.i.i.i360, align 8
  %len9.i.i.i362 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i354, i32 0, i32 6
  %45 = ptrtoint ptr %len9.i.i.i362 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len9.i.i.i362, align 4
  %add.i.i.i363 = add i32 %46, 40
  store i32 %add.i.i.i363, ptr %len9.i.i.i362, align 4
  %47 = getelementptr inbounds i8, ptr %44, i32 20
  %48 = call ptr @memset(ptr %47, i32 0, i32 20)
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 83886104, ptr %44, align 8
  %shl.i364 = shl i32 %tid, 8
  %or.i365 = or i32 %shl.i364, 3
  %wr_mid.i366 = getelementptr inbounds %struct.work_request_hdr, ptr %44, i32 0, i32 1
  %50 = ptrtoint ptr %wr_mid.i366 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i365, ptr %wr_mid.i366, align 4
  %wr_lo.i367 = getelementptr inbounds %struct.work_request_hdr, ptr %44, i32 0, i32 2
  %51 = ptrtoint ptr %wr_lo.i367 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %wr_lo.i367, align 8
  %or5.i368 = or i32 %tid, 83886080
  %ot.i369 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %ot.i369 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or5.i368, ptr %ot.i369, align 8
  %abs_id.i370 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %53 = ptrtoint ptr %abs_id.i370 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %abs_id.i370, align 2
  %55 = or i16 %54, -32768
  %56 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %47, align 4
  %ftid.tr.i372 = trunc i32 %tid to i16
  %57 = shl i16 %ftid.tr.i372, 5
  %conv17.i373 = or i16 %57, 11
  %word_cookie.i374 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %44, i32 0, i32 3
  %58 = ptrtoint ptr %word_cookie.i374 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv17.i373, ptr %word_cookie.i374, align 2
  %mask18.i375 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %44, i32 0, i32 4
  %59 = ptrtoint ptr %mask18.i375 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 4294967295, ptr %mask18.i375, align 8
  %val19.i376 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %44, i32 0, i32 5
  %60 = ptrtoint ptr %val19.i376 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %or48, ptr %val19.i376, align 8
  %iport.i377 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %61 = ptrtoint ptr %iport.i377 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i378 = load i32, ptr %iport.i377, align 4
  %sh.diff.i379 = lshr i32 %bf.load.i378, 28
  %tr.sh.diff.i380 = trunc i32 %sh.diff.i379 to i16
  %62 = and i16 %tr.sh.diff.i380, 6
  %conv.i.i381 = or i16 %62, 1
  %queue_mapping1.i.i.i382 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i354, i32 0, i32 10
  %63 = ptrtoint ptr %queue_mapping1.i.i.i382 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i.i381, ptr %queue_mapping1.i.i.i382, align 8
  %call21.i383 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i354) #11
  br label %set_tcb_field.exit386

set_tcb_field.exit386:                            ; preds = %__skb_put_zero.exit.i384, %set_tcb_field.exit.set_tcb_field.exit386_crit_edge
  %arrayidx52 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 7
  %64 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %65 to i32
  %arrayidx56 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 6
  %66 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx56, align 2
  %conv57 = zext i8 %67 to i32
  %shl58 = shl nuw nsw i32 %conv57, 8
  %or59 = or i32 %shl58, %conv53
  %arrayidx62 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 5
  %68 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %69 to i32
  %shl64 = shl nuw nsw i32 %conv63, 16
  %or65 = or i32 %or59, %shl64
  %conv66 = zext i32 %or65 to i64
  %arrayidx69 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 4
  %70 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx69, align 2
  %conv70 = zext i8 %71 to i64
  %shl71 = shl nuw nsw i64 %conv70, 24
  %or72 = or i64 %shl71, %conv66
  %call.i.i387 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i388 = icmp eq ptr %call.i.i387, null
  br i1 %tobool.not.i388, label %set_tcb_field.exit386.set_tcb_field.exit419_crit_edge, label %if.end.i391

set_tcb_field.exit386.set_tcb_field.exit419_crit_edge: ; preds = %set_tcb_field.exit386
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tcb_field.exit419

if.end.i391:                                      ; preds = %set_tcb_field.exit386
  %data_len.i.i.i.i389 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i387, i32 0, i32 7
  %72 = ptrtoint ptr %data_len.i.i.i.i389 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_len.i.i.i.i389, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not.i.i.i390 = icmp eq i32 %73, 0
  br i1 %tobool.i.not.i.i.i390, label %__skb_put_zero.exit.i417, label %do.body3.i.i.i392, !prof !103

do.body3.i.i.i392:                                ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i417:                         ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i393 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i387, i32 0, i32 16
  %74 = ptrtoint ptr %tail.i.i.i.i393 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i.i.i393, align 8
  %add.ptr.i.i.i394 = getelementptr i8, ptr %75, i32 40
  store ptr %add.ptr.i.i.i394, ptr %tail.i.i.i.i393, align 8
  %len9.i.i.i395 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i387, i32 0, i32 6
  %76 = ptrtoint ptr %len9.i.i.i395 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len9.i.i.i395, align 4
  %add.i.i.i396 = add i32 %77, 40
  store i32 %add.i.i.i396, ptr %len9.i.i.i395, align 4
  %78 = getelementptr inbounds i8, ptr %75, i32 20
  %79 = call ptr @memset(ptr %78, i32 0, i32 20)
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 83886104, ptr %75, align 8
  %shl.i397 = shl i32 %tid, 8
  %or.i398 = or i32 %shl.i397, 3
  %wr_mid.i399 = getelementptr inbounds %struct.work_request_hdr, ptr %75, i32 0, i32 1
  %81 = ptrtoint ptr %wr_mid.i399 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or.i398, ptr %wr_mid.i399, align 4
  %wr_lo.i400 = getelementptr inbounds %struct.work_request_hdr, ptr %75, i32 0, i32 2
  %82 = ptrtoint ptr %wr_lo.i400 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 0, ptr %wr_lo.i400, align 8
  %or5.i401 = or i32 %tid, 83886080
  %ot.i402 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %75, i32 0, i32 1
  %83 = ptrtoint ptr %ot.i402 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or5.i401, ptr %ot.i402, align 8
  %abs_id.i403 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %84 = ptrtoint ptr %abs_id.i403 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %abs_id.i403, align 2
  %86 = or i16 %85, -32768
  %87 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %78, align 4
  %ftid.tr.i405 = trunc i32 %tid to i16
  %88 = shl i16 %ftid.tr.i405, 5
  %conv17.i406 = or i16 %88, 12
  %word_cookie.i407 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %75, i32 0, i32 3
  %89 = ptrtoint ptr %word_cookie.i407 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv17.i406, ptr %word_cookie.i407, align 2
  %mask18.i408 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %75, i32 0, i32 4
  %90 = ptrtoint ptr %mask18.i408 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 4294967295, ptr %mask18.i408, align 8
  %val19.i409 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %75, i32 0, i32 5
  %91 = ptrtoint ptr %val19.i409 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %or72, ptr %val19.i409, align 8
  %iport.i410 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %92 = ptrtoint ptr %iport.i410 to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load.i411 = load i32, ptr %iport.i410, align 4
  %sh.diff.i412 = lshr i32 %bf.load.i411, 28
  %tr.sh.diff.i413 = trunc i32 %sh.diff.i412 to i16
  %93 = and i16 %tr.sh.diff.i413, 6
  %conv.i.i414 = or i16 %93, 1
  %queue_mapping1.i.i.i415 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i387, i32 0, i32 10
  %94 = ptrtoint ptr %queue_mapping1.i.i.i415 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i.i414, ptr %queue_mapping1.i.i.i415, align 8
  %call21.i416 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i387) #11
  br label %set_tcb_field.exit419

set_tcb_field.exit419:                            ; preds = %__skb_put_zero.exit.i417, %set_tcb_field.exit386.set_tcb_field.exit419_crit_edge
  %arrayidx76 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 3
  %95 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx76, align 1
  %arrayidx80 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 2
  %97 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx80, align 2
  %arrayidx86 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 1
  %99 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx86, align 1
  %101 = ptrtoint ptr %nat_lip99 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %nat_lip99, align 2
  %call.i.i420 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i421 = icmp eq ptr %call.i.i420, null
  br i1 %tobool.not.i421, label %set_tcb_field.exit419.if.end122_crit_edge, label %if.end.i424

set_tcb_field.exit419.if.end122_crit_edge:        ; preds = %set_tcb_field.exit419
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.end.i424:                                      ; preds = %set_tcb_field.exit419
  %conv94 = zext i8 %102 to i64
  %shl95 = shl nuw nsw i64 %conv94, 24
  %conv81 = zext i8 %98 to i32
  %shl82 = shl nuw nsw i32 %conv81, 8
  %conv77 = zext i8 %96 to i32
  %or83 = or i32 %shl82, %conv77
  %conv87 = zext i8 %100 to i32
  %shl88 = shl nuw nsw i32 %conv87, 16
  %or89 = or i32 %or83, %shl88
  %conv90 = zext i32 %or89 to i64
  %or96 = or i64 %shl95, %conv90
  %data_len.i.i.i.i422 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i420, i32 0, i32 7
  %103 = ptrtoint ptr %data_len.i.i.i.i422 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data_len.i.i.i.i422, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.i.not.i.i.i423 = icmp eq i32 %104, 0
  br i1 %tobool.i.not.i.i.i423, label %if.end.i424.if.end122.sink.split_crit_edge, label %do.body3.i.i.i425, !prof !103

if.end.i424.if.end122.sink.split_crit_edge:       ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122.sink.split

do.body3.i.i.i425:                                ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

if.else:                                          ; preds = %if.then
  %arrayidx100 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 3
  %105 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx100, align 1
  %arrayidx104 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 2
  %107 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx104, align 2
  %arrayidx110 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 4, i32 1
  %109 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx110, align 1
  %111 = ptrtoint ptr %nat_lip99 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %nat_lip99, align 2
  %call.i.i453 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i454 = icmp eq ptr %call.i.i453, null
  br i1 %tobool.not.i454, label %if.else.if.end122_crit_edge, label %if.end.i457

if.else.if.end122_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.end.i457:                                      ; preds = %if.else
  %conv118 = zext i8 %112 to i64
  %shl119 = shl nuw nsw i64 %conv118, 24
  %conv105 = zext i8 %108 to i32
  %shl106 = shl nuw nsw i32 %conv105, 8
  %conv101 = zext i8 %106 to i32
  %or107 = or i32 %shl106, %conv101
  %conv111 = zext i8 %110 to i32
  %shl112 = shl nuw nsw i32 %conv111, 16
  %or113 = or i32 %or107, %shl112
  %conv114 = zext i32 %or113 to i64
  %or120 = or i64 %shl119, %conv114
  %data_len.i.i.i.i455 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i453, i32 0, i32 7
  %113 = ptrtoint ptr %data_len.i.i.i.i455 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i.i.i.i455, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.i.not.i.i.i456 = icmp eq i32 %114, 0
  br i1 %tobool.i.not.i.i.i456, label %if.end.i457.if.end122.sink.split_crit_edge, label %do.body3.i.i.i458, !prof !103

if.end.i457.if.end122.sink.split_crit_edge:       ; preds = %if.end.i457
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122.sink.split

do.body3.i.i.i458:                                ; preds = %if.end.i457
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

if.end122.sink.split:                             ; preds = %if.end.i457.if.end122.sink.split_crit_edge, %if.end.i424.if.end122.sink.split_crit_edge
  %call.i.i420.sink = phi ptr [ %call.i.i420, %if.end.i424.if.end122.sink.split_crit_edge ], [ %call.i.i453, %if.end.i457.if.end122.sink.split_crit_edge ]
  %.sink688 = phi i16 [ 13, %if.end.i424.if.end122.sink.split_crit_edge ], [ 29, %if.end.i457.if.end122.sink.split_crit_edge ]
  %or120.sink = phi i64 [ %or96, %if.end.i424.if.end122.sink.split_crit_edge ], [ %or120, %if.end.i457.if.end122.sink.split_crit_edge ]
  %tail.i.i.i.i426.sink = getelementptr inbounds %struct.sk_buff, ptr %call.i.i420.sink, i32 0, i32 16
  %115 = ptrtoint ptr %tail.i.i.i.i426.sink to i32
  call void @__asan_load4_noabort(i32 %115)
  %.sink716 = load ptr, ptr %tail.i.i.i.i426.sink, align 8
  %add.ptr.i.i.i427 = getelementptr i8, ptr %.sink716, i32 40
  store ptr %add.ptr.i.i.i427, ptr %tail.i.i.i.i426.sink, align 8
  %len9.i.i.i428 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i420.sink, i32 0, i32 6
  %116 = ptrtoint ptr %len9.i.i.i428 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len9.i.i.i428, align 4
  %add.i.i.i429 = add i32 %117, 40
  store i32 %add.i.i.i429, ptr %len9.i.i.i428, align 4
  %118 = getelementptr inbounds i8, ptr %.sink716, i32 20
  %119 = call ptr @memset(ptr %118, i32 0, i32 20)
  %120 = ptrtoint ptr %.sink716 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 83886104, ptr %.sink716, align 8
  %shl.i463 = shl i32 %tid, 8
  %or.i464 = or i32 %shl.i463, 3
  %wr_mid.i465 = getelementptr inbounds %struct.work_request_hdr, ptr %.sink716, i32 0, i32 1
  %121 = ptrtoint ptr %wr_mid.i465 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or.i464, ptr %wr_mid.i465, align 4
  %wr_lo.i466 = getelementptr inbounds %struct.work_request_hdr, ptr %.sink716, i32 0, i32 2
  %122 = ptrtoint ptr %wr_lo.i466 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 0, ptr %wr_lo.i466, align 8
  %or5.i467 = or i32 %tid, 83886080
  %ot.i468 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %.sink716, i32 0, i32 1
  %123 = ptrtoint ptr %ot.i468 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or5.i467, ptr %ot.i468, align 8
  %abs_id.i469 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %124 = ptrtoint ptr %abs_id.i469 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %abs_id.i469, align 2
  %126 = or i16 %125, -32768
  %127 = ptrtoint ptr %118 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %118, align 4
  %ftid.tr.i471 = trunc i32 %tid to i16
  %128 = shl i16 %ftid.tr.i471, 5
  %conv17.i472 = or i16 %128, %.sink688
  %word_cookie.i473 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %.sink716, i32 0, i32 3
  %129 = ptrtoint ptr %word_cookie.i473 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv17.i472, ptr %word_cookie.i473, align 2
  %mask18.i474 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %.sink716, i32 0, i32 4
  %130 = ptrtoint ptr %mask18.i474 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 4294967295, ptr %mask18.i474, align 8
  %val19.i475 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %.sink716, i32 0, i32 5
  %131 = ptrtoint ptr %val19.i475 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %or120.sink, ptr %val19.i475, align 8
  %iport.i476 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %132 = ptrtoint ptr %iport.i476 to i32
  call void @__asan_load4_noabort(i32 %132)
  %bf.load.i477 = load i32, ptr %iport.i476, align 4
  %sh.diff.i478 = lshr i32 %bf.load.i477, 28
  %tr.sh.diff.i479 = trunc i32 %sh.diff.i478 to i16
  %133 = and i16 %tr.sh.diff.i479, 6
  %conv.i.i480 = or i16 %133, 1
  %queue_mapping1.i.i.i481 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i420.sink, i32 0, i32 10
  %134 = ptrtoint ptr %queue_mapping1.i.i.i481 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.i.i480, ptr %queue_mapping1.i.i.i481, align 8
  %call21.i482 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i420.sink) #11
  br label %if.end122

if.end122:                                        ; preds = %if.end122.sink.split, %if.else.if.end122_crit_edge, %set_tcb_field.exit419.if.end122_crit_edge, %entry.if.end122_crit_edge
  br i1 %sip, label %if.then124, label %if.end122.if.end252_crit_edge

if.end122.if.end252_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.then124:                                       ; preds = %if.end122
  %135 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %135)
  %bf.load126 = load i32, ptr %fs, align 8
  %136 = and i32 %bf.load126, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool129.not = icmp eq i32 %136, 0
  %nat_fip228 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5
  br i1 %tobool129.not, label %if.else226, label %if.then130

if.then130:                                       ; preds = %if.then124
  %arrayidx132 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 15
  %137 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %138 to i32
  %arrayidx136 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 14
  %139 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx136, align 2
  %conv137 = zext i8 %140 to i32
  %shl138 = shl nuw nsw i32 %conv137, 8
  %or139 = or i32 %shl138, %conv133
  %arrayidx142 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 13
  %141 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %142 to i32
  %shl144 = shl nuw nsw i32 %conv143, 16
  %or145 = or i32 %or139, %shl144
  %conv146 = zext i32 %or145 to i64
  %arrayidx149 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 12
  %143 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx149, align 2
  %conv150 = zext i8 %144 to i64
  %shl151 = shl nuw nsw i64 %conv150, 24
  %or152 = or i64 %shl151, %conv146
  %call.i.i486 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i487 = icmp eq ptr %call.i.i486, null
  br i1 %tobool.not.i487, label %if.then130.set_tcb_field.exit518_crit_edge, label %if.end.i490

if.then130.set_tcb_field.exit518_crit_edge:       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tcb_field.exit518

if.end.i490:                                      ; preds = %if.then130
  %data_len.i.i.i.i488 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i486, i32 0, i32 7
  %145 = ptrtoint ptr %data_len.i.i.i.i488 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %data_len.i.i.i.i488, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.i.not.i.i.i489 = icmp eq i32 %146, 0
  br i1 %tobool.i.not.i.i.i489, label %__skb_put_zero.exit.i516, label %do.body3.i.i.i491, !prof !103

do.body3.i.i.i491:                                ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i516:                         ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i492 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i486, i32 0, i32 16
  %147 = ptrtoint ptr %tail.i.i.i.i492 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tail.i.i.i.i492, align 8
  %add.ptr.i.i.i493 = getelementptr i8, ptr %148, i32 40
  store ptr %add.ptr.i.i.i493, ptr %tail.i.i.i.i492, align 8
  %len9.i.i.i494 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i486, i32 0, i32 6
  %149 = ptrtoint ptr %len9.i.i.i494 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len9.i.i.i494, align 4
  %add.i.i.i495 = add i32 %150, 40
  store i32 %add.i.i.i495, ptr %len9.i.i.i494, align 4
  %151 = getelementptr inbounds i8, ptr %148, i32 20
  %152 = call ptr @memset(ptr %151, i32 0, i32 20)
  %153 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 83886104, ptr %148, align 8
  %shl.i496 = shl i32 %tid, 8
  %or.i497 = or i32 %shl.i496, 3
  %wr_mid.i498 = getelementptr inbounds %struct.work_request_hdr, ptr %148, i32 0, i32 1
  %154 = ptrtoint ptr %wr_mid.i498 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or.i497, ptr %wr_mid.i498, align 4
  %wr_lo.i499 = getelementptr inbounds %struct.work_request_hdr, ptr %148, i32 0, i32 2
  %155 = ptrtoint ptr %wr_lo.i499 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 0, ptr %wr_lo.i499, align 8
  %or5.i500 = or i32 %tid, 83886080
  %ot.i501 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %148, i32 0, i32 1
  %156 = ptrtoint ptr %ot.i501 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or5.i500, ptr %ot.i501, align 8
  %abs_id.i502 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %157 = ptrtoint ptr %abs_id.i502 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %abs_id.i502, align 2
  %159 = or i16 %158, -32768
  %160 = ptrtoint ptr %151 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %151, align 4
  %ftid.tr.i504 = trunc i32 %tid to i16
  %161 = shl i16 %ftid.tr.i504, 5
  %conv17.i505 = or i16 %161, 27
  %word_cookie.i506 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %148, i32 0, i32 3
  %162 = ptrtoint ptr %word_cookie.i506 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv17.i505, ptr %word_cookie.i506, align 2
  %mask18.i507 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %148, i32 0, i32 4
  %163 = ptrtoint ptr %mask18.i507 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 4294967295, ptr %mask18.i507, align 8
  %val19.i508 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %148, i32 0, i32 5
  %164 = ptrtoint ptr %val19.i508 to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %or152, ptr %val19.i508, align 8
  %iport.i509 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %165 = ptrtoint ptr %iport.i509 to i32
  call void @__asan_load4_noabort(i32 %165)
  %bf.load.i510 = load i32, ptr %iport.i509, align 4
  %sh.diff.i511 = lshr i32 %bf.load.i510, 28
  %tr.sh.diff.i512 = trunc i32 %sh.diff.i511 to i16
  %166 = and i16 %tr.sh.diff.i512, 6
  %conv.i.i513 = or i16 %166, 1
  %queue_mapping1.i.i.i514 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i486, i32 0, i32 10
  %167 = ptrtoint ptr %queue_mapping1.i.i.i514 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i.i513, ptr %queue_mapping1.i.i.i514, align 8
  %call21.i515 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i486) #11
  br label %set_tcb_field.exit518

set_tcb_field.exit518:                            ; preds = %__skb_put_zero.exit.i516, %if.then130.set_tcb_field.exit518_crit_edge
  %arrayidx156 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 11
  %168 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %169 to i32
  %arrayidx160 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 10
  %170 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx160, align 2
  %conv161 = zext i8 %171 to i32
  %shl162 = shl nuw nsw i32 %conv161, 8
  %or163 = or i32 %shl162, %conv157
  %arrayidx166 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 9
  %172 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %173 to i32
  %shl168 = shl nuw nsw i32 %conv167, 16
  %or169 = or i32 %or163, %shl168
  %conv170 = zext i32 %or169 to i64
  %arrayidx173 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 8
  %174 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx173, align 2
  %conv174 = zext i8 %175 to i64
  %shl175 = shl nuw nsw i64 %conv174, 24
  %or176 = or i64 %shl175, %conv170
  %call.i.i519 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i520 = icmp eq ptr %call.i.i519, null
  br i1 %tobool.not.i520, label %set_tcb_field.exit518.set_tcb_field.exit551_crit_edge, label %if.end.i523

set_tcb_field.exit518.set_tcb_field.exit551_crit_edge: ; preds = %set_tcb_field.exit518
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tcb_field.exit551

if.end.i523:                                      ; preds = %set_tcb_field.exit518
  %data_len.i.i.i.i521 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i519, i32 0, i32 7
  %176 = ptrtoint ptr %data_len.i.i.i.i521 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %data_len.i.i.i.i521, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.i.not.i.i.i522 = icmp eq i32 %177, 0
  br i1 %tobool.i.not.i.i.i522, label %__skb_put_zero.exit.i549, label %do.body3.i.i.i524, !prof !103

do.body3.i.i.i524:                                ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i549:                         ; preds = %if.end.i523
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i525 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i519, i32 0, i32 16
  %178 = ptrtoint ptr %tail.i.i.i.i525 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %tail.i.i.i.i525, align 8
  %add.ptr.i.i.i526 = getelementptr i8, ptr %179, i32 40
  store ptr %add.ptr.i.i.i526, ptr %tail.i.i.i.i525, align 8
  %len9.i.i.i527 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i519, i32 0, i32 6
  %180 = ptrtoint ptr %len9.i.i.i527 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %len9.i.i.i527, align 4
  %add.i.i.i528 = add i32 %181, 40
  store i32 %add.i.i.i528, ptr %len9.i.i.i527, align 4
  %182 = getelementptr inbounds i8, ptr %179, i32 20
  %183 = call ptr @memset(ptr %182, i32 0, i32 20)
  %184 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 83886104, ptr %179, align 8
  %shl.i529 = shl i32 %tid, 8
  %or.i530 = or i32 %shl.i529, 3
  %wr_mid.i531 = getelementptr inbounds %struct.work_request_hdr, ptr %179, i32 0, i32 1
  %185 = ptrtoint ptr %wr_mid.i531 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or.i530, ptr %wr_mid.i531, align 4
  %wr_lo.i532 = getelementptr inbounds %struct.work_request_hdr, ptr %179, i32 0, i32 2
  %186 = ptrtoint ptr %wr_lo.i532 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 0, ptr %wr_lo.i532, align 8
  %or5.i533 = or i32 %tid, 83886080
  %ot.i534 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %179, i32 0, i32 1
  %187 = ptrtoint ptr %ot.i534 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or5.i533, ptr %ot.i534, align 8
  %abs_id.i535 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %188 = ptrtoint ptr %abs_id.i535 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %abs_id.i535, align 2
  %190 = or i16 %189, -32768
  %191 = ptrtoint ptr %182 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %182, align 4
  %ftid.tr.i537 = trunc i32 %tid to i16
  %192 = shl i16 %ftid.tr.i537, 5
  %conv17.i538 = or i16 %192, 28
  %word_cookie.i539 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %179, i32 0, i32 3
  %193 = ptrtoint ptr %word_cookie.i539 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv17.i538, ptr %word_cookie.i539, align 2
  %mask18.i540 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %179, i32 0, i32 4
  %194 = ptrtoint ptr %mask18.i540 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 4294967295, ptr %mask18.i540, align 8
  %val19.i541 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %179, i32 0, i32 5
  %195 = ptrtoint ptr %val19.i541 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %or176, ptr %val19.i541, align 8
  %iport.i542 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %196 = ptrtoint ptr %iport.i542 to i32
  call void @__asan_load4_noabort(i32 %196)
  %bf.load.i543 = load i32, ptr %iport.i542, align 4
  %sh.diff.i544 = lshr i32 %bf.load.i543, 28
  %tr.sh.diff.i545 = trunc i32 %sh.diff.i544 to i16
  %197 = and i16 %tr.sh.diff.i545, 6
  %conv.i.i546 = or i16 %197, 1
  %queue_mapping1.i.i.i547 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i519, i32 0, i32 10
  %198 = ptrtoint ptr %queue_mapping1.i.i.i547 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv.i.i546, ptr %queue_mapping1.i.i.i547, align 8
  %call21.i548 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i519) #11
  br label %set_tcb_field.exit551

set_tcb_field.exit551:                            ; preds = %__skb_put_zero.exit.i549, %set_tcb_field.exit518.set_tcb_field.exit551_crit_edge
  %arrayidx180 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 7
  %199 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx180, align 1
  %conv181 = zext i8 %200 to i32
  %arrayidx184 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 6
  %201 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx184, align 2
  %conv185 = zext i8 %202 to i32
  %shl186 = shl nuw nsw i32 %conv185, 8
  %or187 = or i32 %shl186, %conv181
  %arrayidx190 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 5
  %203 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %204 to i32
  %shl192 = shl nuw nsw i32 %conv191, 16
  %or193 = or i32 %or187, %shl192
  %conv194 = zext i32 %or193 to i64
  %arrayidx197 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 4
  %205 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx197, align 2
  %conv198 = zext i8 %206 to i64
  %shl199 = shl nuw nsw i64 %conv198, 24
  %or200 = or i64 %shl199, %conv194
  %call.i.i552 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i553 = icmp eq ptr %call.i.i552, null
  br i1 %tobool.not.i553, label %set_tcb_field.exit551.set_tcb_field.exit584_crit_edge, label %if.end.i556

set_tcb_field.exit551.set_tcb_field.exit584_crit_edge: ; preds = %set_tcb_field.exit551
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tcb_field.exit584

if.end.i556:                                      ; preds = %set_tcb_field.exit551
  %data_len.i.i.i.i554 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i552, i32 0, i32 7
  %207 = ptrtoint ptr %data_len.i.i.i.i554 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %data_len.i.i.i.i554, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.i.not.i.i.i555 = icmp eq i32 %208, 0
  br i1 %tobool.i.not.i.i.i555, label %__skb_put_zero.exit.i582, label %do.body3.i.i.i557, !prof !103

do.body3.i.i.i557:                                ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i582:                         ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i558 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i552, i32 0, i32 16
  %209 = ptrtoint ptr %tail.i.i.i.i558 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %tail.i.i.i.i558, align 8
  %add.ptr.i.i.i559 = getelementptr i8, ptr %210, i32 40
  store ptr %add.ptr.i.i.i559, ptr %tail.i.i.i.i558, align 8
  %len9.i.i.i560 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i552, i32 0, i32 6
  %211 = ptrtoint ptr %len9.i.i.i560 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %len9.i.i.i560, align 4
  %add.i.i.i561 = add i32 %212, 40
  store i32 %add.i.i.i561, ptr %len9.i.i.i560, align 4
  %213 = getelementptr inbounds i8, ptr %210, i32 20
  %214 = call ptr @memset(ptr %213, i32 0, i32 20)
  %215 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 83886104, ptr %210, align 8
  %shl.i562 = shl i32 %tid, 8
  %or.i563 = or i32 %shl.i562, 3
  %wr_mid.i564 = getelementptr inbounds %struct.work_request_hdr, ptr %210, i32 0, i32 1
  %216 = ptrtoint ptr %wr_mid.i564 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %or.i563, ptr %wr_mid.i564, align 4
  %wr_lo.i565 = getelementptr inbounds %struct.work_request_hdr, ptr %210, i32 0, i32 2
  %217 = ptrtoint ptr %wr_lo.i565 to i32
  call void @__asan_store8_noabort(i32 %217)
  store i64 0, ptr %wr_lo.i565, align 8
  %or5.i566 = or i32 %tid, 83886080
  %ot.i567 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %210, i32 0, i32 1
  %218 = ptrtoint ptr %ot.i567 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %or5.i566, ptr %ot.i567, align 8
  %abs_id.i568 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %219 = ptrtoint ptr %abs_id.i568 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %abs_id.i568, align 2
  %221 = or i16 %220, -32768
  %222 = ptrtoint ptr %213 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %213, align 4
  %ftid.tr.i570 = trunc i32 %tid to i16
  %223 = shl i16 %ftid.tr.i570, 5
  %conv17.i571 = or i16 %223, 29
  %word_cookie.i572 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %210, i32 0, i32 3
  %224 = ptrtoint ptr %word_cookie.i572 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %conv17.i571, ptr %word_cookie.i572, align 2
  %mask18.i573 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %210, i32 0, i32 4
  %225 = ptrtoint ptr %mask18.i573 to i32
  call void @__asan_store8_noabort(i32 %225)
  store i64 4294967295, ptr %mask18.i573, align 8
  %val19.i574 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %210, i32 0, i32 5
  %226 = ptrtoint ptr %val19.i574 to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %or200, ptr %val19.i574, align 8
  %iport.i575 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %227 = ptrtoint ptr %iport.i575 to i32
  call void @__asan_load4_noabort(i32 %227)
  %bf.load.i576 = load i32, ptr %iport.i575, align 4
  %sh.diff.i577 = lshr i32 %bf.load.i576, 28
  %tr.sh.diff.i578 = trunc i32 %sh.diff.i577 to i16
  %228 = and i16 %tr.sh.diff.i578, 6
  %conv.i.i579 = or i16 %228, 1
  %queue_mapping1.i.i.i580 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i552, i32 0, i32 10
  %229 = ptrtoint ptr %queue_mapping1.i.i.i580 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv.i.i579, ptr %queue_mapping1.i.i.i580, align 8
  %call21.i581 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i552) #11
  br label %set_tcb_field.exit584

set_tcb_field.exit584:                            ; preds = %__skb_put_zero.exit.i582, %set_tcb_field.exit551.set_tcb_field.exit584_crit_edge
  %arrayidx204 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 3
  %230 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx204, align 1
  %arrayidx208 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 2
  %232 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx208, align 2
  %arrayidx214 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 1
  %234 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx214, align 1
  %236 = ptrtoint ptr %nat_fip228 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %nat_fip228, align 2
  %call.i.i585 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i586 = icmp eq ptr %call.i.i585, null
  br i1 %tobool.not.i586, label %set_tcb_field.exit584.if.end252_crit_edge, label %if.end.i589

set_tcb_field.exit584.if.end252_crit_edge:        ; preds = %set_tcb_field.exit584
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.end.i589:                                      ; preds = %set_tcb_field.exit584
  %conv222 = zext i8 %237 to i64
  %shl223 = shl nuw nsw i64 %conv222, 24
  %conv209 = zext i8 %233 to i32
  %shl210 = shl nuw nsw i32 %conv209, 8
  %conv205 = zext i8 %231 to i32
  %or211 = or i32 %shl210, %conv205
  %conv215 = zext i8 %235 to i32
  %shl216 = shl nuw nsw i32 %conv215, 16
  %or217 = or i32 %or211, %shl216
  %conv218 = zext i32 %or217 to i64
  %or224 = or i64 %shl223, %conv218
  %data_len.i.i.i.i587 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i585, i32 0, i32 7
  %238 = ptrtoint ptr %data_len.i.i.i.i587 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %data_len.i.i.i.i587, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool.i.not.i.i.i588 = icmp eq i32 %239, 0
  br i1 %tobool.i.not.i.i.i588, label %if.end.i589.if.end252.sink.split_crit_edge, label %do.body3.i.i.i590, !prof !103

if.end.i589.if.end252.sink.split_crit_edge:       ; preds = %if.end.i589
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252.sink.split

do.body3.i.i.i590:                                ; preds = %if.end.i589
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

if.else226:                                       ; preds = %if.then124
  %arrayidx229 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 3
  %240 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx229, align 1
  %arrayidx233 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 2
  %242 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx233, align 2
  %arrayidx239 = getelementptr %struct.filter_entry, ptr %f, i32 0, i32 6, i32 5, i32 1
  %244 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx239, align 1
  %246 = ptrtoint ptr %nat_fip228 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %nat_fip228, align 2
  %call.i.i618 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i619 = icmp eq ptr %call.i.i618, null
  br i1 %tobool.not.i619, label %if.else226.if.end252_crit_edge, label %if.end.i622

if.else226.if.end252_crit_edge:                   ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.end.i622:                                      ; preds = %if.else226
  %conv247 = zext i8 %247 to i64
  %shl248 = shl nuw nsw i64 %conv247, 24
  %conv234 = zext i8 %243 to i32
  %shl235 = shl nuw nsw i32 %conv234, 8
  %conv230 = zext i8 %241 to i32
  %or236 = or i32 %shl235, %conv230
  %conv240 = zext i8 %245 to i32
  %shl241 = shl nuw nsw i32 %conv240, 16
  %or242 = or i32 %or236, %shl241
  %conv243 = zext i32 %or242 to i64
  %or249 = or i64 %shl248, %conv243
  %data_len.i.i.i.i620 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i618, i32 0, i32 7
  %248 = ptrtoint ptr %data_len.i.i.i.i620 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %data_len.i.i.i.i620, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool.i.not.i.i.i621 = icmp eq i32 %249, 0
  br i1 %tobool.i.not.i.i.i621, label %if.end.i622.if.end252.sink.split_crit_edge, label %do.body3.i.i.i623, !prof !103

if.end.i622.if.end252.sink.split_crit_edge:       ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252.sink.split

do.body3.i.i.i623:                                ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

if.end252.sink.split:                             ; preds = %if.end.i622.if.end252.sink.split_crit_edge, %if.end.i589.if.end252.sink.split_crit_edge
  %call.i.i585.sink = phi ptr [ %call.i.i585, %if.end.i589.if.end252.sink.split_crit_edge ], [ %call.i.i618, %if.end.i622.if.end252.sink.split_crit_edge ]
  %or249.sink = phi i64 [ %or224, %if.end.i589.if.end252.sink.split_crit_edge ], [ %or249, %if.end.i622.if.end252.sink.split_crit_edge ]
  %tail.i.i.i.i591.sink = getelementptr inbounds %struct.sk_buff, ptr %call.i.i585.sink, i32 0, i32 16
  %250 = ptrtoint ptr %tail.i.i.i.i591.sink to i32
  call void @__asan_load4_noabort(i32 %250)
  %.sink717 = load ptr, ptr %tail.i.i.i.i591.sink, align 8
  %add.ptr.i.i.i592 = getelementptr i8, ptr %.sink717, i32 40
  store ptr %add.ptr.i.i.i592, ptr %tail.i.i.i.i591.sink, align 8
  %len9.i.i.i593 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i585.sink, i32 0, i32 6
  %251 = ptrtoint ptr %len9.i.i.i593 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %len9.i.i.i593, align 4
  %add.i.i.i594 = add i32 %252, 40
  store i32 %add.i.i.i594, ptr %len9.i.i.i593, align 4
  %253 = getelementptr inbounds i8, ptr %.sink717, i32 20
  %254 = call ptr @memset(ptr %253, i32 0, i32 20)
  %255 = ptrtoint ptr %.sink717 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 83886104, ptr %.sink717, align 8
  %shl.i628 = shl i32 %tid, 8
  %or.i629 = or i32 %shl.i628, 3
  %wr_mid.i630 = getelementptr inbounds %struct.work_request_hdr, ptr %.sink717, i32 0, i32 1
  %256 = ptrtoint ptr %wr_mid.i630 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %or.i629, ptr %wr_mid.i630, align 4
  %wr_lo.i631 = getelementptr inbounds %struct.work_request_hdr, ptr %.sink717, i32 0, i32 2
  %257 = ptrtoint ptr %wr_lo.i631 to i32
  call void @__asan_store8_noabort(i32 %257)
  store i64 0, ptr %wr_lo.i631, align 8
  %or5.i632 = or i32 %tid, 83886080
  %ot.i633 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %.sink717, i32 0, i32 1
  %258 = ptrtoint ptr %ot.i633 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %or5.i632, ptr %ot.i633, align 8
  %abs_id.i634 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %259 = ptrtoint ptr %abs_id.i634 to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %abs_id.i634, align 2
  %261 = or i16 %260, -32768
  %262 = ptrtoint ptr %253 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %261, ptr %253, align 4
  %ftid.tr.i636 = trunc i32 %tid to i16
  %263 = shl i16 %ftid.tr.i636, 5
  %conv17.i637 = or i16 %263, 30
  %word_cookie.i638 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %.sink717, i32 0, i32 3
  %264 = ptrtoint ptr %word_cookie.i638 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %conv17.i637, ptr %word_cookie.i638, align 2
  %mask18.i639 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %.sink717, i32 0, i32 4
  %265 = ptrtoint ptr %mask18.i639 to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 4294967295, ptr %mask18.i639, align 8
  %val19.i640 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %.sink717, i32 0, i32 5
  %266 = ptrtoint ptr %val19.i640 to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %or249.sink, ptr %val19.i640, align 8
  %iport.i641 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %267 = ptrtoint ptr %iport.i641 to i32
  call void @__asan_load4_noabort(i32 %267)
  %bf.load.i642 = load i32, ptr %iport.i641, align 4
  %sh.diff.i643 = lshr i32 %bf.load.i642, 28
  %tr.sh.diff.i644 = trunc i32 %sh.diff.i643 to i16
  %268 = and i16 %tr.sh.diff.i644, 6
  %conv.i.i645 = or i16 %268, 1
  %queue_mapping1.i.i.i646 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i585.sink, i32 0, i32 10
  %269 = ptrtoint ptr %queue_mapping1.i.i.i646 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv.i.i645, ptr %queue_mapping1.i.i.i646, align 8
  %call21.i647 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i585.sink) #11
  br label %if.end252

if.end252:                                        ; preds = %if.end252.sink.split, %if.else226.if.end252_crit_edge, %set_tcb_field.exit584.if.end252_crit_edge, %if.end122.if.end252_crit_edge
  br i1 %dp, label %cond.true, label %if.end252.cond.end_crit_edge

if.end252.cond.end_crit_edge:                     ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx255 = getelementptr i8, ptr %nat_lport, i32 1
  %270 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx255, align 1
  %conv256 = zext i8 %271 to i32
  %272 = ptrtoint ptr %nat_lport to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %nat_lport, align 1
  %conv258 = zext i8 %273 to i32
  %shl259 = shl nuw nsw i32 %conv258, 8
  %or260 = or i32 %shl259, %conv256
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end252.cond.end_crit_edge
  %cond = phi i32 [ %or260, %cond.true ], [ 0, %if.end252.cond.end_crit_edge ]
  br i1 %sp, label %cond.true264, label %cond.end.cond.end274_crit_edge

cond.end.cond.end274_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end274

cond.true264:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx265 = getelementptr i8, ptr %nat_fport, i32 1
  %274 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx265, align 1
  %conv266 = zext i8 %275 to i32
  %shl267 = shl nuw nsw i32 %conv266, 16
  %276 = zext i32 %shl267 to i64
  %277 = ptrtoint ptr %nat_fport to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %nat_fport, align 1
  %conv270 = zext i8 %278 to i64
  %shl271 = shl nuw nsw i64 %conv270, 24
  %or272 = or i64 %shl271, %276
  br label %cond.end274

cond.end274:                                      ; preds = %cond.true264, %cond.end.cond.end274_crit_edge
  %cond275 = phi i64 [ %or272, %cond.true264 ], [ 0, %cond.end.cond.end274_crit_edge ]
  %conv261 = sext i32 %cond to i64
  %or276 = or i64 %cond275, %conv261
  %call.i.i651 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i652 = icmp eq ptr %call.i.i651, null
  br i1 %tobool.not.i652, label %cond.end274.set_tcb_field.exit683_crit_edge, label %if.end.i655

cond.end274.set_tcb_field.exit683_crit_edge:      ; preds = %cond.end274
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tcb_field.exit683

if.end.i655:                                      ; preds = %cond.end274
  %data_len.i.i.i.i653 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i651, i32 0, i32 7
  %279 = ptrtoint ptr %data_len.i.i.i.i653 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %data_len.i.i.i.i653, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool.i.not.i.i.i654 = icmp eq i32 %280, 0
  br i1 %tobool.i.not.i.i.i654, label %__skb_put_zero.exit.i681, label %do.body3.i.i.i656, !prof !103

do.body3.i.i.i656:                                ; preds = %if.end.i655
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !104
  unreachable

__skb_put_zero.exit.i681:                         ; preds = %if.end.i655
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i.i657 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i651, i32 0, i32 16
  %281 = ptrtoint ptr %tail.i.i.i.i657 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %tail.i.i.i.i657, align 8
  %add.ptr.i.i.i658 = getelementptr i8, ptr %282, i32 40
  store ptr %add.ptr.i.i.i658, ptr %tail.i.i.i.i657, align 8
  %len9.i.i.i659 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i651, i32 0, i32 6
  %283 = ptrtoint ptr %len9.i.i.i659 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %len9.i.i.i659, align 4
  %add.i.i.i660 = add i32 %284, 40
  store i32 %add.i.i.i660, ptr %len9.i.i.i659, align 4
  %285 = getelementptr inbounds i8, ptr %282, i32 20
  %286 = call ptr @memset(ptr %285, i32 0, i32 20)
  %287 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 83886104, ptr %282, align 8
  %shl.i661 = shl i32 %tid, 8
  %or.i662 = or i32 %shl.i661, 3
  %wr_mid.i663 = getelementptr inbounds %struct.work_request_hdr, ptr %282, i32 0, i32 1
  %288 = ptrtoint ptr %wr_mid.i663 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %or.i662, ptr %wr_mid.i663, align 4
  %wr_lo.i664 = getelementptr inbounds %struct.work_request_hdr, ptr %282, i32 0, i32 2
  %289 = ptrtoint ptr %wr_lo.i664 to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 0, ptr %wr_lo.i664, align 8
  %or5.i665 = or i32 %tid, 83886080
  %ot.i666 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %282, i32 0, i32 1
  %290 = ptrtoint ptr %ot.i666 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %or5.i665, ptr %ot.i666, align 8
  %abs_id.i667 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 12
  %291 = ptrtoint ptr %abs_id.i667 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %abs_id.i667, align 2
  %293 = or i16 %292, -32768
  %294 = ptrtoint ptr %285 to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 %293, ptr %285, align 4
  %ftid.tr.i669 = trunc i32 %tid to i16
  %295 = shl i16 %ftid.tr.i669, 5
  %conv17.i670 = or i16 %295, 31
  %word_cookie.i671 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %282, i32 0, i32 3
  %296 = ptrtoint ptr %word_cookie.i671 to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv17.i670, ptr %word_cookie.i671, align 2
  %mask18.i672 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %282, i32 0, i32 4
  %297 = ptrtoint ptr %mask18.i672 to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 4294967295, ptr %mask18.i672, align 8
  %val19.i673 = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %282, i32 0, i32 5
  %298 = ptrtoint ptr %val19.i673 to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 %or276, ptr %val19.i673, align 8
  %iport.i674 = getelementptr inbounds %struct.filter_entry, ptr %f, i32 0, i32 6, i32 11, i32 1
  %299 = ptrtoint ptr %iport.i674 to i32
  call void @__asan_load4_noabort(i32 %299)
  %bf.load.i675 = load i32, ptr %iport.i674, align 4
  %sh.diff.i676 = lshr i32 %bf.load.i675, 28
  %tr.sh.diff.i677 = trunc i32 %sh.diff.i676 to i16
  %300 = and i16 %tr.sh.diff.i677, 6
  %conv.i.i678 = or i16 %300, 1
  %queue_mapping1.i.i.i679 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i651, i32 0, i32 10
  %301 = ptrtoint ptr %queue_mapping1.i.i.i679 to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 %conv.i.i678, ptr %queue_mapping1.i.i.i679, align 8
  %call21.i680 = tail call i32 @t4_ofld_send(ptr noundef %adap, ptr noundef nonnull %call.i.i651) #11
  br label %set_tcb_field.exit683

set_tcb_field.exit683:                            ; preds = %__skb_put_zero.exit.i681, %cond.end274.set_tcb_field.exit683_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1542, i32 19}
!2 = !{ptr @__func__.__cxgb4_set_filter, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1543, i32 7}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1592, i32 5}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__cxgb4_set_filter._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @__cxgb4_set_filter._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1604, i32 5}
!13 = !{ptr @__cxgb4_set_filter._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @__cxgb4_set_filter._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1616, i32 6}
!17 = !{ptr @__cxgb4_set_filter._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @__cxgb4_set_filter._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1632, i32 5}
!21 = !{ptr @__cxgb4_set_filter._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @__cxgb4_set_filter._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__cxgb4_set_filter.match_all_mac, !24, !"match_all_mac", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1691, i32 20}
!25 = !{ptr @__func__.__cxgb4_del_filter, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1814, i32 7}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1976, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @hash_del_filter_rpl.__UNIQUE_ID_ddebug659, !28, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1981, i32 3}
!34 = !{ptr @hash_del_filter_rpl._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hash_del_filter_rpl._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 2005, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hash_filter_rpl.__UNIQUE_ID_ddebug660, !37, !"__UNIQUE_ID_ddebug660", i1 false, i1 false}
!40 = !{ptr @hash_filter_rpl._entry, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 2010, i32 3}
!42 = !{ptr @hash_filter_rpl._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 2056, i32 4}
!45 = !{ptr @hash_filter_rpl._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @hash_filter_rpl._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 2129, i32 4}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @filter_rpl._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @filter_rpl._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 2151, i32 5}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @init_hash_filter._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @init_hash_filter._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 2157, i32 5}
!59 = !{ptr @init_hash_filter._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @init_hash_filter._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @init_hash_filter._entry.30, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 2163, i32 5}
!63 = !{ptr @init_hash_filter._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 2169, i32 3}
!66 = !{ptr @init_hash_filter._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @init_hash_filter._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @cxgb4_set_hash_filter.match_all_mac, !69, !"match_all_mac", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1444, i32 20}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1749, i32 2}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cxgb4_del_hash_filter.__UNIQUE_ID_ddebug658, !71, !"__UNIQUE_ID_ddebug658", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1757, i32 19}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1775, i32 19}
!78 = !{ptr @init_completion.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/completion.h", i32 87, i32 2}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 1959, i32 4}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @configure_filter_tcb._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @configure_filter_tcb._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_filter.c", i32 159, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @configure_filter_smac._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @configure_filter_smac._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
!101 = !{i64 6168567}
!102 = !{i64 2160015121}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2154688145, i64 2154688633, i64 2154688182, i64 2154688238, i64 2154688272, i64 2154688296, i64 2154688337, i64 2154688358, i64 2154688386, i64 2154688420}
!105 = !{i8 0, i8 2}
!106 = !{i64 2148974740, i64 2148974745, i64 2148974758, i64 2148974802, i64 2148974836, i64 2148974857}
!107 = !{i64 2148524316, i64 2148524342, i64 2148524371, i64 2148524405, i64 2148524436, i64 2148524459}
