; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dcb_app = type { i8, i8, i16 }
%struct.port_info = type { ptr, i16, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, %struct.link_config, ptr, %struct.port_stats, %struct.port_dcb_info, %struct.cxgb_fcoe, i8, %struct.hwtstamp_config, i8, ptr, i32, i8, i8, i8, i8, i8, i16, i16, i32, %struct.mutex, %struct.cxgb4_ethtool_lb_test }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.port_dcb_info = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x %struct.app_priority] }
%struct.app_priority = type { i8, i8, i16 }
%struct.cxgb_fcoe = type { i8 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cxgb4_ethtool_lb_test = type { %struct.completion, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.hlist_node = type { ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
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
%struct.fw_port_cmd = type { i32, i32, %union.fw_port }
%union.fw_port = type { %struct.fw_port_info }
%struct.fw_port_info = type { i32, i16, i16, i16, i8, i8, i8, i8, i16, i64 }
%struct.fw_port_dcb_control = type { i8, i8, i16, i32, i64 }
%struct.fw_port_dcb_pgrate = type { i8, i8, [5 x i8], i8, [8 x i8], [8 x i8] }
%struct.fw_port_dcb_pfc = type { i8, i8, [5 x i8], i8, i64 }
%struct.fw_port_app_priority = type { i8, [2 x i8], i8, i8, i8, i16, i64 }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.dcb_peer_app_info = type { i8, i8 }
%struct.cee_pg = type { i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cee_pfc = type { i8, i8, i8, i8 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.187, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.187 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DCBx-CIN\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DCBx-CEE 1.01\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DCBx-IEEE\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Auto Negotiated\00", [16 x i8] zeroinitializer }, align 32
@dcb_ver_array = dso_local constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.5], [32 x i8] zeroinitializer }, align 32
@cxgb4_dcb_state_init.__UNIQUE_ID_ddebug658 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cxgb4\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgb4_dcb_state_init\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Initializing DCB state for port[%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@cxgb4_dcb_state_fsm.__UNIQUE_ID_ddebug659 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.8, ptr @.str.11, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgb4_dcb_state_fsm\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: State change from %d to %d for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@cxgb4_dcb_state_fsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.8, i32 263, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cxgb4_dcb_state_fsm: illegal input symbol %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxgb4_dcb_state_fsm._entry_ptr = internal global ptr @cxgb4_dcb_state_fsm._entry, section ".printk_index", align 4
@cxgb4_dcb_state_fsm._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.8, i32 268, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"cxgb4_dcb_state_fsm: bad state transition, state = %d, input = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cxgb4_dcb_state_fsm._entry_ptr.17 = internal global ptr @cxgb4_dcb_state_fsm._entry.15, section ".printk_index", align 4
@cxgb4_dcb_handle_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.8, i32 303, ptr @.str.20, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Interface %s is running %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxgb4_dcb_handle_fw_update\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cxgb4_dcb_handle_fw_update._entry_ptr = internal global ptr @cxgb4_dcb_handle_fw_update._entry, section ".printk_index", align 4
@cxgb4_dcb_handle_fw_update._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.8, i32 308, ptr @.str.20, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Something screwed up, requested firmware for %s, but firmware returned %s instead\0A\00", [45 x i8] zeroinitializer }, align 32
@cxgb4_dcb_handle_fw_update._entry_ptr.23 = internal global ptr @cxgb4_dcb_handle_fw_update._entry.21, section ".printk_index", align 4
@cxgb4_dcb_handle_fw_update._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.8, i32 325, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Receiving Firmware DCB messages in State %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cxgb4_dcb_handle_fw_update._entry_ptr.26 = internal global ptr @cxgb4_dcb_handle_fw_update._entry.24, section ".printk_index", align 4
@cxgb4_dcb_handle_fw_update._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.8, i32 389, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Failed DCB Set Application Priority: sel=%d, prot=%d, prio=%d, err=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@cxgb4_dcb_handle_fw_update._entry_ptr.29 = internal global ptr @cxgb4_dcb_handle_fw_update._entry.27, section ".printk_index", align 4
@cxgb4_dcb_handle_fw_update._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str.8, i32 400, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unknown DCB update type received %x\0A\00", [59 x i8] zeroinitializer }, align 32
@cxgb4_dcb_handle_fw_update._entry_ptr.32 = internal global ptr @cxgb4_dcb_handle_fw_update._entry.30, section ".printk_index", align 4
@cxgb4_dcb_ops = dso_local constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @cxgb4_ieee_get_ets, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxgb4_ieee_get_pfc, ptr null, ptr @cxgb4_ieee_getapp, ptr @cxgb4_ieee_setapp, ptr null, ptr @cxgb4_ieee_peer_ets, ptr @cxgb4_ieee_get_pfc, ptr @cxgb4_getstate, ptr @cxgb4_setstate, ptr null, ptr @cxgb4_setpgtccfg_tx, ptr @cxgb4_setpgbwgcfg_tx, ptr null, ptr null, ptr @cxgb4_getpgtccfg_tx, ptr @cxgb4_getpgbwgcfg_tx, ptr @cxgb4_getpgtccfg_rx, ptr @cxgb4_getpgbwgcfg_rx, ptr @cxgb4_setpfccfg, ptr @cxgb4_getpfccfg, ptr @cxgb4_setall, ptr @cxgb4_getcap, ptr @cxgb4_getnumtcs, ptr @cxgb4_setnumtcs, ptr @cxgb4_getpfcstate, ptr @cxgb4_setpfcstate, ptr null, ptr null, ptr null, ptr null, ptr @cxgb4_setapp, ptr @cxgb4_getapp, ptr null, ptr null, ptr @cxgb4_getdcbx, ptr @cxgb4_setdcbx, ptr @cxgb4_getpeer_app, ptr @cxgb4_getpeerapp_tbl, ptr @cxgb4_cee_peer_getpg, ptr @cxgb4_cee_peer_getpfc, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cxgb4_dcb_cleanup_apps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.8, i32 90, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Failed DCB Clear %s Application Priority: sel=%d, prot=%d, , err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgb4_dcb_cleanup_apps\00", [41 x i8] zeroinitializer }, align 32
@cxgb4_dcb_cleanup_apps._entry_ptr = internal global ptr @cxgb4_dcb_cleanup_apps._entry, section ".printk_index", align 4
@cxgb4_ieee_read_ets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.8, i32 965, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DCB read PGID failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgb4_ieee_read_ets\00", [44 x i8] zeroinitializer }, align 32
@cxgb4_ieee_read_ets._entry_ptr = internal global ptr @cxgb4_ieee_read_ets._entry, section ".printk_index", align 4
@cxgb4_ieee_read_ets._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.8, i32 980, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DCB read PGRATE failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cxgb4_ieee_read_ets._entry_ptr.39 = internal global ptr @cxgb4_ieee_read_ets._entry.37, section ".printk_index", align 4
@__cxgb4_getapp._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.8, i32 808, ptr @.str.13, ptr @.str.14 }, align 1
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DCB APP read failed with %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__cxgb4_getapp\00", [17 x i8] zeroinitializer }, align 32
@__cxgb4_getapp._entry_ptr = internal global ptr @__cxgb4_getapp._entry, section ".printk_index", align 4
@__cxgb4_setapp._entry = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.8, i32 859, ptr @.str.13, ptr @.str.14 }, align 1
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DCB app table read failed with %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__cxgb4_setapp\00", [17 x i8] zeroinitializer }, align 32
@__cxgb4_setapp._entry_ptr = internal global ptr @__cxgb4_setapp._entry, section ".printk_index", align 4
@__cxgb4_setapp._entry.44 = internal constant %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.8, i32 874, ptr @.str.13, ptr @.str.14 }, align 1
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DCB app table full\0A\00", [44 x i8] zeroinitializer }, align 32
@__cxgb4_setapp._entry_ptr.46 = internal global ptr @__cxgb4_setapp._entry.44, section ".printk_index", align 4
@__cxgb4_setapp._entry.47 = internal constant %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.8, i32 892, ptr @.str.13, ptr @.str.14 }, align 1
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DCB app table write failed with %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__cxgb4_setapp._entry_ptr.49 = internal global ptr @__cxgb4_setapp._entry.47, section ".printk_index", align 4
@cxgb4_setpgtccfg_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.50, ptr @.str.8, i32 522, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgb4_setpgtccfg_tx\00", [44 x i8] zeroinitializer }, align 32
@cxgb4_setpgtccfg_tx._entry_ptr = internal global ptr @cxgb4_setpgtccfg_tx._entry, section ".printk_index", align 4
@cxgb4_setpgtccfg_tx._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.8, i32 536, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DCB write PGID failed with %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cxgb4_setpgtccfg_tx._entry_ptr.53 = internal global ptr @cxgb4_setpgtccfg_tx._entry.51, section ".printk_index", align 4
@cxgb4_setpgtccfg_tx._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.50, ptr @.str.8, i32 548, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@cxgb4_setpgtccfg_tx._entry_ptr.55 = internal global ptr @cxgb4_setpgtccfg_tx._entry.54, section ".printk_index", align 4
@cxgb4_setpgtccfg_tx._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.8, i32 561, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DCB write PGRATE failed with %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cxgb4_setpgtccfg_tx._entry_ptr.58 = internal global ptr @cxgb4_setpgtccfg_tx._entry.56, section ".printk_index", align 4
@cxgb4_setpgbwgcfg_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.59, ptr @.str.8, i32 612, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgb4_setpgbwgcfg_tx\00", [43 x i8] zeroinitializer }, align 32
@cxgb4_setpgbwgcfg_tx._entry_ptr = internal global ptr @cxgb4_setpgbwgcfg_tx._entry, section ".printk_index", align 4
@cxgb4_setpgbwgcfg_tx._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.59, ptr @.str.8, i32 626, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@cxgb4_setpgbwgcfg_tx._entry_ptr.61 = internal global ptr @cxgb4_setpgbwgcfg_tx._entry.60, section ".printk_index", align 4
@cxgb4_getpgtccfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.62, ptr @.str.8, i32 457, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxgb4_getpgtccfg\00", [47 x i8] zeroinitializer }, align 32
@cxgb4_getpgtccfg._entry_ptr = internal global ptr @cxgb4_getpgtccfg._entry, section ".printk_index", align 4
@cxgb4_getpgtccfg._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.62, ptr @.str.8, i32 470, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@cxgb4_getpgtccfg._entry_ptr.64 = internal global ptr @cxgb4_getpgtccfg._entry.63, section ".printk_index", align 4
@cxgb4_getpgbwgcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.65, ptr @.str.8, i32 581, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgb4_getpgbwgcfg\00", [46 x i8] zeroinitializer }, align 32
@cxgb4_getpgbwgcfg._entry_ptr = internal global ptr @cxgb4_getpgbwgcfg._entry, section ".printk_index", align 4
@cxgb4_setpfccfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.8, i32 672, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DCB PFC write failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgb4_setpfccfg\00", [16 x i8] zeroinitializer }, align 32
@cxgb4_setpfccfg._entry_ptr = internal global ptr @cxgb4_setpfccfg._entry, section ".printk_index", align 4
@cxgb4_getpeer_app._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.68, ptr @.str.8, i32 1132, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgb4_getpeer_app\00", [46 x i8] zeroinitializer }, align 32
@cxgb4_getpeer_app._entry_ptr = internal global ptr @cxgb4_getpeer_app._entry, section ".printk_index", align 4
@cxgb4_getpeerapp_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.69, ptr @.str.8, i32 1162, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgb4_getpeerapp_tbl\00", [43 x i8] zeroinitializer }, align 32
@cxgb4_getpeerapp_tbl._entry_ptr = internal global ptr @cxgb4_getpeerapp_tbl._entry, section ".printk_index", align 4
@cxgb4_cee_peer_getpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.70, ptr @.str.8, i32 1198, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgb4_cee_peer_getpg\00", [43 x i8] zeroinitializer }, align 32
@cxgb4_cee_peer_getpg._entry_ptr = internal global ptr @cxgb4_cee_peer_getpg._entry, section ".printk_index", align 4
@cxgb4_cee_peer_getpg._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.70, ptr @.str.8, i32 1211, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@cxgb4_cee_peer_getpg._entry_ptr.72 = internal global ptr @cxgb4_cee_peer_getpg._entry.71, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 14, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 15, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 16, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 17, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 18, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 19, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"dcb_ver_array\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 13, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 44, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 133, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 262, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 267, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 301, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 305, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 324, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 387, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 399, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"cxgb4_dcb_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1242, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 87, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 965, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 979, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 807, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 858, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 874, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 891, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 522, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 535, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 547, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 560, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 611, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 625, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 457, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 469, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 580, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 672, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1131, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1161, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1198, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private constant [50 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 1210, i32 3 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__cxgb4_getapp._entry, ptr @__cxgb4_getapp._entry_ptr, ptr @__cxgb4_setapp._entry, ptr @__cxgb4_setapp._entry.44, ptr @__cxgb4_setapp._entry.47, ptr @__cxgb4_setapp._entry_ptr, ptr @__cxgb4_setapp._entry_ptr.46, ptr @__cxgb4_setapp._entry_ptr.49, ptr @cxgb4_cee_peer_getpg._entry, ptr @cxgb4_cee_peer_getpg._entry.71, ptr @cxgb4_cee_peer_getpg._entry_ptr, ptr @cxgb4_cee_peer_getpg._entry_ptr.72, ptr @cxgb4_dcb_cleanup_apps._entry, ptr @cxgb4_dcb_cleanup_apps._entry_ptr, ptr @cxgb4_dcb_handle_fw_update._entry, ptr @cxgb4_dcb_handle_fw_update._entry.21, ptr @cxgb4_dcb_handle_fw_update._entry.24, ptr @cxgb4_dcb_handle_fw_update._entry.27, ptr @cxgb4_dcb_handle_fw_update._entry.30, ptr @cxgb4_dcb_handle_fw_update._entry_ptr, ptr @cxgb4_dcb_handle_fw_update._entry_ptr.23, ptr @cxgb4_dcb_handle_fw_update._entry_ptr.26, ptr @cxgb4_dcb_handle_fw_update._entry_ptr.29, ptr @cxgb4_dcb_handle_fw_update._entry_ptr.32, ptr @cxgb4_dcb_state_fsm._entry, ptr @cxgb4_dcb_state_fsm._entry.15, ptr @cxgb4_dcb_state_fsm._entry_ptr, ptr @cxgb4_dcb_state_fsm._entry_ptr.17, ptr @cxgb4_getpeer_app._entry, ptr @cxgb4_getpeer_app._entry_ptr, ptr @cxgb4_getpeerapp_tbl._entry, ptr @cxgb4_getpeerapp_tbl._entry_ptr, ptr @cxgb4_getpgbwgcfg._entry, ptr @cxgb4_getpgbwgcfg._entry_ptr, ptr @cxgb4_getpgtccfg._entry, ptr @cxgb4_getpgtccfg._entry.63, ptr @cxgb4_getpgtccfg._entry_ptr, ptr @cxgb4_getpgtccfg._entry_ptr.64, ptr @cxgb4_ieee_read_ets._entry, ptr @cxgb4_ieee_read_ets._entry.37, ptr @cxgb4_ieee_read_ets._entry_ptr, ptr @cxgb4_ieee_read_ets._entry_ptr.39, ptr @cxgb4_setpfccfg._entry, ptr @cxgb4_setpfccfg._entry_ptr, ptr @cxgb4_setpgbwgcfg_tx._entry, ptr @cxgb4_setpgbwgcfg_tx._entry.60, ptr @cxgb4_setpgbwgcfg_tx._entry_ptr, ptr @cxgb4_setpgbwgcfg_tx._entry_ptr.61, ptr @cxgb4_setpgtccfg_tx._entry, ptr @cxgb4_setpgtccfg_tx._entry.51, ptr @cxgb4_setpgtccfg_tx._entry.54, ptr @cxgb4_setpgtccfg_tx._entry.56, ptr @cxgb4_setpgtccfg_tx._entry_ptr, ptr @cxgb4_setpgtccfg_tx._entry_ptr.53, ptr @cxgb4_setpgtccfg_tx._entry_ptr.55, ptr @cxgb4_setpgtccfg_tx._entry_ptr.58, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dcb_ver_array, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @cxgb4_dcb_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcb_ver_array to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_state_fsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_state_fsm._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_handle_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_handle_fw_update._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_handle_fw_update._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_handle_fw_update._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_handle_fw_update._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_cleanup_apps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ieee_read_ets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ieee_read_ets._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_setpgtccfg_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_setpgtccfg_tx._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_setpgtccfg_tx._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_setpgtccfg_tx._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_setpgbwgcfg_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_setpgbwgcfg_tx._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_getpgtccfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_getpgtccfg._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_getpgbwgcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_setpfccfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_getpeer_app._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_getpeerapp_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_cee_peer_getpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_cee_peer_getpg._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_dcb_state_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1 = getelementptr i8, ptr %dev, i32 2856
  %dcb_version = getelementptr i8, ptr %dev, i32 2876
  %0 = ptrtoint ptr %dcb_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcb_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = call ptr @memset(ptr %dcb1, i32 0, i32 80)
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dcb_version to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %1, ptr %dcb_version, align 4
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb4_dcb_state_init.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb4_dcb_state_init, %if.then9)) #10
          to label %do.end13 [label %if.then9], !srcloc !152

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id, align 1
  %conv10 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cxgb4_dcb_state_init.__UNIQUE_ID_ddebug658, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %conv10) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cxgb4_dcb_version_init(ptr nocapture noundef writeonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb_version = getelementptr i8, ptr %dev, i32 2876
  %0 = ptrtoint ptr %dcb_version to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 7, ptr %dcb_version, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_dcb_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %app.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app.i) #10
  %2 = getelementptr inbounds %struct.dcb_app, ptr %app.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dcb_app, ptr %app.i, i32 0, i32 2
  %4 = ptrtoint ptr %app.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -256, ptr %app.i, align 2
  %dcb_version.i = getelementptr i8, ptr %dev, i32 2876
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end24.i
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.cond.i.cxgb4_dcb_cleanup_apps.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cxgb4_dcb_cleanup_apps.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4_dcb_cleanup_apps.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.050.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.port_info, ptr %add.ptr.i.i.i, i32 0, i32 16, i32 12, i32 %i.050.i
  %protocolid.i = getelementptr %struct.port_info, ptr %add.ptr.i.i.i, i32 0, i32 16, i32 12, i32 %i.050.i, i32 2
  %5 = ptrtoint ptr %protocolid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocolid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %for.body.i.cxgb4_dcb_cleanup_apps.exit_crit_edge, label %if.end.i

for.body.i.cxgb4_dcb_cleanup_apps.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4_dcb_cleanup_apps.exit

if.end.i:                                         ; preds = %for.body.i
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %3, align 2
  %8 = ptrtoint ptr %dcb_version.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dcb_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp5.i = icmp eq i8 %9, 3
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %2, align 1
  %sel_field.i = getelementptr %struct.port_info, ptr %add.ptr.i.i.i, i32 0, i32 16, i32 12, i32 %i.050.i, i32 1
  %13 = ptrtoint ptr %sel_field.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sel_field.i, align 1
  %add.i = add i8 %14, 1
  %15 = ptrtoint ptr %app.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add.i, ptr %app.i, align 2
  %call15.i = call i32 @dcb_ieee_delapp(ptr noundef %dev, ptr noundef nonnull %app.i) #10
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sel_field18.i = getelementptr %struct.port_info, ptr %add.ptr.i.i.i, i32 0, i32 16, i32 12, i32 %i.050.i, i32 1
  %16 = ptrtoint ptr %sel_field18.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sel_field18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.i = icmp ne i8 %17, 0
  %conv21.i = zext i1 %tobool19.i to i8
  %18 = ptrtoint ptr %app.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21.i, ptr %app.i, align 2
  %call23.i = call i32 @dcb_setapp(ptr noundef %dev, ptr noundef nonnull %app.i) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.then7.i
  %err.0.i = phi i32 [ %call15.i, %if.then7.i ], [ %call23.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool25.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool25.not.i, label %for.cond.i, label %do.end.i

do.end.i:                                         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev_dev.i, align 16
  %21 = ptrtoint ptr %dcb_version.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dcb_version.i, align 4
  %idxprom.i = zext i8 %22 to i32
  %arrayidx28.i = getelementptr [8 x ptr], ptr @dcb_ver_array, i32 0, i32 %idxprom.i
  %23 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx28.i, align 4
  %25 = ptrtoint ptr %app.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %app.i, align 2
  %conv30.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %3, align 2
  %conv32.i = zext i16 %28 to i32
  %sub.i = sub i32 0, %err.0.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef %24, i32 noundef %conv30.i, i32 noundef %conv32.i, i32 noundef %sub.i) #13
  br label %cxgb4_dcb_cleanup_apps.exit

cxgb4_dcb_cleanup_apps.exit:                      ; preds = %do.end.i, %for.body.i.cxgb4_dcb_cleanup_apps.exit_crit_edge, %for.cond.i.cxgb4_dcb_cleanup_apps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app.i) #10
  %dcb1.i = getelementptr i8, ptr %dev, i32 2856
  %29 = ptrtoint ptr %dcb_version.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dcb_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i3 = icmp eq i8 %30, 0
  %31 = call ptr @memset(ptr %dcb1.i, i32 0, i32 80)
  br i1 %tobool.not.i3, label %cxgb4_dcb_cleanup_apps.exit.do.body4.i_crit_edge, label %if.then.i

cxgb4_dcb_cleanup_apps.exit.do.body4.i_crit_edge: ; preds = %cxgb4_dcb_cleanup_apps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

if.then.i:                                        ; preds = %cxgb4_dcb_cleanup_apps.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %dcb_version.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %dcb_version.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i, %cxgb4_dcb_cleanup_apps.exit.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb4_dcb_state_init.__UNIQUE_ID_ddebug658, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb4_dcb_reset, %if.then9.i)) #10
          to label %cxgb4_dcb_state_init.exit [label %if.then9.i], !srcloc !152

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %port_id.i = getelementptr i8, ptr %dev, i32 2325
  %33 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port_id.i, align 1
  %conv10.i = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cxgb4_dcb_state_init.__UNIQUE_ID_ddebug658, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %conv10.i) #10
  br label %cxgb4_dcb_state_init.exit

cxgb4_dcb_state_init.exit:                        ; preds = %if.then9.i, %do.body4.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_dcb_state_fsm(ptr noundef %dev, i32 noundef %transition_to) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %dcb1 = getelementptr i8, ptr %dev, i32 2856
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %2 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dcb1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb4_dcb_state_fsm.__UNIQUE_ID_ddebug659, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb4_dcb_state_fsm, %if.then)) #10
          to label %do.end8 [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dcb1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @cxgb4_dcb_state_fsm.__UNIQUE_ID_ddebug659, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %5, i32 noundef %transition_to, ptr noundef %dev) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end54 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %sw.bb34
    i32 1, label %sw.bb43
  ]

sw.bb:                                            ; preds = %do.end8
  %7 = zext i32 %transition_to to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %transition_to, label %sw.bb.do.end51_crit_edge [
    i32 0, label %sw.bb9
    i32 1, label %sw.bb11
    i32 2, label %sw.bb.cleanup_crit_edge
    i32 3, label %sw.bb21
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.do.end51_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dcb1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dcb1, align 4
  %supported = getelementptr i8, ptr %dev, i32 2864
  %9 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 13, ptr %supported, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb
  %10 = ptrtoint ptr %dcb1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %dcb1, align 4
  %supported13 = getelementptr i8, ptr %dev, i32 2864
  %dcb_version = getelementptr i8, ptr %dev, i32 2876
  %11 = ptrtoint ptr %dcb_version to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dcb_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp = icmp eq i8 %12, 3
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %supported13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %supported13, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %supported13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %supported13, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dcb1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %dcb1, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transition_to)
  %cond90 = icmp eq i32 %transition_to, 0
  br i1 %cond90, label %sw.bb23.do.end51_crit_edge, label %if.then26

sw.bb23.do.end51_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.then26:                                        ; preds = %sw.bb23
  %dcb_version.i = getelementptr i8, ptr %dev, i32 2876
  %16 = ptrtoint ptr %dcb_version.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dcb_version.i, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %17, label %if.then26.cxgb4_dcb_update_support.exit_crit_edge [
    i8 3, label %if.then.i
    i8 2, label %if.then10.i
  ]

if.then26.cxgb4_dcb_update_support.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4_dcb_update_support.exit

if.then.i:                                        ; preds = %if.then26
  %supported.i = getelementptr i8, ptr %dev, i32 2864
  %19 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %supported.i, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end21.sink.split.i_crit_edge, label %if.then2.i

if.then.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.sink.split.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and4.i = and i32 %20, -5
  %21 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and4.i, ptr %supported.i, align 4
  br label %if.end21.sink.split.i

if.then10.i:                                      ; preds = %if.then26
  %supported11.i = getelementptr i8, ptr %dev, i32 2864
  %22 = ptrtoint ptr %supported11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %supported11.i, align 4
  %and12.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.then10.i.if.end21.sink.split.i_crit_edge, label %if.then14.i

if.then10.i.if.end21.sink.split.i_crit_edge:      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.sink.split.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %and16.i = and i32 %23, -9
  %24 = ptrtoint ptr %supported11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and16.i, ptr %supported11.i, align 4
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.then14.i, %if.then10.i.if.end21.sink.split.i_crit_edge, %if.then2.i, %if.then.i.if.end21.sink.split.i_crit_edge
  %supported11.sink30.i = phi ptr [ %supported.i, %if.then2.i ], [ %supported.i, %if.then.i.if.end21.sink.split.i_crit_edge ], [ %supported11.i, %if.then14.i ], [ %supported11.i, %if.then10.i.if.end21.sink.split.i_crit_edge ]
  %.sink29.i = phi i32 [ 8, %if.then2.i ], [ 8, %if.then.i.if.end21.sink.split.i_crit_edge ], [ 4, %if.then14.i ], [ 4, %if.then10.i.if.end21.sink.split.i_crit_edge ]
  %25 = ptrtoint ptr %supported11.sink30.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %supported11.sink30.i, align 4
  %or19.i = or i32 %26, %.sink29.i
  store i32 %or19.i, ptr %supported11.sink30.i, align 4
  br label %cxgb4_dcb_update_support.exit

cxgb4_dcb_update_support.exit:                    ; preds = %if.end21.sink.split.i, %if.then26.cxgb4_dcb_update_support.exit_crit_edge
  %27 = zext i32 %transition_to to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %transition_to, label %cxgb4_dcb_update_support.exit.do.end51_crit_edge [
    i32 1, label %cxgb4_dcb_update_support.exit.cleanup_crit_edge
    i32 2, label %cxgb4_dcb_update_support.exit.cleanup_crit_edge92
    i32 3, label %sw.bb30
  ]

cxgb4_dcb_update_support.exit.cleanup_crit_edge92: ; preds = %cxgb4_dcb_update_support.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cxgb4_dcb_update_support.exit.cleanup_crit_edge:  ; preds = %cxgb4_dcb_update_support.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cxgb4_dcb_update_support.exit.do.end51_crit_edge: ; preds = %cxgb4_dcb_update_support.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

sw.bb30:                                          ; preds = %cxgb4_dcb_update_support.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %dcb1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %dcb1, align 4
  %enabled = getelementptr i8, ptr %dev, i32 2868
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %enabled, align 4
  tail call void @linkwatch_fire_event(ptr noundef %dev) #10
  br label %cleanup

sw.bb34:                                          ; preds = %do.end8
  %30 = zext i32 %transition_to to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %transition_to, label %sw.bb34.do.end51_crit_edge [
    i32 1, label %sw.bb34.cleanup_crit_edge
    i32 2, label %sw.bb36
    i32 3, label %sw.bb39
  ]

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb34.do.end51_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

sw.bb36:                                          ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb4_dcb_reset(ptr noundef %dev)
  %31 = ptrtoint ptr %dcb1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %dcb1, align 4
  %supported38 = getelementptr i8, ptr %dev, i32 2864
  %32 = ptrtoint ptr %supported38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 14, ptr %supported38, align 4
  tail call void @linkwatch_fire_event(ptr noundef %dev) #10
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  %enabled40 = getelementptr i8, ptr %dev, i32 2868
  %33 = ptrtoint ptr %enabled40 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %enabled40, align 4
  tail call void @linkwatch_fire_event(ptr noundef %dev) #10
  br label %cleanup

sw.bb43:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transition_to)
  %cond = icmp eq i32 %transition_to, 0
  br i1 %cond, label %sw.bb43.cleanup_crit_edge, label %sw.bb43.do.end51_crit_edge

sw.bb43.do.end51_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end51:                                         ; preds = %sw.bb43.do.end51_crit_edge, %sw.bb34.do.end51_crit_edge, %cxgb4_dcb_update_support.exit.do.end51_crit_edge, %sw.bb23.do.end51_crit_edge, %sw.bb.do.end51_crit_edge
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.12, i32 noundef %transition_to) #13
  br label %cleanup

do.end54:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev55 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %pdev_dev55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev_dev55, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %transition_to) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %do.end51, %sw.bb43.cleanup_crit_edge, %sw.bb39, %sw.bb36, %sw.bb34.cleanup_crit_edge, %sw.bb30, %cxgb4_dcb_update_support.exit.cleanup_crit_edge, %cxgb4_dcb_update_support.exit.cleanup_crit_edge92, %sw.bb21, %if.else, %if.then15, %sw.bb9, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_dcb_handle_fw_update(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %pcmd) local_unnamed_addr #0 align 64 {
entry:
  %app = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %0 = ptrtoint ptr %pcmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcmd, align 8
  %and = and i32 %1, 15
  %arrayidx = getelementptr %struct.adapter, ptr %adap, i32 0, i32 24, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 23, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %u, align 8
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp = icmp eq i8 %7, 5
  br i1 %cmp, label %if.then, label %if.end37

if.then:                                          ; preds = %entry
  %all_syncd_pkd = getelementptr inbounds %struct.fw_port_dcb_control, ptr %u, i32 0, i32 1
  %8 = ptrtoint ptr %all_syncd_pkd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %all_syncd_pkd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool.not = icmp sgt i8 %9, -1
  %cond = select i1 %tobool.not, i32 2, i32 3
  %dcb_version = getelementptr i8, ptr %5, i32 2876
  %10 = ptrtoint ptr %dcb_version to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dcb_version, align 4
  %conv9 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp10.not = icmp eq i8 %11, 0
  br i1 %cmp10.not, label %if.then.if.end36_crit_edge, label %if.then12

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then12:                                        ; preds = %if.then
  %dcb_version_to_app_state = getelementptr inbounds %struct.fw_port_dcb_control, ptr %u, i32 0, i32 2
  %12 = ptrtoint ptr %dcb_version_to_app_state to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dcb_version_to_app_state, align 2
  %14 = lshr i16 %13, 12
  %15 = and i16 %14, 7
  %and16 = zext i16 %15 to i32
  %16 = and i16 %13, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %16)
  %switch = icmp eq i16 %16, 8192
  br i1 %switch, label %if.then21, label %do.end29

if.then21:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %conv22 = trunc i16 %15 to i8
  %17 = ptrtoint ptr %dcb_version to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv22, ptr %dcb_version, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %18 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev_dev, align 16
  %arrayidx26 = getelementptr [8 x ptr], ptr @dcb_ver_array, i32 0, i32 %and16
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx26, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.18, ptr noundef %5, ptr noundef %21) #13
  br label %if.end36

do.end29:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev30 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %22 = ptrtoint ptr %pdev_dev30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev_dev30, align 16
  %arrayidx33 = getelementptr [8 x ptr], ptr @dcb_ver_array, i32 0, i32 %conv9
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr [8 x ptr], ptr @dcb_ver_array, i32 0, i32 %and16
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx34, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef %25, ptr noundef %27) #13
  %28 = ptrtoint ptr %dcb_version to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %dcb_version, align 4
  br label %if.end36

if.end36:                                         ; preds = %do.end29, %if.then21, %if.then.if.end36_crit_edge
  tail call void @cxgb4_dcb_state_fsm(ptr noundef %5, i32 noundef %cond)
  br label %cleanup

if.end37:                                         ; preds = %entry
  %dcb3 = getelementptr i8, ptr %5, i32 2856
  %29 = ptrtoint ptr %dcb3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dcb3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %switch222 = icmp ult i32 %30, 2
  br i1 %switch222, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev48 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %31 = ptrtoint ptr %pdev_dev48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev_dev48, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.25, i32 noundef %30) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end37
  %33 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %7, label %do.end149 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb52
    i8 2, label %sw.bb73
    i8 3, label %sw.bb77
    i8 4, label %sw.bb90
  ]

sw.bb:                                            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %pgid = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %34 = ptrtoint ptr %pgid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pgid, align 4
  %pgid51 = getelementptr i8, ptr %5, i32 2872
  %36 = ptrtoint ptr %pgid51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %pgid51, align 4
  %msgs = getelementptr i8, ptr %5, i32 2860
  %37 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msgs, align 4
  %or = or i32 %38, 1
  store i32 %or, ptr %msgs, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %if.end50
  %num_tcs_supported = getelementptr inbounds %struct.fw_port_dcb_pgrate, ptr %u, i32 0, i32 3
  %39 = ptrtoint ptr %num_tcs_supported to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_tcs_supported, align 1
  %pg_num_tcs_supported = getelementptr i8, ptr %5, i32 2878
  %41 = ptrtoint ptr %pg_num_tcs_supported to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %pg_num_tcs_supported, align 2
  %pgrate = getelementptr i8, ptr %5, i32 2880
  %pgrate54 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 3
  %42 = ptrtoint ptr %pgrate54 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pgrate54, align 8
  %44 = ptrtoint ptr %pgrate to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %pgrate, align 4
  %tsa = getelementptr i8, ptr %5, i32 2896
  %tsa56 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 9
  %45 = ptrtoint ptr %tsa56 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tsa56, align 8
  %47 = ptrtoint ptr %tsa to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %tsa, align 4
  %msgs57 = getelementptr i8, ptr %5, i32 2860
  %48 = ptrtoint ptr %msgs57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msgs57, align 4
  %or58 = or i32 %49, 2
  store i32 %or58, ptr %msgs57, align 4
  %and60 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %sw.bb52.cleanup_crit_edge, label %do.body63

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body63:                                        ; preds = %sw.bb52
  %dcb_version64 = getelementptr i8, ptr %5, i32 2876
  %50 = ptrtoint ptr %dcb_version64 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dcb_version64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp66 = icmp eq i8 %51, 3
  br i1 %cmp66, label %if.then68, label %do.body63.cleanup_crit_edge

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb4_dcb_state_fsm(ptr noundef %5, i32 noundef 3)
  br label %cleanup

sw.bb73:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %priorate = getelementptr i8, ptr %5, i32 2888
  %strict_priorate = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 3
  %52 = ptrtoint ptr %strict_priorate to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %strict_priorate, align 8
  %54 = ptrtoint ptr %priorate to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %priorate, align 4
  %msgs75 = getelementptr i8, ptr %5, i32 2860
  %55 = ptrtoint ptr %msgs75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msgs75, align 4
  %or76 = or i32 %56, 4
  store i32 %or76, ptr %msgs75, align 4
  br label %cleanup

sw.bb77:                                          ; preds = %if.end50
  %pfcen = getelementptr inbounds %struct.fw_port_dcb_pfc, ptr %u, i32 0, i32 1
  %57 = ptrtoint ptr %pfcen to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pfcen, align 1
  %pfcen78 = getelementptr i8, ptr %5, i32 2877
  %59 = ptrtoint ptr %pfcen78 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %pfcen78, align 1
  %max_pfc_tcs = getelementptr inbounds %struct.fw_port_dcb_pfc, ptr %u, i32 0, i32 3
  %60 = ptrtoint ptr %max_pfc_tcs to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %max_pfc_tcs, align 1
  %pfc_num_tcs_supported = getelementptr i8, ptr %5, i32 2879
  %62 = ptrtoint ptr %pfc_num_tcs_supported to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %pfc_num_tcs_supported, align 1
  %msgs79 = getelementptr i8, ptr %5, i32 2860
  %63 = ptrtoint ptr %msgs79 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msgs79, align 4
  %or80 = or i32 %64, 8
  store i32 %or80, ptr %msgs79, align 4
  %dcb_version82 = getelementptr i8, ptr %5, i32 2876
  %65 = ptrtoint ptr %dcb_version82 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dcb_version82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %66)
  %cmp84 = icmp eq i8 %66, 3
  br i1 %cmp84, label %if.then86, label %sw.bb77.cleanup_crit_edge

sw.bb77.cleanup_crit_edge:                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then86:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb4_dcb_state_fsm(ptr noundef %5, i32 noundef 3)
  br label %cleanup

sw.bb90:                                          ; preds = %if.end50
  %idx91 = getelementptr inbounds %struct.fw_port_app_priority, ptr %u, i32 0, i32 2
  %67 = ptrtoint ptr %idx91 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %idx91, align 1
  %conv92 = zext i8 %68 to i32
  %arrayidx93 = getelementptr %struct.port_info, ptr %add.ptr.i, i32 0, i32 16, i32 12, i32 %conv92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #10
  %69 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %70 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %71 = ptrtoint ptr %app to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %app, align 2
  %protocolid = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 2
  %72 = ptrtoint ptr %protocolid to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %protocolid, align 2
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %70, align 2
  %dcb_version94 = getelementptr i8, ptr %5, i32 2876
  %75 = ptrtoint ptr %dcb_version94 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %dcb_version94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp96 = icmp eq i8 %76, 3
  %sel_field = getelementptr inbounds %struct.fw_port_app_priority, ptr %u, i32 0, i32 4
  %77 = ptrtoint ptr %sel_field to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sel_field, align 1
  br i1 %cmp96, label %if.then98, label %if.else115

if.then98:                                        ; preds = %sw.bb90
  %add = add i8 %78, 1
  %79 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %add, ptr %app, align 2
  %user_prio_map = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %80 = ptrtoint ptr %user_prio_map to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %user_prio_map, align 4
  %82 = tail call i8 @llvm.cttz.i8(i8 %81, i1 true), !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %iszero = icmp eq i8 %81, 0
  %conv103 = select i1 %iszero, i8 -1, i8 %82
  %83 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv103, ptr %69, align 1
  %call105 = call i32 @dcb_ieee_setapp(ptr noundef %5, ptr noundef nonnull %app) #10
  %84 = ptrtoint ptr %dcb_version94 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %dcb_version94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %85)
  %cmp109 = icmp eq i8 %85, 3
  br i1 %cmp109, label %if.then111, label %if.then98.if.end124_crit_edge

if.then98.if.end124_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then111:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  call void @cxgb4_dcb_state_fsm(ptr noundef %5, i32 noundef 3)
  br label %if.end124

if.else115:                                       ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool117 = icmp ne i8 %78, 0
  %conv119 = zext i1 %tobool117 to i8
  %86 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv119, ptr %app, align 2
  %user_prio_map121 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %87 = ptrtoint ptr %user_prio_map121 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %user_prio_map121, align 4
  %89 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %69, align 1
  %call123 = call i32 @dcb_setapp(ptr noundef %5, ptr noundef nonnull %app) #10
  br label %if.end124

if.end124:                                        ; preds = %if.else115, %if.then111, %if.then98.if.end124_crit_edge
  %err.0 = phi i32 [ %call105, %if.then111 ], [ %call105, %if.then98.if.end124_crit_edge ], [ %call123, %if.else115 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool125.not = icmp eq i32 %err.0, 0
  br i1 %tobool125.not, label %if.end124.if.end138_crit_edge, label %do.end129

if.end124.if.end138_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

do.end129:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev130 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %90 = ptrtoint ptr %pdev_dev130 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev_dev130, align 16
  %92 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %app, align 2
  %conv132 = zext i8 %93 to i32
  %94 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %70, align 2
  %conv134 = zext i16 %95 to i32
  %96 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %69, align 1
  %conv136 = zext i8 %97 to i32
  %sub137 = sub i32 0, %err.0
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.28, i32 noundef %conv132, i32 noundef %conv134, i32 noundef %conv136, i32 noundef %sub137) #13
  br label %if.end138

if.end138:                                        ; preds = %do.end129, %if.end124.if.end138_crit_edge
  %user_prio_map139 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %98 = ptrtoint ptr %user_prio_map139 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %user_prio_map139, align 4
  %100 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx93, align 2
  %sel_field141 = getelementptr inbounds %struct.fw_port_app_priority, ptr %u, i32 0, i32 4
  %101 = ptrtoint ptr %sel_field141 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sel_field141, align 1
  %sel_field142 = getelementptr %struct.port_info, ptr %add.ptr.i, i32 0, i32 16, i32 12, i32 %conv92, i32 1
  %103 = ptrtoint ptr %sel_field142 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %sel_field142, align 1
  %104 = ptrtoint ptr %protocolid to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %protocolid, align 2
  %protocolid144 = getelementptr %struct.port_info, ptr %add.ptr.i, i32 0, i32 16, i32 12, i32 %conv92, i32 2
  %106 = ptrtoint ptr %protocolid144 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %protocolid144, align 2
  %msgs145 = getelementptr i8, ptr %5, i32 2860
  %107 = ptrtoint ptr %msgs145 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %msgs145, align 4
  %or146 = or i32 %108, 16
  store i32 %or146, ptr %msgs145, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #10
  br label %cleanup

do.end149:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev150 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %109 = ptrtoint ptr %pdev_dev150 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdev_dev150, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.31, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end149, %if.end138, %if.then86, %sw.bb77.cleanup_crit_edge, %sw.bb73, %if.then68, %do.body63.cleanup_crit_edge, %sw.bb52.cleanup_crit_edge, %sw.bb, %do.end47, %if.end36
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_setapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_setapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_ieee_get_ets(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cxgb4_ieee_read_ets(ptr noundef %dev, ptr noundef %ets, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_ieee_get_pfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pfc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %pfc, i32 0, i32 136)
  %msgs = getelementptr i8, ptr %dev, i32 2860
  %1 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msgs, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pfc_num_tcs_supported = getelementptr i8, ptr %dev, i32 2879
  %3 = ptrtoint ptr %pfc_num_tcs_supported to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pfc_num_tcs_supported, align 1
  %5 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pfc, align 8
  %pfcen = getelementptr i8, ptr %dev, i32 2877
  %6 = ptrtoint ptr %pfcen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfcen, align 1
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %7) #10
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %8 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %rev.i, ptr %pfc_en, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_ieee_getapp(ptr noundef %dev, ptr noundef %app) #0 align 64 {
entry:
  %pcmd.i = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1.i = getelementptr i8, ptr %dev, i32 2856
  %0 = ptrtoint ptr %dcb1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %msgs.i = getelementptr i8, ptr %dev, i32 2860
  %2 = ptrtoint ptr %msgs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msgs.i, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.cxgb4_ieee_negotiation_complete.exit_crit_edge

land.lhs.true.i.cxgb4_ieee_negotiation_complete.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4_ieee_negotiation_complete.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %entry
  %4 = add i32 %1, -1
  %switch.and.i.i = and i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %if.end4.i.cxgb4_ieee_negotiation_complete.exit_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i.cxgb4_ieee_negotiation_complete.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4_ieee_negotiation_complete.exit

cxgb4_ieee_negotiation_complete.exit:             ; preds = %if.end4.i.cxgb4_ieee_negotiation_complete.exit_crit_edge, %land.lhs.true.i.cxgb4_ieee_negotiation_complete.exit_crit_edge
  %supported.i = getelementptr i8, ptr %dev, i32 2864
  %5 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %supported.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %cxgb4_ieee_negotiation_complete.exit.cleanup_crit_edge, label %if.end

cxgb4_ieee_negotiation_complete.exit.cleanup_crit_edge: ; preds = %cxgb4_ieee_negotiation_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cxgb4_ieee_negotiation_complete.exit
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not = icmp eq i16 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true
  %sub = add i8 %9, -1
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i.i, align 8
  %14 = add i32 %1, -1
  %switch.and.i.i26 = and i32 %14, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i26)
  %switch.selectcmp.i.i27 = icmp eq i32 %switch.and.i.i26, 0
  br i1 %switch.selectcmp.i.i27, label %for.cond.preheader.i, label %if.end5.if.end15.thread_crit_edge

if.end5.if.end15.thread_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread

for.cond.preheader.i:                             ; preds = %if.end5
  %15 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2, i32 0, i32 2
  %port_id4.i = getelementptr i8, ptr %dev, i32 2325
  %idx.i = getelementptr inbounds %struct.fw_port_app_priority, ptr %16, i32 0, i32 2
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 6
  %sel_field.i = getelementptr inbounds %struct.fw_port_app_priority, ptr %16, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end38.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.011.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end38.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd.i) #10
  %19 = call ptr @memset(ptr %16, i32 0, i32 24)
  %20 = ptrtoint ptr %port_id4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_id4.i, align 1
  %conv5.i = zext i8 %21 to i32
  %or7.i = or i32 %conv5.i, 465567744
  %22 = ptrtoint ptr %pcmd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or7.i, ptr %pcmd.i, align 8
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 393218, ptr %15, align 4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %16, align 8
  %conv13.i = trunc i32 %i.011.i to i8
  %25 = ptrtoint ptr %idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv13.i, ptr %idx.i, align 1
  %26 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mbox.i, align 8
  %call.i.i = call i32 @t4_wr_mbox_meat(ptr noundef %13, i32 noundef %27, ptr noundef nonnull %pcmd.i, i32 noundef 32, ptr noundef nonnull %pcmd.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp16.not.i, label %if.end22.i, label %__cxgb4_getapp.exit

if.end22.i:                                       ; preds = %for.body.i
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %18, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %11)
  %cmp26.i = icmp eq i16 %29, %11
  br i1 %cmp26.i, label %if.then28.i, label %if.end22.i.if.end38.i_crit_edge

if.end22.i.if.end38.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then28.i:                                      ; preds = %if.end22.i
  %30 = ptrtoint ptr %sel_field.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sel_field.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %sub)
  %cmp32.i = icmp eq i8 %31, %sub
  br i1 %cmp32.i, label %__cxgb4_getapp.exit.thread35, label %if.then28.i.if.end38.i_crit_edge

if.then28.i.if.end38.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

__cxgb4_getapp.exit.thread35:                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd.i) #10
  br label %if.end15

if.end38.i:                                       ; preds = %if.then28.i.if.end38.i_crit_edge, %if.end22.i.if.end38.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool41.not.i = icmp eq i16 %29, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd.i) #10
  %inc.i = add nuw nsw i32 %i.011.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %tobool41.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.end38.i.if.then12_crit_edge, label %if.end38.i.for.body.i_crit_edge

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end38.i.if.then12_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

__cxgb4_getapp.exit:                              ; preds = %for.body.i
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 4
  %34 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev_dev.i, align 16
  %sub.i = sub i32 0, %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef %sub.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %__cxgb4_getapp.exit.if.then12_crit_edge, label %if.end15.thread40

__cxgb4_getapp.exit.if.then12_crit_edge:          ; preds = %__cxgb4_getapp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end15.thread40:                                ; preds = %__cxgb4_getapp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = call i32 @llvm.cttz.i32(i32 %call.i.i, i1 true), !range !154
  %37 = trunc i32 %36 to i8
  br label %39

if.then12:                                        ; preds = %__cxgb4_getapp.exit.if.then12_crit_edge, %if.end38.i.if.then12_crit_edge
  %call13 = call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef %dev, ptr noundef %app) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %__cxgb4_getapp.exit.thread35
  %prio.0.in = phi i8 [ %call13, %if.then12 ], [ %33, %__cxgb4_getapp.exit.thread35 ]
  %38 = call i8 @llvm.cttz.i8(i8 %prio.0.in, i1 true), !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %prio.0.in)
  %iszero = icmp eq i8 %prio.0.in, 0
  br i1 %iszero, label %if.end15.if.end15.thread_crit_edge, label %if.end15._crit_edge

if.end15._crit_edge:                              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %39

if.end15.if.end15.thread_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.end15.if.end15.thread_crit_edge, %if.end5.if.end15.thread_crit_edge
  br label %39

39:                                               ; preds = %if.end15.thread, %if.end15._crit_edge, %if.end15.thread40
  %40 = phi i8 [ -1, %if.end15.thread ], [ %38, %if.end15._crit_edge ], [ %37, %if.end15.thread40 ]
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %41 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %priority, align 1
  br label %cleanup

cleanup:                                          ; preds = %39, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cxgb4_ieee_negotiation_complete.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %39 ], [ -22, %cxgb4_ieee_negotiation_complete.exit.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_ieee_setapp(ptr noundef %dev, ptr noundef %app) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1.i = getelementptr i8, ptr %dev, i32 2856
  %0 = ptrtoint ptr %dcb1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %msgs.i = getelementptr i8, ptr %dev, i32 2860
  %2 = ptrtoint ptr %msgs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msgs.i, align 4
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.cxgb4_ieee_negotiation_complete.exit_crit_edge

land.lhs.true.i.cxgb4_ieee_negotiation_complete.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4_ieee_negotiation_complete.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %entry
  %4 = add i32 %1, -1
  %switch.and.i.i = and i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %if.end4.i.cxgb4_ieee_negotiation_complete.exit_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i.cxgb4_ieee_negotiation_complete.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4_ieee_negotiation_complete.exit

cxgb4_ieee_negotiation_complete.exit:             ; preds = %if.end4.i.cxgb4_ieee_negotiation_complete.exit_crit_edge, %land.lhs.true.i.cxgb4_ieee_negotiation_complete.exit_crit_edge
  %supported.i = getelementptr i8, ptr %dev, i32 2864
  %5 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %supported.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %cxgb4_ieee_negotiation_complete.exit.cleanup_crit_edge, label %if.end

cxgb4_ieee_negotiation_complete.exit.cleanup_crit_edge: ; preds = %cxgb4_ieee_negotiation_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cxgb4_ieee_negotiation_complete.exit
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not = icmp ne i16 %11, 0
  %12 = and i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %13 = icmp eq i8 %12, 2
  %or.cond = select i1 %tobool3.not, i1 %13, i1 false
  br i1 %or.cond, label %if.end15, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true
  %sub = add nsw i8 %9, -1
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %14 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %priority, align 1
  %conv20 = zext i8 %15 to i32
  %shl = shl nuw i32 1, %conv20
  %conv21 = trunc i32 %shl to i8
  %call22 = tail call fastcc i32 @__cxgb4_setapp(ptr noundef %dev, i8 noundef zeroext %sub, i16 noundef zeroext %11, i8 noundef zeroext %conv21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 @dcb_ieee_setapp(ptr noundef %dev, ptr noundef %app) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cxgb4_ieee_negotiation_complete.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end25 ], [ -22, %cxgb4_ieee_negotiation_complete.exit.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call22, %if.end15.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_ieee_peer_ets(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cxgb4_ieee_read_ets(ptr noundef %dev, ptr noundef %ets, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cxgb4_getstate(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %dev, i32 2868
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !155
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cxgb4_setstate(ptr nocapture noundef %dev, i8 noundef zeroext %enabled) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enabled)
  %tobool = icmp ne i8 %enabled, 0
  %enabled2 = getelementptr i8, ptr %dev, i32 2868
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %enabled2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %enabled2, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5 = icmp eq i32 %1, 3
  %3 = zext i1 %cmp5 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %enabled)
  %cmp7.not = icmp ne i8 %3, %enabled
  %. = zext i1 %cmp7.not to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ %., %if.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4_setpgtccfg_tx(ptr nocapture noundef readonly %dev, i32 noundef %tc, i8 noundef zeroext %prio_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_per, i8 noundef zeroext %up_tc_map) #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %pgid)
  %cmp = icmp eq i8 %pgid, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bw_per)
  %cmp3 = icmp eq i8 %bw_per, -1
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_id, align 1
  %conv7 = zext i8 %7 to i32
  %or = or i32 %conv7, 465567744
  %8 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %pcmd, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 393218, ptr %0, align 4
  %mbox = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %3, i32 noundef %11, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, 0
  br i1 %cmp9.not, label %if.end16, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end16:                                         ; preds = %do.body
  %12 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 24)
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id, align 1
  %conv28 = zext i8 %15 to i32
  %or30 = or i32 %conv28, 462422016
  %16 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or30, ptr %pcmd, align 8
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 327682, ptr %0, align 4
  %18 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox, align 8
  %call.i129 = call i32 @t4_wr_mbox_meat(ptr noundef %3, i32 noundef %19, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp37.not = icmp eq i32 %call.i129, 0
  br i1 %cmp37.not, label %if.end45, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end45:                                         ; preds = %if.end16
  %20 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 24)
  %22 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_id, align 1
  %conv48 = zext i8 %23 to i32
  %or50 = or i32 %conv48, 465567744
  %24 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or50, ptr %pcmd, align 8
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 393218, ptr %0, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %1, align 8
  %27 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbox, align 8
  %call.i130 = call i32 @t4_wr_mbox_meat(ptr noundef %3, i32 noundef %28, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp59.not = icmp eq i32 %call.i130, 0
  br i1 %cmp59.not, label %if.end67, label %if.end45.cleanup.sink.split_crit_edge

if.end45.cleanup.sink.split_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end67:                                         ; preds = %if.end45
  %29 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 24)
  %31 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_id, align 1
  %conv71 = zext i8 %32 to i32
  %or73 = or i32 %conv71, 462422016
  %33 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or73, ptr %pcmd, align 8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 327682, ptr %0, align 4
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %35 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dcb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp78 = icmp eq i32 %36, 1
  br i1 %cmp78, label %if.then80, label %if.end67.if.end83_crit_edge

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then80:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %or82 = or i32 %conv71, 462422144
  %37 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or82, ptr %pcmd, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end67.if.end83_crit_edge
  %38 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mbox, align 8
  %call.i131 = call i32 @t4_wr_mbox_meat(ptr noundef %3, i32 noundef %39, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %cmp86.not = icmp eq i32 %call.i131, 0
  br i1 %cmp86.not, label %if.end83.cleanup_crit_edge, label %if.end83.cleanup.sink.split_crit_edge

if.end83.cleanup.sink.split_crit_edge:            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end83.cleanup.sink.split_crit_edge, %if.end45.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %call.i131.sink = phi i32 [ %call.i, %do.body.cleanup.sink.split_crit_edge ], [ %call.i129, %if.end16.cleanup.sink.split_crit_edge ], [ %call.i130, %if.end45.cleanup.sink.split_crit_edge ], [ %call.i131, %if.end83.cleanup.sink.split_crit_edge ]
  %.str.57.sink = phi ptr [ @.str.35, %do.body.cleanup.sink.split_crit_edge ], [ @.str.52, %if.end16.cleanup.sink.split_crit_edge ], [ @.str.38, %if.end45.cleanup.sink.split_crit_edge ], [ @.str.57, %if.end83.cleanup.sink.split_crit_edge ]
  %pdev_dev92 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %pdev_dev92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev_dev92, align 16
  %sub93 = sub i32 0, %call.i131.sink
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull %.str.57.sink, i32 noundef %sub93) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end83.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4_setpgbwgcfg_tx(ptr nocapture noundef readonly %dev, i32 noundef %pgid, i8 noundef zeroext %bw_per) #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %4 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_id, align 1
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, 465567744
  %8 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %pcmd, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 393218, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %1, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %3, i32 noundef %12, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %13 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 24)
  %15 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_id, align 1
  %conv9 = zext i8 %16 to i32
  %or11 = or i32 %conv9, 462422016
  %17 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or11, ptr %pcmd, align 8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 327682, ptr %0, align 4
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %19 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dcb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp16 = icmp eq i32 %20, 1
  br i1 %cmp16, label %if.then18, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or20 = or i32 %conv9, 462422144
  %21 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or20, ptr %pcmd, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  %22 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbox, align 8
  %call.i47 = call i32 @t4_wr_mbox_meat(ptr noundef %3, i32 noundef %23, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp24.not = icmp eq i32 %call.i47, 0
  br i1 %cmp24.not, label %if.end21.cleanup_crit_edge, label %if.end21.cleanup.sink.split_crit_edge

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end21.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call.i47.sink = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i47, %if.end21.cleanup.sink.split_crit_edge ]
  %.str.57.sink = phi ptr [ @.str.38, %entry.cleanup.sink.split_crit_edge ], [ @.str.57, %if.end21.cleanup.sink.split_crit_edge ]
  %pdev_dev30 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %pdev_dev30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev_dev30, align 16
  %sub31 = sub i32 0, %call.i47.sink
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull %.str.57.sink, i32 noundef %sub31) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4_getpgtccfg_tx(ptr nocapture noundef readonly %dev, i32 noundef %tc, ptr nocapture noundef writeonly %prio_type, ptr nocapture noundef %pgid, ptr nocapture noundef writeonly %bw_per, ptr nocapture noundef writeonly %up_tc_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 7, %tc
  tail call fastcc void @cxgb4_getpgtccfg(ptr noundef %dev, i32 noundef %sub, ptr noundef %prio_type, ptr noundef %pgid, ptr noundef %bw_per, ptr noundef %up_tc_map, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4_getpgbwgcfg_tx(ptr nocapture noundef readonly %dev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_per) #0 align 64 {
entry:
  %pcmd.i = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd.i) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %4 = call ptr @memset(ptr %1, i32 0, i32 24)
  %storemerge26.in.in.in.i = getelementptr i8, ptr %dev, i32 2325
  %5 = ptrtoint ptr %storemerge26.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %storemerge26.in.in.i = load i8, ptr %storemerge26.in.in.in.i, align 1
  %storemerge26.in.i = zext i8 %storemerge26.in.in.i to i32
  %storemerge26.i = or i32 %storemerge26.in.i, 465567744
  %6 = ptrtoint ptr %pcmd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge26.i, ptr %pcmd.i, align 8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 393218, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %1, align 8
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox.i, align 8
  %call.i.i = call i32 @t4_wr_mbox_meat(ptr noundef %3, i32 noundef %10, ptr noundef nonnull %pcmd.i, i32 noundef 32, ptr noundef nonnull %pcmd.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end16.i, label %do.end15.i

do.end15.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev_dev.i, align 16
  %sub.i = sub i32 0, %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38, i32 noundef %sub.i) #13
  br label %cxgb4_getpgbwgcfg.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2, i32 0, i32 3
  %arrayidx.i = getelementptr [8 x i8], ptr %13, i32 0, i32 %pgid
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %bw_per to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %bw_per, align 1
  br label %cxgb4_getpgbwgcfg.exit

cxgb4_getpgbwgcfg.exit:                           ; preds = %if.end16.i, %do.end15.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4_getpgtccfg_rx(ptr nocapture noundef readonly %dev, i32 noundef %tc, ptr nocapture noundef writeonly %prio_type, ptr nocapture noundef %pgid, ptr nocapture noundef writeonly %bw_per, ptr nocapture noundef writeonly %up_tc_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 7, %tc
  tail call fastcc void @cxgb4_getpgtccfg(ptr noundef %dev, i32 noundef %sub, ptr noundef %prio_type, ptr noundef %pgid, ptr noundef %bw_per, ptr noundef %up_tc_map, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4_getpgbwgcfg_rx(ptr nocapture noundef readonly %dev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_per) #0 align 64 {
entry:
  %pcmd.i = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd.i) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %4 = call ptr @memset(ptr %1, i32 0, i32 24)
  %storemerge26.in.in.in.i = getelementptr i8, ptr %dev, i32 2325
  %5 = ptrtoint ptr %storemerge26.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %storemerge26.in.in.i = load i8, ptr %storemerge26.in.in.in.i, align 1
  %storemerge26.in.i = zext i8 %storemerge26.in.in.i to i32
  %storemerge26.i = or i32 %storemerge26.in.i, 465567744
  %6 = ptrtoint ptr %pcmd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge26.i, ptr %pcmd.i, align 8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 458754, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %1, align 8
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox.i, align 8
  %call.i.i = call i32 @t4_wr_mbox_meat(ptr noundef %3, i32 noundef %10, ptr noundef nonnull %pcmd.i, i32 noundef 32, ptr noundef nonnull %pcmd.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end16.i, label %do.end15.i

do.end15.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev_dev.i, align 16
  %sub.i = sub i32 0, %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38, i32 noundef %sub.i) #13
  br label %cxgb4_getpgbwgcfg.exit

if.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2, i32 0, i32 3
  %arrayidx.i = getelementptr [8 x i8], ptr %13, i32 0, i32 %pgid
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %bw_per to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %bw_per, align 1
  br label %cxgb4_getpgbwgcfg.exit

cxgb4_getpgbwgcfg.exit:                           ; preds = %if.end16.i, %do.end15.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4_setpfccfg(ptr nocapture noundef %dev, i32 noundef %priority, i8 noundef zeroext %pfccfg) #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 8
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %3 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dcb, align 8
  %5 = add i32 %4, -1
  %switch.and.i = and i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp ne i32 %switch.and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %priority)
  %cmp = icmp sgt i32 %priority, 7
  %or.cond = or i1 %cmp, %switch.selectcmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 24)
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %9 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_id, align 1
  %conv = zext i8 %10 to i32
  %or = or i32 %conv, 462422016
  %11 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %pcmd, align 8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 327682, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp4 = icmp eq i32 %4, 1
  br i1 %cmp4, label %if.then6, label %do.body.if.end9_crit_edge

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %or8 = or i32 %conv, 462422144
  %13 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or8, ptr %pcmd, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body.if.end9_crit_edge
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %0, align 8
  %pfcen = getelementptr i8, ptr %dev, i32 2877
  %15 = ptrtoint ptr %pfcen to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pfcen, align 1
  %pfcen12 = getelementptr inbounds %struct.fw_port_dcb_pfc, ptr %0, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pfccfg)
  %tobool.not = icmp eq i8 %pfccfg, 0
  %sub20 = sub i32 7, %priority
  %shl21 = shl nuw i32 1, %sub20
  %17 = trunc i32 %shl21 to i8
  %18 = xor i8 %17, -1
  %conv25 = and i8 %16, %18
  %conv19 = or i8 %16, %17
  %storemerge = select i1 %tobool.not, i8 %conv25, i8 %conv19
  %19 = ptrtoint ptr %pfcen12 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %storemerge, ptr %pfcen12, align 1
  %mbox = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 6
  %20 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %2, i32 noundef %21, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp28.not = icmp eq i32 %call.i, 0
  br i1 %cmp28.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 4
  %22 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev_dev, align 16
  %sub34 = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.66, i32 noundef %sub34) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %pfcen12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pfcen12, align 1
  %26 = ptrtoint ptr %pfcen to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %pfcen, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end33, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cxgb4_getpfccfg(ptr nocapture noundef readonly %dev, i32 noundef %priority, ptr nocapture noundef writeonly %pfccfg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb1 = getelementptr i8, ptr %dev, i32 2856
  %0 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcb1, align 4
  %2 = add i32 %1, -1
  %switch.and.i = and i32 %2, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp ne i32 %switch.and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %priority)
  %cmp = icmp sgt i32 %priority, 7
  %or.cond = or i1 %cmp, %switch.selectcmp.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pfcen = getelementptr i8, ptr %dev, i32 2877
  %3 = ptrtoint ptr %pfcen to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pfcen, align 1
  %conv = zext i8 %4 to i32
  %sub = sub i32 7, %priority
  %shr = lshr i32 %conv, %sub
  %5 = trunc i32 %shr to i8
  %conv4 = and i8 %5, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i8 [ %conv4, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %pfccfg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge, ptr %pfccfg, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cxgb4_setall(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cxgb4_getcap(ptr nocapture noundef readonly %dev, i32 noundef %cap_id, ptr nocapture noundef writeonly %caps) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cap_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %cap_id, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge12
    i32 5, label %sw.bb1
    i32 6, label %sw.bb2
    i32 7, label %entry.sw.epilog_crit_edge13
    i32 4, label %entry.sw.bb4_crit_edge
    i32 8, label %entry.sw.bb4_crit_edge14
    i32 9, label %sw.bb5
  ]

entry.sw.bb4_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge14
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %supported = getelementptr i8, ptr %dev, i32 2864
  %1 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %supported, align 8
  %conv = trunc i32 %2 to i8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13
  %.sink = phi i8 [ 0, %sw.default ], [ %conv, %sw.bb5 ], [ 0, %sw.bb4 ], [ -128, %sw.bb2 ], [ -128, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge12 ], [ 1, %entry.sw.epilog_crit_edge13 ]
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %caps, align 1
  ret i8 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_getnumtcs(ptr nocapture noundef readonly %dev, i32 noundef %tcs_id, ptr nocapture noundef writeonly %num) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %tcs_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %tcs_id, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %msgs = getelementptr i8, ptr %dev, i32 2860
  %1 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msgs, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup.sink.split_crit_edge, label %if.then

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %pg_num_tcs_supported = getelementptr i8, ptr %dev, i32 2878
  %3 = ptrtoint ptr %pg_num_tcs_supported to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pg_num_tcs_supported, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %sw.bb.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ %4, %if.then ], [ 8, %sw.bb.cleanup.sink.split_crit_edge ], [ 8, %entry.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %num, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_setnumtcs(ptr nocapture noundef readnone %dev, i32 noundef %tcs_id, i8 noundef zeroext %num) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cxgb4_getpfcstate(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dcb, align 8
  %2 = add i32 %1, -1
  %switch.and.i = and i32 %2, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pfcen = getelementptr i8, ptr %dev, i32 2877
  %3 = ptrtoint ptr %pfcen to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pfcen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp ne i8 %4, 0
  %conv4 = zext i1 %cmp to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cxgb4_setpfcstate(ptr nocapture noundef %dev, i8 noundef zeroext %state) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_setapp(ptr noundef %dev, i8 noundef zeroext %app_idtype, i16 noundef zeroext %app_id, i8 noundef zeroext %app_prio) #0 align 64 {
entry:
  %app = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #10
  %0 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %2 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %app_idtype, ptr %app, align 2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %app_prio, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %app_id, ptr %1, align 2
  %5 = zext i8 %app_idtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %app_idtype, label %entry.cleanup_crit_edge [
    i8 0, label %cond.true
    i8 1, label %entry.cond.end_crit_edge
  ]

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ 0, %cond.true ], [ 3, %entry.cond.end_crit_edge ]
  %call = tail call fastcc i32 @__cxgb4_setapp(ptr noundef %dev, i8 noundef zeroext %cond, i16 noundef zeroext %app_id, i8 noundef zeroext %app_prio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = call i32 @dcb_setapp(ptr noundef %dev, ptr noundef nonnull %app) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_getapp(ptr nocapture noundef readonly %dev, i8 noundef zeroext %app_idtype, i16 noundef zeroext %app_id) #0 align 64 {
entry:
  %pcmd.i = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %app_idtype)
  %cmp = icmp eq i8 %app_idtype, 0
  %spec.select = select i1 %cmp, i8 0, i8 3
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %dcb.i = getelementptr i8, ptr %dev, i32 2856
  %2 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dcb.i, align 8
  %4 = add i32 %3, -1
  %switch.and.i.i = and i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.cond.preheader.i, label %entry.__cxgb4_getapp.exit_crit_edge

entry.__cxgb4_getapp.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgb4_getapp.exit

for.cond.preheader.i:                             ; preds = %entry
  %5 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd.i, i32 0, i32 2, i32 0, i32 2
  %port_id4.i = getelementptr i8, ptr %dev, i32 2325
  %idx.i = getelementptr inbounds %struct.fw_port_app_priority, ptr %6, i32 0, i32 2
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %sel_field.i = getelementptr inbounds %struct.fw_port_app_priority, ptr %6, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end38.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.011.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end38.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd.i) #10
  %9 = call ptr @memset(ptr %6, i32 0, i32 24)
  %10 = ptrtoint ptr %port_id4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_id4.i, align 1
  %conv5.i = zext i8 %11 to i32
  %or7.i = or i32 %conv5.i, 465567744
  %12 = ptrtoint ptr %pcmd.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or7.i, ptr %pcmd.i, align 8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 393218, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %6, align 8
  %conv13.i = trunc i32 %i.011.i to i8
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13.i, ptr %idx.i, align 1
  %16 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbox.i, align 8
  %call.i.i = call i32 @t4_wr_mbox_meat(ptr noundef %1, i32 noundef %17, ptr noundef nonnull %pcmd.i, i32 noundef 32, ptr noundef nonnull %pcmd.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp16.not.i, label %if.end22.i, label %do.end21.i

do.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev_dev.i, align 16
  %sub.i = sub i32 0, %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.40, i32 noundef %sub.i) #13
  br label %cleanup.thread.i

if.end22.i:                                       ; preds = %for.body.i
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %app_id)
  %cmp26.i = icmp eq i16 %21, %app_id
  br i1 %cmp26.i, label %if.then28.i, label %if.end22.i.if.end38.i_crit_edge

if.end22.i.if.end38.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then28.i:                                      ; preds = %if.end22.i
  %22 = ptrtoint ptr %sel_field.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sel_field.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %spec.select)
  %cmp32.i = icmp eq i8 %23, %spec.select
  br i1 %cmp32.i, label %if.then34.i, label %if.then28.i.if.end38.i_crit_edge

if.then28.i.if.end38.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %7, align 4
  %conv36.i = zext i8 %25 to i32
  br label %cleanup.thread.i

if.end38.i:                                       ; preds = %if.then28.i.if.end38.i_crit_edge, %if.end22.i.if.end38.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool41.not.i = icmp eq i16 %21, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd.i) #10
  %inc.i = add nuw nsw i32 %i.011.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %tobool41.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.end38.i.__cxgb4_getapp.exit_crit_edge, label %if.end38.i.for.body.i_crit_edge

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end38.i.__cxgb4_getapp.exit_crit_edge:         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgb4_getapp.exit

cleanup.thread.i:                                 ; preds = %if.then34.i, %do.end21.i
  %retval.1.ph.i = phi i32 [ %conv36.i, %if.then34.i ], [ %call.i.i, %do.end21.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd.i) #10
  br label %__cxgb4_getapp.exit

__cxgb4_getapp.exit:                              ; preds = %cleanup.thread.i, %if.end38.i.__cxgb4_getapp.exit_crit_edge, %entry.__cxgb4_getapp.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %entry.__cxgb4_getapp.exit_crit_edge ], [ %retval.1.ph.i, %cleanup.thread.i ], [ -17, %if.end38.i.__cxgb4_getapp.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cxgb4_getdcbx(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr i8, ptr %dev, i32 2864
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %supported, align 8
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cxgb4_setdcbx(ptr nocapture noundef %dev, i8 noundef zeroext %dcb_request) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %dcb_request to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %dcb_request)
  %0 = icmp ult i8 %dcb_request, 16
  br i1 %0, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %1 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dcb, align 8
  %3 = add i32 %2, -1
  %switch.and.i = and i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %supported = getelementptr i8, ptr %dev, i32 2864
  %4 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %supported, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp8.not = icmp eq i32 %5, %conv
  br i1 %cmp8.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %supported, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end11 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_getpeer_app(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %info, ptr nocapture noundef %app_count) #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 8
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %5 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dcb, align 8
  %7 = add i32 %6, -1
  %switch.and.i = and i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %info, align 1
  %error = getelementptr inbounds %struct.dcb_peer_app_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %error, align 1
  %10 = ptrtoint ptr %app_count to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %app_count, align 2
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %idx = getelementptr inbounds %struct.fw_port_app_priority, ptr %1, i32 0, i32 2
  %mbox = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 6
  %11 = getelementptr inbounds i8, ptr %pcmd, i32 8
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end
  %i.033 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.do.body_crit_edge ]
  %12 = call ptr @memset(ptr %11, i32 0, i32 24)
  %13 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_id, align 1
  %conv = zext i8 %14 to i32
  %or = or i32 %conv, 465567744
  %15 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %pcmd, align 8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 458754, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %1, align 8
  %18 = ptrtoint ptr %app_count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %app_count, align 2
  %conv2 = trunc i16 %19 to i8
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv2, ptr %idx, align 1
  %21 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %4, i32 noundef %22, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not = icmp eq i32 %call.i, 0
  br i1 %cmp5.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4
  %23 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.42, i32 noundef %sub) #13
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not = icmp eq i16 %26, 0
  br i1 %tobool.not, label %if.end11.for.end_crit_edge, label %for.inc

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %if.end11
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.033, %if.end11.for.end_crit_edge ], [ 8, %for.inc.for.end_crit_edge ]
  %conv15 = trunc i32 %i.0.lcssa to i16
  %27 = ptrtoint ptr %app_count to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv15, ptr %app_count, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end10 ], [ 0, %for.end ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_getpeerapp_tbl(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %table) #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dcb, align 8
  %8 = add i32 %7, -1
  %switch.and.i = and i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %idx = getelementptr inbounds %struct.fw_port_app_priority, ptr %1, i32 0, i32 2
  %mbox = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 6
  %sel_field = getelementptr inbounds %struct.fw_port_app_priority, ptr %1, i32 0, i32 4
  %9 = getelementptr inbounds i8, ptr %pcmd, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end14.do.body_crit_edge, %for.cond.preheader
  %i.044 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end14.do.body_crit_edge ]
  %10 = call ptr @memset(ptr %9, i32 0, i32 24)
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_id, align 1
  %conv = zext i8 %12 to i32
  %or = or i32 %conv, 465567744
  %13 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %pcmd, align 8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 458754, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %1, align 8
  %conv2 = trunc i32 %i.044 to i8
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2, ptr %idx, align 1
  %17 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %5, i32 noundef %18, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not = icmp eq i32 %call.i, 0
  br i1 %cmp5.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.42, i32 noundef %sub) #13
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not = icmp eq i16 %22, 0
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %23 = ptrtoint ptr %sel_field to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sel_field, align 1
  %add = add i8 %24, 1
  %arrayidx = getelementptr %struct.dcb_app, ptr %table, i32 %i.044
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %add, ptr %arrayidx, align 2
  %protocol = getelementptr %struct.dcb_app, ptr %table, i32 %i.044, i32 2
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %22, ptr %protocol, align 2
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 4
  %29 = call i8 @llvm.cttz.i8(i8 %28, i1 true), !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %iszero = icmp eq i8 %28, 0
  %conv24 = select i1 %iszero, i8 -1, i8 %29
  %priority = getelementptr %struct.dcb_app, ptr %table, i32 %i.044, i32 1
  %30 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv24, ptr %priority, align 1
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.end14.cleanup_crit_edge, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end10 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_cee_peer_getpg(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pg) #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 8
  %5 = ptrtoint ptr %pg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %pg, align 1
  %6 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 24)
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id, align 1
  %conv = zext i8 %9 to i32
  %or = or i32 %conv, 465567744
  %10 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %pcmd, align 8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 458754, ptr %0, align 4
  %mbox = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 6
  %12 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %4, i32 noundef %13, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4
  %14 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %sub) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = trunc i32 %18 to i8
  %conv10 = and i8 %19, 15
  %arrayidx = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %arrayidx, align 1
  %21 = trunc i32 %18 to i8
  %22 = lshr i8 %21, 4
  %arrayidx.1 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx.1, align 1
  %shr.2 = lshr i32 %18, 8
  %24 = trunc i32 %shr.2 to i8
  %conv10.2 = and i8 %24, 15
  %arrayidx.2 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 5
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10.2, ptr %arrayidx.2, align 1
  %shr.3 = lshr i32 %18, 12
  %26 = trunc i32 %shr.3 to i8
  %conv10.3 = and i8 %26, 15
  %arrayidx.3 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 4
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv10.3, ptr %arrayidx.3, align 1
  %shr.4 = lshr i32 %18, 16
  %28 = trunc i32 %shr.4 to i8
  %conv10.4 = and i8 %28, 15
  %arrayidx.4 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10.4, ptr %arrayidx.4, align 1
  %shr.5 = lshr i32 %18, 20
  %30 = trunc i32 %shr.5 to i8
  %conv10.5 = and i8 %30, 15
  %arrayidx.5 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv10.5, ptr %arrayidx.5, align 1
  %shr.6 = lshr i32 %18, 24
  %32 = trunc i32 %shr.6 to i8
  %conv10.6 = and i8 %32, 15
  %arrayidx.6 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv10.6, ptr %arrayidx.6, align 1
  %shr.7 = lshr i32 %18, 28
  %34 = trunc i32 %shr.7 to i8
  %arrayidx.7 = getelementptr %struct.cee_pg, ptr %pg, i32 0, i32 5, i32 0
  %35 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx.7, align 1
  %36 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 24)
  %38 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port_id, align 1
  %conv14 = zext i8 %39 to i32
  %or16 = or i32 %conv14, 465567744
  %40 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or16, ptr %pcmd, align 8
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 458754, ptr %0, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %1, align 8
  %43 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mbox, align 8
  %call.i72 = call i32 @t4_wr_mbox_meat(ptr noundef %4, i32 noundef %44, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp25.not = icmp eq i32 %call.i72, 0
  br i1 %cmp25.not, label %for.body37.preheader, label %do.end30

for.body37.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep = getelementptr i8, ptr %pg, i32 4
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %2, align 8
  %47 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %uglygep, align 1
  %num_tcs_supported = getelementptr inbounds %struct.fw_port_dcb_pgrate, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %num_tcs_supported to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_tcs_supported, align 1
  %tcs_supported = getelementptr inbounds %struct.cee_pg, ptr %pg, i32 0, i32 3
  %50 = ptrtoint ptr %tcs_supported to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %tcs_supported, align 1
  br label %cleanup

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev31 = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4
  %51 = ptrtoint ptr %pdev_dev31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev_dev31, align 16
  %sub32 = sub i32 0, %call.i72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.38, i32 noundef %sub32) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %for.body37.preheader, %do.end5
  %retval.0 = phi i32 [ %call.i, %do.end5 ], [ %call.i72, %do.end30 ], [ 0, %for.body37.preheader ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_cee_peer_getpfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pfc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tcs_supported = getelementptr inbounds %struct.cee_pfc, ptr %pfc, i32 0, i32 3
  %0 = ptrtoint ptr %tcs_supported to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %tcs_supported, align 1
  %pfcen = getelementptr i8, ptr %dev, i32 2877
  %1 = ptrtoint ptr %pfcen to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pfcen, align 1
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %2) #10
  %pfc_en = getelementptr inbounds %struct.cee_pfc, ptr %pfc, i32 0, i32 2
  %3 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %rev.i, ptr %pfc_en, align 1
  %pfc_num_tcs_supported = getelementptr i8, ptr %dev, i32 2879
  %4 = ptrtoint ptr %pfc_num_tcs_supported to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfc_num_tcs_supported, align 1
  %6 = ptrtoint ptr %tcs_supported to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tcs_supported, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_delapp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_ieee_read_ets(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ets, i32 noundef %local) unnamed_addr #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %2 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 3
  %6 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 9
  %msgs = getelementptr i8, ptr %dev, i32 2860
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msgs, align 4
  %and = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pg_num_tcs_supported = getelementptr i8, ptr %dev, i32 2878
  %9 = ptrtoint ptr %pg_num_tcs_supported to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pg_num_tcs_supported, align 2
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %11 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ets_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool2.not = icmp eq i32 %local, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %ets to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ets, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.end.if.end13_crit_edge
  %storemerge = phi i32 [ 393218, %if.then3 ], [ 458754, %if.end.if.end13_crit_edge ]
  %13 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 24)
  %storemerge110.in.in.in = getelementptr i8, ptr %dev, i32 2325
  %15 = ptrtoint ptr %storemerge110.in.in.in to i32
  call void @__asan_load1_noabort(i32 %15)
  %storemerge110.in.in = load i8, ptr %storemerge110.in.in.in, align 1
  %storemerge110.in = zext i8 %storemerge110.in.in to i32
  %storemerge110 = or i32 %storemerge110.in, 465567744
  %16 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge110, ptr %pcmd, align 8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %2, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %3, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.35, i32 noundef %sub) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 4
  %25 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 24)
  %. = select i1 %tobool2.not, i32 458754, i32 393218
  %27 = ptrtoint ptr %storemerge110.in.in.in to i32
  call void @__asan_load1_noabort(i32 %27)
  %storemerge112.in.in = load i8, ptr %storemerge110.in.in.in, align 1
  %storemerge112.in = zext i8 %storemerge112.in.in to i32
  %storemerge112 = or i32 %storemerge112.in, 465567744
  %28 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge112, ptr %pcmd, align 8
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %., ptr %2, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %3, align 8
  %31 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mbox, align 8
  %call.i113 = call i32 @t4_wr_mbox_meat(ptr noundef %1, i32 noundef %32, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp48.not = icmp eq i32 %call.i113, 0
  br i1 %cmp48.not, label %for.body.preheader, label %do.end53

for.body.preheader:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %uglygep = getelementptr i8, ptr %ets, i32 3
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %5, align 8
  %35 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %uglygep, align 1
  %uglygep115 = getelementptr i8, ptr %ets, i32 11
  %36 = ptrtoint ptr %uglygep115 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %34, ptr %uglygep115, align 1
  %uglygep116 = getelementptr i8, ptr %ets, i32 19
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %6, align 8
  %39 = ptrtoint ptr %uglygep116 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %uglygep116, align 1
  %shr = lshr i32 %24, 28
  %40 = trunc i32 %shr to i8
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx, align 1
  %shr.1 = lshr i32 %24, 24
  %42 = trunc i32 %shr.1 to i8
  %conv61.1 = and i8 %42, 15
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv61.1, ptr %arrayidx.1, align 1
  %shr.2 = lshr i32 %24, 20
  %44 = trunc i32 %shr.2 to i8
  %conv61.2 = and i8 %44, 15
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv61.2, ptr %arrayidx.2, align 1
  %shr.3 = lshr i32 %24, 16
  %46 = trunc i32 %shr.3 to i8
  %conv61.3 = and i8 %46, 15
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %47 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv61.3, ptr %arrayidx.3, align 1
  %shr.4 = lshr i32 %24, 12
  %48 = trunc i32 %shr.4 to i8
  %conv61.4 = and i8 %48, 15
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %49 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv61.4, ptr %arrayidx.4, align 1
  %shr.5 = lshr i32 %24, 8
  %50 = trunc i32 %shr.5 to i8
  %conv61.5 = and i8 %50, 15
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %51 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv61.5, ptr %arrayidx.5, align 1
  %52 = trunc i32 %24 to i8
  %53 = lshr i8 %52, 4
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %54 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx.6, align 1
  %55 = trunc i32 %24 to i8
  %conv61.7 = and i8 %55, 15
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %56 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv61.7, ptr %arrayidx.7, align 1
  br label %cleanup

do.end53:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev54 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %pdev_dev54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev_dev54, align 16
  %sub55 = sub i32 0, %call.i113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.38, i32 noundef %sub55) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %for.body.preheader, %do.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end19 ], [ %call.i113, %do.end53 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_wr_mbox_meat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_ieee_getapp_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cxgb4_setapp(ptr noundef %dev, i8 noundef zeroext %app_idtype, i16 noundef zeroext %app_id, i8 noundef zeroext %app_prio) unnamed_addr #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %dcb = getelementptr i8, ptr %dev, i32 2856
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dcb, align 8
  %8 = add i32 %7, -1
  %switch.and.i = and i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %port_id = getelementptr i8, ptr %dev, i32 2325
  %idx = getelementptr inbounds %struct.fw_port_app_priority, ptr %1, i32 0, i32 2
  %mbox = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 6
  %12 = getelementptr inbounds i8, ptr %pcmd, i32 8
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.cond.preheader
  %i.0106 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.do.body_crit_edge ]
  %13 = call ptr @memset(ptr %12, i32 0, i32 24)
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id, align 1
  %conv = zext i8 %15 to i32
  %or = or i32 %conv, 465567744
  %16 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %pcmd, align 8
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 393218, ptr %0, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %1, align 8
  %conv5 = trunc i32 %i.0106 to i8
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv5, ptr %idx, align 1
  %20 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %5, i32 noundef %21, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.not = icmp eq i32 %call.i, 0
  br i1 %cmp8.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.42, i32 noundef %sub) #13
  br label %cleanup

if.end14:                                         ; preds = %do.body
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %app_id)
  %cmp18 = icmp eq i16 %25, %app_id
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not = icmp eq i16 %25, 0
  %or.cond = or i1 %cmp18, %tobool.not
  br i1 %or.cond, label %do.body36, label %for.inc

for.inc:                                          ; preds = %if.end14
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %do.end33, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end33:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev34 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %pdev_dev34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev_dev34, align 16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.45) #13
  br label %cleanup

do.body36:                                        ; preds = %if.end14
  %conv5.le = trunc i32 %i.0106 to i8
  %28 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 24)
  %30 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_id, align 1
  %conv38 = zext i8 %31 to i32
  %or40 = or i32 %conv38, 462422016
  %32 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or40, ptr %pcmd, align 8
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 327682, ptr %0, align 4
  %34 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dcb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp47 = icmp eq i32 %35, 1
  br i1 %cmp47, label %if.then49, label %do.body36.if.end52_crit_edge

do.body36.if.end52_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then49:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %or51 = or i32 %conv38, 462422144
  %36 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or51, ptr %pcmd, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %do.body36.if.end52_crit_edge
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %1, align 8
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %app_id, ptr %3, align 2
  %sel_field = getelementptr inbounds %struct.fw_port_app_priority, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %sel_field to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %app_idtype, ptr %sel_field, align 1
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %app_prio, ptr %2, align 4
  %41 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv5.le, ptr %idx, align 1
  %42 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mbox, align 8
  %call.i98 = call i32 @t4_wr_mbox_meat(ptr noundef %5, i32 noundef %43, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp64.not = icmp eq i32 %call.i98, 0
  br i1 %cmp64.not, label %if.end52.cleanup_crit_edge, label %do.end69

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end69:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev70 = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %pdev_dev70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev_dev70, align 16
  %sub71 = sub i32 0, %call.i98
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.48, i32 noundef %sub71) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.end52.cleanup_crit_edge, %do.end33, %do.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end13 ], [ -16, %do.end33 ], [ %call.i98, %do.end69 ], [ -22, %entry.cleanup_crit_edge ], [ -67, %if.end.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_getpgtccfg(ptr nocapture noundef readonly %dev, i32 noundef %tc, ptr nocapture noundef writeonly %prio_type, ptr nocapture noundef %pgid, ptr nocapture noundef writeonly %bw_per, ptr nocapture noundef writeonly %up_tc_map, i32 noundef %local) unnamed_addr #0 align 64 {
entry:
  %pcmd = alloca %struct.fw_port_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcmd) #10
  %0 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 8
  %5 = ptrtoint ptr %up_tc_map to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %up_tc_map, align 1
  %6 = ptrtoint ptr %bw_per to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bw_per, align 1
  %7 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pgid, align 1
  %8 = ptrtoint ptr %prio_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %prio_type, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool.not = icmp eq i32 %local, 0
  %9 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 24)
  %. = select i1 %tobool.not, i32 458754, i32 393218
  %storemerge86.in.in.in = getelementptr i8, ptr %dev, i32 2325
  %11 = ptrtoint ptr %storemerge86.in.in.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %storemerge86.in.in = load i8, ptr %storemerge86.in.in.in, align 1
  %storemerge86.in = zext i8 %storemerge86.in.in to i32
  %storemerge86 = or i32 %storemerge86.in, 465567744
  %12 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge86, ptr %pcmd, align 8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %., ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %1, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 6
  %15 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %4, i32 noundef %16, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4
  %17 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.35, i32 noundef %sub) #13
  br label %cleanup

if.end16:                                         ; preds = %entry
  %19 = getelementptr inbounds %struct.fw_port_cmd, ptr %pcmd, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %mul = shl i32 %tc, 2
  %shr = lshr i32 %21, %mul
  %22 = trunc i32 %shr to i8
  %conv19 = and i8 %22, 15
  %23 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv19, ptr %pgid, align 1
  %24 = getelementptr inbounds i8, ptr %pcmd, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 24)
  %.90 = select i1 %tobool.not, i32 458754, i32 393218
  %26 = ptrtoint ptr %storemerge86.in.in.in to i32
  call void @__asan_load1_noabort(i32 %26)
  %storemerge88.in.in = load i8, ptr %storemerge86.in.in.in, align 1
  %storemerge88.in = zext i8 %storemerge88.in.in to i32
  %storemerge88 = or i32 %storemerge88.in, 465567744
  %27 = ptrtoint ptr %pcmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge88, ptr %pcmd, align 8
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.90, ptr %0, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %1, align 8
  %30 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mbox, align 8
  %call.i89 = call i32 @t4_wr_mbox_meat(ptr noundef %4, i32 noundef %31, ptr noundef nonnull %pcmd, i32 noundef 32, ptr noundef nonnull %pcmd, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp46.not = icmp eq i32 %call.i89, 0
  br i1 %cmp46.not, label %if.end54, label %do.end51

do.end51:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %pdev_dev52 = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 4
  %32 = ptrtoint ptr %pdev_dev52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev_dev52, align 16
  %sub53 = sub i32 0, %call.i89
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.38, i32 noundef %sub53) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end16
  %34 = ptrtoint ptr %pgid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pgid, align 1
  %idxprom = zext i8 %35 to i32
  %arrayidx = getelementptr [8 x i8], ptr %2, i32 0, i32 %idxprom
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %38 = ptrtoint ptr %bw_per to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %bw_per, align 1
  %shl56 = shl nuw i32 1, %tc
  %conv57 = trunc i32 %shl56 to i8
  %39 = ptrtoint ptr %up_tc_map to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv57, ptr %up_tc_map, align 1
  %40 = load i8, ptr %pgid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %40)
  %cmp59.not = icmp eq i8 %40, 15
  br i1 %cmp59.not, label %if.end54.cleanup_crit_edge, label %if.then61

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %prio_type to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %prio_type, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end54.cleanup_crit_edge, %do.end51, %do.end15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcmd) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 14, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 15, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 16, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 17, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 18, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 19, i32 2}
!12 = !{ptr @dcb_ver_array, !13, !"dcb_ver_array", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 13, i32 20}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 44, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cxgb4_dcb_state_init.__UNIQUE_ID_ddebug658, !15, !"__UNIQUE_ID_ddebug658", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 133, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cxgb4_dcb_state_fsm.__UNIQUE_ID_ddebug659, !21, !"__UNIQUE_ID_ddebug659", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 262, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cxgb4_dcb_state_fsm._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @cxgb4_dcb_state_fsm._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 267, i32 2}
!32 = !{ptr @cxgb4_dcb_state_fsm._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cxgb4_dcb_state_fsm._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 301, i32 5}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cxgb4_dcb_handle_fw_update._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @cxgb4_dcb_handle_fw_update._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 305, i32 5}
!42 = !{ptr @cxgb4_dcb_handle_fw_update._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cxgb4_dcb_handle_fw_update._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 324, i32 3}
!46 = !{ptr @cxgb4_dcb_handle_fw_update._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cxgb4_dcb_handle_fw_update._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 387, i32 4}
!50 = !{ptr @cxgb4_dcb_handle_fw_update._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cxgb4_dcb_handle_fw_update._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 399, i32 3}
!54 = !{ptr @cxgb4_dcb_handle_fw_update._entry.30, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cxgb4_dcb_handle_fw_update._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @cxgb4_dcb_ops, !57, !"cxgb4_dcb_ops", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 1242, i32 29}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 87, i32 4}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cxgb4_dcb_cleanup_apps._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cxgb4_dcb_cleanup_apps._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 965, i32 3}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cxgb4_ieee_read_ets._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cxgb4_ieee_read_ets._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 979, i32 3}
!70 = !{ptr @cxgb4_ieee_read_ets._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cxgb4_ieee_read_ets._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 807, i32 4}
!74 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__cxgb4_getapp._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @__cxgb4_getapp._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 858, i32 4}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__cxgb4_setapp._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @__cxgb4_setapp._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 874, i32 3}
!84 = !{ptr @__cxgb4_setapp._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @__cxgb4_setapp._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 891, i32 3}
!88 = !{ptr @__cxgb4_setapp._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @__cxgb4_setapp._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 522, i32 3}
!92 = !{ptr @cxgb4_setpgtccfg_tx._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cxgb4_setpgtccfg_tx._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 535, i32 3}
!96 = !{ptr @cxgb4_setpgtccfg_tx._entry.51, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cxgb4_setpgtccfg_tx._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @cxgb4_setpgtccfg_tx._entry.54, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 547, i32 3}
!100 = !{ptr @cxgb4_setpgtccfg_tx._entry_ptr.55, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 560, i32 3}
!103 = !{ptr @cxgb4_setpgtccfg_tx._entry.56, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @cxgb4_setpgtccfg_tx._entry_ptr.58, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 611, i32 3}
!107 = !{ptr @cxgb4_setpgbwgcfg_tx._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @cxgb4_setpgbwgcfg_tx._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @cxgb4_setpgbwgcfg_tx._entry.60, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 625, i32 3}
!111 = !{ptr @cxgb4_setpgbwgcfg_tx._entry_ptr.61, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 457, i32 3}
!114 = !{ptr @cxgb4_getpgtccfg._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @cxgb4_getpgtccfg._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @cxgb4_getpgtccfg._entry.63, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 469, i32 3}
!118 = !{ptr @cxgb4_getpgtccfg._entry_ptr.64, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 580, i32 3}
!121 = !{ptr @cxgb4_getpgbwgcfg._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cxgb4_getpgbwgcfg._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 672, i32 3}
!125 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @cxgb4_setpfccfg._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @cxgb4_setpfccfg._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 1131, i32 4}
!130 = !{ptr @cxgb4_getpeer_app._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cxgb4_getpeer_app._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 1161, i32 4}
!134 = !{ptr @cxgb4_getpeerapp_tbl._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @cxgb4_getpeerapp_tbl._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 1198, i32 3}
!138 = !{ptr @cxgb4_cee_peer_getpg._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cxgb4_cee_peer_getpg._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @cxgb4_cee_peer_getpg._entry.71, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c", i32 1210, i32 3}
!142 = !{ptr @cxgb4_cee_peer_getpg._entry_ptr.72, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2149144034, i64 2149144039, i64 2149144052, i64 2149144096, i64 2149144130, i64 2149144151}
!153 = !{i8 0, i8 9}
!154 = !{i32 0, i32 33}
!155 = !{i8 0, i8 2}
