; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cudbg_tcam = type { i32, i32, i32, i32, i32, i32 }
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
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.190, i32 }
%union.anon.190 = type { ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.cudbg_region_info = type { i8, i32, i32 }
%struct.cudbg_buffer = type { i32, i32, ptr }
%struct.cudbg_entity_hdr = type { i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8], i32, [5 x i32] }
%struct.cudbg_hdr = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, [8 x i32] }
%struct.cudbg_meminfo = type { [4 x %struct.cudbg_mem_desc], [27 x %struct.cudbg_mem_desc], i32, i32, i32, i32, i32, i32, [3 x i32], [4 x i32], i32, [12 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32 }
%struct.cudbg_mem_desc = type { i32, i32, i32 }
%struct.cudbg_init = type { ptr, ptr, i32, i8, ptr, i32, ptr }
%struct.cudbg_cim_qcfg = type { i8, [14 x i16], [14 x i16], [6 x i16], [16 x i32], [56 x i32] }
%struct.cudbg_error = type { i32, i32, i32 }
%struct.cudbg_rss_vf_conf = type { i32, i32 }
%struct.cudbg_pm_stats = type { [7 x i32], [7 x i32], [7 x i64], [7 x i64] }
%struct.cudbg_hw_sched = type { [8 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.ireg_buf = type { %struct.ireg_field, [32 x i32] }
%struct.ireg_field = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.167, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.189, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.167 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.189 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sge_qbase_reg_field = type { i32, [4 x i32], [8 x [4 x i32]], [256 x [4 x i32]], i32 }
%struct.cudbg_ulprx_la = type { [4096 x i32], i32 }
%struct.cudbg_tp_la = type { i32, i32, [0 x i8] }
%struct.cudbg_ver_hdr = type { i32, i16, i16 }
%struct.cudbg_cim_pif_la = type { i32, [0 x i8] }
%struct.cudbg_clk_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.cudbg_tid_info_region_rev1 = type { %struct.cudbg_ver_hdr, %struct.cudbg_tid_info_region, i32, [16 x i32] }
%struct.cudbg_tid_info_region = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cudbg_ch_cntxt = type { i32, i32, [6 x i32] }
%struct.fw_ldst_cmd = type { i32, i32, %union.fw_ldst }
%union.fw_ldst = type { %struct.fw_ldst_func, [32 x i8] }
%struct.fw_ldst_func = type { i8, i8, i16, i32, i64, i64 }
%struct.cudbg_mps_tcam = type { i64, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [6 x i8], i8, i8, [2 x i8] }
%struct.cudbg_vpd_data = type { [25 x i8], [17 x i8], [13 x i8], [17 x i8], i16, i16, i16, i16, i32, i32 }
%struct.cudbg_tid_data = type { i32, i32, i32, i32, [17 x i32] }
%struct.cudbg_pbt_tables = type { [8 x i32], [16 x i32], [8 x i32], [512 x i32] }
%struct.mbox_cmd_log = type { i32, i32, i32 }
%struct.mbox_cmd = type { [8 x i64], i64, i32, i16, i16 }
%struct.cudbg_mbox_log = type { %struct.mbox_cmd, [8 x i32], [8 x i32] }
%struct.cudbg_qdesc_entry = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.sge_uld_txq_info = type { ptr, %struct.atomic_t, i16 }
%struct.sge_uld_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, i8, i32, [56 x i8] }
%struct.sge_uld_rxq_info = type { [16 x i8], ptr, ptr, i16, i16, i8 }
%struct.sge_ofld_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_ofld_stats, ptr, [68 x i8] }
%struct.sge_ofld_stats = type { i32, i32, i32, i32 }
%struct.sge_eohw_txq = type { %struct.spinlock, %struct.sge_txq, ptr, i32, i32, i32, i32, i32 }

@t5_tp_pio_array = internal constant { [11 x [4 x i32]], [48 x i8] } { [11 x [4 x i32]] [[4 x i32] [i32 32320, i32 32324, i32 32, i32 28], [4 x i32] [i32 32320, i32 32324, i32 64, i32 19], [4 x i32] [i32 32320, i32 32324, i32 84, i32 2], [4 x i32] [i32 32320, i32 32324, i32 96, i32 13], [4 x i32] [i32 32320, i32 32324, i32 111, i32 1], [4 x i32] [i32 32320, i32 32324, i32 288, i32 4], [4 x i32] [i32 32320, i32 32324, i32 299, i32 2], [4 x i32] [i32 32320, i32 32324, i32 303, i32 21], [4 x i32] [i32 32320, i32 32324, i32 325, i32 19], [4 x i32] [i32 32320, i32 32324, i32 560, i32 25], [4 x i32] [i32 32320, i32 32324, i32 2240, i32 1]], [48 x i8] zeroinitializer }, align 32
@t6_tp_pio_array = internal constant { [12 x [4 x i32]], [32 x i8] } { [12 x [4 x i32]] [[4 x i32] [i32 32320, i32 32324, i32 32, i32 28], [4 x i32] [i32 32320, i32 32324, i32 64, i32 10], [4 x i32] [i32 32320, i32 32324, i32 80, i32 10], [4 x i32] [i32 32320, i32 32324, i32 96, i32 14], [4 x i32] [i32 32320, i32 32324, i32 111, i32 1], [4 x i32] [i32 32320, i32 32324, i32 112, i32 6], [4 x i32] [i32 32320, i32 32324, i32 304, i32 18], [4 x i32] [i32 32320, i32 32324, i32 325, i32 19], [4 x i32] [i32 32320, i32 32324, i32 352, i32 1], [4 x i32] [i32 32320, i32 32324, i32 560, i32 25], [4 x i32] [i32 32320, i32 32324, i32 586, i32 3], [4 x i32] [i32 32320, i32 32324, i32 2240, i32 1]], [32 x i8] zeroinitializer }, align 32
@t5_tp_tm_pio_array = internal constant { [1 x [4 x i32]], [16 x i8] } { [1 x [4 x i32]] [[4 x i32] [i32 32280, i32 32284, i32 0, i32 12]], [16 x i8] zeroinitializer }, align 32
@t6_tp_tm_pio_array = internal constant { [1 x [4 x i32]], [16 x i8] } { [1 x [4 x i32]] [[4 x i32] [i32 32280, i32 32284, i32 0, i32 12]], [16 x i8] zeroinitializer }, align 32
@t5_tp_mib_index_array = internal constant { [9 x [4 x i32]], [48 x i8] } { [9 x [4 x i32]] [[4 x i32] [i32 32336, i32 32340, i32 0, i32 13], [4 x i32] [i32 32336, i32 32340, i32 16, i32 6], [4 x i32] [i32 32336, i32 32340, i32 24, i32 8], [4 x i32] [i32 32336, i32 32340, i32 32, i32 13], [4 x i32] [i32 32336, i32 32340, i32 48, i32 16], [4 x i32] [i32 32336, i32 32340, i32 64, i32 16], [4 x i32] [i32 32336, i32 32340, i32 80, i32 16], [4 x i32] [i32 32336, i32 32340, i32 96, i32 6], [4 x i32] [i32 32336, i32 32340, i32 104, i32 4]], [48 x i8] zeroinitializer }, align 32
@t6_tp_mib_index_array = internal constant { [6 x [4 x i32]], [32 x i8] } { [6 x [4 x i32]] [[4 x i32] [i32 32336, i32 32340, i32 0, i32 13], [4 x i32] [i32 32336, i32 32340, i32 16, i32 6], [4 x i32] [i32 32336, i32 32340, i32 24, i32 21], [4 x i32] [i32 32336, i32 32340, i32 48, i32 32], [4 x i32] [i32 32336, i32 32340, i32 80, i32 22], [4 x i32] [i32 32336, i32 32340, i32 104, i32 12]], [32 x i8] zeroinitializer }, align 32
@t5_pcie_config_array = internal constant { [14 x [2 x i32]], [48 x i8] } { [14 x [2 x i32]] [[2 x i32] [i32 0, i32 52], [2 x i32] [i32 60, i32 64], [2 x i32] [i32 80, i32 100], [2 x i32] [i32 112, i32 128], [2 x i32] [i32 148, i32 160], [2 x i32] [i32 176, i32 184], [2 x i32] [i32 208, i32 212], [2 x i32] [i32 256, i32 296], [2 x i32] [i32 320, i32 328], [2 x i32] [i32 336, i32 356], [2 x i32] [i32 368, i32 376], [2 x i32] [i32 384, i32 404], [2 x i32] [i32 416, i32 440], [2 x i32] [i32 448, i32 520]], [48 x i8] zeroinitializer }, align 32
@t5_up_cim_reg_array = internal constant { [13 x [5 x i32]], [92 x i8] } { [13 x [5 x i32]] [[5 x i32] [i32 31568, i32 31572, i32 8192, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 8320, i32 25, i32 0], [5 x i32] [i32 31568, i32 31572, i32 0, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 128, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 256, i32 17, i32 0], [5 x i32] [i32 31568, i32 31572, i32 512, i32 16, i32 0], [5 x i32] [i32 31568, i32 31572, i32 576, i32 2, i32 0], [5 x i32] [i32 31568, i32 31572, i32 592, i32 2, i32 0], [5 x i32] [i32 31568, i32 31572, i32 608, i32 2, i32 0], [5 x i32] [i32 31568, i32 31572, i32 624, i32 2, i32 0], [5 x i32] [i32 31568, i32 31572, i32 640, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 768, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 896, i32 20, i32 0]], [92 x i8] zeroinitializer }, align 32
@t6_up_cim_reg_array = internal constant { [22 x [5 x i32]], [104 x i8] } { [22 x [5 x i32]] [[5 x i32] [i32 31568, i32 31572, i32 8192, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 8320, i32 29, i32 0], [5 x i32] [i32 31568, i32 31572, i32 0, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 128, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 256, i32 17, i32 0], [5 x i32] [i32 31568, i32 31572, i32 512, i32 16, i32 0], [5 x i32] [i32 31568, i32 31572, i32 576, i32 2, i32 0], [5 x i32] [i32 31568, i32 31572, i32 592, i32 2, i32 0], [5 x i32] [i32 31568, i32 31572, i32 608, i32 2, i32 0], [5 x i32] [i32 31568, i32 31572, i32 624, i32 2, i32 0], [5 x i32] [i32 31568, i32 31572, i32 640, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 768, i32 32, i32 0], [5 x i32] [i32 31568, i32 31572, i32 896, i32 20, i32 0], [5 x i32] [i32 31568, i32 31572, i32 18688, i32 4, i32 4], [5 x i32] [i32 31568, i32 31572, i32 18692, i32 4, i32 4], [5 x i32] [i32 31568, i32 31572, i32 18696, i32 4, i32 4], [5 x i32] [i32 31568, i32 31572, i32 18704, i32 4, i32 4], [5 x i32] [i32 31568, i32 31572, i32 18708, i32 4, i32 4], [5 x i32] [i32 31568, i32 31572, i32 18720, i32 16, i32 16], [5 x i32] [i32 31568, i32 31572, i32 18724, i32 16, i32 16], [5 x i32] [i32 31568, i32 31572, i32 18728, i32 16, i32 16], [5 x i32] [i32 31568, i32 31572, i32 18732, i32 16, i32 16]], [104 x i8] zeroinitializer }, align 32
@uld_mutex = external dso_local global %struct.mutex, align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tx payload:\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Rx payload:\00", [20 x i8] zeroinitializer }, align 32
@cudbg_region = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str, ptr @.str.1, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DBQ contexts:\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IMSG contexts:\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FLM cache:\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCBs:\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Pstructs:\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Timers:\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rx FL:\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Tx FL:\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Pstruct FL:\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LE hash:\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iSCSI region:\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TDDP region:\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TPT region:\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STAG region:\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RQ region:\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RQUDP region:\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PBL region:\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TXPBL region:\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DBVFIFO region:\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ULPRX state:\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ULPTX state:\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"On-chip queues:\00", [16 x i8] zeroinitializer }, align 32
@switch.table.cudbg_get_entity_length = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 163840, i32 339968, i32 339968], [20 x i8] zeroinitializer }, align 32
@switch.table.cudbg_collect_dump_context = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 176, i32 141, i32 89], [20 x i8] zeroinitializer }, align 32
@switch.table.cudbg_get_sge_ctxt_fw = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 176, i32 141, i32 89], [20 x i8] zeroinitializer }, align 32
@switch.table.cudbg_collect_qdesc = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9, i32 12, i32 14, i32 17, i32 0, i32 19], [40 x i8] zeroinitializer }, align 32
@switch.table.cudbg_collect_qdesc.24 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 10, i32 13, i32 15, i32 18, i32 0, i32 20], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [54 x i64] [i64 52, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 25, i64 27, i64 30, i64 31, i64 36, i64 37, i64 41, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 50, i64 51, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 64, i64 65, i64 66, i64 67, i64 68, i64 70]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 80, i64 96]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 96]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 96]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 96]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 96]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 96]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 96]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 96]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"t5_tp_pio_array\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 33, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"t6_tp_pio_array\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 18, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"t5_tp_tm_pio_array\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 51, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"t6_tp_tm_pio_array\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 47, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"t5_tp_mib_index_array\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 64, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"t6_tp_mib_index_array\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 55, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"t5_pcie_config_array\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 107, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"t5_up_cim_reg_array\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 160, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"t6_up_cim_reg_array\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 135, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1370, i32 46 }
@___asan_gen_.72 = private constant [50 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 1371, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"cudbg_region\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 88, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 89, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 89, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 89, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 89, i32 51 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 90, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 90, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 90, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 90, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 90, i32 46 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 91, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 91, i32 44 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 92, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 92, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 92, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 92, i32 49 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 93, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 93, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 93, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 94, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 94, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 94, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [53 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 95, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [37 x i8] c"switch.table.cudbg_get_entity_length\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [40 x i8] c"switch.table.cudbg_collect_dump_context\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [35 x i8] c"switch.table.cudbg_get_sge_ctxt_fw\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [33 x i8] c"switch.table.cudbg_collect_qdesc\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [36 x i8] c"switch.table.cudbg_collect_qdesc.24\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @t5_tp_pio_array, ptr @t6_tp_pio_array, ptr @t5_tp_tm_pio_array, ptr @t6_tp_tm_pio_array, ptr @t5_tp_mib_index_array, ptr @t6_tp_mib_index_array, ptr @t5_pcie_config_array, ptr @t5_up_cim_reg_array, ptr @t6_up_cim_reg_array, ptr @.str, ptr @.str.1, ptr @cudbg_region, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.cudbg_get_entity_length, ptr @switch.table.cudbg_collect_dump_context, ptr @switch.table.cudbg_get_sge_ctxt_fw, ptr @switch.table.cudbg_collect_qdesc, ptr @switch.table.cudbg_collect_qdesc.24], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5_tp_pio_array to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t6_tp_pio_array to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5_tp_tm_pio_array to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t6_tp_tm_pio_array to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5_tp_mib_index_array to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t6_tp_mib_index_array to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5_pcie_config_array to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t5_up_cim_reg_array to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t6_up_cim_reg_array to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cudbg_region to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cudbg_get_entity_length to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cudbg_collect_dump_context to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cudbg_get_sge_ctxt_fw to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cudbg_collect_qdesc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cudbg_collect_qdesc.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_get_entity_length(ptr noundef %adap, i32 noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  %tcam_region = alloca %struct.cudbg_tcam, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tcam_region) #8
  %0 = call ptr @memset(ptr %tcam_region, i32 0, i32 24)
  %1 = zext i32 %entity to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %entity, label %entry.sw.epilog172_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb14
    i32 5, label %sw.bb15
    i32 6, label %entry.sw.bb16_crit_edge
    i32 7, label %entry.sw.bb16_crit_edge253
    i32 8, label %entry.sw.bb16_crit_edge254
    i32 9, label %entry.sw.bb16_crit_edge255
    i32 10, label %entry.sw.bb16_crit_edge256
    i32 11, label %entry.sw.bb16_crit_edge257
    i32 12, label %sw.bb17
    i32 13, label %sw.bb19
    i32 14, label %sw.bb21
    i32 15, label %sw.bb23
    i32 16, label %sw.bb25
    i32 17, label %sw.bb27
    i32 47, label %sw.bb29
    i32 48, label %sw.bb31
    i32 18, label %sw.bb33
    i32 19, label %sw.bb43
    i32 20, label %sw.bb53
    i32 21, label %sw.bb63
    i32 22, label %sw.bb73
    i32 25, label %sw.bb76
    i32 27, label %sw.bb79
    i32 30, label %sw.bb80
    i32 31, label %sw.bb81
    i32 36, label %sw.bb82
    i32 37, label %sw.bb93
    i32 41, label %sw.bb94
    i32 43, label %sw.bb95
    i32 44, label %sw.bb96
    i32 45, label %sw.bb97
    i32 46, label %sw.bb99
    i32 50, label %sw.bb100
    i32 51, label %sw.bb103
    i32 54, label %sw.bb106
    i32 55, label %sw.bb107
    i32 56, label %sw.bb108
    i32 57, label %sw.bb110
    i32 58, label %sw.bb115
    i32 59, label %sw.bb116
    i32 60, label %sw.bb119
    i32 61, label %sw.bb120
    i32 62, label %sw.bb130
    i32 64, label %sw.bb131
    i32 65, label %sw.bb146
    i32 66, label %sw.bb147
    i32 67, label %sw.bb150
    i32 68, label %sw.bb160
    i32 70, label %sw.bb170
  ]

entry.sw.bb16_crit_edge257:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.bb16_crit_edge256:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.bb16_crit_edge255:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.bb16_crit_edge254:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.bb16_crit_edge253:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.epilog172_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb:                                            ; preds = %entry
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip, align 8
  %shr = lshr i32 %3, 4
  %and = and i32 %shr, 15
  %switch.tableidx = add nsw i32 %and, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %sw.bb.sw.epilog172_crit_edge

sw.bb.sw.epilog172_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %size = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 5, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  br label %sw.epilog172

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip7 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %7 = ptrtoint ptr %chip7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip7, align 8
  %9 = and i32 %8, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 96
  %cim_la_size = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 7
  %10 = ptrtoint ptr %cim_la_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cim_la_size, align 8
  %12 = shl i32 %11, 2
  %mul12 = and i32 %12, -32
  %div = udiv i32 %11, 10
  %13 = mul i32 %div, 40
  %mul = add i32 %13, 40
  %storemerge = select i1 %cmp.i.not, i32 %mul, i32 %mul12
  %add13 = or i32 %storemerge, 4
  br label %sw.epilog172

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge253, %entry.sw.bb16_crit_edge254, %entry.sw.bb16_crit_edge255, %entry.sw.bb16_crit_edge256, %entry.sw.bb16_crit_edge257
  br label %sw.epilog172

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 @cudbg_cim_obq_size(ptr noundef %adap, i32 noundef 0)
  br label %sw.epilog172

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @cudbg_cim_obq_size(ptr noundef %adap, i32 noundef 1)
  br label %sw.epilog172

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @cudbg_cim_obq_size(ptr noundef %adap, i32 noundef 2)
  br label %sw.epilog172

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 @cudbg_cim_obq_size(ptr noundef %adap, i32 noundef 3)
  br label %sw.epilog172

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @cudbg_cim_obq_size(ptr noundef %adap, i32 noundef 4)
  br label %sw.epilog172

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 @cudbg_cim_obq_size(ptr noundef %adap, i32 noundef 5)
  br label %sw.epilog172

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 @cudbg_cim_obq_size(ptr noundef %adap, i32 noundef 6)
  br label %sw.epilog172

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 @cudbg_cim_obq_size(ptr noundef %adap, i32 noundef 7)
  br label %sw.epilog172

sw.bb33:                                          ; preds = %entry
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 128
  %add.ptr.i = getelementptr i8, ptr %15, i32 30680
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool36.not = icmp eq i32 %17, 0
  br i1 %tobool36.not, label %sw.bb33.sw.epilog172_crit_edge, label %if.then37

sw.bb33.sw.epilog172_crit_edge:                   ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

if.then37:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 128
  %add.ptr.i225 = getelementptr i8, ptr %19, i32 30656
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %21 = and i32 %20, -15794176
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %phi.bo252 = shl nuw i32 %22, 20
  br label %sw.epilog172

sw.bb43:                                          ; preds = %entry
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 128
  %add.ptr.i226 = getelementptr i8, ptr %24, i32 30680
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i226) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %26 = and i32 %25, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool46.not = icmp eq i32 %26, 0
  br i1 %tobool46.not, label %sw.bb43.sw.epilog172_crit_edge, label %if.then47

sw.bb43.sw.epilog172_crit_edge:                   ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

if.then47:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap, align 128
  %add.ptr.i227 = getelementptr i8, ptr %28, i32 30660
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %30 = and i32 %29, -15794176
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %phi.bo251 = shl nuw i32 %31, 20
  br label %sw.epilog172

sw.bb53:                                          ; preds = %entry
  %32 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adap, align 128
  %add.ptr.i229 = getelementptr i8, ptr %33, i32 30680
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %35 = and i32 %34, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool56.not = icmp eq i32 %35, 0
  br i1 %tobool56.not, label %sw.bb53.sw.epilog172_crit_edge, label %if.then57

sw.bb53.sw.epilog172_crit_edge:                   ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

if.then57:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adap, align 128
  %add.ptr.i230 = getelementptr i8, ptr %37, i32 30664
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %39 = and i32 %38, -15794176
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %phi.bo250 = shl nuw i32 %40, 20
  br label %sw.epilog172

sw.bb63:                                          ; preds = %entry
  %41 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adap, align 128
  %add.ptr.i232 = getelementptr i8, ptr %42, i32 30680
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %44 = and i32 %43, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool66.not = icmp eq i32 %44, 0
  br i1 %tobool66.not, label %sw.bb63.sw.epilog172_crit_edge, label %if.then67

sw.bb63.sw.epilog172_crit_edge:                   ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

if.then67:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adap, align 128
  %add.ptr.i233 = getelementptr i8, ptr %46, i32 30728
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %48 = and i32 %47, -15794176
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %phi.bo249 = shl nuw i32 %49, 20
  br label %sw.epilog172

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = tail call i32 @t4_chip_rss_size(ptr noundef %adap) #8
  %mul75 = shl i32 %call74, 1
  br label %sw.epilog172

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vfcount = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 23, i32 4
  %50 = ptrtoint ptr %vfcount to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vfcount, align 2
  %conv = zext i16 %51 to i32
  %mul78 = shl nuw nsw i32 %conv, 3
  br label %sw.epilog172

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip84 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %52 = ptrtoint ptr %chip84 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chip84, align 8
  %shr85 = lshr i32 %53, 4
  %and86 = and i32 %shr85, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and86)
  %switch.selectcmp = icmp eq i32 %and86, 6
  %switch.select = select i1 %switch.selectcmp, i32 2736, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and86)
  %switch.selectcmp223 = icmp eq i32 %and86, 5
  %switch.select224 = select i1 %switch.selectcmp223, i32 3024, i32 %switch.select
  br label %sw.epilog172

sw.bb93:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb94:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb96:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb97:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb99:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb100:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb103:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb106:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb107:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb108:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call109 = tail call i32 @cudbg_dump_context_size(ptr noundef %adap)
  br label %sw.epilog172

sw.bb110:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mps_tcam_size = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 23, i32 6
  %54 = ptrtoint ptr %mps_tcam_size to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mps_tcam_size, align 4
  %conv113 = zext i16 %55 to i32
  %mul114 = mul nuw nsw i32 %conv113, 88
  br label %sw.epilog172

sw.bb115:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb116:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_fill_le_tcam_info(ptr noundef %adap, ptr noundef nonnull %tcam_region)
  %max_tid = getelementptr inbounds %struct.cudbg_tcam, ptr %tcam_region, i32 0, i32 5
  %56 = ptrtoint ptr %max_tid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_tid, align 4
  %mul117 = mul i32 %57, 84
  %add118 = add i32 %mul117, 24
  br label %sw.epilog172

sw.bb119:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb120:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip122 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %58 = ptrtoint ptr %chip122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chip122, align 8
  %60 = and i32 %59, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %60)
  %cmp = icmp ugt i32 %60, 80
  %spec.select247 = select i1 %cmp, i32 864, i32 0
  br label %sw.epilog172

sw.bb130:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb131:                                         ; preds = %entry
  %chip133 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %61 = ptrtoint ptr %chip133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chip133, align 8
  %63 = and i32 %62, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %63)
  %cmp.i235.not = icmp eq i32 %63, 80
  br i1 %cmp.i235.not, label %sw.bb131.sw.epilog172_crit_edge, label %if.else137

sw.bb131.sw.epilog172_crit_edge:                  ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

if.else137:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %63)
  %cmp.i237.not = icmp eq i32 %63, 96
  %spec.select = select i1 %cmp.i237.not, i32 3168, i32 0
  br label %sw.epilog172

sw.bb146:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

sw.bb147:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mbox_log = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 59
  %64 = ptrtoint ptr %mbox_log to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mbox_log, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %mul149 = mul i32 %67, 144
  br label %sw.epilog172

sw.bb150:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip152 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %68 = ptrtoint ptr %chip152 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chip152, align 8
  %70 = and i32 %69, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %70)
  %cmp155 = icmp ugt i32 %70, 80
  %spec.select248 = select i1 %cmp155, i32 144, i32 0
  br label %sw.epilog172

sw.bb160:                                         ; preds = %entry
  %71 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adap, align 128
  %add.ptr.i239 = getelementptr i8, ptr %72, i32 30680
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %74 = and i32 %73, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool163.not = icmp eq i32 %74, 0
  br i1 %tobool163.not, label %sw.bb160.sw.epilog172_crit_edge, label %if.then164

sw.bb160.sw.epilog172_crit_edge:                  ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

if.then164:                                       ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adap, align 128
  %add.ptr.i240 = getelementptr i8, ptr %76, i32 30728
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %78 = and i32 %77, -15794176
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %phi.bo = shl nuw i32 %79, 20
  br label %sw.epilog172

sw.bb170:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog172

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cudbg_get_entity_length, i32 0, i32 %switch.tableidx
  %80 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog172

sw.epilog172:                                     ; preds = %switch.lookup, %sw.bb170, %if.then164, %sw.bb160.sw.epilog172_crit_edge, %sw.bb150, %sw.bb147, %sw.bb146, %if.else137, %sw.bb131.sw.epilog172_crit_edge, %sw.bb130, %sw.bb120, %sw.bb119, %sw.bb116, %sw.bb115, %sw.bb110, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb103, %sw.bb100, %sw.bb99, %sw.bb97, %sw.bb96, %sw.bb95, %sw.bb94, %sw.bb93, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb76, %sw.bb73, %if.then67, %sw.bb63.sw.epilog172_crit_edge, %if.then57, %sw.bb53.sw.epilog172_crit_edge, %if.then47, %sw.bb43.sw.epilog172_crit_edge, %if.then37, %sw.bb33.sw.epilog172_crit_edge, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb5, %sw.bb3, %sw.bb.sw.epilog172_crit_edge, %entry.sw.epilog172_crit_edge
  %len.5 = phi i32 [ 0, %entry.sw.epilog172_crit_edge ], [ 1519397980, %sw.bb170 ], [ %mul149, %sw.bb147 ], [ 2176, %sw.bb146 ], [ 26252, %sw.bb130 ], [ 1024, %sw.bb119 ], [ %add118, %sw.bb116 ], [ 88, %sw.bb115 ], [ %mul114, %sw.bb110 ], [ %call109, %sw.bb108 ], [ 388, %sw.bb107 ], [ 156, %sw.bb106 ], [ 576, %sw.bb103 ], [ 864, %sw.bb100 ], [ 88, %sw.bb99 ], [ 3076, %sw.bb97 ], [ 560, %sw.bb96 ], [ 1032, %sw.bb95 ], [ 16388, %sw.bb94 ], [ 4536, %sw.bb93 ], [ %switch.select224, %sw.bb82 ], [ 104, %sw.bb81 ], [ 168, %sw.bb80 ], [ 32, %sw.bb79 ], [ %mul78, %sw.bb76 ], [ %mul75, %sw.bb73 ], [ %call32, %sw.bb31 ], [ %call30, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %call26, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ 2048, %sw.bb16 ], [ 360, %sw.bb15 ], [ 2560, %sw.bb14 ], [ %add13, %sw.bb5 ], [ %6, %sw.bb3 ], [ 0, %sw.bb.sw.epilog172_crit_edge ], [ 1872, %sw.bb131.sw.epilog172_crit_edge ], [ %spec.select, %if.else137 ], [ %spec.select247, %sw.bb120 ], [ %spec.select248, %sw.bb150 ], [ 0, %sw.bb33.sw.epilog172_crit_edge ], [ %phi.bo252, %if.then37 ], [ 0, %sw.bb43.sw.epilog172_crit_edge ], [ %phi.bo251, %if.then47 ], [ 0, %sw.bb53.sw.epilog172_crit_edge ], [ %phi.bo250, %if.then57 ], [ 0, %sw.bb63.sw.epilog172_crit_edge ], [ %phi.bo249, %if.then67 ], [ 0, %sw.bb160.sw.epilog172_crit_edge ], [ %phi.bo, %if.then164 ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tcam_region) #8
  ret i32 %len.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_cim_obq_size(ptr nocapture noundef readonly %padap, i32 noundef %qid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %qid, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %1 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %padap, align 128
  %add.ptr.i = getelementptr i8, ptr %2, i32 31560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #8, !srcloc !100
  %3 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %padap, align 128
  %add.ptr.i4 = getelementptr i8, ptr %4, i32 31564
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %6 = shl i32 %5, 8
  %mul1 = and i32 %6, 16128
  ret i32 %mul1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_chip_rss_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_dump_context_size(ptr noundef %padap) local_unnamed_addr #0 align 64 {
entry:
  %region_info = alloca [4 x %struct.cudbg_region_info], align 4
  %mem_type = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %region_info) #8
  %0 = call ptr @memset(ptr %region_info, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mem_type) #8
  %call = call fastcc i32 @cudbg_get_ctxt_region_info(ptr noundef %padap, ptr noundef nonnull %region_info, ptr noundef nonnull %mem_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %region_info to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %region_info, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %for.body.preheader.for.inc_crit_edge, label %if.end8

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end8:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %end = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  %start = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start, align 4
  %sub = add i32 %4, 1
  %add11 = sub i32 %sub, %6
  %div = udiv i32 %add11, 24
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.preheader.for.inc_crit_edge
  %size.1 = phi i32 [ %div, %if.end8 ], [ 6144, %for.body.preheader.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.1 = icmp eq i8 %8, 0
  br i1 %tobool2.not.1, label %if.then3.1, label %if.end8.1

if.end8.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %end.1 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.1, align 4
  %start.1 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %start.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %start.1, align 4
  %sub.1 = add i32 %10, 1
  %add11.1 = sub i32 %sub.1, %12
  %div.1 = udiv i32 %add11.1, 24
  %add12.1 = add nuw nsw i32 %div.1, %size.1
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %add.1 = add nuw nsw i32 %size.1, 6144
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %if.end8.1
  %size.1.1 = phi i32 [ %add12.1, %if.end8.1 ], [ %add.1, %if.then3.1 ]
  %arrayidx.2 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not.2 = icmp eq i8 %14, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end8.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end8.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %end.2 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.2, align 4
  %start.2 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %start.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start.2, align 4
  %sub.2 = add i32 %16, 1
  %add11.2 = sub i32 %sub.2, %18
  %div.2 = udiv i32 %add11.2, 24
  %add12.2 = add nuw nsw i32 %div.2, %size.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end8.2, %for.inc.1.for.inc.2_crit_edge
  %size.1.2 = phi i32 [ %add12.2, %if.end8.2 ], [ %size.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %mul = shl i32 %size.1.2, 5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %for.inc.2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mem_type) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %region_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cudbg_fill_le_tcam_info(ptr nocapture noundef readonly %padap, ptr nocapture noundef %tcam_region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %padap, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 105976
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %tid_hash_base = getelementptr inbounds %struct.cudbg_tcam, ptr %tcam_region, i32 0, i32 4
  %4 = ptrtoint ptr %tid_hash_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tid_hash_base, align 4
  %5 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %padap, align 128
  %add.ptr.i78 = getelementptr i8, ptr %6, i32 105488
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #8, !srcloc !97
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %routing_start = getelementptr inbounds %struct.cudbg_tcam, ptr %tcam_region, i32 0, i32 3
  %9 = ptrtoint ptr %routing_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %routing_start, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %padap, i32 0, i32 15, i32 22
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip, align 8
  %12 = and i32 %11, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 96
  %13 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %padap, align 128
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i79 = getelementptr i8, ptr %14, i32 105972
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #8, !srcloc !97
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i80 = getelementptr i8, ptr %14, i32 105500
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #8, !srcloc !97
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %value.0 = phi i32 [ %16, %if.then ], [ %18, %if.else ]
  %clip_start = getelementptr inbounds %struct.cudbg_tcam, ptr %tcam_region, i32 0, i32 2
  %19 = ptrtoint ptr %clip_start to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %value.0, ptr %clip_start, align 4
  %20 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %padap, align 128
  %add.ptr.i81 = getelementptr i8, ptr %21, i32 105492
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #8, !srcloc !97
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %24 = ptrtoint ptr %tcam_region to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tcam_region, align 4
  %25 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %padap, align 128
  %add.ptr.i82 = getelementptr i8, ptr %26, i32 105496
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #8, !srcloc !97
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %server_start = getelementptr inbounds %struct.cudbg_tcam, ptr %tcam_region, i32 0, i32 1
  %29 = ptrtoint ptr %server_start to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %server_start, align 4
  %30 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %padap, align 128
  %add.ptr.i83 = getelementptr i8, ptr %31, i32 105476
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #8, !srcloc !97
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %34 = and i32 %33, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool8.not = icmp eq i32 %34, 0
  br i1 %tobool8.not, label %if.else25, label %if.then9

if.then9:                                         ; preds = %if.end
  %35 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %padap, align 128
  %add.ptr.i84 = getelementptr i8, ptr %36, i32 105512
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #8, !srcloc !97
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip, align 8
  %41 = and i32 %40, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %41)
  %cmp = icmp ugt i32 %41, 80
  br i1 %cmp, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %and16 = and i32 %38, 1048575
  %42 = ptrtoint ptr %tid_hash_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tid_hash_base, align 4
  %add = add i32 %43, %and16
  br label %if.end37

if.else18:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %shr19 = lshr i32 %38, 16
  %and20 = and i32 %shr19, 63
  %shl = shl nuw i32 1, %and20
  %44 = ptrtoint ptr %tid_hash_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tid_hash_base, align 4
  %add22 = add i32 %45, %shl
  br label %if.end37

if.else25:                                        ; preds = %if.end
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip, align 8
  %48 = and i32 %47, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %48)
  %cmp.i85.not = icmp eq i32 %48, 96
  br i1 %cmp.i85.not, label %if.then30, label %if.else25.if.end37_crit_edge

if.else25.if.end37_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then30:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  %and31 = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond = select i1 %tobool32.not, i32 3072, i32 6144
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.else25.if.end37_crit_edge, %if.else18, %if.then15
  %cond.sink = phi i32 [ %cond, %if.then30 ], [ %add, %if.then15 ], [ %add22, %if.else18 ], [ 2048, %if.else25.if.end37_crit_edge ]
  %max_tid33 = getelementptr inbounds %struct.cudbg_tcam, ptr %tcam_region, i32 0, i32 5
  %49 = ptrtoint ptr %max_tid33 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.sink, ptr %max_tid33, align 4
  %50 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chip, align 8
  %52 = and i32 %51, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %52)
  %cmp.i87.not = icmp eq i32 %52, 96
  br i1 %cmp.i87.not, label %if.then42, label %if.end37.if.end45_crit_edge

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %max_tid43 = getelementptr inbounds %struct.cudbg_tcam, ptr %tcam_region, i32 0, i32 5
  %53 = ptrtoint ptr %max_tid43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_tid43, align 4
  %add44 = add i32 %54, 1536
  store i32 %add44, ptr %max_tid43, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end37.if.end45_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cudbg_fill_qdesc_num_and_size(ptr nocapture readnone %padap, ptr noundef writeonly %num, ptr noundef writeonly %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %num, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 567, ptr %num, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool21.not = icmp eq ptr %size, null
  br i1 %tobool21.not, label %if.end.if.end23_crit_edge, label %if.then22

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1519397980, ptr %size, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cudbg_align_debug_buffer(ptr nocapture noundef %dbg_buff, ptr nocapture noundef %entity_hdr) local_unnamed_addr #4 align 64 {
entry:
  %zero_buf.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero_buf.sroa.0)
  %0 = ptrtoint ptr %zero_buf.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %zero_buf.sroa.0, align 4
  %offset = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %start_offset = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %entity_hdr, i32 0, i32 1
  %3 = ptrtoint ptr %start_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_offset, align 4
  %sub = sub i32 %2, %4
  %5 = trunc i32 %sub to i8
  %conv = and i8 %5, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %narrow = sub nuw nsw i8 4, %conv
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %2
  %conv5 = zext i8 %narrow to i32
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %zero_buf.sroa.0, i32 %conv5)
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add = add i32 %10, %conv5
  store i32 %add, ptr %offset, align 4
  %num_pad = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %entity_hdr, i32 0, i32 6
  %11 = ptrtoint ptr %num_pad to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %narrow, ptr %num_pad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %14 = ptrtoint ptr %start_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_offset, align 4
  %sub10 = sub i32 %13, %15
  %size = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %entity_hdr, i32 0, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub10, ptr %size, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero_buf.sroa.0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cudbg_get_entity_hdr(ptr noundef readonly %outbuf, i32 noundef %i) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_len = getelementptr inbounds %struct.cudbg_hdr, ptr %outbuf, i32 0, i32 1
  %0 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr_len, align 4
  %add.ptr = getelementptr i8, ptr %outbuf, i32 %1
  %2 = mul i32 %i, 52
  %mul = add i32 %2, -52
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_fill_meminfo(ptr noundef readonly %padap, ptr noundef %meminfo_buff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1
  %idx.1 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 1, i32 2
  %0 = call ptr @memset(ptr %meminfo_buff, i32 0, i32 364)
  %1 = ptrtoint ptr %idx.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %idx.1, align 4
  %idx.2 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 2, i32 2
  %2 = ptrtoint ptr %idx.2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %idx.2, align 4
  %idx.3 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 3, i32 2
  %3 = ptrtoint ptr %idx.3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %idx.3, align 4
  %idx.4 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 4, i32 2
  %4 = ptrtoint ptr %idx.4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %idx.4, align 4
  %idx.5 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 5, i32 2
  %5 = ptrtoint ptr %idx.5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %idx.5, align 4
  %idx.6 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 6, i32 2
  %6 = ptrtoint ptr %idx.6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %idx.6, align 4
  %idx.7 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 7, i32 2
  %7 = ptrtoint ptr %idx.7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %idx.7, align 4
  %idx.8 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 8, i32 2
  %8 = ptrtoint ptr %idx.8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %idx.8, align 4
  %limit.9 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 9, i32 1
  %idx.9 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 9, i32 2
  %9 = ptrtoint ptr %idx.9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %idx.9, align 4
  %limit.10 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 10, i32 1
  %idx.10 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 10, i32 2
  %10 = ptrtoint ptr %idx.10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %idx.10, align 4
  %limit.11 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 11, i32 1
  %idx.11 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 11, i32 2
  %11 = ptrtoint ptr %idx.11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 11, ptr %idx.11, align 4
  %limit.12 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 12, i32 1
  %idx.12 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 12, i32 2
  %12 = ptrtoint ptr %idx.12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12, ptr %idx.12, align 4
  %limit.13 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 13, i32 1
  %idx.13 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 13, i32 2
  %13 = ptrtoint ptr %idx.13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 13, ptr %idx.13, align 4
  %limit.14 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 14, i32 1
  %idx.14 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 14, i32 2
  %14 = ptrtoint ptr %idx.14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 14, ptr %idx.14, align 4
  %limit.15 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 15, i32 1
  %idx.15 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 15, i32 2
  %15 = ptrtoint ptr %idx.15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15, ptr %idx.15, align 4
  %limit.16 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 16, i32 1
  %idx.16 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 16, i32 2
  %16 = ptrtoint ptr %idx.16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %idx.16, align 4
  %limit.17 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 17, i32 1
  %idx.17 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 17, i32 2
  %17 = ptrtoint ptr %idx.17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %idx.17, align 4
  %limit.18 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 18, i32 1
  %idx.18 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 18, i32 2
  %18 = ptrtoint ptr %idx.18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 18, ptr %idx.18, align 4
  %limit.19 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 19, i32 1
  %idx.19 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 19, i32 2
  %19 = ptrtoint ptr %idx.19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 19, ptr %idx.19, align 4
  %limit.20 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 20, i32 1
  %idx.20 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 20, i32 2
  %20 = ptrtoint ptr %idx.20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 20, ptr %idx.20, align 4
  %limit.21 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 21, i32 1
  %idx.21 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 21, i32 2
  %21 = ptrtoint ptr %idx.21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 21, ptr %idx.21, align 4
  %limit.22 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 22, i32 1
  %idx.22 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 22, i32 2
  %22 = ptrtoint ptr %idx.22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 22, ptr %idx.22, align 4
  %limit.23 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 23, i32 1
  %idx.23 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 23, i32 2
  %23 = ptrtoint ptr %idx.23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 23, ptr %idx.23, align 4
  %idx.24 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 24, i32 2
  %24 = ptrtoint ptr %idx.24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 24, ptr %idx.24, align 4
  %idx.25 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 25, i32 2
  %25 = ptrtoint ptr %idx.25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 25, ptr %idx.25, align 4
  %limit.26 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 26, i32 1
  %26 = ptrtoint ptr %limit.26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %limit.26, align 4
  %idx.26 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 26, i32 2
  %27 = ptrtoint ptr %idx.26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 26, ptr %idx.26, align 4
  %28 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %padap, align 128
  %add.ptr.i = getelementptr i8, ptr %29, i32 30680
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %padap, align 128
  %add.ptr.i838 = getelementptr i8, ptr %33, i32 30656
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i838) #8, !srcloc !97
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %36 = shl i32 %35, 4
  %and8 = and i32 %36, -1048576
  %37 = ptrtoint ptr %meminfo_buff to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and8, ptr %meminfo_buff, align 4
  %and16 = shl i32 %35, 20
  %add = add i32 %and8, %and16
  %limit20 = getelementptr inbounds %struct.cudbg_mem_desc, ptr %meminfo_buff, i32 0, i32 1
  %38 = ptrtoint ptr %limit20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %limit20, align 4
  %idx23 = getelementptr inbounds %struct.cudbg_mem_desc, ptr %meminfo_buff, i32 0, i32 2
  %39 = ptrtoint ptr %idx23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %idx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i.1 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and25 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end.if.end49_crit_edge, label %if.then27

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %padap, align 128
  %add.ptr.i840 = getelementptr i8, ptr %41, i32 30660
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i840) #8, !srcloc !97
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %44 = shl i32 %43, 4
  %and30 = and i32 %44, -1048576
  %arrayidx33 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.1
  %45 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and30, ptr %arrayidx33, align 4
  %and39 = shl i32 %43, 20
  %add41 = add i32 %and30, %and39
  %limit44 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.1, i32 1
  %46 = ptrtoint ptr %limit44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add41, ptr %limit44, align 4
  %idx47 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.1, i32 2
  %47 = ptrtoint ptr %idx47 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %idx47, align 4
  %inc48 = add nuw nsw i32 %i.1, 1
  br label %if.end49

if.end49:                                         ; preds = %if.then27, %if.end.if.end49_crit_edge
  %i.2 = phi i32 [ %inc48, %if.then27 ], [ %i.1, %if.end.if.end49_crit_edge ]
  %chip = getelementptr inbounds %struct.adapter, ptr %padap, i32 0, i32 15, i32 22
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip, align 8
  %50 = and i32 %49, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %50)
  %cmp.i.not = icmp eq i32 %50, 80
  %and53 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %cmp.i.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end49
  br i1 %tobool54.not, label %if.then52.if.end77_crit_edge, label %if.then55

if.then52.if.end77_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %padap, align 128
  %add.ptr.i843 = getelementptr i8, ptr %52, i32 30664
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i843) #8, !srcloc !97
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %55 = shl i32 %54, 4
  %and58 = and i32 %55, -1048576
  %arrayidx61 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.2
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and58, ptr %arrayidx61, align 4
  %and67 = shl i32 %54, 20
  %add69 = add i32 %and58, %and67
  %limit72 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.2, i32 1
  %57 = ptrtoint ptr %limit72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add69, ptr %limit72, align 4
  %idx75 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.2, i32 2
  %58 = ptrtoint ptr %idx75 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %idx75, align 4
  %inc76 = add nuw nsw i32 %i.2, 1
  br label %if.end77

if.end77:                                         ; preds = %if.then55, %if.then52.if.end77_crit_edge
  %i.3 = phi i32 [ %inc76, %if.then55 ], [ %i.2, %if.then52.if.end77_crit_edge ]
  %and78 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end153_crit_edge, label %if.then80

if.end77.if.end153_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %padap, align 128
  %add.ptr.i846 = getelementptr i8, ptr %60, i32 30728
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i846) #8, !srcloc !97
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end156.sink.split

if.else:                                          ; preds = %if.end49
  br i1 %tobool54.not, label %if.else.if.end127_crit_edge, label %if.then105

if.else.if.end127_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then105:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %padap, align 128
  %add.ptr.i849 = getelementptr i8, ptr %64, i32 30664
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i849) #8, !srcloc !97
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %67 = shl i32 %66, 4
  %and108 = and i32 %67, -1048576
  %arrayidx111 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.2
  %68 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and108, ptr %arrayidx111, align 4
  %and117 = shl i32 %66, 20
  %add119 = add i32 %and108, %and117
  %limit122 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.2, i32 1
  %69 = ptrtoint ptr %limit122 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add119, ptr %limit122, align 4
  %idx125 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.2, i32 2
  %70 = ptrtoint ptr %idx125 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %idx125, align 4
  %inc126 = add nuw nsw i32 %i.2, 1
  br label %if.end127

if.end127:                                        ; preds = %if.then105, %if.else.if.end127_crit_edge
  %i.4 = phi i32 [ %inc126, %if.then105 ], [ %i.2, %if.else.if.end127_crit_edge ]
  %and128 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end153_crit_edge, label %if.then130

if.end127.if.end153_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %padap, align 128
  %add.ptr.i852 = getelementptr i8, ptr %72, i32 30728
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i852) #8, !srcloc !97
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end156.sink.split

if.end153:                                        ; preds = %if.end127.if.end153_crit_edge, %if.end77.if.end153_crit_edge
  %i.5 = phi i32 [ %i.3, %if.end77.if.end153_crit_edge ], [ %i.4, %if.end127.if.end153_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5)
  %tobool154.not = icmp eq i32 %i.5, 0
  br i1 %tobool154.not, label %if.end153.cleanup_crit_edge, label %if.end153.if.end156_crit_edge

if.end153.if.end156_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end156.sink.split:                             ; preds = %if.then130, %if.then80
  %.sink946 = phi i32 [ %62, %if.then80 ], [ %74, %if.then130 ]
  %i.4.sink944 = phi i32 [ %i.3, %if.then80 ], [ %i.4, %if.then130 ]
  %.sink = phi i32 [ 4, %if.then80 ], [ 5, %if.then130 ]
  %75 = shl i32 %.sink946, 4
  %and83 = and i32 %75, -1048576
  %arrayidx136 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.4.sink944
  %76 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and83, ptr %arrayidx136, align 4
  %and142 = shl i32 %.sink946, 20
  %add144 = add i32 %and83, %and142
  %limit147 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.4.sink944, i32 1
  %77 = ptrtoint ptr %limit147 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add144, ptr %limit147, align 4
  %idx150 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %i.4.sink944, i32 2
  %78 = ptrtoint ptr %idx150 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink, ptr %idx150, align 4
  %inc151 = add nuw nsw i32 %i.4.sink944, 1
  br label %if.end156

if.end156:                                        ; preds = %if.end156.sink.split, %if.end153.if.end156_crit_edge
  %i.5922 = phi i32 [ %i.5, %if.end153.if.end156_crit_edge ], [ %inc151, %if.end156.sink.split ]
  %avail_c = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 2
  %79 = ptrtoint ptr %avail_c to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %i.5922, ptr %avail_c, align 4
  tail call void @sort(ptr noundef %meminfo_buff, i32 noundef %i.5922, i32 noundef 12, ptr noundef nonnull @cudbg_mem_desc_cmp, ptr noundef null) #8
  %80 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %padap, align 128
  %add.ptr.i855 = getelementptr i8, ptr %81, i32 4228
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i855) #8, !srcloc !97
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %mem, align 4
  %85 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %padap, align 128
  %add.ptr.i856 = getelementptr i8, ptr %86, i32 4232
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i856) #8, !srcloc !97
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr162 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 2
  %89 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %incdec.ptr, align 4
  %90 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %padap, align 128
  %add.ptr.i857 = getelementptr i8, ptr %91, i32 4236
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i857) #8, !srcloc !97
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr165 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 3
  %94 = ptrtoint ptr %incdec.ptr162 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %incdec.ptr162, align 4
  %95 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %padap, align 128
  %add.ptr.i858 = getelementptr i8, ptr %96, i32 32016
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i858) #8, !srcloc !97
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr168 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 4
  %99 = ptrtoint ptr %incdec.ptr165 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %incdec.ptr165, align 4
  %100 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %padap, align 128
  %add.ptr.i859 = getelementptr i8, ptr %101, i32 32020
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i859) #8, !srcloc !97
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr171 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 5
  %104 = ptrtoint ptr %incdec.ptr168 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %incdec.ptr168, align 4
  %105 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %padap, align 128
  %add.ptr.i860 = getelementptr i8, ptr %106, i32 32024
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i860) #8, !srcloc !97
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr174 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 6
  %109 = ptrtoint ptr %incdec.ptr171 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %incdec.ptr171, align 4
  %110 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %padap, align 128
  %add.ptr.i861 = getelementptr i8, ptr %111, i32 32352
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i861) #8, !srcloc !97
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr177 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 7
  %114 = ptrtoint ptr %incdec.ptr174 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %incdec.ptr174, align 4
  %115 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %padap, align 128
  %add.ptr.i862 = getelementptr i8, ptr %116, i32 32356
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i862) #8, !srcloc !97
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr180 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 8
  %119 = ptrtoint ptr %incdec.ptr177 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %incdec.ptr177, align 4
  %120 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %padap, align 128
  %add.ptr.i863 = getelementptr i8, ptr %121, i32 32360
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i863) #8, !srcloc !97
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr183 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 9
  %124 = ptrtoint ptr %incdec.ptr180 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %incdec.ptr180, align 4
  %125 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %padap, align 128
  %add.ptr.i864 = getelementptr i8, ptr %126, i32 32032
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i864) #8, !srcloc !97
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %129 = ptrtoint ptr %incdec.ptr183 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %incdec.ptr183, align 4
  %sub = add i32 %128, -1
  %130 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %padap, align 128
  %add.ptr.i865 = getelementptr i8, ptr %131, i32 32052
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i865) #8, !srcloc !97
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %134 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %padap, align 128
  %add.ptr.i866 = getelementptr i8, ptr %135, i32 32056
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i866) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %137 = and i32 %136, -57600
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %mul = mul i32 %138, %133
  %add192 = add i32 %sub, %mul
  %139 = ptrtoint ptr %limit.9 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %add192, ptr %limit.9, align 4
  %incdec.ptr194 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 10
  %140 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %padap, align 128
  %add.ptr.i867 = getelementptr i8, ptr %141, i32 32040
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i867) #8, !srcloc !97
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %144 = ptrtoint ptr %incdec.ptr194 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %incdec.ptr194, align 4
  %sub198 = add i32 %143, -1
  %145 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %padap, align 128
  %add.ptr.i868 = getelementptr i8, ptr %146, i32 32044
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i868) #8, !srcloc !97
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %149 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %padap, align 128
  %add.ptr.i869 = getelementptr i8, ptr %150, i32 32048
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i869) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %152 = and i32 %151, -57600
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  %mul203 = mul i32 %153, %148
  %add204 = add i32 %sub198, %mul203
  %154 = ptrtoint ptr %limit.10 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add204, ptr %limit.10, align 4
  %incdec.ptr206 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 11
  %155 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %padap, align 128
  %add.ptr.i870 = getelementptr i8, ptr %156, i32 105476
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i870) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %158 = and i32 %157, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool209.not = icmp eq i32 %158, 0
  br i1 %tobool209.not, label %if.else226, label %if.then210

if.then210:                                       ; preds = %if.end156
  %159 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %chip, align 8
  %161 = and i32 %160, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %161)
  %cmp215 = icmp ult i32 %161, 96
  %162 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %padap, align 128
  br i1 %cmp215, label %if.then216, label %if.else220

if.then216:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i871 = getelementptr i8, ptr %163, i32 105976
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i871) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %165 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %padap, align 128
  %add.ptr.i872 = getelementptr i8, ptr %166, i32 105520
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i872) #8, !srcloc !97
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end224

if.else220:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i873 = getelementptr i8, ptr %163, i32 105520
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i873) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %170 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %padap, align 128
  %add.ptr.i874 = getelementptr i8, ptr %171, i32 105520
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i874) #8, !srcloc !97
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end224

if.end224:                                        ; preds = %if.else220, %if.then216
  %storemerge = phi i32 [ %173, %if.else220 ], [ %168, %if.then216 ]
  %174 = ptrtoint ptr %incdec.ptr206 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %storemerge, ptr %incdec.ptr206, align 4
  %175 = ptrtoint ptr %limit.11 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %limit.11, align 4
  br label %if.end229

if.else226:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %incdec.ptr206 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %incdec.ptr206, align 4
  %177 = ptrtoint ptr %idx.11 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 24, ptr %idx.11, align 4
  br label %if.end229

if.end229:                                        ; preds = %if.else226, %if.end224
  %incdec.ptr230 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 12
  %178 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %padap, align 128
  %add.ptr.i875 = getelementptr i8, ptr %179, i32 102748
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i875) #8, !srcloc !97
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %182 = ptrtoint ptr %incdec.ptr230 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %incdec.ptr230, align 4
  %183 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %padap, align 128
  %add.ptr.i876 = getelementptr i8, ptr %184, i32 102752
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i876) #8, !srcloc !97
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr234 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 13
  %187 = ptrtoint ptr %limit.12 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %limit.12, align 4
  %188 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %padap, align 128
  %add.ptr.i877 = getelementptr i8, ptr %189, i32 102764
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i877) #8, !srcloc !97
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %192 = ptrtoint ptr %incdec.ptr234 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %incdec.ptr234, align 4
  %193 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %padap, align 128
  %add.ptr.i878 = getelementptr i8, ptr %194, i32 102768
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i878) #8, !srcloc !97
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr240 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 14
  %197 = ptrtoint ptr %limit.13 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %limit.13, align 4
  %198 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %padap, align 128
  %add.ptr.i879 = getelementptr i8, ptr %199, i32 36308
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i879) #8, !srcloc !97
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %202 = ptrtoint ptr %incdec.ptr240 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %incdec.ptr240, align 4
  %203 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %padap, align 128
  %add.ptr.i880 = getelementptr i8, ptr %204, i32 36312
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i880) #8, !srcloc !97
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr248 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 15
  %207 = ptrtoint ptr %limit.14 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %limit.14, align 4
  %208 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %padap, align 128
  %add.ptr.i881 = getelementptr i8, ptr %209, i32 102780
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i881) #8, !srcloc !97
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %212 = ptrtoint ptr %incdec.ptr248 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %incdec.ptr248, align 4
  %213 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %padap, align 128
  %add.ptr.i882 = getelementptr i8, ptr %214, i32 102784
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i882) #8, !srcloc !97
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr256 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 16
  %217 = ptrtoint ptr %limit.15 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %limit.15, align 4
  %218 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %padap, align 128
  %add.ptr.i883 = getelementptr i8, ptr %219, i32 102788
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i883) #8, !srcloc !97
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %222 = ptrtoint ptr %incdec.ptr256 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %incdec.ptr256, align 4
  %223 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %padap, align 128
  %add.ptr.i884 = getelementptr i8, ptr %224, i32 102792
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i884) #8, !srcloc !97
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr264 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 17
  %227 = ptrtoint ptr %limit.16 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %limit.16, align 4
  %228 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %padap, align 128
  %add.ptr.i885 = getelementptr i8, ptr %229, i32 102820
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i885) #8, !srcloc !97
  %231 = tail call i32 @llvm.bswap.i32(i32 %230) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %232 = ptrtoint ptr %incdec.ptr264 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %incdec.ptr264, align 4
  %233 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %padap, align 128
  %add.ptr.i886 = getelementptr i8, ptr %234, i32 102824
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i886) #8, !srcloc !97
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr272 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 18
  %237 = ptrtoint ptr %limit.17 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %limit.17, align 4
  %238 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %padap, align 128
  %add.ptr.i887 = getelementptr i8, ptr %239, i32 102796
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i887) #8, !srcloc !97
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %242 = ptrtoint ptr %incdec.ptr272 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %incdec.ptr272, align 4
  %243 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %padap, align 128
  %add.ptr.i888 = getelementptr i8, ptr %244, i32 102800
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i888) #8, !srcloc !97
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr280 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 19
  %247 = ptrtoint ptr %limit.18 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %limit.18, align 4
  %248 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %padap, align 128
  %add.ptr.i889 = getelementptr i8, ptr %249, i32 36316
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i889) #8, !srcloc !97
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %252 = ptrtoint ptr %incdec.ptr280 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %incdec.ptr280, align 4
  %253 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %padap, align 128
  %add.ptr.i890 = getelementptr i8, ptr %254, i32 36320
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i890) #8, !srcloc !97
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr288 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 20
  %257 = ptrtoint ptr %limit.19 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %limit.19, align 4
  %258 = ptrtoint ptr %incdec.ptr288 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %incdec.ptr288, align 4
  %259 = ptrtoint ptr %idx.20 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 24, ptr %idx.20, align 4
  %260 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %chip, align 8
  %262 = and i32 %261, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %262)
  %cmp.i891.not = icmp eq i32 %262, 64
  br i1 %cmp.i891.not, label %if.end229.if.end327_crit_edge, label %if.then298

if.end229.if.end327_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then298:                                       ; preds = %if.end229
  %263 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %padap, align 128
  %add.ptr.i893 = getelementptr i8, ptr %264, i32 4412
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i893) #8, !srcloc !97
  %266 = tail call i32 @llvm.bswap.i32(i32 %265) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %267 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %padap, align 128
  %add.ptr.i894 = getelementptr i8, ptr %268, i32 4388
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i894) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %270 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %chip, align 8
  %272 = and i32 %271, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %272)
  %cmp.i895.not = icmp eq i32 %272, 80
  br i1 %cmp.i895.not, label %if.then305, label %if.else312

if.then305:                                       ; preds = %if.then298
  %273 = and i32 %269, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool307.not = icmp eq i32 %273, 0
  br i1 %tobool307.not, label %if.then305.if.end327_crit_edge, label %if.then308

if.then305.if.end327_crit_edge:                   ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then308:                                       ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #10
  %shr309 = lshr i32 %266, 6
  %and310 = and i32 %shr309, 4095
  br label %if.end315

if.else312:                                       ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #10
  %and314 = and i32 %266, 8191
  br label %if.end315

if.end315:                                        ; preds = %if.else312, %if.then308
  %size.0 = phi i32 [ %and310, %if.then308 ], [ %and314, %if.else312 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %tobool316.not = icmp eq i32 %size.0, 0
  br i1 %tobool316.not, label %if.end315.if.end327_crit_edge, label %if.then317

if.end315.if.end327_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then317:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #10
  %274 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %padap, align 128
  %add.ptr.i897 = getelementptr i8, ptr %275, i32 4408
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i897) #8, !srcloc !97
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %shr319 = lshr i32 %277, 3
  %278 = ptrtoint ptr %incdec.ptr288 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %shr319, ptr %incdec.ptr288, align 4
  %shl = shl nuw nsw i32 %size.0, 2
  %add323 = add nsw i32 %shl, -1
  %sub324 = add nuw nsw i32 %add323, %shr319
  %279 = ptrtoint ptr %limit.20 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %sub324, ptr %limit.20, align 4
  br label %if.end327

if.end327:                                        ; preds = %if.then317, %if.end315.if.end327_crit_edge, %if.then305.if.end327_crit_edge, %if.end229.if.end327_crit_edge
  %incdec.ptr328 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 21
  %280 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %padap, align 128
  %add.ptr.i898 = getelementptr i8, ptr %281, i32 102804
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i898) #8, !srcloc !97
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %284 = ptrtoint ptr %incdec.ptr328 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %incdec.ptr328, align 4
  %285 = ptrtoint ptr %limit.21 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %limit.21, align 4
  %incdec.ptr332 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 22
  %286 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %padap, align 128
  %add.ptr.i899 = getelementptr i8, ptr %287, i32 36356
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i899) #8, !srcloc !97
  %289 = tail call i32 @llvm.bswap.i32(i32 %288) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %290 = ptrtoint ptr %incdec.ptr332 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %289, ptr %incdec.ptr332, align 4
  %291 = ptrtoint ptr %limit.22 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 0, ptr %limit.22, align 4
  %incdec.ptr336 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 23
  %ocq = getelementptr inbounds %struct.adapter, ptr %padap, i32 0, i32 16, i32 8
  %292 = ptrtoint ptr %ocq to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %ocq, align 8
  %294 = ptrtoint ptr %incdec.ptr336 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %incdec.ptr336, align 4
  %size340 = getelementptr inbounds %struct.adapter, ptr %padap, i32 0, i32 16, i32 8, i32 1
  %295 = ptrtoint ptr %size340 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %size340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool341.not = icmp eq i32 %296, 0
  br i1 %tobool341.not, label %if.else350, label %if.then342

if.then342:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  %add347 = add i32 %293, -1
  %sub348 = add i32 %add347, %296
  %297 = ptrtoint ptr %limit.23 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %sub348, ptr %limit.23, align 4
  br label %if.end352

if.else350:                                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #10
  %298 = ptrtoint ptr %idx.23 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 24, ptr %idx.23, align 4
  br label %if.end352

if.end352:                                        ; preds = %if.else350, %if.then342
  %incdec.ptr353 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 1, i32 24
  %sub355 = add nsw i32 %i.5922, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub355)
  %cmp356926.not = icmp eq i32 %sub355, 0
  br i1 %cmp356926.not, label %if.end352.for.end375_crit_edge, label %if.end352.for.body357_crit_edge

if.end352.for.body357_crit_edge:                  ; preds = %if.end352
  br label %for.body357

if.end352.for.end375_crit_edge:                   ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end375

for.body357:                                      ; preds = %for.inc373.for.body357_crit_edge, %if.end352.for.body357_crit_edge
  %n.0928 = phi i32 [ %add362, %for.inc373.for.body357_crit_edge ], [ 0, %if.end352.for.body357_crit_edge ]
  %md.0927 = phi ptr [ %md.1, %for.inc373.for.body357_crit_edge ], [ %incdec.ptr353, %if.end352.for.body357_crit_edge ]
  %limit360 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %n.0928, i32 1
  %299 = ptrtoint ptr %limit360 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %limit360, align 4
  %add362 = add nuw nsw i32 %n.0928, 1
  %arrayidx363 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %add362
  %301 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx363, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %300, i32 %302)
  %cmp365 = icmp ult i32 %300, %302
  br i1 %cmp365, label %if.then366, label %for.body357.for.inc373_crit_edge

for.body357.for.inc373_crit_edge:                 ; preds = %for.body357
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc373

if.then366:                                       ; preds = %for.body357
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr370 = getelementptr %struct.cudbg_mem_desc, ptr %md.0927, i32 1
  %303 = ptrtoint ptr %md.0927 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %300, ptr %md.0927, align 4
  br label %for.inc373

for.inc373:                                       ; preds = %if.then366, %for.body357.for.inc373_crit_edge
  %md.1 = phi ptr [ %incdec.ptr370, %if.then366 ], [ %md.0927, %for.body357.for.inc373_crit_edge ]
  %exitcond.not = icmp eq i32 %add362, %sub355
  br i1 %exitcond.not, label %for.inc373.for.end375_crit_edge, label %for.inc373.for.body357_crit_edge

for.inc373.for.body357_crit_edge:                 ; preds = %for.inc373
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body357

for.inc373.for.end375_crit_edge:                  ; preds = %for.inc373
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end375

for.end375:                                       ; preds = %for.inc373.for.end375_crit_edge, %if.end352.for.end375_crit_edge
  %md.0.lcssa = phi ptr [ %incdec.ptr353, %if.end352.for.end375_crit_edge ], [ %md.1, %for.inc373.for.end375_crit_edge ]
  %limit378 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo_buff, i32 0, i32 %sub355, i32 1
  %304 = ptrtoint ptr %limit378 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %limit378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool379.not = icmp eq i32 %305, 0
  br i1 %tobool379.not, label %for.end375.if.end386_crit_edge, label %if.then380

for.end375.if.end386_crit_edge:                   ; preds = %for.end375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end386

if.then380:                                       ; preds = %for.end375
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr384 = getelementptr %struct.cudbg_mem_desc, ptr %md.0.lcssa, i32 1
  %306 = ptrtoint ptr %md.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %md.0.lcssa, align 4
  br label %if.end386

if.end386:                                        ; preds = %if.then380, %for.end375.if.end386_crit_edge
  %md.2 = phi ptr [ %incdec.ptr384, %if.then380 ], [ %md.0.lcssa, %for.end375.if.end386_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %md.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %mem to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %mem_c = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 3
  %307 = ptrtoint ptr %mem_c to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %sub.ptr.div, ptr %mem_c, align 4
  tail call void @sort(ptr noundef %mem, i32 noundef %sub.ptr.div, i32 noundef 12, ptr noundef nonnull @cudbg_mem_desc_cmp, ptr noundef null) #8
  %308 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %padap, align 128
  %add.ptr.i900 = getelementptr i8, ptr %309, i32 31508
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i900) #8, !srcloc !97
  %311 = tail call i32 @llvm.bswap.i32(i32 %310) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %312 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %padap, align 128
  %add.ptr.i901 = getelementptr i8, ptr %313, i32 31512
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i901) #8, !srcloc !97
  %315 = tail call i32 @llvm.bswap.i32(i32 %314) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %add393 = add i32 %311, -1
  %sub394 = add i32 %add393, %315
  %up_ram_lo = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 4
  %316 = ptrtoint ptr %up_ram_lo to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %311, ptr %up_ram_lo, align 4
  %up_ram_hi = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 5
  %317 = ptrtoint ptr %up_ram_hi to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %sub394, ptr %up_ram_hi, align 4
  %318 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %padap, align 128
  %add.ptr.i902 = getelementptr i8, ptr %319, i32 31516
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i902) #8, !srcloc !97
  %321 = tail call i32 @llvm.bswap.i32(i32 %320) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %322 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %padap, align 128
  %add.ptr.i903 = getelementptr i8, ptr %323, i32 31520
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i903) #8, !srcloc !97
  %325 = tail call i32 @llvm.bswap.i32(i32 %324) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %add397 = add i32 %321, -1
  %sub398 = add i32 %add397, %325
  %up_extmem2_lo = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 6
  %326 = ptrtoint ptr %up_extmem2_lo to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %321, ptr %up_extmem2_lo, align 4
  %up_extmem2_hi = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 7
  %327 = ptrtoint ptr %up_extmem2_hi to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %sub398, ptr %up_extmem2_hi, align 4
  %328 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %padap, align 128
  %add.ptr.i904 = getelementptr i8, ptr %329, i32 32048
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i904) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %free_rx_cnt = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 17
  %331 = ptrtoint ptr %free_rx_cnt to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %free_rx_cnt, align 4
  %332 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %padap, align 128
  %add.ptr.i905 = getelementptr i8, ptr %333, i32 32388
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i905) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %335 = and i32 %334, -57600
  %336 = tail call i32 @llvm.bswap.i32(i32 %335)
  %337 = ptrtoint ptr %free_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %free_rx_cnt, align 4
  %add407 = add i32 %338, %336
  store i32 %add407, ptr %free_rx_cnt, align 4
  %339 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %padap, align 128
  %add.ptr.i905.1 = getelementptr i8, ptr %340, i32 32388
  %341 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i905.1) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %342 = and i32 %341, -57600
  %343 = tail call i32 @llvm.bswap.i32(i32 %342)
  %344 = ptrtoint ptr %free_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %free_rx_cnt, align 4
  %add407.1 = add i32 %345, %343
  store i32 %add407.1, ptr %free_rx_cnt, align 4
  %346 = tail call i32 @llvm.bswap.i32(i32 %330) #8
  %and412 = and i32 %346, 2097151
  %rx_pages_data = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 8
  %347 = ptrtoint ptr %rx_pages_data to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %and412, ptr %rx_pages_data, align 4
  %348 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %padap, align 128
  %add.ptr.i906 = getelementptr i8, ptr %349, i32 32044
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i906) #8, !srcloc !97
  %351 = tail call i32 @llvm.bswap.i32(i32 %350) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %shr415 = lshr i32 %351, 10
  %arrayidx417 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 8, i32 1
  %352 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %shr415, ptr %arrayidx417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %346)
  %tobool419.not = icmp sgt i32 %346, -1
  %cond = select i1 %tobool419.not, i32 1, i32 2
  %arrayidx421 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 8, i32 2
  %353 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %cond, ptr %arrayidx421, align 4
  %354 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %padap, align 128
  %add.ptr.i907 = getelementptr i8, ptr %355, i32 32056
  %356 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i907) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %357 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %padap, align 128
  %add.ptr.i908 = getelementptr i8, ptr %358, i32 32052
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i908) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %free_tx_cnt = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 18
  %360 = ptrtoint ptr %free_tx_cnt to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 0, ptr %free_tx_cnt, align 4
  %361 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %padap, align 128
  %add.ptr.i909 = getelementptr i8, ptr %362, i32 32392
  %363 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i909) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %364 = and i32 %363, -57600
  %365 = tail call i32 @llvm.bswap.i32(i32 %364)
  %366 = ptrtoint ptr %free_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %free_tx_cnt, align 4
  %add431 = add i32 %367, %365
  store i32 %add431, ptr %free_tx_cnt, align 4
  %368 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %padap, align 128
  %add.ptr.i909.1 = getelementptr i8, ptr %369, i32 32392
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i909.1) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %371 = and i32 %370, -57600
  %372 = tail call i32 @llvm.bswap.i32(i32 %371)
  %373 = ptrtoint ptr %free_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %free_tx_cnt, align 4
  %add431.1 = add i32 %374, %372
  store i32 %add431.1, ptr %free_tx_cnt, align 4
  %375 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %padap, align 128
  %add.ptr.i909.2 = getelementptr i8, ptr %376, i32 32392
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i909.2) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %378 = and i32 %377, -57600
  %379 = tail call i32 @llvm.bswap.i32(i32 %378)
  %380 = ptrtoint ptr %free_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %free_tx_cnt, align 4
  %add431.2 = add i32 %381, %379
  store i32 %add431.2, ptr %free_tx_cnt, align 4
  %382 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %padap, align 128
  %add.ptr.i909.3 = getelementptr i8, ptr %383, i32 32392
  %384 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i909.3) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %385 = and i32 %384, -57600
  %386 = tail call i32 @llvm.bswap.i32(i32 %385)
  %387 = ptrtoint ptr %free_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %free_tx_cnt, align 4
  %add431.3 = add i32 %388, %386
  store i32 %add431.3, ptr %free_tx_cnt, align 4
  %389 = tail call i32 @llvm.bswap.i32(i32 %356) #8
  %390 = tail call i32 @llvm.bswap.i32(i32 %359) #8
  %and436 = and i32 %389, 2097151
  %tx_pages_data = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 9
  %391 = ptrtoint ptr %tx_pages_data to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %and436, ptr %tx_pages_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %390)
  %cmp438 = icmp ugt i32 %390, 1048575
  %cond445 = select i1 %cmp438, i32 77, i32 75
  %cond441.v = select i1 %cmp438, i32 20, i32 10
  %cond441 = lshr i32 %390, %cond441.v
  %arrayidx443 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 9, i32 1
  %392 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %cond441, ptr %arrayidx443, align 4
  %arrayidx447 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 9, i32 2
  %393 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %cond445, ptr %arrayidx447, align 4
  %shr448 = lshr i32 %389, 30
  %shl450 = shl nuw nsw i32 1, %shr448
  %arrayidx452 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 9, i32 3
  %394 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %shl450, ptr %arrayidx452, align 4
  %395 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %padap, align 128
  %add.ptr.i910 = getelementptr i8, ptr %396, i32 32364
  %397 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i910) #8, !srcloc !97
  %398 = tail call i32 @llvm.bswap.i32(i32 %397) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %p_structs = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 10
  %399 = ptrtoint ptr %p_structs to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %398, ptr %p_structs, align 4
  %400 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %padap, align 128
  %add.ptr.i911 = getelementptr i8, ptr %401, i32 32384
  %402 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i911) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %403 = and i32 %402, -57600
  %404 = tail call i32 @llvm.bswap.i32(i32 %403)
  %p_structs_free_cnt = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 16
  %405 = ptrtoint ptr %p_structs_free_cnt to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %404, ptr %p_structs_free_cnt, align 4
  %406 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %chip, align 8
  %408 = and i32 %407, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %408)
  %cmp464 = icmp ugt i32 %408, 80
  %409 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %padap, align 128
  br i1 %cmp464, label %if.then465, label %if.else469

if.then465:                                       ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i912 = getelementptr i8, ptr %410, i32 70152
  %411 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i912) #8, !srcloc !97
  %412 = tail call i32 @llvm.bswap.i32(i32 %411) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end473

if.else469:                                       ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i913 = getelementptr i8, ptr %410, i32 69648
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i913) #8, !srcloc !97
  %414 = tail call i32 @llvm.bswap.i32(i32 %413) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end473

if.end473:                                        ; preds = %if.else469, %if.then465
  %lo.0 = phi i32 [ %412, %if.then465 ], [ %414, %if.else469 ]
  %415 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %chip, align 8
  %417 = and i32 %416, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %417)
  %cmp.i914.not = icmp eq i32 %417, 80
  %shr479 = lshr i32 %lo.0, 16
  %used.0.v = select i1 %cmp.i914.not, i32 4095, i32 2047
  %used.0 = and i32 %used.0.v, %shr479
  %alloc.0 = and i32 %used.0.v, %lo.0
  %arrayidx489 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 12, i32 0
  %418 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %used.0, ptr %arrayidx489, align 4
  %arrayidx490 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 13, i32 0
  %419 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %alloc.0, ptr %arrayidx490, align 4
  %420 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %chip, align 8
  %422 = and i32 %421, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %422)
  %cmp464.1 = icmp ugt i32 %422, 80
  %423 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %padap, align 128
  br i1 %cmp464.1, label %if.then465.1, label %if.else469.1

if.else469.1:                                     ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i913.1 = getelementptr i8, ptr %424, i32 69652
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i913.1) #8, !srcloc !97
  %426 = tail call i32 @llvm.bswap.i32(i32 %425) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end473.1

if.then465.1:                                     ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i912.1 = getelementptr i8, ptr %424, i32 70156
  %427 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i912.1) #8, !srcloc !97
  %428 = tail call i32 @llvm.bswap.i32(i32 %427) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end473.1

if.end473.1:                                      ; preds = %if.then465.1, %if.else469.1
  %lo.0.1 = phi i32 [ %428, %if.then465.1 ], [ %426, %if.else469.1 ]
  %429 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %chip, align 8
  %431 = and i32 %430, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %431)
  %cmp.i914.not.1 = icmp eq i32 %431, 80
  %shr479.1 = lshr i32 %lo.0.1, 16
  %used.0.v.1 = select i1 %cmp.i914.not.1, i32 4095, i32 2047
  %used.0.1 = and i32 %used.0.v.1, %shr479.1
  %alloc.0.1 = and i32 %used.0.v.1, %lo.0.1
  %arrayidx489.1 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 12, i32 1
  %432 = ptrtoint ptr %arrayidx489.1 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %used.0.1, ptr %arrayidx489.1, align 4
  %arrayidx490.1 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 13, i32 1
  %433 = ptrtoint ptr %arrayidx490.1 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %alloc.0.1, ptr %arrayidx490.1, align 4
  %434 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %chip, align 8
  %436 = and i32 %435, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %436)
  %cmp464.2 = icmp ugt i32 %436, 80
  %437 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %padap, align 128
  br i1 %cmp464.2, label %if.then465.2, label %if.else469.2

if.else469.2:                                     ; preds = %if.end473.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i913.2 = getelementptr i8, ptr %438, i32 69656
  %439 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i913.2) #8, !srcloc !97
  %440 = tail call i32 @llvm.bswap.i32(i32 %439) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end473.2

if.then465.2:                                     ; preds = %if.end473.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i912.2 = getelementptr i8, ptr %438, i32 70160
  %441 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i912.2) #8, !srcloc !97
  %442 = tail call i32 @llvm.bswap.i32(i32 %441) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end473.2

if.end473.2:                                      ; preds = %if.then465.2, %if.else469.2
  %lo.0.2 = phi i32 [ %442, %if.then465.2 ], [ %440, %if.else469.2 ]
  %443 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %chip, align 8
  %445 = and i32 %444, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %445)
  %cmp.i914.not.2 = icmp eq i32 %445, 80
  %shr479.2 = lshr i32 %lo.0.2, 16
  %used.0.v.2 = select i1 %cmp.i914.not.2, i32 4095, i32 2047
  %used.0.2 = and i32 %used.0.v.2, %shr479.2
  %alloc.0.2 = and i32 %used.0.v.2, %lo.0.2
  %arrayidx489.2 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 12, i32 2
  %446 = ptrtoint ptr %arrayidx489.2 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %used.0.2, ptr %arrayidx489.2, align 4
  %arrayidx490.2 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 13, i32 2
  %447 = ptrtoint ptr %arrayidx490.2 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %alloc.0.2, ptr %arrayidx490.2, align 4
  %448 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %chip, align 8
  %450 = and i32 %449, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %450)
  %cmp464.3 = icmp ugt i32 %450, 80
  %451 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %padap, align 128
  br i1 %cmp464.3, label %if.then465.3, label %if.else469.3

if.else469.3:                                     ; preds = %if.end473.2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i913.3 = getelementptr i8, ptr %452, i32 69660
  %453 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i913.3) #8, !srcloc !97
  %454 = tail call i32 @llvm.bswap.i32(i32 %453) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end473.3

if.then465.3:                                     ; preds = %if.end473.2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i912.3 = getelementptr i8, ptr %452, i32 70164
  %455 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i912.3) #8, !srcloc !97
  %456 = tail call i32 @llvm.bswap.i32(i32 %455) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end473.3

if.end473.3:                                      ; preds = %if.then465.3, %if.else469.3
  %lo.0.3 = phi i32 [ %456, %if.then465.3 ], [ %454, %if.else469.3 ]
  %457 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %chip, align 8
  %459 = and i32 %458, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %459)
  %cmp.i914.not.3 = icmp eq i32 %459, 80
  %shr479.3 = lshr i32 %lo.0.3, 16
  %used.0.v.3 = select i1 %cmp.i914.not.3, i32 4095, i32 2047
  %used.0.3 = and i32 %used.0.v.3, %shr479.3
  %alloc.0.3 = and i32 %used.0.v.3, %lo.0.3
  %arrayidx489.3 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 12, i32 3
  %460 = ptrtoint ptr %arrayidx489.3 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %used.0.3, ptr %arrayidx489.3, align 4
  %arrayidx490.3 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 13, i32 3
  %461 = ptrtoint ptr %arrayidx490.3 to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %alloc.0.3, ptr %arrayidx490.3, align 4
  %arch = getelementptr inbounds %struct.adapter, ptr %padap, i32 0, i32 15, i32 23
  %462 = ptrtoint ptr %arch to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %463)
  %cmp496935.not = icmp eq i8 %463, 0
  br i1 %cmp496935.not, label %if.end473.3.cleanup_crit_edge, label %if.end473.3.for.body498_crit_edge

if.end473.3.for.body498_crit_edge:                ; preds = %if.end473.3
  br label %for.body498

if.end473.3.cleanup_crit_edge:                    ; preds = %if.end473.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body498:                                      ; preds = %if.end513.for.body498_crit_edge, %if.end473.3.for.body498_crit_edge
  %i.9936 = phi i32 [ %inc532, %if.end513.for.body498_crit_edge ], [ 0, %if.end473.3.for.body498_crit_edge ]
  %464 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %chip, align 8
  %466 = and i32 %465, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %466)
  %cmp503 = icmp ugt i32 %466, 80
  %mul506 = shl i32 %i.9936, 2
  br i1 %cmp503, label %if.then505, label %if.else509

if.then505:                                       ; preds = %for.body498
  call void @__sanitizer_cov_trace_pc() #10
  %add507 = add nuw nsw i32 %mul506, 70168
  %467 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %padap, align 128
  %add.ptr.i916 = getelementptr i8, ptr %468, i32 %add507
  %469 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i916) #8, !srcloc !97
  %470 = tail call i32 @llvm.bswap.i32(i32 %469) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end513

if.else509:                                       ; preds = %for.body498
  call void @__sanitizer_cov_trace_pc() #10
  %add511 = add nuw nsw i32 %mul506, 69664
  %471 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %padap, align 128
  %add.ptr.i917 = getelementptr i8, ptr %472, i32 %add511
  %473 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i917) #8, !srcloc !97
  %474 = tail call i32 @llvm.bswap.i32(i32 %473) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end513

if.end513:                                        ; preds = %if.else509, %if.then505
  %lo.1 = phi i32 [ %470, %if.then505 ], [ %474, %if.else509 ]
  %475 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %chip, align 8
  %477 = and i32 %476, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %477)
  %cmp.i918.not = icmp eq i32 %477, 80
  %shr519 = lshr i32 %lo.1, 16
  %used.1.v = select i1 %cmp.i918.not, i32 4095, i32 2047
  %used.1 = and i32 %used.1.v, %shr519
  %alloc.1 = and i32 %used.1.v, %lo.1
  %arrayidx529 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 14, i32 %i.9936
  %478 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %used.1, ptr %arrayidx529, align 4
  %arrayidx530 = getelementptr %struct.cudbg_meminfo, ptr %meminfo_buff, i32 0, i32 15, i32 %i.9936
  %479 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %alloc.1, ptr %arrayidx530, align 4
  %inc532 = add nuw nsw i32 %i.9936, 1
  %480 = ptrtoint ptr %arch to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arch, align 4
  %conv = zext i8 %481 to i32
  %cmp496 = icmp ult i32 %inc532, %conv
  br i1 %cmp496, label %if.end513.for.body498_crit_edge, label %if.end513.cleanup_crit_edge

if.end513.cleanup_crit_edge:                      ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end513.for.body498_crit_edge:                  ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body498

cleanup:                                          ; preds = %if.end513.cleanup_crit_edge, %if.end473.3.cleanup_crit_edge, %if.end153.cleanup_crit_edge
  %retval.0 = phi i32 [ -24, %if.end153.cleanup_crit_edge ], [ 0, %if.end473.3.cleanup_crit_edge ], [ 0, %if.end513.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cudbg_mem_desc_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_reg_dump(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip, align 8
  %5 = trunc i32 %4 to i8
  %trunc = and i8 %5, -16
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %trunc, label %if.end10.fold.split [
    i8 64, label %entry.if.end10_crit_edge
    i8 80, label %entry.if.then9_crit_edge
    i8 96, label %entry.if.then9_crit_edge37
  ]

entry.if.then9_crit_edge37:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %entry.if.then9_crit_edge, %entry.if.then9_crit_edge37
  br label %if.end10

if.end10.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %if.end10.fold.split, %if.then9, %entry.if.end10_crit_edge
  %buf_size.0 = phi i32 [ 339968, %if.then9 ], [ 163840, %entry.if.end10_crit_edge ], [ 0, %if.end10.fold.split ]
  %call11 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %buf_size.0, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp_buff, align 4
  call void @t4_get_regs(ptr noundef %1, ptr noundef %8, i32 noundef %10) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %11 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i30 = icmp eq i8 %12, 1
  br i1 %cmp.i30, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %13 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %15 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp34.i.i = icmp sgt i32 %19, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %19, %if.else.i.while.body.i.i_crit_edge ]
  %20 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %bytes_read.036.i.i
  %23 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %24 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %20
  %add.i.i = add i32 %20, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %25 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %26, %14
  %27 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call11, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_get_buff(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_get_regs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cudbg_write_and_release_buff(ptr noundef %pdbg_init, ptr noundef %pin_buff, ptr noundef %dbg_buff) unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %compress_type = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %0 = ptrtoint ptr %compress_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %compress_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cudbg_update_buff(ptr noundef %pin_buff, ptr noundef %dbg_buff) #8
  br label %out

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i) #8
  %offset1.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %2 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1.i, align 4
  %offset2.i = getelementptr inbounds %struct.cudbg_buffer, ptr %pin_buff, i32 0, i32 1
  %4 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset2.i, align 4
  %offset3.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i, i32 0, i32 1
  %6 = ptrtoint ptr %offset3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %offset3.i, align 4
  %data.i = getelementptr inbounds %struct.cudbg_buffer, ptr %pin_buff, i32 0, i32 2
  %data4.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i, i32 0, i32 2
  %7 = ptrtoint ptr %pin_buff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pin_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp34.i = icmp sgt i32 %8, 0
  br i1 %cmp34.i, label %if.else.while.body.i_crit_edge, label %if.else.while.end.i_crit_edge

if.else.while.end.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %bytes_read.036.i = phi i32 [ %add.i, %if.end.i.while.body.i_crit_edge ], [ 0, %if.else.while.body.i_crit_edge ]
  %bytes_left.035.i = phi i32 [ %sub.i, %if.end.i.while.body.i_crit_edge ], [ %8, %if.else.while.body.i_crit_edge ]
  %9 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i, i32 64512) #8
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %bytes_read.036.i
  %12 = ptrtoint ptr %data4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %data4.i, align 4
  %13 = ptrtoint ptr %temp_in_buff.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %temp_in_buff.i, align 4
  %call.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.cudbg_do_compression.exit_crit_edge

while.body.i.cudbg_do_compression.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit

if.end.i:                                         ; preds = %while.body.i
  %sub.i = sub nsw i32 %bytes_left.035.i, %9
  %add.i = add i32 %9, %bytes_read.036.i
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.else.while.end.i_crit_edge
  %14 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset1.i, align 4
  %sub12.i = sub i32 %15, %3
  %16 = ptrtoint ptr %pin_buff to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub12.i, ptr %pin_buff, align 4
  br label %cudbg_do_compression.exit

cudbg_do_compression.exit:                        ; preds = %while.end.i, %while.body.i.cudbg_do_compression.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.end.i ], [ %call.i, %while.body.i.cudbg_do_compression.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i) #8
  br label %out

out:                                              ; preds = %cudbg_do_compression.exit, %if.then
  %rc.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %cudbg_do_compression.exit ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef %pin_buff) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_fw_devlog(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = tail call i32 @t4_init_devlog_params(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %cudbg_err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %devlog = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 5
  %size = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 5, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call1 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %5, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %start = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 5, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not = icmp eq i32 %7, 0
  br i1 %cmp4.not, label %if.end3.if.end15_crit_edge, label %if.then5

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then5:                                         ; preds = %if.end3
  %win0_lock = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 70
  call void @_raw_spin_lock(ptr noundef %win0_lock) #8
  %drv_memwin = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 6
  %8 = ptrtoint ptr %drv_memwin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drv_memwin, align 4
  %10 = ptrtoint ptr %devlog to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devlog, align 4
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call9 = call i32 @t4_memory_rw(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef 1) #8
  call void @_raw_spin_unlock(ptr noundef %win0_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.then5.if.end15_crit_edge, label %if.then12

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call9, ptr %cudbg_err, align 4
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then5.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %19 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i = icmp eq i8 %20, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %21 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %23 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %offset3.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp34.i.i = icmp sgt i32 %27, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %27, %if.else.i.while.body.i.i_crit_edge ]
  %28 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %bytes_read.036.i.i
  %31 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %32 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %28, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %28
  %add.i.i = add i32 %28, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %33 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %34, %22
  %35 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %if.then12, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call9, %if.then12 ], [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_init_devlog_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_memory_rw(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cudbg_put_buff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_la(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  %cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg) #8
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cfg, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 8
  %6 = and i32 %5, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 96
  %cim_la_size = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 7
  %7 = ptrtoint ptr %cim_la_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cim_la_size, align 8
  %div = udiv i32 %8, 10
  %9 = mul i32 %div, 40
  %mul = add i32 %9, 40
  %10 = shl i32 %8, 2
  %mul5 = and i32 %10, -32
  %size.0 = select i1 %cmp.i.not, i32 %mul, i32 %mul5
  %add6 = or i32 %size.0, 4
  %call7 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %add6, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call11 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 320, i32 noundef 1, ptr noundef nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call11, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end10
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfg, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %13, align 1
  %17 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  %call16 = call i32 @t4_cim_read_la(ptr noundef %1, ptr noundef %add.ptr, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call16, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end14
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %19 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i46 = icmp eq i8 %20, 1
  br i1 %cmp.i46, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %21 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %23 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp34.i.i = icmp sgt i32 %27, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %27, %if.else.i.while.body.i.i_crit_edge ]
  %28 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %bytes_read.036.i.i
  %31 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %32 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %28, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %28
  %add.i.i = add i32 %28, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %33 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %34, %22
  %35 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.then17, %if.then13
  %retval.0.ph = phi i32 [ %call16, %if.then17 ], [ %call11, %if.then13 ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_cim_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_cim_read_la(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_ma_la(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 2560, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 320
  call void @t4_cim_read_ma_la(ptr noundef %1, ptr noundef %4, ptr noundef %add.ptr) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %5 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %7 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %9 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34.i.i = icmp sgt i32 %13, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %13, %if.else.i.while.body.i.i_crit_edge ]
  %14 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %bytes_read.036.i.i
  %17 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %18 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %14
  %add.i.i = add i32 %14, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %19 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %20, %8
  %21 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_cim_read_ma_la(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_qcfg(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 360, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip, align 8
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %4, align 4
  %stat = getelementptr inbounds %struct.cudbg_cim_qcfg, ptr %4, i32 0, i32 5
  %call2 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 16, i32 noundef 56, ptr noundef %stat) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %obq_wr = getelementptr inbounds %struct.cudbg_cim_qcfg, ptr %4, i32 0, i32 4
  %call7 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 260, i32 noundef 16, ptr noundef %obq_wr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call7, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end5
  %base = getelementptr inbounds %struct.cudbg_cim_qcfg, ptr %4, i32 0, i32 1
  %size = getelementptr inbounds %struct.cudbg_cim_qcfg, ptr %4, i32 0, i32 2
  %thres = getelementptr inbounds %struct.cudbg_cim_qcfg, ptr %4, i32 0, i32 3
  call void @t4_read_cimq_cfg(ptr noundef %1, ptr noundef %base, ptr noundef %size, ptr noundef %thres) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %10 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp eq i8 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %12 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %14 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp34.i.i = icmp sgt i32 %18, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %18, %if.else.i.while.body.i.i_crit_edge ]
  %19 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %bytes_read.036.i.i
  %22 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %23 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %19
  %add.i.i = add i32 %19, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %24 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %25, %13
  %26 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.then9, %if.then4
  %retval.0.ph = phi i32 [ %call7, %if.then9 ], [ %call2, %if.then4 ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_read_cimq_cfg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_ibq_tp0(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_ibq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cudbg_read_cim_ibq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err, i32 noundef %qid) unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 2048, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call1 = call i32 @t4_read_cim_ibq(ptr noundef %1, i32 noundef %qid, ptr noundef %4, i32 noundef 2048) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  %.call1 = select i1 %tobool3.not, i32 -29, i32 %call1
  %5 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.call1, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %6 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %10 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34.i.i = icmp sgt i32 %14, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %14, %if.else.i.while.body.i.i_crit_edge ]
  %15 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %bytes_read.036.i.i
  %18 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %19 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %15
  %add.i.i = add i32 %15, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %20 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %21, %9
  %22 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.then2
  %retval.0.ph = phi i32 [ %.call1, %if.then2 ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_ibq_tp1(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_ibq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_ibq_ulp(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_ibq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_ibq_sge0(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_ibq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_ibq_sge1(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_ibq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_ibq_ncsi(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_ibq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_obq_ulp0(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err, i32 noundef %qid) unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %or.i = or i32 %qid, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 31560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #8, !srcloc !100
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 31564
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #8, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %9 = shl i32 %8, 8
  %mul1.i = and i32 %9, 16128
  %call1 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %mul1.i, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call2 = call i32 @t4_read_cim_obq(ptr noundef %1, i32 noundef %qid, ptr noundef %11, i32 noundef %mul1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %.call2 = select i1 %tobool4.not, i32 -29, i32 %call2
  %12 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.call2, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %13 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp eq i8 %14, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %15 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %17 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp34.i.i = icmp sgt i32 %21, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %21, %if.else.i.while.body.i.i_crit_edge ]
  %22 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %24, i32 %bytes_read.036.i.i
  %25 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i.i25, ptr %data4.i.i, align 4
  %26 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %22, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %22
  %add.i.i = add i32 %22, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %27 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %28, %16
  %29 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.then3
  %retval.0.ph = phi i32 [ %.call2, %if.then3 ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_obq_ulp1(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_obq_ulp2(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_obq_ulp3(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_obq_sge(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_obq_ncsi(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_obq_sge_rx_q0(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_obq_sge_rx_q1(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_read_cim_obq(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i32 noundef 7)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_edc0_meminfo(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_collect_mem_region(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cudbg_collect_mem_region(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err, i8 noundef zeroext %mem_type) unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i.i = alloca %struct.cudbg_buffer, align 4
  %memoffset.i.i = alloca i32, align 4
  %mem_aperture.i.i = alloca i32, align 4
  %mem_base.i.i = alloca i32, align 4
  %mem_desc.i.i = alloca %struct.cudbg_mem_desc, align 4
  %meminfo.i.i = alloca %struct.cudbg_meminfo, align 4
  %temp_buff.i = alloca %struct.cudbg_buffer, align 4
  %mem_info.i = alloca %struct.cudbg_meminfo, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %mem_info.i) #8
  %2 = call ptr @memset(ptr %mem_info.i, i32 0, i32 552)
  %call.i = call i32 @cudbg_fill_meminfo(ptr noundef %1, ptr noundef nonnull %mem_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cudbg_mem_region_size.exit.thread_crit_edge

entry.cudbg_mem_region_size.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_mem_region_size.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdbg_init, align 4
  %flags.i.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i.i, align 32
  %and.i.i.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.cudbg_t4_fwcache.exit.i_crit_edge, label %is_fw_attached.exit.i.i

if.end.i.cudbg_t4_fwcache.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_t4_fwcache.exit.i

is_fw_attached.exit.i.i:                          ; preds = %if.end.i
  %use_bd.i.i.i = getelementptr inbounds %struct.adapter, ptr %4, i32 0, i32 62
  %7 = ptrtoint ptr %use_bd.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_bd.i.i.i, align 128, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 1
  br i1 %tobool.not.i.i, label %is_fw_attached.exit.i.i.cudbg_t4_fwcache.exit.i_crit_edge, label %if.then.i.i

is_fw_attached.exit.i.i.cudbg_t4_fwcache.exit.i_crit_edge: ; preds = %is_fw_attached.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_t4_fwcache.exit.i

if.then.i.i:                                      ; preds = %is_fw_attached.exit.i.i
  %call1.i.i = call i32 @t4_fwcache(ptr noundef %4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.cudbg_t4_fwcache.exit.i_crit_edge, label %if.then3.i.i

if.then.i.i.cudbg_t4_fwcache.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_t4_fwcache.exit.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sys_warn.i.i = getelementptr inbounds %struct.cudbg_error, ptr %cudbg_err, i32 0, i32 1
  %9 = ptrtoint ptr %sys_warn.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1.i.i, ptr %sys_warn.i.i, align 4
  br label %cudbg_t4_fwcache.exit.i

cudbg_t4_fwcache.exit.i:                          ; preds = %if.then3.i.i, %if.then.i.i.cudbg_t4_fwcache.exit.i_crit_edge, %is_fw_attached.exit.i.i.cudbg_t4_fwcache.exit.i_crit_edge, %if.end.i.cudbg_t4_fwcache.exit.i_crit_edge
  %10 = zext i8 %mem_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %mem_type, label %cudbg_t4_fwcache.exit.i.cudbg_mem_region_size.exit.thread_crit_edge [
    i8 0, label %cudbg_t4_fwcache.exit.i.sw.epilog.i.i_crit_edge
    i8 1, label %sw.bb1.i.i
    i8 2, label %sw.bb2.i.i
    i8 3, label %sw.bb4.i.i
    i8 4, label %sw.bb5.i.i
  ]

cudbg_t4_fwcache.exit.i.sw.epilog.i.i_crit_edge:  ; preds = %cudbg_t4_fwcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

cudbg_t4_fwcache.exit.i.cudbg_mem_region_size.exit.thread_crit_edge: ; preds = %cudbg_t4_fwcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_mem_region_size.exit.thread

sw.bb1.i.i:                                       ; preds = %cudbg_t4_fwcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %cudbg_t4_fwcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %chip.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %11 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip.i.i, align 8
  %13 = and i32 %12, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %13)
  %cmp.i.not.i.i = icmp eq i32 %13, 80
  %cond.i.i = select i1 %cmp.i.not.i.i, i32 3, i32 2
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %cudbg_t4_fwcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %cudbg_t4_fwcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %cudbg_t4_fwcache.exit.i.sw.epilog.i.i_crit_edge
  %flag.0.i.i = phi i32 [ 5, %sw.bb5.i.i ], [ 4, %sw.bb4.i.i ], [ %cond.i.i, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %cudbg_t4_fwcache.exit.i.sw.epilog.i.i_crit_edge ]
  %avail_c.i.i = getelementptr inbounds %struct.cudbg_meminfo, ptr %mem_info.i, i32 0, i32 2
  %14 = ptrtoint ptr %avail_c.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %avail_c.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp18.not.i.i, label %sw.epilog.i.i.cudbg_mem_region_size.exit.thread_crit_edge, label %sw.epilog.i.i.for.body.i.i_crit_edge

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  br label %for.body.i.i

sw.epilog.i.i.cudbg_mem_region_size.exit.thread_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_mem_region_size.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i.for.body.i.i_crit_edge
  %conv620.i.i = phi i32 [ %conv6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %i.019.i.i = phi i8 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %idx8.i.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %mem_info.i, i32 0, i32 %conv620.i.i, i32 2
  %16 = ptrtoint ptr %idx8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %flag.0.i.i)
  %cmp10.i.i = icmp eq i32 %17, %flag.0.i.i
  br i1 %cmp10.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i8 %i.019.i.i, 1
  %conv6.i.i = zext i8 %inc.i.i to i32
  %cmp.i.i = icmp ugt i32 %15, %conv6.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cudbg_mem_region_size.exit.thread_crit_edge

for.inc.i.i.cudbg_mem_region_size.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_mem_region_size.exit.thread

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

cudbg_mem_region_size.exit.thread:                ; preds = %for.inc.i.i.cudbg_mem_region_size.exit.thread_crit_edge, %sw.epilog.i.i.cudbg_mem_region_size.exit.thread_crit_edge, %cudbg_t4_fwcache.exit.i.cudbg_mem_region_size.exit.thread_crit_edge, %entry.cudbg_mem_region_size.exit.thread_crit_edge
  %storemerge = phi i32 [ %call.i, %entry.cudbg_mem_region_size.exit.thread_crit_edge ], [ -24, %sw.epilog.i.i.cudbg_mem_region_size.exit.thread_crit_edge ], [ -24, %cudbg_t4_fwcache.exit.i.cudbg_mem_region_size.exit.thread_crit_edge ], [ -24, %for.inc.i.i.cudbg_mem_region_size.exit.thread_crit_edge ]
  %18 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %cudbg_err, align 4
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %mem_info.i) #8
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  %idxprom.i = zext i8 %i.019.i.i to i32
  %arrayidx.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %mem_info.i, i32 0, i32 %idxprom.i
  %limit.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %mem_info.i, i32 0, i32 %idxprom.i, i32 1
  %19 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %limit.i, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %20, %22
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %mem_info.i) #8
  %23 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff.i) #8
  %25 = call ptr @memset(ptr %temp_buff.i, i32 0, i32 12)
  %limit.i.i = getelementptr inbounds %struct.cudbg_mem_desc, ptr %mem_desc.i.i, i32 0, i32 1
  %chip.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %24, i32 0, i32 15, i32 22
  %avail_c.i.i.i.i = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem_desc.i.i) #8
  %26 = call ptr @memset(ptr %mem_desc.i.i, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %meminfo.i.i) #8
  %27 = call ptr @memset(ptr %meminfo.i.i, i32 255, i32 552)
  %call.i.i = call i32 @cudbg_fill_meminfo(ptr noundef %24, ptr noundef nonnull %meminfo.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i8 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i8, label %if.end.i.i, label %if.end.cudbg_get_payload_range.exit.thread.i_crit_edge

if.end.cudbg_get_payload_range.exit.thread.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_payload_range.exit.thread.i

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i9 = call fastcc i32 @cudbg_get_mem_region(ptr noundef %24, ptr noundef nonnull %meminfo.i.i, i8 noundef zeroext %mem_type, ptr noundef nonnull @.str, ptr noundef nonnull %mem_desc.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i9)
  %tobool2.not.i.i10 = icmp eq i32 %call1.i.i9, 0
  br i1 %tobool2.not.i.i10, label %if.end4.i.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %meminfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem_desc.i.i) #8
  br label %for.inc.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %28 = ptrtoint ptr %mem_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mem_desc.i.i, align 4
  %30 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %limit.i.i, align 4
  %32 = zext i8 %mem_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %mem_type, label %if.end4.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge [
    i8 0, label %if.end4.i.i.sw.epilog.i.i.i.i_crit_edge
    i8 1, label %sw.bb1.i.i.i.i
    i8 2, label %sw.bb2.i.i.i.i
    i8 3, label %sw.bb4.i.i.i.i
    i8 4, label %sw.bb5.i.i.i.i
  ]

if.end4.i.i.sw.epilog.i.i.i.i_crit_edge:          ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

if.end4.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_payload_range.exit.thread.i

sw.bb1.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

sw.bb2.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %chip.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip.i.i.i.i, align 8
  %35 = and i32 %34, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %35)
  %cmp.i.not.i.i.i.i = icmp eq i32 %35, 80
  %cond.i.i.i.i = select i1 %cmp.i.not.i.i.i.i, i32 3, i32 2
  br label %sw.epilog.i.i.i.i

sw.bb4.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

sw.bb5.i.i.i.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.bb5.i.i.i.i, %sw.bb4.i.i.i.i, %sw.bb2.i.i.i.i, %sw.bb1.i.i.i.i, %if.end4.i.i.sw.epilog.i.i.i.i_crit_edge
  %flag.0.i.i.i.i = phi i32 [ 5, %sw.bb5.i.i.i.i ], [ 4, %sw.bb4.i.i.i.i ], [ %cond.i.i.i.i, %sw.bb2.i.i.i.i ], [ 1, %sw.bb1.i.i.i.i ], [ 0, %if.end4.i.i.sw.epilog.i.i.i.i_crit_edge ]
  %36 = ptrtoint ptr %avail_c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %avail_c.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp18.not.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp18.not.i.i.i.i, label %sw.epilog.i.i.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge, label %sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge

sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge:     ; preds = %sw.epilog.i.i.i.i
  br label %for.body.i.i.i.i

sw.epilog.i.i.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_payload_range.exit.thread.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge
  %conv620.i.i.i.i = phi i32 [ %conv6.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %i.019.i.i.i.i = phi i8 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %idx8.i.i.i.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo.i.i, i32 0, i32 %conv620.i.i.i.i, i32 2
  %38 = ptrtoint ptr %idx8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %flag.0.i.i.i.i)
  %cmp10.i.i.i.i = icmp eq i32 %39, %flag.0.i.i.i.i
  br i1 %cmp10.i.i.i.i, label %if.then7.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add i8 %i.019.i.i.i.i, 1
  %conv6.i.i.i.i = zext i8 %inc.i.i.i.i to i32
  %cmp.i.i.i.i = icmp ugt i32 %37, %conv6.i.i.i.i
  br i1 %cmp.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge

for.inc.i.i.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_payload_range.exit.thread.i

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

cudbg_get_payload_range.exit.thread.i:            ; preds = %for.inc.i.i.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge, %sw.epilog.i.i.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge, %if.end4.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge, %for.inc.i.cudbg_get_payload_range.exit.thread.i_crit_edge, %for.inc.i.i.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge, %sw.epilog.i.i.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge, %if.end4.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge, %if.end.cudbg_get_payload_range.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end.cudbg_get_payload_range.exit.thread.i_crit_edge ], [ -24, %if.end4.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge ], [ -24, %sw.epilog.i.i.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge ], [ %call.i.i.1, %for.inc.i.cudbg_get_payload_range.exit.thread.i_crit_edge ], [ -24, %if.end4.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge ], [ -24, %sw.epilog.i.i.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge ], [ -24, %for.inc.i.i.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge ], [ -24, %for.inc.i.i.i.i.cudbg_get_payload_range.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %meminfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem_desc.i.i) #8
  br label %cudbg_read_fw_mem.exit

if.then7.i:                                       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i.i.i = zext i8 %i.019.i.i.i.i to i32
  %arrayidx.i.i.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo.i.i, i32 0, i32 %idxprom.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i, align 4
  %42 = call i32 @llvm.usub.sat.i32(i32 %29, i32 %41) #8
  %limit.i.i.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo.i.i, i32 0, i32 %idxprom.i.i.i, i32 1
  %43 = ptrtoint ptr %limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %limit.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %44)
  %cmp10.i.i.i = icmp ugt i32 %31, %44
  %sub21.i.i.i = sub i32 %31, %41
  %spec.select.i.i = select i1 %cmp10.i.i.i, i32 %44, i32 %sub21.i.i.i
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %meminfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem_desc.i.i) #8
  %add.i = add i32 %42, 64511
  %45 = urem i32 %add.i, 64512
  %mul.i = sub i32 %add.i, %45
  %rem.i = urem i32 %spec.select.i.i, 64512
  %sub16.i = sub i32 %spec.select.i.i, %rem.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %if.end.thread.i
  %payload.i.sroa.631.0 = phi i32 [ %mul.i, %if.then7.i ], [ 0, %if.end.thread.i ]
  %payload.i.sroa.9.0 = phi i32 [ %sub16.i, %if.then7.i ], [ 0, %if.end.thread.i ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem_desc.i.i) #8
  %46 = call ptr @memset(ptr %mem_desc.i.i, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %meminfo.i.i) #8
  %47 = call ptr @memset(ptr %meminfo.i.i, i32 255, i32 552)
  %call.i.i.1 = call i32 @cudbg_fill_meminfo(ptr noundef %24, ptr noundef nonnull %meminfo.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.i8.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.i8.1, label %if.end.i.i.1, label %for.inc.i.cudbg_get_payload_range.exit.thread.i_crit_edge

for.inc.i.cudbg_get_payload_range.exit.thread.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_payload_range.exit.thread.i

if.end.i.i.1:                                     ; preds = %for.inc.i
  %call1.i.i9.1 = call fastcc i32 @cudbg_get_mem_region(ptr noundef %24, ptr noundef nonnull %meminfo.i.i, i8 noundef zeroext %mem_type, ptr noundef nonnull @.str.1, ptr noundef nonnull %mem_desc.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i9.1)
  %tobool2.not.i.i10.1 = icmp eq i32 %call1.i.i9.1, 0
  br i1 %tobool2.not.i.i10.1, label %if.end4.i.i.1, label %if.end.thread.i.1

if.end.thread.i.1:                                ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %meminfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem_desc.i.i) #8
  br label %for.inc.i.1

if.end4.i.i.1:                                    ; preds = %if.end.i.i.1
  %48 = ptrtoint ptr %mem_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mem_desc.i.i, align 4
  %50 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %limit.i.i, align 4
  %52 = zext i8 %mem_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %mem_type, label %if.end4.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge [
    i8 0, label %if.end4.i.i.1.sw.epilog.i.i.i.i.1_crit_edge
    i8 1, label %sw.bb1.i.i.i.i.1
    i8 2, label %sw.bb2.i.i.i.i.1
    i8 3, label %sw.bb4.i.i.i.i.1
    i8 4, label %sw.bb5.i.i.i.i.1
  ]

if.end4.i.i.1.sw.epilog.i.i.i.i.1_crit_edge:      ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i.1

if.end4.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge: ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_payload_range.exit.thread.i

sw.bb5.i.i.i.i.1:                                 ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i.1

sw.bb4.i.i.i.i.1:                                 ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i.1

sw.bb2.i.i.i.i.1:                                 ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %chip.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chip.i.i.i.i, align 8
  %55 = and i32 %54, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %55)
  %cmp.i.not.i.i.i.i.1 = icmp eq i32 %55, 80
  %cond.i.i.i.i.1 = select i1 %cmp.i.not.i.i.i.i.1, i32 3, i32 2
  br label %sw.epilog.i.i.i.i.1

sw.bb1.i.i.i.i.1:                                 ; preds = %if.end4.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i.i.1

sw.epilog.i.i.i.i.1:                              ; preds = %sw.bb1.i.i.i.i.1, %sw.bb2.i.i.i.i.1, %sw.bb4.i.i.i.i.1, %sw.bb5.i.i.i.i.1, %if.end4.i.i.1.sw.epilog.i.i.i.i.1_crit_edge
  %flag.0.i.i.i.i.1 = phi i32 [ 5, %sw.bb5.i.i.i.i.1 ], [ 4, %sw.bb4.i.i.i.i.1 ], [ %cond.i.i.i.i.1, %sw.bb2.i.i.i.i.1 ], [ 1, %sw.bb1.i.i.i.i.1 ], [ 0, %if.end4.i.i.1.sw.epilog.i.i.i.i.1_crit_edge ]
  %56 = ptrtoint ptr %avail_c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %avail_c.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp18.not.i.i.i.i.1 = icmp eq i32 %57, 0
  br i1 %cmp18.not.i.i.i.i.1, label %sw.epilog.i.i.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge, label %sw.epilog.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge

sw.epilog.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge: ; preds = %sw.epilog.i.i.i.i.1
  br label %for.body.i.i.i.i.1

sw.epilog.i.i.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge: ; preds = %sw.epilog.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_payload_range.exit.thread.i

for.body.i.i.i.i.1:                               ; preds = %for.inc.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge, %sw.epilog.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge
  %conv620.i.i.i.i.1 = phi i32 [ %conv6.i.i.i.i.1, %for.inc.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge ], [ 0, %sw.epilog.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge ]
  %i.019.i.i.i.i.1 = phi i8 [ %inc.i.i.i.i.1, %for.inc.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge ], [ 0, %sw.epilog.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge ]
  %idx8.i.i.i.i.1 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo.i.i, i32 0, i32 %conv620.i.i.i.i.1, i32 2
  %58 = ptrtoint ptr %idx8.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %idx8.i.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %flag.0.i.i.i.i.1)
  %cmp10.i.i.i.i.1 = icmp eq i32 %59, %flag.0.i.i.i.i.1
  br i1 %cmp10.i.i.i.i.1, label %if.then7.i.1, label %for.inc.i.i.i.i.1

for.inc.i.i.i.i.1:                                ; preds = %for.body.i.i.i.i.1
  %inc.i.i.i.i.1 = add i8 %i.019.i.i.i.i.1, 1
  %conv6.i.i.i.i.1 = zext i8 %inc.i.i.i.i.1 to i32
  %cmp.i.i.i.i.1 = icmp ugt i32 %57, %conv6.i.i.i.i.1
  br i1 %cmp.i.i.i.i.1, label %for.inc.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge, label %for.inc.i.i.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge

for.inc.i.i.i.i.1.cudbg_get_payload_range.exit.thread.i_crit_edge: ; preds = %for.inc.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_payload_range.exit.thread.i

for.inc.i.i.i.i.1.for.body.i.i.i.i.1_crit_edge:   ; preds = %for.inc.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i.1

if.then7.i.1:                                     ; preds = %for.body.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i.i.i.1 = zext i8 %i.019.i.i.i.i.1 to i32
  %arrayidx.i.i.i.1 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo.i.i, i32 0, i32 %idxprom.i.i.i.1
  %60 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i.1, align 4
  %62 = call i32 @llvm.usub.sat.i32(i32 %49, i32 %61) #8
  %limit.i.i.i.1 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo.i.i, i32 0, i32 %idxprom.i.i.i.1, i32 1
  %63 = ptrtoint ptr %limit.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %limit.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %64)
  %cmp10.i.i.i.1 = icmp ugt i32 %51, %64
  %sub21.i.i.i.1 = sub i32 %51, %61
  %spec.select.i.i.1 = select i1 %cmp10.i.i.i.1, i32 %64, i32 %sub21.i.i.i.1
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %meminfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem_desc.i.i) #8
  %add.i.1 = add i32 %62, 64511
  %65 = urem i32 %add.i.1, 64512
  %mul.i.1 = sub i32 %add.i.1, %65
  %rem.i.1 = urem i32 %spec.select.i.i.1, 64512
  %sub16.i.1 = sub i32 %spec.select.i.i.1, %rem.i.1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then7.i.1, %if.end.thread.i.1
  %payload.i.sroa.1532.0 = phi i32 [ %mul.i.1, %if.then7.i.1 ], [ 0, %if.end.thread.i.1 ]
  %payload.i.sroa.18.0 = phi i32 [ %sub16.i.1, %if.then7.i.1 ], [ 0, %if.end.thread.i.1 ]
  %win0_lock.i = getelementptr inbounds %struct.adapter, ptr %24, i32 0, i32 70
  %data.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff.i, i32 0, i32 2
  %conv62.i = zext i8 %mem_type to i32
  %compress_type.i.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %offset1.i.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %offset2.i.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff.i, i32 0, i32 1
  %offset3.i.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i.i, i32 0, i32 1
  %data4.i.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i.i, i32 0, i32 2
  %tobool2.not.i.i10.not = xor i1 %tobool2.not.i.i10, true
  %tobool2.not.i.i10.1.not = xor i1 %tobool2.not.i.i10.1, true
  br label %while.cond.i

while.cond.i:                                     ; preds = %cudbg_write_and_release_buff.exit.i.while.cond.i_crit_edge, %for.inc.i.1
  %yield_count.0.i = phi i32 [ %inc23.i, %cudbg_write_and_release_buff.exit.i.while.cond.i_crit_edge ], [ 0, %for.inc.i.1 ]
  %bytes_read.0.i = phi i32 [ %add51.i, %cudbg_write_and_release_buff.exit.i.while.cond.i_crit_edge ], [ 0, %for.inc.i.1 ]
  %bytes_left.0.i = phi i32 [ %sub68.i, %cudbg_write_and_release_buff.exit.i.while.cond.i_crit_edge ], [ %sub.i, %for.inc.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_left.0.i)
  %cmp21.not.i = icmp eq i32 %bytes_left.0.i, 0
  br i1 %cmp21.not.i, label %while.cond.i.cudbg_read_fw_mem.exit_crit_edge, label %while.body.i

while.cond.i.cudbg_read_fw_mem.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_read_fw_mem.exit

while.body.i:                                     ; preds = %while.cond.i
  %inc23.i = add i32 %yield_count.0.i, 1
  %rem24.i = and i32 %inc23.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem24.i)
  %tobool25.not.i = icmp eq i32 %rem24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %while.body.i.if.end27.i_crit_edge

while.body.i.if.end27.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then26.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %while.body.i.if.end27.i_crit_edge
  %66 = call i32 @llvm.umin.i32(i32 %bytes_left.0.i, i32 64512) #8
  %call31.i = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %66, ptr noundef nonnull %temp_buff.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %for.cond35.preheader.i, label %if.end27.i.cudbg_read_fw_mem.exit_crit_edge

if.end27.i.cudbg_read_fw_mem.exit_crit_edge:      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_read_fw_mem.exit

for.cond35.preheader.i:                           ; preds = %if.end27.i
  %add51.i = add i32 %66, %bytes_read.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_read.0.i, i32 %payload.i.sroa.631.0)
  %cmp48.not.i = icmp ult i32 %bytes_read.0.i, %payload.i.sroa.631.0
  %or.cond = select i1 %tobool2.not.i.i10.not, i1 true, i1 %cmp48.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add51.i, i32 %payload.i.sroa.9.0)
  %cmp55.not.i = icmp ugt i32 %add51.i, %payload.i.sroa.9.0
  %or.cond38 = select i1 %or.cond, i1 true, i1 %cmp55.not.i
  br i1 %or.cond38, label %for.inc59.i, label %for.cond35.preheader.i.skip_read.i_crit_edge

for.cond35.preheader.i.skip_read.i_crit_edge:     ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_read.i

for.inc59.i:                                      ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_read.0.i, i32 %payload.i.sroa.1532.0)
  %cmp48.not.1.i = icmp ult i32 %bytes_read.0.i, %payload.i.sroa.1532.0
  %or.cond39 = select i1 %tobool2.not.i.i10.1.not, i1 true, i1 %cmp48.not.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add51.i, i32 %payload.i.sroa.18.0)
  %cmp55.not.1.i = icmp ugt i32 %add51.i, %payload.i.sroa.18.0
  %or.cond40 = select i1 %or.cond39, i1 true, i1 %cmp55.not.1.i
  br i1 %or.cond40, label %for.inc59.1.i, label %for.inc59.i.skip_read.i_crit_edge

for.inc59.i.skip_read.i_crit_edge:                ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_read.i

for.inc59.1.i:                                    ; preds = %for.inc59.i
  call void @_raw_spin_lock(ptr noundef %win0_lock.i) #8
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %memoffset.i.i) #8
  %69 = ptrtoint ptr %memoffset.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %memoffset.i.i, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_aperture.i.i) #8
  %70 = ptrtoint ptr %mem_aperture.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %mem_aperture.i.i, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_base.i.i) #8
  %71 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %mem_base.i.i, align 4, !annotation !102
  %72 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdbg_init, align 4
  %74 = ptrtoint ptr %68 to i32
  %75 = or i32 %bytes_read.0.i, %74
  %76 = and i32 %75, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %if.end.i129.i, label %for.inc59.1.i.if.then66.i_crit_edge

for.inc59.1.i.if.then66.i_crit_edge:              ; preds = %for.inc59.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66.i

if.end.i129.i:                                    ; preds = %for.inc59.1.i
  %and4.i.i = and i32 %66, 7
  %sub.i.i = and i32 %66, 65528
  %call.i128.i = call i32 @t4_memory_rw_init(ptr noundef %73, i32 noundef 0, i32 noundef %conv62.i, ptr noundef nonnull %memoffset.i.i, ptr noundef nonnull %mem_base.i.i, ptr noundef nonnull %mem_aperture.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %tobool5.not.i.i = icmp eq i32 %call.i128.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i129.i.if.then66.i_crit_edge

if.end.i129.i.if.then66.i_crit_edge:              ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66.i

if.end7.i.i:                                      ; preds = %if.end.i129.i
  %78 = ptrtoint ptr %memoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %memoffset.i.i, align 4
  %add.i.i = add i32 %79, %bytes_read.0.i
  %chip.i.i12 = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 15, i32 22
  %80 = ptrtoint ptr %chip.i.i12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %chip.i.i12, align 8
  %82 = and i32 %81, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %82)
  %cmp.i.not.i.i13 = icmp eq i32 %82, 64
  br i1 %cmp.i.not.i.i13, label %if.end7.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end7.i.i.cond.end.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pf.i.i = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 7
  %83 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pf.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end7.i.i.cond.end.i.i_crit_edge
  %cond.i.i14 = phi i32 [ %84, %cond.false.i.i ], [ 0, %if.end7.i.i.cond.end.i.i_crit_edge ]
  %85 = ptrtoint ptr %mem_aperture.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mem_aperture.i.i, align 4
  %neg.i.i = sub i32 0, %86
  %and11.i.i = and i32 %add.i.i, %neg.i.i
  %sub12.i.i = sub i32 %add.i.i, %and11.i.i
  %or.i.i = or i32 %and11.i.i, %cond.i.i14
  call void @t4_memory_update_win(ptr noundef %73, i32 noundef 0, i32 noundef %or.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.not2.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.not2.i.i, label %cond.end.i.i.while.cond22.preheader.i.i_crit_edge, label %cond.end.i.i.while.body.i.i_crit_edge

cond.end.i.i.while.body.i.i_crit_edge:            ; preds = %cond.end.i.i
  br label %while.body.i.i

cond.end.i.i.while.cond22.preheader.i.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond22.preheader.i.i

while.cond22.preheader.i.i:                       ; preds = %if.end21.i.i.while.cond22.preheader.i.i_crit_edge, %cond.end.i.i.while.cond22.preheader.i.i_crit_edge
  %pos.0.lcssa.i.i = phi i32 [ %and11.i.i, %cond.end.i.i.while.cond22.preheader.i.i_crit_edge ], [ %pos.1.i.i, %if.end21.i.i.while.cond22.preheader.i.i_crit_edge ]
  %offset.0.lcssa.i.i = phi i32 [ %sub12.i.i, %cond.end.i.i.while.cond22.preheader.i.i_crit_edge ], [ %offset.1.i.i, %if.end21.i.i.while.cond22.preheader.i.i_crit_edge ]
  %buf.0.lcssa.i.i = phi ptr [ %68, %cond.end.i.i.while.cond22.preheader.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end21.i.i.while.cond22.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4.i.i)
  %cmp239.i.i = icmp ugt i32 %and4.i.i, 4
  br i1 %cmp239.i.i, label %while.cond22.preheader.i.i.while.body24.i.i_crit_edge, label %while.cond22.preheader.i.i.while.end35.i.i_crit_edge

while.cond22.preheader.i.i.while.end35.i.i_crit_edge: ; preds = %while.cond22.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end35.i.i

while.cond22.preheader.i.i.while.body24.i.i_crit_edge: ; preds = %while.cond22.preheader.i.i
  br label %while.body24.i.i

while.body.i.i:                                   ; preds = %if.end21.i.i.while.body.i.i_crit_edge, %cond.end.i.i.while.body.i.i_crit_edge
  %buf.06.i.i = phi ptr [ %incdec.ptr.i.i, %if.end21.i.i.while.body.i.i_crit_edge ], [ %68, %cond.end.i.i.while.body.i.i_crit_edge ]
  %offset.05.i.i = phi i32 [ %offset.1.i.i, %if.end21.i.i.while.body.i.i_crit_edge ], [ %sub12.i.i, %cond.end.i.i.while.body.i.i_crit_edge ]
  %pos.04.i.i = phi i32 [ %pos.1.i.i, %if.end21.i.i.while.body.i.i_crit_edge ], [ %and11.i.i, %cond.end.i.i.while.body.i.i_crit_edge ]
  %len.addr.03.i.i = phi i32 [ %sub16.i.i, %if.end21.i.i.while.body.i.i_crit_edge ], [ %sub.i.i, %cond.end.i.i.while.body.i.i_crit_edge ]
  %87 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mem_base.i.i, align 4
  %add13.i.i = add i32 %88, %offset.05.i.i
  %89 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %73, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %90, i32 %add13.i.i
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %93 = zext i32 %92 to i64
  %94 = zext i32 %91 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or i64 %95, %93
  %incdec.ptr.i.i = getelementptr i64, ptr %buf.06.i.i, i32 1
  %97 = ptrtoint ptr %buf.06.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %buf.06.i.i, align 8
  %add15.i.i = add i32 %offset.05.i.i, 8
  %sub16.i.i = add i32 %len.addr.03.i.i, -8
  %98 = ptrtoint ptr %mem_aperture.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mem_aperture.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i.i, i32 %99)
  %cmp17.i.i = icmp eq i32 %add15.i.i, %99
  br i1 %cmp17.i.i, label %if.then18.i.i, label %while.body.i.i.if.end21.i.i_crit_edge

while.body.i.i.if.end21.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.then18.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add19.i.i = add i32 %add15.i.i, %pos.04.i.i
  %or20.i.i = or i32 %add19.i.i, %cond.i.i14
  call void @t4_memory_update_win(ptr noundef %73, i32 noundef 0, i32 noundef %or20.i.i) #8
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then18.i.i, %while.body.i.i.if.end21.i.i_crit_edge
  %pos.1.i.i = phi i32 [ %add19.i.i, %if.then18.i.i ], [ %pos.04.i.i, %while.body.i.i.if.end21.i.i_crit_edge ]
  %offset.1.i.i = phi i32 [ 0, %if.then18.i.i ], [ %add15.i.i, %while.body.i.i.if.end21.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq i32 %sub16.i.i, 0
  br i1 %cmp.not.i.i, label %if.end21.i.i.while.cond22.preheader.i.i_crit_edge, label %if.end21.i.i.while.body.i.i_crit_edge

if.end21.i.i.while.body.i.i_crit_edge:            ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end21.i.i.while.cond22.preheader.i.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond22.preheader.i.i

while.body24.i.i:                                 ; preds = %if.end34.i.i.while.body24.i.i_crit_edge, %while.cond22.preheader.i.i.while.body24.i.i_crit_edge
  %res_buf.013.i.i = phi ptr [ %incdec.ptr27.i.i, %if.end34.i.i.while.body24.i.i_crit_edge ], [ %buf.0.lcssa.i.i, %while.cond22.preheader.i.i.while.body24.i.i_crit_edge ]
  %resid.012.i.i = phi i32 [ %sub29.i.i, %if.end34.i.i.while.body24.i.i_crit_edge ], [ %and4.i.i, %while.cond22.preheader.i.i.while.body24.i.i_crit_edge ]
  %offset.211.i.i = phi i32 [ %offset.3.i.i, %if.end34.i.i.while.body24.i.i_crit_edge ], [ %offset.0.lcssa.i.i, %while.cond22.preheader.i.i.while.body24.i.i_crit_edge ]
  %pos.210.i.i = phi i32 [ %pos.3.i.i, %if.end34.i.i.while.body24.i.i_crit_edge ], [ %pos.0.lcssa.i.i, %while.cond22.preheader.i.i.while.body24.i.i_crit_edge ]
  %100 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mem_base.i.i, align 4
  %add25.i.i = add i32 %101, %offset.211.i.i
  %102 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %73, align 128
  %add.ptr.i1.i.i = getelementptr i8, ptr %103, i32 %add25.i.i
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %incdec.ptr27.i.i = getelementptr i32, ptr %res_buf.013.i.i, i32 1
  %105 = ptrtoint ptr %res_buf.013.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %res_buf.013.i.i, align 4
  %add28.i.i = add i32 %offset.211.i.i, 4
  %sub29.i.i = add i32 %resid.012.i.i, -4
  %106 = ptrtoint ptr %mem_aperture.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mem_aperture.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add28.i.i, i32 %107)
  %cmp30.i.i = icmp eq i32 %add28.i.i, %107
  br i1 %cmp30.i.i, label %if.then31.i.i, label %while.body24.i.i.if.end34.i.i_crit_edge

while.body24.i.i.if.end34.i.i_crit_edge:          ; preds = %while.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then31.i.i:                                    ; preds = %while.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add32.i.i = add i32 %add28.i.i, %pos.210.i.i
  %or33.i.i = or i32 %add32.i.i, %cond.i.i14
  call void @t4_memory_update_win(ptr noundef %73, i32 noundef 0, i32 noundef %or33.i.i) #8
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then31.i.i, %while.body24.i.i.if.end34.i.i_crit_edge
  %pos.3.i.i = phi i32 [ %add32.i.i, %if.then31.i.i ], [ %pos.210.i.i, %while.body24.i.i.if.end34.i.i_crit_edge ]
  %offset.3.i.i = phi i32 [ 0, %if.then31.i.i ], [ %add28.i.i, %while.body24.i.i.if.end34.i.i_crit_edge ]
  %cmp23.i.i = icmp ugt i32 %sub29.i.i, 4
  br i1 %cmp23.i.i, label %if.end34.i.i.while.body24.i.i_crit_edge, label %if.end34.i.i.while.end35.i.i_crit_edge

if.end34.i.i.while.end35.i.i_crit_edge:           ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end35.i.i

if.end34.i.i.while.body24.i.i_crit_edge:          ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body24.i.i

while.end35.i.i:                                  ; preds = %if.end34.i.i.while.end35.i.i_crit_edge, %while.cond22.preheader.i.i.while.end35.i.i_crit_edge
  %offset.2.lcssa.i.i = phi i32 [ %offset.0.lcssa.i.i, %while.cond22.preheader.i.i.while.end35.i.i_crit_edge ], [ %offset.3.i.i, %if.end34.i.i.while.end35.i.i_crit_edge ]
  %resid.0.lcssa.i.i = phi i32 [ %and4.i.i, %while.cond22.preheader.i.i.while.end35.i.i_crit_edge ], [ %sub29.i.i, %if.end34.i.i.while.end35.i.i_crit_edge ]
  %res_buf.0.lcssa.i.i = phi ptr [ %buf.0.lcssa.i.i, %while.cond22.preheader.i.i.while.end35.i.i_crit_edge ], [ %incdec.ptr27.i.i, %if.end34.i.i.while.end35.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resid.0.lcssa.i.i)
  %tobool36.not.i.i = icmp eq i32 %resid.0.lcssa.i.i, 0
  br i1 %tobool36.not.i.i, label %while.end35.i.i.cudbg_memory_read.exit.thread.i_crit_edge, label %if.then37.i.i

while.end35.i.i.cudbg_memory_read.exit.thread.i_crit_edge: ; preds = %while.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_memory_read.exit.thread.i

if.then37.i.i:                                    ; preds = %while.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mem_base.i.i, align 4
  %add38.i.i = add i32 %109, %offset.2.lcssa.i.i
  call void @t4_memory_rw_residual(ptr noundef %73, i32 noundef %resid.0.lcssa.i.i, i32 noundef %add38.i.i, ptr noundef %res_buf.0.lcssa.i.i, i32 noundef 1) #8
  br label %cudbg_memory_read.exit.thread.i

cudbg_memory_read.exit.thread.i:                  ; preds = %if.then37.i.i, %while.end35.i.i.cudbg_memory_read.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_base.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_aperture.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memoffset.i.i) #8
  call void @_raw_spin_unlock(ptr noundef %win0_lock.i) #8
  br label %skip_read.i

if.then66.i:                                      ; preds = %if.end.i129.i.if.then66.i_crit_edge, %for.inc59.1.i.if.then66.i_crit_edge
  %retval.0.i130.i = phi i32 [ -22, %for.inc59.1.i.if.then66.i_crit_edge ], [ %call.i128.i, %if.end.i129.i.if.then66.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_base.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_aperture.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memoffset.i.i) #8
  call void @_raw_spin_unlock(ptr noundef %win0_lock.i) #8
  %110 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %retval.0.i130.i, ptr %cudbg_err, align 4
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff.i) #8
  br label %cudbg_read_fw_mem.exit

skip_read.i:                                      ; preds = %cudbg_memory_read.exit.thread.i, %for.inc59.i.skip_read.i_crit_edge, %for.cond35.preheader.i.skip_read.i_crit_edge
  %sub68.i = sub i32 %bytes_left.0.i, %66
  %111 = ptrtoint ptr %compress_type.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %compress_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp.i.i15 = icmp eq i8 %112, 1
  br i1 %cmp.i.i15, label %if.then.i.i16, label %if.else.i.i

if.then.i.i16:                                    ; preds = %skip_read.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff.i, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit.i

if.else.i.i:                                      ; preds = %skip_read.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i.i) #8
  %113 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %offset1.i.i.i, align 4
  %115 = ptrtoint ptr %offset2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %offset2.i.i.i, align 4
  %117 = ptrtoint ptr %offset3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %offset3.i.i.i, align 4
  %118 = ptrtoint ptr %temp_buff.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %temp_buff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp34.i.i.i = icmp sgt i32 %119, 0
  br i1 %cmp34.i.i.i, label %if.else.i.i.while.body.i.i.i_crit_edge, label %if.else.i.i.while.end.i.i.i_crit_edge

if.else.i.i.while.end.i.i.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

if.else.i.i.while.body.i.i.i_crit_edge:           ; preds = %if.else.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i132.i.while.body.i.i.i_crit_edge, %if.else.i.i.while.body.i.i.i_crit_edge
  %bytes_read.036.i.i.i = phi i32 [ %add.i.i.i, %if.end.i.i132.i.while.body.i.i.i_crit_edge ], [ 0, %if.else.i.i.while.body.i.i.i_crit_edge ]
  %bytes_left.035.i.i.i = phi i32 [ %sub.i.i.i, %if.end.i.i132.i.while.body.i.i.i_crit_edge ], [ %119, %if.else.i.i.while.body.i.i.i_crit_edge ]
  %120 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i.i, i32 64512) #8
  %121 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i131.i = getelementptr i8, ptr %122, i32 %bytes_read.036.i.i.i
  %123 = ptrtoint ptr %data4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr.i.i131.i, ptr %data4.i.i.i, align 4
  %124 = ptrtoint ptr %temp_in_buff.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %120, ptr %temp_in_buff.i.i.i, align 4
  %call.i.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i17 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i17, label %if.end.i.i132.i, label %while.body.i.i.i.cudbg_do_compression.exit.i.i_crit_edge

while.body.i.i.i.cudbg_do_compression.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i.i

if.end.i.i132.i:                                  ; preds = %while.body.i.i.i
  %sub.i.i.i = sub nsw i32 %bytes_left.035.i.i.i, %120
  %add.i.i.i = add i32 %120, %bytes_read.036.i.i.i
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i132.i.while.body.i.i.i_crit_edge, label %if.end.i.i132.i.while.end.i.i.i_crit_edge

if.end.i.i132.i.while.end.i.i.i_crit_edge:        ; preds = %if.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

if.end.i.i132.i.while.body.i.i.i_crit_edge:       ; preds = %if.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %if.end.i.i132.i.while.end.i.i.i_crit_edge, %if.else.i.i.while.end.i.i.i_crit_edge
  %125 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %offset1.i.i.i, align 4
  %sub12.i.i.i = sub i32 %126, %114
  %127 = ptrtoint ptr %temp_buff.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %sub12.i.i.i, ptr %temp_buff.i, align 4
  br label %cudbg_do_compression.exit.i.i

cudbg_do_compression.exit.i.i:                    ; preds = %while.end.i.i.i, %while.body.i.i.i.cudbg_do_compression.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %while.end.i.i.i ], [ %call.i.i.i, %while.body.i.i.i.cudbg_do_compression.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i.i) #8
  br label %cudbg_write_and_release_buff.exit.i

cudbg_write_and_release_buff.exit.i:              ; preds = %cudbg_do_compression.exit.i.i, %if.then.i.i16
  %rc.0.i.i = phi i32 [ 0, %if.then.i.i16 ], [ %retval.0.i.i.i, %cudbg_do_compression.exit.i.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff.i) #8
  %tobool71.not.i = icmp eq i32 %rc.0.i.i, 0
  br i1 %tobool71.not.i, label %cudbg_write_and_release_buff.exit.i.while.cond.i_crit_edge, label %if.then72.i

cudbg_write_and_release_buff.exit.i.while.cond.i_crit_edge: ; preds = %cudbg_write_and_release_buff.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.then72.i:                                      ; preds = %cudbg_write_and_release_buff.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff.i) #8
  br label %cudbg_read_fw_mem.exit

cudbg_read_fw_mem.exit:                           ; preds = %if.then72.i, %if.then66.i, %if.end27.i.cudbg_read_fw_mem.exit_crit_edge, %while.cond.i.cudbg_read_fw_mem.exit_crit_edge, %cudbg_get_payload_range.exit.thread.i
  %retval.0.i18 = phi i32 [ %rc.0.i.i, %if.then72.i ], [ %retval.0.i130.i, %if.then66.i ], [ %retval.0.i.ph.i, %cudbg_get_payload_range.exit.thread.i ], [ %call31.i, %if.end27.i.cudbg_read_fw_mem.exit_crit_edge ], [ 0, %while.cond.i.cudbg_read_fw_mem.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_read_fw_mem.exit, %cudbg_mem_region_size.exit.thread
  %retval.0 = phi i32 [ %retval.0.i18, %cudbg_read_fw_mem.exit ], [ %storemerge, %cudbg_mem_region_size.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_edc1_meminfo(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_collect_mem_region(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i8 noundef zeroext 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_mc0_meminfo(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_collect_mem_region(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i8 noundef zeroext 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_mc1_meminfo(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_collect_mem_region(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i8 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_hma_meminfo(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cudbg_collect_mem_region(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr noundef %cudbg_err, i8 noundef zeroext 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_rss(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = tail call i32 @t4_chip_rss_size(ptr noundef %1) #8
  %mul = shl i32 %call, 1
  %call1 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %mul, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call2 = call i32 @t4_read_rss(ptr noundef %1, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %6 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %10 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34.i.i = icmp sgt i32 %14, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %14, %if.else.i.while.body.i.i_crit_edge ]
  %15 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %bytes_read.036.i.i
  %18 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %19 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %15
  %add.i.i = add i32 %15, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %20 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %21, %9
  %22 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.then4
  %retval.0.ph = phi i32 [ %call2, %if.then4 ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_read_rss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_rss_vf_config(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %vfcount = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 23, i32 4
  %3 = ptrtoint ptr %vfcount to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vfcount, align 2
  %conv = zext i16 %4 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %mul, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp21.not = icmp eq i16 %4, 0
  br i1 %cmp21.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %vf.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cudbg_rss_vf_conf, ptr %6, i32 %vf.022
  %rss_vf_vfh = getelementptr %struct.cudbg_rss_vf_conf, ptr %6, i32 %vf.022, i32 1
  call void @t4_read_rss_vf_config(ptr noundef %1, i32 noundef %vf.022, ptr noundef %arrayidx, ptr noundef %rss_vf_vfh, i1 noundef zeroext true) #8
  %inc = add nuw nsw i32 %vf.022, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %7 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i = icmp eq i8 %8, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %9 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %11 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp34.i.i = icmp sgt i32 %15, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %15, %if.else.i.while.body.i.i_crit_edge ]
  %16 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %bytes_read.036.i.i
  %19 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %20 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %16
  %add.i.i = add i32 %16, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %21 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %22, %10
  %23 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_read_rss_vf_config(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_path_mtu(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 32, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void @t4_read_mtu_tbl(ptr noundef %1, ptr noundef %4, ptr noundef null) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %5 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %7 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %9 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34.i.i = icmp sgt i32 %13, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %13, %if.else.i.while.body.i.i_crit_edge ]
  %14 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %bytes_read.036.i.i
  %17 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %18 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %14
  %add.i.i = add i32 %14, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %19 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %20, %8
  %21 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_read_mtu_tbl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_pm_stats(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 168, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tx_cyc = getelementptr inbounds %struct.cudbg_pm_stats, ptr %4, i32 0, i32 2
  call void @t4_pmtx_get_stats(ptr noundef %1, ptr noundef %4, ptr noundef %tx_cyc) #8
  %rx_cnt = getelementptr inbounds %struct.cudbg_pm_stats, ptr %4, i32 0, i32 1
  %rx_cyc = getelementptr inbounds %struct.cudbg_pm_stats, ptr %4, i32 0, i32 3
  call void @t4_pmrx_get_stats(ptr noundef %1, ptr noundef %rx_cnt, ptr noundef %rx_cyc) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %5 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %7 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %9 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34.i.i = icmp sgt i32 %13, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %13, %if.else.i.while.body.i.i_crit_edge ]
  %14 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %bytes_read.036.i.i
  %17 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %18 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %14
  %add.i.i = add i32 %14, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %19 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %20, %8
  %21 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_pmtx_get_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_pmrx_get_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_hw_sched(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %vpd = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 2
  %3 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vpd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 104, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %8, i32 32296
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %10 = call i32 @llvm.bswap.i32(i32 %9) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %map = getelementptr inbounds %struct.cudbg_hw_sched, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %map, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %add.ptr.i28 = getelementptr i8, ptr %13, i32 32292
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !97
  %15 = lshr i32 %14, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %and = and i32 %15, 255
  %mode = getelementptr inbounds %struct.cudbg_hw_sched, ptr %6, i32 0, i32 3
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %mode, align 4
  %pace_tab = getelementptr inbounds %struct.cudbg_hw_sched, ptr %6, i32 0, i32 2
  call void @t4_read_pace_tbl(ptr noundef %1, ptr noundef %pace_tab) #8
  %arrayidx6 = getelementptr %struct.cudbg_hw_sched, ptr %6, i32 0, i32 1, i32 0
  call void @t4_get_tx_sched(ptr noundef %1, i32 noundef 0, ptr noundef %6, ptr noundef %arrayidx6, i1 noundef zeroext true) #8
  %arrayidx.1 = getelementptr [8 x i32], ptr %6, i32 0, i32 1
  %arrayidx6.1 = getelementptr %struct.cudbg_hw_sched, ptr %6, i32 0, i32 1, i32 1
  call void @t4_get_tx_sched(ptr noundef %1, i32 noundef 1, ptr noundef %arrayidx.1, ptr noundef %arrayidx6.1, i1 noundef zeroext true) #8
  %arrayidx.2 = getelementptr [8 x i32], ptr %6, i32 0, i32 2
  %arrayidx6.2 = getelementptr %struct.cudbg_hw_sched, ptr %6, i32 0, i32 1, i32 2
  call void @t4_get_tx_sched(ptr noundef %1, i32 noundef 2, ptr noundef %arrayidx.2, ptr noundef %arrayidx6.2, i1 noundef zeroext true) #8
  %arrayidx.3 = getelementptr [8 x i32], ptr %6, i32 0, i32 3
  %arrayidx6.3 = getelementptr %struct.cudbg_hw_sched, ptr %6, i32 0, i32 1, i32 3
  call void @t4_get_tx_sched(ptr noundef %1, i32 noundef 3, ptr noundef %arrayidx.3, ptr noundef %arrayidx6.3, i1 noundef zeroext true) #8
  %arrayidx.4 = getelementptr [8 x i32], ptr %6, i32 0, i32 4
  %arrayidx6.4 = getelementptr %struct.cudbg_hw_sched, ptr %6, i32 0, i32 1, i32 4
  call void @t4_get_tx_sched(ptr noundef %1, i32 noundef 4, ptr noundef %arrayidx.4, ptr noundef %arrayidx6.4, i1 noundef zeroext true) #8
  %arrayidx.5 = getelementptr [8 x i32], ptr %6, i32 0, i32 5
  %arrayidx6.5 = getelementptr %struct.cudbg_hw_sched, ptr %6, i32 0, i32 1, i32 5
  call void @t4_get_tx_sched(ptr noundef %1, i32 noundef 5, ptr noundef %arrayidx.5, ptr noundef %arrayidx6.5, i1 noundef zeroext true) #8
  %arrayidx.6 = getelementptr [8 x i32], ptr %6, i32 0, i32 6
  %arrayidx6.6 = getelementptr %struct.cudbg_hw_sched, ptr %6, i32 0, i32 1, i32 6
  call void @t4_get_tx_sched(ptr noundef %1, i32 noundef 6, ptr noundef %arrayidx.6, ptr noundef %arrayidx6.6, i1 noundef zeroext true) #8
  %arrayidx.7 = getelementptr [8 x i32], ptr %6, i32 0, i32 7
  %arrayidx6.7 = getelementptr %struct.cudbg_hw_sched, ptr %6, i32 0, i32 1, i32 7
  call void @t4_get_tx_sched(ptr noundef %1, i32 noundef 7, ptr noundef %arrayidx.7, ptr noundef %arrayidx6.7, i1 noundef zeroext true) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %17 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp eq i8 %18, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %19 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %21 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp34.i.i = icmp sgt i32 %25, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %25, %if.else.i.while.body.i.i_crit_edge ]
  %26 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %bytes_read.036.i.i
  %29 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %30 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %26
  %add.i.i = add i32 %26, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %31 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %32, %20
  %33 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ -32, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_read_pace_tbl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_get_tx_sched(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_tp_indirect(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip, align 8
  %5 = and i32 %4, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 80
  %. = select i1 %cmp.i.not, i32 21, i32 19
  %mul = mul nuw nsw i32 %., 144
  %call1 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %mul, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip, align 8
  %10 = and i32 %9, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %10)
  %cmp.i277.not = icmp eq i32 %10, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %10)
  %cmp.i279.not = icmp eq i32 %10, 96
  %spec.select = select i1 %cmp.i279.not, i32 12, i32 %.
  %n.1 = select i1 %cmp.i277.not, i32 11, i32 %spec.select
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %if.end4
  %i.0305 = phi i32 [ 0, %if.end4 ], [ %inc, %if.end50.for.body_crit_edge ]
  %ch_tp_pio.0303 = phi ptr [ %7, %if.end4 ], [ %incdec.ptr, %if.end50.for.body_crit_edge ]
  %outbuf = getelementptr inbounds %struct.ireg_buf, ptr %ch_tp_pio.0303, i32 0, i32 1
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip, align 8
  %13 = trunc i32 %12 to i8
  %trunc = and i8 %13, -16
  %14 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %trunc, label %for.body.if.end50_crit_edge [
    i8 80, label %if.then23
    i8 96, label %if.then36
  ]

for.body.if.end50_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [11 x [4 x i32]], ptr @t5_tp_pio_array, i32 0, i32 %i.0305
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %ch_tp_pio.0303 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ch_tp_pio.0303, align 4
  %arrayidx26 = getelementptr [11 x [4 x i32]], ptr @t5_tp_pio_array, i32 0, i32 %i.0305, i32 1
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx26, align 4
  %ireg_data = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.0303, i32 0, i32 1
  %20 = ptrtoint ptr %ireg_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ireg_data, align 4
  %arrayidx28 = getelementptr [11 x [4 x i32]], ptr @t5_tp_pio_array, i32 0, i32 %i.0305, i32 2
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %ireg_local_offset = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.0303, i32 0, i32 2
  %23 = ptrtoint ptr %ireg_local_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ireg_local_offset, align 4
  %arrayidx30 = getelementptr [11 x [4 x i32]], ptr @t5_tp_pio_array, i32 0, i32 %i.0305, i32 3
  br label %if.end50.sink.split

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37 = getelementptr [12 x [4 x i32]], ptr @t6_tp_pio_array, i32 0, i32 %i.0305
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx37, align 4
  %26 = ptrtoint ptr %ch_tp_pio.0303 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ch_tp_pio.0303, align 4
  %arrayidx41 = getelementptr [12 x [4 x i32]], ptr @t6_tp_pio_array, i32 0, i32 %i.0305, i32 1
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx41, align 4
  %ireg_data42 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.0303, i32 0, i32 1
  %29 = ptrtoint ptr %ireg_data42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ireg_data42, align 4
  %arrayidx44 = getelementptr [12 x [4 x i32]], ptr @t6_tp_pio_array, i32 0, i32 %i.0305, i32 2
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx44, align 4
  %ireg_local_offset45 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.0303, i32 0, i32 2
  %32 = ptrtoint ptr %ireg_local_offset45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ireg_local_offset45, align 4
  %arrayidx47 = getelementptr [12 x [4 x i32]], ptr @t6_tp_pio_array, i32 0, i32 %i.0305, i32 3
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %if.then36, %if.then23
  %arrayidx47.sink = phi ptr [ %arrayidx47, %if.then36 ], [ %arrayidx30, %if.then23 ]
  %33 = ptrtoint ptr %arrayidx47.sink to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx47.sink, align 4
  %ireg_offset_range48 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.0303, i32 0, i32 3
  %35 = ptrtoint ptr %ireg_offset_range48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ireg_offset_range48, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %for.body.if.end50_crit_edge
  %ireg_offset_range51 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.0303, i32 0, i32 3
  %36 = ptrtoint ptr %ireg_offset_range51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ireg_offset_range51, align 4
  %ireg_local_offset52 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.0303, i32 0, i32 2
  %38 = ptrtoint ptr %ireg_local_offset52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ireg_local_offset52, align 4
  call void @t4_tp_pio_read(ptr noundef %1, ptr noundef %outbuf, i32 noundef %37, i32 noundef %39, i1 noundef zeroext true) #8
  %incdec.ptr = getelementptr %struct.ireg_buf, ptr %ch_tp_pio.0303, i32 1
  %inc = add nuw nsw i32 %i.0305, 1
  %exitcond.not = icmp eq i32 %inc, %n.1
  br i1 %exitcond.not, label %for.end, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end50
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip, align 8
  %42 = and i32 %41, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %42)
  %cmp.i285.not = icmp eq i32 %42, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %42)
  %cmp.i287.not = icmp eq i32 %42, 96
  %43 = or i1 %cmp.i285.not, %cmp.i287.not
  %n.2 = select i1 %43, i32 1, i32 %n.1
  %umax318 = call i32 @llvm.umax.i32(i32 %n.2, i32 1)
  br label %for.body68

for.body68:                                       ; preds = %if.end110.for.body68_crit_edge, %for.end
  %i.1309 = phi i32 [ 0, %for.end ], [ %inc115, %if.end110.for.body68_crit_edge ]
  %ch_tp_pio.1307 = phi ptr [ %incdec.ptr, %for.end ], [ %incdec.ptr113, %if.end110.for.body68_crit_edge ]
  %outbuf72 = getelementptr inbounds %struct.ireg_buf, ptr %ch_tp_pio.1307, i32 0, i32 1
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chip, align 8
  %46 = trunc i32 %45 to i8
  %trunc315 = and i8 %46, -16
  %47 = zext i8 %trunc315 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %trunc315, label %for.body68.if.end110_crit_edge [
    i8 80, label %for.body68.if.end110.sink.split_crit_edge
    i8 96, label %if.then96
  ]

for.body68.if.end110.sink.split_crit_edge:        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.sink.split

for.body68.if.end110_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then96:                                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %if.then96, %for.body68.if.end110.sink.split_crit_edge
  %t6_tp_tm_pio_array.sink324 = phi ptr [ @t6_tp_tm_pio_array, %if.then96 ], [ @t5_tp_tm_pio_array, %for.body68.if.end110.sink.split_crit_edge ]
  %48 = ptrtoint ptr %ch_tp_pio.1307 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 32280, ptr %ch_tp_pio.1307, align 4
  %arrayidx101 = getelementptr [1 x [4 x i32]], ptr %t6_tp_tm_pio_array.sink324, i32 0, i32 %i.1309, i32 1
  %49 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx101, align 4
  %ireg_data102 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.1307, i32 0, i32 1
  %51 = ptrtoint ptr %ireg_data102 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ireg_data102, align 4
  %arrayidx104 = getelementptr [1 x [4 x i32]], ptr %t6_tp_tm_pio_array.sink324, i32 0, i32 %i.1309, i32 2
  %52 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx104, align 4
  %ireg_local_offset105 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.1307, i32 0, i32 2
  %54 = ptrtoint ptr %ireg_local_offset105 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ireg_local_offset105, align 4
  %arrayidx107 = getelementptr [1 x [4 x i32]], ptr %t6_tp_tm_pio_array.sink324, i32 0, i32 %i.1309, i32 3
  %55 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx107, align 4
  %ireg_offset_range108 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.1307, i32 0, i32 3
  %57 = ptrtoint ptr %ireg_offset_range108 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ireg_offset_range108, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %for.body68.if.end110_crit_edge
  %ireg_offset_range111 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.1307, i32 0, i32 3
  %58 = ptrtoint ptr %ireg_offset_range111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ireg_offset_range111, align 4
  %ireg_local_offset112 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.1307, i32 0, i32 2
  %60 = ptrtoint ptr %ireg_local_offset112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ireg_local_offset112, align 4
  call void @t4_tp_tm_pio_read(ptr noundef %1, ptr noundef %outbuf72, i32 noundef %59, i32 noundef %61, i1 noundef zeroext true) #8
  %incdec.ptr113 = getelementptr %struct.ireg_buf, ptr %ch_tp_pio.1307, i32 1
  %inc115 = add nuw nsw i32 %i.1309, 1
  %exitcond319.not = icmp eq i32 %inc115, %umax318
  br i1 %exitcond319.not, label %for.end116, label %if.end110.for.body68_crit_edge

if.end110.for.body68_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body68

for.end116:                                       ; preds = %if.end110
  %62 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chip, align 8
  %64 = and i32 %63, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %64)
  %cmp.i293.not = icmp eq i32 %64, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %64)
  %cmp.i295.not = icmp eq i32 %64, 96
  %65 = call i32 @llvm.umax.i32(i32 %n.2, i32 1)
  %66 = select i1 %cmp.i295.not, i32 6, i32 %65
  %umax320 = select i1 %cmp.i293.not, i32 9, i32 %66
  br label %for.body132

for.body132:                                      ; preds = %if.end174.for.body132_crit_edge, %for.end116
  %i.2313 = phi i32 [ 0, %for.end116 ], [ %inc179, %if.end174.for.body132_crit_edge ]
  %ch_tp_pio.2311 = phi ptr [ %incdec.ptr113, %for.end116 ], [ %incdec.ptr177, %if.end174.for.body132_crit_edge ]
  %outbuf136 = getelementptr inbounds %struct.ireg_buf, ptr %ch_tp_pio.2311, i32 0, i32 1
  %67 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chip, align 8
  %69 = trunc i32 %68 to i8
  %trunc316 = and i8 %69, -16
  %70 = zext i8 %trunc316 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %trunc316, label %for.body132.if.end174_crit_edge [
    i8 80, label %if.then142
    i8 96, label %if.then160
  ]

for.body132.if.end174_crit_edge:                  ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then142:                                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx143 = getelementptr [9 x [4 x i32]], ptr @t5_tp_mib_index_array, i32 0, i32 %i.2313
  %71 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx143, align 4
  %73 = ptrtoint ptr %ch_tp_pio.2311 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ch_tp_pio.2311, align 4
  %arrayidx147 = getelementptr [9 x [4 x i32]], ptr @t5_tp_mib_index_array, i32 0, i32 %i.2313, i32 1
  %74 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx147, align 4
  %ireg_data148 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.2311, i32 0, i32 1
  %76 = ptrtoint ptr %ireg_data148 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %ireg_data148, align 4
  %arrayidx150 = getelementptr [9 x [4 x i32]], ptr @t5_tp_mib_index_array, i32 0, i32 %i.2313, i32 2
  %77 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx150, align 4
  %ireg_local_offset151 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.2311, i32 0, i32 2
  %79 = ptrtoint ptr %ireg_local_offset151 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %ireg_local_offset151, align 4
  %arrayidx153 = getelementptr [9 x [4 x i32]], ptr @t5_tp_mib_index_array, i32 0, i32 %i.2313, i32 3
  br label %if.end174.sink.split

if.then160:                                       ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx161 = getelementptr [6 x [4 x i32]], ptr @t6_tp_mib_index_array, i32 0, i32 %i.2313
  %80 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx161, align 4
  %82 = ptrtoint ptr %ch_tp_pio.2311 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %ch_tp_pio.2311, align 4
  %arrayidx165 = getelementptr [6 x [4 x i32]], ptr @t6_tp_mib_index_array, i32 0, i32 %i.2313, i32 1
  %83 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx165, align 4
  %ireg_data166 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.2311, i32 0, i32 1
  %85 = ptrtoint ptr %ireg_data166 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %ireg_data166, align 4
  %arrayidx168 = getelementptr [6 x [4 x i32]], ptr @t6_tp_mib_index_array, i32 0, i32 %i.2313, i32 2
  %86 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx168, align 4
  %ireg_local_offset169 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.2311, i32 0, i32 2
  %88 = ptrtoint ptr %ireg_local_offset169 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %ireg_local_offset169, align 4
  %arrayidx171 = getelementptr [6 x [4 x i32]], ptr @t6_tp_mib_index_array, i32 0, i32 %i.2313, i32 3
  br label %if.end174.sink.split

if.end174.sink.split:                             ; preds = %if.then160, %if.then142
  %arrayidx171.sink = phi ptr [ %arrayidx171, %if.then160 ], [ %arrayidx153, %if.then142 ]
  %89 = ptrtoint ptr %arrayidx171.sink to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx171.sink, align 4
  %ireg_offset_range172 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.2311, i32 0, i32 3
  %91 = ptrtoint ptr %ireg_offset_range172 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %ireg_offset_range172, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.end174.sink.split, %for.body132.if.end174_crit_edge
  %ireg_offset_range175 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.2311, i32 0, i32 3
  %92 = ptrtoint ptr %ireg_offset_range175 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ireg_offset_range175, align 4
  %ireg_local_offset176 = getelementptr inbounds %struct.ireg_field, ptr %ch_tp_pio.2311, i32 0, i32 2
  %94 = ptrtoint ptr %ireg_local_offset176 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ireg_local_offset176, align 4
  call void @t4_tp_mib_read(ptr noundef %1, ptr noundef %outbuf136, i32 noundef %93, i32 noundef %95, i1 noundef zeroext true) #8
  %incdec.ptr177 = getelementptr %struct.ireg_buf, ptr %ch_tp_pio.2311, i32 1
  %inc179 = add nuw nsw i32 %i.2313, 1
  %exitcond321.not = icmp eq i32 %inc179, %umax320
  br i1 %exitcond321.not, label %for.end180, label %if.end174.for.body132_crit_edge

if.end174.for.body132_crit_edge:                  ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body132

for.end180:                                       ; preds = %if.end174
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %96 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %97)
  %cmp.i301 = icmp eq i8 %97, 1
  br i1 %cmp.i301, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %for.end180
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %98 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %100 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %103 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp34.i.i = icmp sgt i32 %104, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %104, %if.else.i.while.body.i.i_crit_edge ]
  %105 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %107, i32 %bytes_read.036.i.i
  %108 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %109 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %105, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %105
  %add.i.i = add i32 %105, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %110 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %111, %99
  %112 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_tp_pio_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_tp_tm_pio_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_tp_mib_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_sge_indirect(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 20
  %3 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nports, align 4
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp137.not = icmp eq i8 %4, 0
  br i1 %cmp137.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %arrayidx159 = getelementptr %struct.adapter, ptr %1, i32 0, i32 23, i32 0
  %5 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx159, align 4
  %state.i160 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i160 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i160, align 4
  %and1.i.i161 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i161)
  %tobool.i.not162 = icmp eq i32 %and1.i.i161, 0
  br i1 %tobool.i.not162, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.0138163 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.0138163, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end.loopexit_crit_edge, label %for.body

for.cond.for.end.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.loopexit

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.adapter, ptr %1, i32 0, i32 23, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %12, 1
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.cond_crit_edge, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end.loopexit:                                 ; preds = %for.body.for.end.loopexit_crit_edge, %for.cond.for.end.loopexit_crit_edge
  %spec.select.ph = phi i32 [ 4536, %for.cond.for.end.loopexit_crit_edge ], [ 288, %for.body.for.end.loopexit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.le = icmp ult i32 %inc, %conv
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %for.body.preheader.for.end_crit_edge ], [ %cmp.le, %for.end.loopexit ]
  %spec.select = phi i32 [ 4536, %entry.for.end_crit_edge ], [ 288, %for.body.preheader.for.end_crit_edge ], [ %spec.select.ph, %for.end.loopexit ]
  %call6 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %spec.select, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %outbuf = getelementptr inbounds %struct.ireg_buf, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4300, ptr %14, align 4
  %ireg_data = getelementptr inbounds %struct.ireg_field, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %ireg_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4304, ptr %ireg_data, align 4
  %ireg_local_offset = getelementptr inbounds %struct.ireg_field, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %ireg_local_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ireg_local_offset, align 4
  %ireg_offset_range = getelementptr inbounds %struct.ireg_field, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %ireg_offset_range to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %ireg_offset_range, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 4300, i32 noundef 4304, ptr noundef %outbuf, i32 noundef 16, i32 noundef 0) #8
  %incdec.ptr = getelementptr %struct.ireg_buf, ptr %14, i32 1
  %outbuf.1 = getelementptr %struct.ireg_buf, ptr %14, i32 1, i32 1
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4300, ptr %incdec.ptr, align 4
  %ireg_data.1 = getelementptr %struct.ireg_buf, ptr %14, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %ireg_data.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4308, ptr %ireg_data.1, align 4
  %ireg_local_offset.1 = getelementptr %struct.ireg_buf, ptr %14, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %ireg_local_offset.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ireg_local_offset.1, align 4
  %ireg_offset_range.1 = getelementptr %struct.ireg_buf, ptr %14, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %ireg_offset_range.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %ireg_offset_range.1, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 4300, i32 noundef 4308, ptr noundef %outbuf.1, i32 noundef 16, i32 noundef 0) #8
  %incdec.ptr.1 = getelementptr %struct.ireg_buf, ptr %14, i32 2
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chip, align 8
  %25 = and i32 %24, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %25)
  %cmp30 = icmp ult i32 %25, 81
  %brmerge = select i1 %cmp30, i1 true, i1 %cmp.lcssa
  br i1 %brmerge, label %if.end9.if.end65_crit_edge, label %if.then33

if.end9.if.end65_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then33:                                        ; preds = %if.end9
  %26 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4688, ptr %incdec.ptr.1, align 4
  %arrayidx40 = getelementptr %struct.ireg_buf, ptr %14, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4672, ptr %arrayidx40, align 4
  %arrayidx40.1 = getelementptr %struct.ireg_buf, ptr %14, i32 2, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4676, ptr %arrayidx40.1, align 4
  %arrayidx40.2 = getelementptr %struct.ireg_buf, ptr %14, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4680, ptr %arrayidx40.2, align 4
  %arrayidx40.3 = getelementptr %struct.ireg_buf, ptr %14, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4684, ptr %arrayidx40.3, align 4
  %arrayidx3.i = getelementptr %struct.ireg_buf, ptr %14, i32 2, i32 0, i32 1
  %arrayidx3.1.i = getelementptr %struct.ireg_buf, ptr %14, i32 2, i32 0, i32 2
  %arrayidx3.2.i = getelementptr %struct.ireg_buf, ptr %14, i32 2, i32 0, i32 3
  %arrayidx3.3.i = getelementptr %struct.ireg_buf, ptr %14, i32 2, i32 1
  br label %for.body47

for.cond51.preheader:                             ; preds = %for.body47
  %vfcount = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 23, i32 4
  %31 = ptrtoint ptr %vfcount to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vfcount, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp54148.not = icmp eq i16 %32, 0
  br i1 %cmp54148.not, label %for.cond51.preheader.for.end59_crit_edge, label %for.cond51.preheader.for.body56_crit_edge

for.cond51.preheader.for.body56_crit_edge:        ; preds = %for.cond51.preheader
  br label %for.body56

for.cond51.preheader.for.end59_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %if.then33
  %i.3146 = phi i32 [ 0, %if.then33 ], [ %inc49, %for.body47.for.body47_crit_edge ]
  %arrayidx.i = getelementptr %struct.sge_qbase_reg_field, ptr %incdec.ptr.1, i32 0, i32 2, i32 %i.3146
  %33 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %incdec.ptr.1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %35 = call i32 @llvm.bswap.i32(i32 %i.3146) #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 128
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #8, !srcloc !100
  %38 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.i, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  %add.ptr.i14.i = getelementptr i8, ptr %41, i32 %39
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #8, !srcloc !97
  %43 = call i32 @llvm.bswap.i32(i32 %42) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 1
  %45 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx3.1.i, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 128
  %add.ptr.i14.1.i = getelementptr i8, ptr %48, i32 %46
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.1.i) #8, !srcloc !97
  %50 = call i32 @llvm.bswap.i32(i32 %49) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %51 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %incdec.ptr.i, align 4
  %incdec.ptr.1.i = getelementptr i32, ptr %arrayidx.i, i32 2
  %52 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx3.2.i, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 128
  %add.ptr.i14.2.i = getelementptr i8, ptr %55, i32 %53
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.2.i) #8, !srcloc !97
  %57 = call i32 @llvm.bswap.i32(i32 %56) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %58 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %incdec.ptr.1.i, align 4
  %incdec.ptr.2.i = getelementptr i32, ptr %arrayidx.i, i32 3
  %59 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx3.3.i, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 128
  %add.ptr.i14.3.i = getelementptr i8, ptr %62, i32 %60
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.3.i) #8, !srcloc !97
  %64 = call i32 @llvm.bswap.i32(i32 %63) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %65 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %incdec.ptr.2.i, align 4
  %inc49 = add nuw nsw i32 %i.3146, 1
  %exitcond154.not = icmp eq i32 %inc49, 8
  br i1 %exitcond154.not, label %for.cond51.preheader, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body47

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.cond51.preheader.for.body56_crit_edge
  %i.4149 = phi i32 [ %inc58, %for.body56.for.body56_crit_edge ], [ 0, %for.cond51.preheader.for.body56_crit_edge ]
  %arrayidx1.i121 = getelementptr %struct.sge_qbase_reg_field, ptr %incdec.ptr.1, i32 0, i32 3, i32 %i.4149
  %add.i122 = add nuw nsw i32 %i.4149, 8
  %66 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %incdec.ptr.1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %68 = call i32 @llvm.bswap.i32(i32 %add.i122) #8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 128
  %add.ptr.i.i123 = getelementptr i8, ptr %70, i32 %67
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 %68) #8, !srcloc !100
  %71 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx3.i, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 128
  %add.ptr.i14.i125 = getelementptr i8, ptr %74, i32 %72
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i125) #8, !srcloc !97
  %76 = call i32 @llvm.bswap.i32(i32 %75) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %77 = ptrtoint ptr %arrayidx1.i121 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx1.i121, align 4
  %incdec.ptr.i126 = getelementptr i32, ptr %arrayidx1.i121, i32 1
  %78 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx3.1.i, align 4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 128
  %add.ptr.i14.1.i128 = getelementptr i8, ptr %81, i32 %79
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.1.i128) #8, !srcloc !97
  %83 = call i32 @llvm.bswap.i32(i32 %82) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %84 = ptrtoint ptr %incdec.ptr.i126 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %incdec.ptr.i126, align 4
  %incdec.ptr.1.i129 = getelementptr i32, ptr %arrayidx1.i121, i32 2
  %85 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx3.2.i, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 128
  %add.ptr.i14.2.i131 = getelementptr i8, ptr %88, i32 %86
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.2.i131) #8, !srcloc !97
  %90 = call i32 @llvm.bswap.i32(i32 %89) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %91 = ptrtoint ptr %incdec.ptr.1.i129 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %incdec.ptr.1.i129, align 4
  %incdec.ptr.2.i132 = getelementptr i32, ptr %arrayidx1.i121, i32 3
  %92 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx3.3.i, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 128
  %add.ptr.i14.3.i134 = getelementptr i8, ptr %95, i32 %93
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.3.i134) #8, !srcloc !97
  %97 = call i32 @llvm.bswap.i32(i32 %96) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %98 = ptrtoint ptr %incdec.ptr.2.i132 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %incdec.ptr.2.i132, align 4
  %inc58 = add nuw nsw i32 %i.4149, 1
  %99 = ptrtoint ptr %vfcount to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vfcount, align 2
  %conv53 = zext i16 %100 to i32
  %cmp54 = icmp ult i32 %inc58, %conv53
  br i1 %cmp54, label %for.body56.for.body56_crit_edge, label %for.end59.loopexit

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56

for.end59.loopexit:                               ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = zext i16 %100 to i32
  br label %for.end59

for.end59:                                        ; preds = %for.end59.loopexit, %for.cond51.preheader.for.end59_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end59.loopexit ], [ 0, %for.cond51.preheader.for.end59_crit_edge ]
  %vfcount64 = getelementptr %struct.ireg_buf, ptr %14, i32 31, i32 1, i32 13
  %101 = ptrtoint ptr %vfcount64 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.lcssa, ptr %vfcount64, align 4
  br label %if.end65

if.end65:                                         ; preds = %for.end59, %if.end9.if.end65_crit_edge
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %102 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %103)
  %cmp.i = icmp eq i8 %103, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %104 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %106 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp34.i.i = icmp sgt i32 %110, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %110, %if.else.i.while.body.i.i_crit_edge ]
  %111 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %112 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %113, i32 %bytes_read.036.i.i
  %114 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr.i.i135, ptr %data4.i.i, align 4
  %115 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %111, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %111
  %add.i.i = add i32 %111, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %116 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %117, %105
  %118 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call6, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_read_indirect(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_ulprx_la(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 16388, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void @t4_ulprx_read_la(ptr noundef %1, ptr noundef %4) #8
  %size = getelementptr inbounds %struct.cudbg_ulprx_la, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 512, ptr %size, align 4
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %6 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %10 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34.i.i = icmp sgt i32 %14, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %14, %if.else.i.while.body.i.i_crit_edge ]
  %15 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %bytes_read.036.i.i
  %18 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %19 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %15
  %add.i.i = add i32 %15, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %20 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %21, %9
  %22 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_ulprx_read_la(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_tp_la(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 1032, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %6, i32 32468
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %8 = lshr i32 %7, 22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %and = and i32 %8, 3
  %mode = getelementptr inbounds %struct.cudbg_tp_la, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %mode, align 4
  %data2 = getelementptr inbounds %struct.cudbg_tp_la, ptr %4, i32 0, i32 2
  call void @t4_tp_read_la(ptr noundef %1, ptr noundef %data2, ptr noundef null) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %10 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp eq i8 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %12 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %14 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp34.i.i = icmp sgt i32 %18, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %18, %if.else.i.while.body.i.i_crit_edge ]
  %19 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %bytes_read.036.i.i
  %22 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %23 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %19
  %add.i.i = add i32 %19, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %24 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %25, %13
  %26 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_tp_read_la(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_meminfo(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 560, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -856838143, ptr %4, align 4
  %revision = getelementptr inbounds %struct.cudbg_ver_hdr, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %revision, align 4
  %size = getelementptr inbounds %struct.cudbg_ver_hdr, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 552, ptr %size, align 2
  %8 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 8
  %call2 = call i32 @cudbg_fill_meminfo(ptr noundef %1, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %10 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp eq i8 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %12 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %14 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp34.i.i = icmp sgt i32 %18, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %18, %if.else.i.while.body.i.i_crit_edge ]
  %19 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %bytes_read.036.i.i
  %22 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %23 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %19
  %add.i.i = add i32 %19, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %24 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %25, %13
  %26 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.then4
  %retval.0.ph = phi i32 [ %call2, %if.then4 ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cim_pif_la(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 3076, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %4, align 4
  %data2 = getelementptr inbounds %struct.cudbg_cim_pif_la, ptr %4, i32 0, i32 1
  %add.ptr = getelementptr %struct.cudbg_cim_pif_la, ptr %4, i32 385
  call void @t4_cim_read_pif_la(ptr noundef %1, ptr noundef %data2, ptr noundef %add.ptr, ptr noundef null, ptr noundef null) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %6 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %10 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34.i.i = icmp sgt i32 %14, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %14, %if.else.i.while.body.i.i_crit_edge ]
  %15 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %bytes_read.036.i.i
  %18 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %19 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %15
  %add.i.i = add i32 %15, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %20 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %21, %9
  %22 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_cim_read_pif_la(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_clk_info(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %vpd = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 2
  %3 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vpd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 88, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vpd, align 8
  %div = udiv i32 1000000000, %8
  %cclk_ps = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 10
  %9 = ptrtoint ptr %cclk_ps to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %cclk_ps, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %11, i32 32144
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %13 = call i32 @llvm.bswap.i32(i32 %12) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %res = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 9
  %14 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %res, align 4
  %shr = lshr i32 %13, 16
  %and = and i32 %shr, 255
  %tre = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 11
  %15 = ptrtoint ptr %tre to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %tre, align 4
  %and11 = and i32 %13, 255
  %dack_re = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 12
  %16 = ptrtoint ptr %dack_re to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and11, ptr %dack_re, align 8
  %17 = ptrtoint ptr %cclk_ps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cclk_ps, align 8
  %shl = shl i32 %18, %and
  %div14 = udiv i32 %shl, 1000000
  %conv = zext i32 %div14 to i64
  %shl17 = shl i32 %18, %and11
  %div18 = udiv i32 %shl17, 1000000
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %add.ptr.i91 = getelementptr i8, ptr %20, i32 32180
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #8, !srcloc !97
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %mul = mul i32 %22, %div18
  %dack_timer = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 8
  %23 = ptrtoint ptr %dack_timer to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %dack_timer, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %add.ptr.i92 = getelementptr i8, ptr %25, i32 32152
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #8, !srcloc !97
  %27 = call i32 @llvm.bswap.i32(i32 %26) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv21 = zext i32 %27 to i64
  %mul22 = mul nuw nsw i64 %conv21, %conv
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %mul22, ptr %6, align 8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 128
  %add.ptr.i93 = getelementptr i8, ptr %30, i32 32156
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #8, !srcloc !97
  %32 = call i32 @llvm.bswap.i32(i32 %31) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv24 = zext i32 %32 to i64
  %mul25 = mul nuw nsw i64 %conv24, %conv
  %retransmit_max = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 1
  %33 = ptrtoint ptr %retransmit_max to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %mul25, ptr %retransmit_max, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 128
  %add.ptr.i94 = getelementptr i8, ptr %35, i32 32160
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #8, !srcloc !97
  %37 = call i32 @llvm.bswap.i32(i32 %36) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv27 = zext i32 %37 to i64
  %mul28 = mul nuw nsw i64 %conv27, %conv
  %persist_timer_min = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 2
  %38 = ptrtoint ptr %persist_timer_min to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %mul28, ptr %persist_timer_min, align 8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 128
  %add.ptr.i95 = getelementptr i8, ptr %40, i32 32164
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #8, !srcloc !97
  %42 = call i32 @llvm.bswap.i32(i32 %41) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv30 = zext i32 %42 to i64
  %mul31 = mul nuw nsw i64 %conv30, %conv
  %persist_timer_max = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 3
  %43 = ptrtoint ptr %persist_timer_max to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %mul31, ptr %persist_timer_max, align 8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 128
  %add.ptr.i96 = getelementptr i8, ptr %45, i32 32168
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #8, !srcloc !97
  %47 = call i32 @llvm.bswap.i32(i32 %46) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv33 = zext i32 %47 to i64
  %mul34 = mul nuw nsw i64 %conv33, %conv
  %keepalive_idle_timer = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 4
  %48 = ptrtoint ptr %keepalive_idle_timer to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %mul34, ptr %keepalive_idle_timer, align 8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 128
  %add.ptr.i97 = getelementptr i8, ptr %50, i32 32172
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #8, !srcloc !97
  %52 = call i32 @llvm.bswap.i32(i32 %51) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv36 = zext i32 %52 to i64
  %mul37 = mul nuw nsw i64 %conv36, %conv
  %keepalive_interval = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 5
  %53 = ptrtoint ptr %keepalive_interval to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %mul37, ptr %keepalive_interval, align 8
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 128
  %add.ptr.i98 = getelementptr i8, ptr %55, i32 32176
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %57 = and i32 %56, -65536
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %narrow = mul nuw nsw i32 %58, %div14
  %mul42 = zext i32 %narrow to i64
  %initial_srtt = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 6
  %59 = ptrtoint ptr %initial_srtt to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %mul42, ptr %initial_srtt, align 8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 128
  %add.ptr.i99 = getelementptr i8, ptr %61, i32 32184
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #8, !srcloc !97
  %63 = call i32 @llvm.bswap.i32(i32 %62) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv44 = zext i32 %63 to i64
  %mul45 = mul nuw nsw i64 %conv44, %conv
  %finwait2_timer = getelementptr inbounds %struct.cudbg_clk_info, ptr %6, i32 0, i32 7
  %64 = ptrtoint ptr %finwait2_timer to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %mul45, ptr %finwait2_timer, align 8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %65 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp.i = icmp eq i8 %66, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %67 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %69 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp34.i.i = icmp sgt i32 %73, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %73, %if.else.i.while.body.i.i_crit_edge ]
  %74 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 %bytes_read.036.i.i
  %77 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %78 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %74, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %74
  %add.i.i = add i32 %74, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %79 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %80, %68
  %81 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ -32, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_pcie_indirect(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 864, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %outbuf = getelementptr inbounds %struct.ireg_buf, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 23044, ptr %4, align 4
  %ireg_data = getelementptr inbounds %struct.ireg_field, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %ireg_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 23052, ptr %ireg_data, align 4
  %ireg_local_offset = getelementptr inbounds %struct.ireg_field, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %ireg_local_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ireg_local_offset, align 4
  %ireg_offset_range = getelementptr inbounds %struct.ireg_field, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %ireg_offset_range to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %ireg_offset_range, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 23044, i32 noundef 23052, ptr noundef %outbuf, i32 noundef 32, i32 noundef 0) #8
  %incdec.ptr = getelementptr %struct.ireg_buf, ptr %4, i32 1
  %outbuf.1 = getelementptr %struct.ireg_buf, ptr %4, i32 1, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 23044, ptr %incdec.ptr, align 4
  %ireg_data.1 = getelementptr %struct.ireg_buf, ptr %4, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %ireg_data.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 23052, ptr %ireg_data.1, align 4
  %ireg_local_offset.1 = getelementptr %struct.ireg_buf, ptr %4, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %ireg_local_offset.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 33, ptr %ireg_local_offset.1, align 4
  %ireg_offset_range.1 = getelementptr %struct.ireg_buf, ptr %4, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %ireg_offset_range.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %ireg_offset_range.1, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 23044, i32 noundef 23052, ptr noundef %outbuf.1, i32 noundef 32, i32 noundef 33) #8
  %incdec.ptr.1 = getelementptr %struct.ireg_buf, ptr %4, i32 2
  %outbuf.2 = getelementptr %struct.ireg_buf, ptr %4, i32 2, i32 1
  %13 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 23044, ptr %incdec.ptr.1, align 4
  %ireg_data.2 = getelementptr %struct.ireg_buf, ptr %4, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %ireg_data.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 23052, ptr %ireg_data.2, align 4
  %ireg_local_offset.2 = getelementptr %struct.ireg_buf, ptr %4, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %ireg_local_offset.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65, ptr %ireg_local_offset.2, align 4
  %ireg_offset_range.2 = getelementptr %struct.ireg_buf, ptr %4, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %ireg_offset_range.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %ireg_offset_range.2, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 23044, i32 noundef 23052, ptr noundef %outbuf.2, i32 noundef 16, i32 noundef 65) #8
  %incdec.ptr.2 = getelementptr %struct.ireg_buf, ptr %4, i32 3
  %outbuf19 = getelementptr %struct.ireg_buf, ptr %4, i32 3, i32 1
  %17 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 23056, ptr %incdec.ptr.2, align 4
  %ireg_data26 = getelementptr %struct.ireg_buf, ptr %4, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %ireg_data26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 23064, ptr %ireg_data26, align 4
  %ireg_local_offset29 = getelementptr %struct.ireg_buf, ptr %4, i32 3, i32 0, i32 2
  %19 = ptrtoint ptr %ireg_local_offset29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ireg_local_offset29, align 4
  %ireg_offset_range32 = getelementptr %struct.ireg_buf, ptr %4, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %ireg_offset_range32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %ireg_offset_range32, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 23056, i32 noundef 23064, ptr noundef %outbuf19, i32 noundef 32, i32 noundef 0) #8
  %incdec.ptr37 = getelementptr %struct.ireg_buf, ptr %4, i32 4
  %outbuf19.1 = getelementptr %struct.ireg_buf, ptr %4, i32 4, i32 1
  %21 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 23056, ptr %incdec.ptr37, align 4
  %ireg_data26.1 = getelementptr %struct.ireg_buf, ptr %4, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %ireg_data26.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 23064, ptr %ireg_data26.1, align 4
  %ireg_local_offset29.1 = getelementptr %struct.ireg_buf, ptr %4, i32 4, i32 0, i32 2
  %23 = ptrtoint ptr %ireg_local_offset29.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 33, ptr %ireg_local_offset29.1, align 4
  %ireg_offset_range32.1 = getelementptr %struct.ireg_buf, ptr %4, i32 4, i32 0, i32 3
  %24 = ptrtoint ptr %ireg_offset_range32.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 24, ptr %ireg_offset_range32.1, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 23056, i32 noundef 23064, ptr noundef %outbuf19.1, i32 noundef 24, i32 noundef 33) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %25 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i = icmp eq i8 %26, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %27 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %29 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp34.i.i = icmp sgt i32 %33, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %33, %if.else.i.while.body.i.i_crit_edge ]
  %34 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %bytes_read.036.i.i
  %37 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %38 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %34, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %34
  %add.i.i = add i32 %34, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %39 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %40, %28
  %41 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_pm_indirect(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 576, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %outbuf = getelementptr inbounds %struct.ireg_buf, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 36816, ptr %4, align 4
  %ireg_data = getelementptr inbounds %struct.ireg_field, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %ireg_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 36820, ptr %ireg_data, align 4
  %ireg_local_offset = getelementptr inbounds %struct.ireg_field, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %ireg_local_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %ireg_local_offset, align 4
  %ireg_offset_range = getelementptr inbounds %struct.ireg_field, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %ireg_offset_range to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %ireg_offset_range, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 36816, i32 noundef 36820, ptr noundef %outbuf, i32 noundef 32, i32 noundef 65536) #8
  %incdec.ptr = getelementptr %struct.ireg_buf, ptr %4, i32 1
  %outbuf.1 = getelementptr %struct.ireg_buf, ptr %4, i32 1, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 36816, ptr %incdec.ptr, align 4
  %ireg_data.1 = getelementptr %struct.ireg_buf, ptr %4, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %ireg_data.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 36820, ptr %ireg_data.1, align 4
  %ireg_local_offset.1 = getelementptr %struct.ireg_buf, ptr %4, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %ireg_local_offset.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65569, ptr %ireg_local_offset.1, align 4
  %ireg_offset_range.1 = getelementptr %struct.ireg_buf, ptr %4, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %ireg_offset_range.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 13, ptr %ireg_offset_range.1, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 36816, i32 noundef 36820, ptr noundef %outbuf.1, i32 noundef 13, i32 noundef 65569) #8
  %incdec.ptr.1 = getelementptr %struct.ireg_buf, ptr %4, i32 2
  %outbuf19 = getelementptr %struct.ireg_buf, ptr %4, i32 2, i32 1
  %13 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36848, ptr %incdec.ptr.1, align 4
  %ireg_data26 = getelementptr %struct.ireg_buf, ptr %4, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %ireg_data26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 36852, ptr %ireg_data26, align 4
  %ireg_local_offset29 = getelementptr %struct.ireg_buf, ptr %4, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %ireg_local_offset29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65536, ptr %ireg_local_offset29, align 4
  %ireg_offset_range32 = getelementptr %struct.ireg_buf, ptr %4, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %ireg_offset_range32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %ireg_offset_range32, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 36848, i32 noundef 36852, ptr noundef %outbuf19, i32 noundef 32, i32 noundef 65536) #8
  %incdec.ptr37 = getelementptr %struct.ireg_buf, ptr %4, i32 3
  %outbuf19.1 = getelementptr %struct.ireg_buf, ptr %4, i32 3, i32 1
  %17 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 36848, ptr %incdec.ptr37, align 4
  %ireg_data26.1 = getelementptr %struct.ireg_buf, ptr %4, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %ireg_data26.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 36852, ptr %ireg_data26.1, align 4
  %ireg_local_offset29.1 = getelementptr %struct.ireg_buf, ptr %4, i32 3, i32 0, i32 2
  %19 = ptrtoint ptr %ireg_local_offset29.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65569, ptr %ireg_local_offset29.1, align 4
  %ireg_offset_range32.1 = getelementptr %struct.ireg_buf, ptr %4, i32 3, i32 0, i32 3
  %20 = ptrtoint ptr %ireg_offset_range32.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 29, ptr %ireg_offset_range32.1, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 36848, i32 noundef 36852, ptr noundef %outbuf19.1, i32 noundef 29, i32 noundef 65569) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %21 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp.i = icmp eq i8 %22, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %23 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %25 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp34.i.i = icmp sgt i32 %29, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %29, %if.else.i.while.body.i.i_crit_edge ]
  %30 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %bytes_read.036.i.i
  %33 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %34 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %30
  %add.i.i = add i32 %30, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %35 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %36, %24
  %37 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_tid(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  %para = alloca [2 x i32], align 4
  %val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %para) #8
  %3 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %para, align 4, !annotation !102
  %4 = getelementptr inbounds [2 x i32], ptr %para, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !102
  %7 = getelementptr inbounds [2 x i32], ptr %val, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !102
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 156, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %tid2 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -856838143, ptr %10, align 4
  %revision = getelementptr inbounds %struct.cudbg_ver_hdr, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %revision, align 4
  %size = getelementptr inbounds %struct.cudbg_ver_hdr, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 148, ptr %size, align 2
  %14 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdbg_init, align 4
  %flags.i = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.fill_tid_crit_edge, label %is_fw_attached.exit

if.end.fill_tid_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill_tid

is_fw_attached.exit:                              ; preds = %if.end
  %use_bd.i = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 62
  %18 = ptrtoint ptr %use_bd.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use_bd.i, align 128, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %tobool6.not = icmp eq i8 %19, 1
  br i1 %tobool6.not, label %is_fw_attached.exit.fill_tid_crit_edge, label %if.end8

is_fw_attached.exit.fill_tid_crit_edge:           ; preds = %is_fw_attached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill_tid

if.end8:                                          ; preds = %is_fw_attached.exit
  %20 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 36634624, ptr %para, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 36700160, ptr %4, align 4
  %mbox = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbox, align 8
  %pf = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pf, align 4
  %call11 = call i32 @t4_query_params(ptr noundef %1, i32 noundef %23, i32 noundef %25, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %para, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call11, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %uotid_base = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 11
  %29 = ptrtoint ptr %uotid_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %uotid_base, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %7, align 4
  %sub = sub i32 1, %28
  %add = add i32 %sub, %31
  %nuotids = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 12
  %32 = ptrtoint ptr %nuotids to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %nuotids, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip, align 8
  %35 = trunc i32 %34 to i8
  %trunc = and i8 %35, -16
  %36 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %trunc, label %if.end13.fill_tid_crit_edge [
    i8 80, label %if.then19
    i8 96, label %if.then25
  ]

if.end13.fill_tid_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill_tid

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %38, i32 105496
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %div142 = lshr i32 %40, 2
  %sb = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 13
  %41 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div142, ptr %sb, align 4
  br label %fill_tid

if.then25:                                        ; preds = %if.end13
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 128
  %add.ptr.i145 = getelementptr i8, ptr %43, i32 105488
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #8, !srcloc !97
  %45 = call i32 @llvm.bswap.i32(i32 %44) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %tid_start = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 2
  %46 = ptrtoint ptr %tid_start to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tid_start, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 128
  %add.ptr.i146 = getelementptr i8, ptr %48, i32 105496
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #8, !srcloc !97
  %50 = call i32 @llvm.bswap.i32(i32 %49) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %sb28 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 13
  %51 = ptrtoint ptr %sb28 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %sb28, align 4
  %52 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 36831232, ptr %para, align 4
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 36896768, ptr %4, align 4
  %54 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mbox, align 8
  %56 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pf, align 4
  %call35 = call i32 @t4_query_params(ptr noundef %1, i32 noundef %55, i32 noundef %57, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %para, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call35, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end39:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  %hpftid_base = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 18
  %61 = ptrtoint ptr %hpftid_base to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %hpftid_base, align 4
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %7, align 4
  %sub43 = sub i32 1, %60
  %add44 = add i32 %sub43, %63
  %nhpftids = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 19
  %64 = ptrtoint ptr %nhpftids to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add44, ptr %nhpftids, align 4
  br label %fill_tid

fill_tid:                                         ; preds = %if.end39, %if.then19, %if.end13.fill_tid_crit_edge, %is_fw_attached.exit.fill_tid_crit_edge, %if.end.fill_tid_crit_edge
  %ntids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 2
  %65 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ntids, align 8
  %67 = ptrtoint ptr %tid2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %tid2, align 4
  %nstids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 5
  %68 = ptrtoint ptr %nstids to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nstids, align 4
  %nstids49 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %nstids49 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %nstids49, align 4
  %stid_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 6
  %71 = ptrtoint ptr %stid_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stid_base, align 8
  %stid_base51 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 2
  %73 = ptrtoint ptr %stid_base51 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %stid_base51, align 4
  %hash_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 8
  %74 = ptrtoint ptr %hash_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hash_base, align 32
  %hash_base53 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %hash_base53 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %hash_base53, align 4
  %natids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 10
  %77 = ptrtoint ptr %natids to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %natids, align 8
  %natids55 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 4
  %79 = ptrtoint ptr %natids55 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %natids55, align 4
  %nftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 18
  %80 = ptrtoint ptr %nftids to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nftids, align 8
  %nftids57 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 5
  %82 = ptrtoint ptr %nftids57 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %nftids57, align 4
  %ftid_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 19
  %83 = ptrtoint ptr %ftid_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ftid_base, align 4
  %ftid_base59 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 6
  %85 = ptrtoint ptr %ftid_base59 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %ftid_base59, align 4
  %aftid_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 20
  %86 = ptrtoint ptr %aftid_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %aftid_base, align 16
  %aftid_base61 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 7
  %88 = ptrtoint ptr %aftid_base61 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %aftid_base61, align 4
  %aftid_end = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 21
  %89 = ptrtoint ptr %aftid_end to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %aftid_end, align 4
  %aftid_end63 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 8
  %91 = ptrtoint ptr %aftid_end63 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %aftid_end63, align 4
  %sftid_base = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 22
  %92 = ptrtoint ptr %sftid_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sftid_base, align 8
  %sftid_base65 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 9
  %94 = ptrtoint ptr %sftid_base65 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %sftid_base65, align 4
  %nsftids = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 48, i32 23
  %95 = ptrtoint ptr %nsftids to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nsftids, align 4
  %nsftids67 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 10
  %97 = ptrtoint ptr %nsftids67 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %nsftids67, align 4
  %flags = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags, align 32
  %flags68 = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 14
  %100 = ptrtoint ptr %flags68 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %flags68, align 4
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 128
  %add.ptr.i147 = getelementptr i8, ptr %102, i32 105476
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #8, !srcloc !97
  %104 = call i32 @llvm.bswap.i32(i32 %103) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %le_db_conf = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 15
  %105 = ptrtoint ptr %le_db_conf to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %le_db_conf, align 4
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 128
  %add.ptr.i148 = getelementptr i8, ptr %107, i32 105504
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #8, !srcloc !97
  %109 = call i32 @llvm.bswap.i32(i32 %108) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %ip_users = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 16
  %110 = ptrtoint ptr %ip_users to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %ip_users, align 4
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 128
  %add.ptr.i149 = getelementptr i8, ptr %112, i32 105508
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #8, !srcloc !97
  %114 = call i32 @llvm.bswap.i32(i32 %113) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %ipv6_users = getelementptr inbounds %struct.cudbg_tid_info_region_rev1, ptr %10, i32 0, i32 1, i32 17
  %115 = ptrtoint ptr %ipv6_users to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %ipv6_users, align 4
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %116 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp.i150 = icmp eq i8 %117, 1
  br i1 %cmp.i150, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %fill_tid
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %fill_tid
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %118 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %120 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp34.i.i = icmp sgt i32 %124, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %124, %if.else.i.while.body.i.i_crit_edge ]
  %125 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %126 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %127, i32 %bytes_read.036.i.i
  %128 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %129 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %125, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %125
  %add.i.i = add i32 %125, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %130 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %131, %119
  %132 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.then37, %if.then12
  %retval.0.ph = phi i32 [ %call35, %if.then37 ], [ %call11, %if.then12 ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %para) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_query_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_pcie_config(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 388, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc7.for.body_crit_edge, %if.end
  %i.032 = phi i32 [ 0, %if.end ], [ %inc, %for.inc7.for.body_crit_edge ]
  %value.031 = phi ptr [ %4, %if.end ], [ %value.1.lcssa, %for.inc7.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x [2 x i32]], ptr @t5_pcie_config_array, i32 0, i32 %i.032
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr [14 x [2 x i32]], ptr @t5_pcie_config_array, i32 0, i32 %i.032, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5.not28 = icmp ugt i32 %6, %8
  br i1 %cmp5.not28, label %for.body.for.inc7_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.inc7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc7

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %j.030 = phi i32 [ %add, %for.body6.for.body6_crit_edge ], [ %6, %for.body.for.body6_crit_edge ]
  %value.129 = phi ptr [ %incdec.ptr, %for.body6.for.body6_crit_edge ], [ %value.031, %for.body.for.body6_crit_edge ]
  call void @t4_hw_pci_read_cfg4(ptr noundef %1, i32 noundef %j.030, ptr noundef %value.129) #8
  %incdec.ptr = getelementptr i32, ptr %value.129, i32 1
  %add = add i32 %j.030, 4
  %cmp5.not = icmp ugt i32 %add, %8
  br i1 %cmp5.not, label %for.body6.for.inc7_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.body6.for.inc7_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc7

for.inc7:                                         ; preds = %for.body6.for.inc7_crit_edge, %for.body.for.inc7_crit_edge
  %value.1.lcssa = phi ptr [ %value.031, %for.body.for.inc7_crit_edge ], [ %incdec.ptr, %for.body6.for.inc7_crit_edge ]
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end8, label %for.inc7.for.body_crit_edge

for.inc7.for.body_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end8:                                         ; preds = %for.inc7
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %9 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp eq i8 %10, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %for.end8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %11 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %13 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp34.i.i = icmp sgt i32 %17, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %17, %if.else.i.while.body.i.i_crit_edge ]
  %18 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %bytes_read.036.i.i
  %21 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %22 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %18
  %add.i.i = add i32 %18, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %23 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %24, %12
  %25 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_hw_pci_read_cfg4(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cudbg_get_ctxt_region_info(ptr noundef %padap, ptr nocapture noundef writeonly %ctx_info, ptr nocapture noundef writeonly %mem_type) unnamed_addr #0 align 64 {
entry:
  %mem_desc = alloca %struct.cudbg_mem_desc, align 4
  %meminfo = alloca %struct.cudbg_meminfo, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem_desc) #8
  %0 = getelementptr inbounds %struct.cudbg_mem_desc, ptr %mem_desc, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %meminfo) #8
  %1 = call ptr @memset(ptr %meminfo, i32 255, i32 552)
  %call = call i32 @cudbg_fill_meminfo(ptr noundef %padap, ptr noundef nonnull %meminfo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %chip.i.i = getelementptr inbounds %struct.adapter, ptr %padap, i32 0, i32 15, i32 22
  %avail_c.i.i = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %for.cond.preheader
  %i.083 = phi i32 [ 0, %for.cond.preheader ], [ %inc28, %for.inc27.for.body_crit_edge ]
  %2 = call ptr @memset(ptr %mem_desc, i32 0, i32 12)
  %arrayidx = getelementptr [24 x ptr], ptr @cudbg_region, i32 0, i32 %i.083
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call4 = call fastcc i32 @cudbg_get_mem_region(ptr noundef %padap, ptr noundef nonnull %meminfo, i8 noundef zeroext 0, ptr noundef %4, ptr noundef nonnull %mem_desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.body.sw.epilog.i.i_crit_edge, label %for.inc

for.body.sw.epilog.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip.i.i, align 8
  %7 = and i32 %6, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %7)
  %cmp.i.not.i.i = icmp eq i32 %7, 80
  %cond.i.i = select i1 %cmp.i.not.i.i, i32 3, i32 2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %for.inc.2.sw.epilog.i.i_crit_edge, %for.inc.sw.epilog.i.i_crit_edge, %sw.bb2.i.i, %for.body.sw.epilog.i.i_crit_edge
  %j.082.lcssa90 = phi i8 [ 2, %sw.bb2.i.i ], [ 1, %for.inc.sw.epilog.i.i_crit_edge ], [ 3, %for.inc.2.sw.epilog.i.i_crit_edge ], [ 0, %for.body.sw.epilog.i.i_crit_edge ]
  %flag.0.i.i = phi i32 [ %cond.i.i, %sw.bb2.i.i ], [ 1, %for.inc.sw.epilog.i.i_crit_edge ], [ 4, %for.inc.2.sw.epilog.i.i_crit_edge ], [ 0, %for.body.sw.epilog.i.i_crit_edge ]
  %8 = ptrtoint ptr %avail_c.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail_c.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp18.not.i.i, label %sw.epilog.i.i.if.then10_crit_edge, label %sw.epilog.i.i.for.body.i.i_crit_edge

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  br label %for.body.i.i

sw.epilog.i.i.if.then10_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i.for.body.i.i_crit_edge
  %conv620.i.i = phi i32 [ %conv6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %i.019.i.i = phi i8 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.epilog.i.i.for.body.i.i_crit_edge ]
  %idx8.i.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo, i32 0, i32 %conv620.i.i, i32 2
  %10 = ptrtoint ptr %idx8.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %flag.0.i.i)
  %cmp10.i.i = icmp eq i32 %11, %flag.0.i.i
  br i1 %cmp10.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i8 %i.019.i.i, 1
  %conv6.i.i = zext i8 %inc.i.i to i32
  %cmp.i.i = icmp ugt i32 %9, %conv6.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.then10_crit_edge

for.inc.i.i.if.then10_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %mem_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_desc, align 4
  %idxprom.i = zext i8 %i.019.i.i to i32
  %arrayidx.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo, i32 0, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = call i32 @llvm.usub.sat.i32(i32 %13, i32 %15) #8
  %17 = ptrtoint ptr %mem_desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mem_desc, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %limit.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo, i32 0, i32 %idxprom.i, i32 1
  %20 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp10.i = icmp ugt i32 %19, %21
  %sub21.i = sub i32 %19, %15
  %spec.select = select i1 %cmp10.i, i32 %21, i32 %sub21.i
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %0, align 4
  %arrayidx13 = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 %i.083
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx13, align 4
  %start = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 %i.083, i32 1
  %24 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %16, ptr %start, align 4
  %end = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 %i.083, i32 2
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %end, align 4
  %arrayidx20 = getelementptr i8, ptr %mem_type, i32 %i.083
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %j.082.lcssa90, ptr %arrayidx20, align 1
  br label %for.inc27

if.then10:                                        ; preds = %for.inc.i.i.if.then10_crit_edge, %sw.epilog.i.i.if.then10_crit_edge
  %arrayidx11 = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 %i.083
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx11, align 4
  br label %for.inc27

for.inc:                                          ; preds = %for.body
  %call4.1 = call fastcc i32 @cudbg_get_mem_region(ptr noundef %padap, ptr noundef nonnull %meminfo, i8 noundef zeroext 1, ptr noundef %4, ptr noundef nonnull %mem_desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %for.inc.sw.epilog.i.i_crit_edge, label %for.inc.1

for.inc.sw.epilog.i.i_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

for.inc.1:                                        ; preds = %for.inc
  %call4.2 = call fastcc i32 @cudbg_get_mem_region(ptr noundef %padap, ptr noundef nonnull %meminfo, i8 noundef zeroext 2, ptr noundef %4, ptr noundef nonnull %mem_desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool5.not.2, label %sw.bb2.i.i, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call4.3 = call fastcc i32 @cudbg_get_mem_region(ptr noundef %padap, ptr noundef nonnull %meminfo, i8 noundef zeroext 3, ptr noundef %4, ptr noundef nonnull %mem_desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %tobool5.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool5.not.3, label %for.inc.2.sw.epilog.i.i_crit_edge, label %for.inc.3

for.inc.2.sw.epilog.i.i_crit_edge:                ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24 = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 %i.083
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx24, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc.3, %if.then10, %if.end.i
  %inc28 = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc28, 2
  br i1 %exitcond.not, label %for.end29, label %for.inc27.for.body_crit_edge

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end29:                                        ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %padap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %padap, align 128
  %add.ptr.i = getelementptr i8, ptr %30, i32 4240
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %32 = lshr i32 %31, 19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv31 = and i32 %32, 7
  %arrayidx32 = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 2
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx32, align 4
  %shr35 = lshr i32 1024, %conv31
  %mul = mul nuw nsw i32 %shr35, 24
  %end37 = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 2, i32 2
  %34 = ptrtoint ptr %end37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %end37, align 4
  %arrayidx38 = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 3
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx38, align 4
  %end43 = getelementptr %struct.cudbg_region_info, ptr %ctx_info, i32 3, i32 2
  %36 = ptrtoint ptr %end43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %end43, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end29 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %meminfo) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem_desc) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_dump_context(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %region_info.i = alloca [4 x %struct.cudbg_region_info], align 4
  %mem_type.i = alloca [2 x i8], align 2
  %region_info = alloca [4 x %struct.cudbg_region_info], align 4
  %mem_type = alloca [2 x i8], align 2
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  %buff = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %region_info) #8
  %0 = call ptr @memset(ptr %region_info, i32 0, i32 48)
  %1 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mem_type) #8
  %3 = ptrtoint ptr %mem_type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %mem_type, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %4 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buff) #8
  %call = call fastcc i32 @cudbg_get_ctxt_region_info(ptr noundef %2, ptr noundef nonnull %region_info, ptr noundef nonnull %mem_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup91_crit_edge

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %region_info.i) #8
  %5 = call ptr @memset(ptr %region_info.i, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mem_type.i) #8
  %call.i = call fastcc i32 @cudbg_get_ctxt_region_info(ptr noundef %2, ptr noundef nonnull %region_info.i, ptr noundef nonnull %mem_type.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.preheader.i, label %if.end.cudbg_dump_context_size.exit_crit_edge

if.end.cudbg_dump_context_size.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_dump_context_size.exit

for.body.preheader.i:                             ; preds = %if.end
  %6 = ptrtoint ptr %region_info.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %region_info.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end8.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %end.i = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info.i, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %start.i = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info.i, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start.i, align 4
  %sub.i = add i32 %9, 1
  %add11.i = sub i32 %sub.i, %11
  %div.i = udiv i32 %add11.i, 24
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %for.body.preheader.i.for.inc.i_crit_edge
  %size.1.i = phi i32 [ %div.i, %if.end8.i ], [ 6144, %for.body.preheader.i.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.1.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.1.i, label %if.then3.1.i, label %if.end8.1.i

if.end8.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %end.1.i = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %end.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.1.i, align 4
  %start.1.i = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %start.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start.1.i, align 4
  %sub.1.i = add i32 %15, 1
  %add11.1.i = sub i32 %sub.1.i, %17
  %div.1.i = udiv i32 %add11.1.i, 24
  %add12.1.i = add nuw nsw i32 %div.1.i, %size.1.i
  br label %for.inc.1.i

if.then3.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.1.i = add nuw nsw i32 %size.1.i, 6144
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then3.1.i, %if.end8.1.i
  %size.1.1.i = phi i32 [ %add12.1.i, %if.end8.1.i ], [ %add.1.i, %if.then3.1.i ]
  %arrayidx.2.i = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info.i, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2.i, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.2.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end8.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.end8.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %end.2.i = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %end.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.2.i, align 4
  %start.2.i = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %start.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start.2.i, align 4
  %sub.2.i = add i32 %21, 1
  %add11.2.i = sub i32 %sub.2.i, %23
  %div.2.i = udiv i32 %add11.2.i, 24
  %add12.2.i = add nuw nsw i32 %div.2.i, %size.1.1.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end8.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %size.1.2.i = phi i32 [ %add12.2.i, %if.end8.2.i ], [ %size.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %mul.i = shl i32 %size.1.2.i, 5
  br label %cudbg_dump_context_size.exit

cudbg_dump_context_size.exit:                     ; preds = %for.inc.2.i, %if.end.cudbg_dump_context_size.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %for.inc.2.i ], [ %call.i, %if.end.cudbg_dump_context_size.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mem_type.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %region_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %cudbg_dump_context_size.exit.cleanup91_crit_edge, label %if.end4

cudbg_dump_context_size.exit.cleanup91_crit_edge: ; preds = %cudbg_dump_context_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end4:                                          ; preds = %cudbg_dump_context_size.exit
  %call5 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %retval.0.i, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup91_crit_edge

if.end4.cleanup91_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end8:                                          ; preds = %if.end4
  %end = getelementptr inbounds %struct.cudbg_region_info, ptr %region_info, i32 0, i32 2
  %24 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end, align 4
  %start = getelementptr inbounds %struct.cudbg_region_info, ptr %region_info, i32 0, i32 1
  %26 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %start, align 4
  %sub = add i32 %25, 1
  %add = sub i32 %sub, %27
  %end11 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %end11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end11, align 4
  %start13 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %start13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %start13, align 4
  %sub14 = add i32 %29, 1
  %add15 = sub i32 %sub14, %31
  %32 = call i32 @llvm.umax.i32(i32 %add, i32 %add15)
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %32, i32 noundef 3520, i32 noundef -1) #11
  %tobool18.not = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not, label %if.end8.cleanup91.sink.split_crit_edge, label %if.end20

if.end8.cleanup91.sink.split_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91.sink.split

if.end20:                                         ; preds = %if.end8
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %buff, align 4
  %mbox = getelementptr inbounds %struct.adapter, ptr %2, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc80.for.body_crit_edge, %if.end20
  %indvars.iv = phi i32 [ 0, %if.end20 ], [ %indvars.iv.next, %for.inc80.for.body_crit_edge ]
  %rc.0185 = phi i32 [ 0, %if.end20 ], [ %rc.3, %for.inc80.for.body_crit_edge ]
  %arrayidx23 = getelementptr [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 %indvars.iv
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx23, align 4, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool24.not = icmp eq i8 %37, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %38 = trunc i32 %indvars.iv to i8
  call fastcc void @cudbg_get_sge_ctxt_fw(ptr noundef %pdbg_init, i32 noundef 256, i8 noundef zeroext %38, ptr noundef nonnull %buff)
  br label %for.inc80

if.end26:                                         ; preds = %for.body
  %end29 = getelementptr [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 %indvars.iv, i32 2
  %39 = ptrtoint ptr %end29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end29, align 4
  %start32 = getelementptr [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 %indvars.iv, i32 1
  %41 = ptrtoint ptr %start32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start32, align 4
  %sub33 = sub i32 %40, %42
  %add34 = add i32 %sub33, 1
  %div = udiv i32 %add34, 24
  %43 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdbg_init, align 4
  %flags.i = getelementptr inbounds %struct.adapter, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i152 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i152, label %if.end26.if.end47_crit_edge, label %is_fw_attached.exit

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

is_fw_attached.exit:                              ; preds = %if.end26
  %use_bd.i = getelementptr inbounds %struct.adapter, ptr %44, i32 0, i32 62
  %47 = ptrtoint ptr %use_bd.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %use_bd.i, align 128, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %tobool36.not = icmp eq i8 %48, 1
  br i1 %tobool36.not, label %is_fw_attached.exit.if.end47_crit_edge, label %if.then37

is_fw_attached.exit.if.end47_crit_edge:           ; preds = %is_fw_attached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then37:                                        ; preds = %is_fw_attached.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mbox, align 8
  %call39 = call i32 @t4_sge_ctxt_flush(ptr noundef %2, i32 noundef %50, i32 noundef %indvars.iv) #8
  %arrayidx41 = getelementptr [2 x i8], ptr %mem_type, i32 0, i32 %indvars.iv
  %51 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %52 to i32
  %call46 = call i32 @t4_memory_rw(ptr noundef %2, i32 noundef 0, i32 noundef %conv42, i32 noundef %42, i32 noundef %add34, ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then37, %is_fw_attached.exit.if.end47_crit_edge, %if.end26.if.end47_crit_edge
  %rc.1 = phi i32 [ %call46, %if.then37 ], [ %rc.0185, %is_fw_attached.exit.if.end47_crit_edge ], [ %rc.0185, %if.end26.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool48.not = icmp eq i32 %rc.1, 0
  br i1 %tobool48.not, label %lor.lhs.false, label %if.end47.if.then51_crit_edge

if.end47.if.then51_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

lor.lhs.false:                                    ; preds = %if.end47
  %53 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdbg_init, align 4
  %flags.i154 = getelementptr inbounds %struct.adapter, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %flags.i154 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i154, align 32
  %and.i155 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i155)
  %tobool.not.i156 = icmp eq i32 %and.i155, 0
  br i1 %tobool.not.i156, label %lor.lhs.false.if.then51_crit_edge, label %is_fw_attached.exit160

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

is_fw_attached.exit160:                           ; preds = %lor.lhs.false
  %use_bd.i157 = getelementptr inbounds %struct.adapter, ptr %54, i32 0, i32 62
  %57 = ptrtoint ptr %use_bd.i157 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %use_bd.i157, align 128, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %tobool50.not = icmp eq i8 %58, 1
  br i1 %tobool50.not, label %is_fw_attached.exit160.if.then51_crit_edge, label %for.cond53.preheader

is_fw_attached.exit160.if.then51_crit_edge:       ; preds = %is_fw_attached.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

for.cond53.preheader:                             ; preds = %is_fw_attached.exit160
  %59 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %59)
  %buff.promoted = load ptr, ptr %buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add34)
  %60 = icmp ult i32 %add34, 24
  br i1 %60, label %for.cond53.preheader.for.inc80.loopexit_crit_edge, label %for.body56.preheader

for.cond53.preheader.for.inc80.loopexit_crit_edge: ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc80.loopexit

for.body56.preheader:                             ; preds = %for.cond53.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  %61 = trunc i32 %indvars.iv to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %62 = icmp ult i8 %61, 3
  %sext = shl i32 %indvars.iv, 24
  %63 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cudbg_collect_dump_context, i32 0, i32 %63
  br label %for.body56

if.then51:                                        ; preds = %is_fw_attached.exit160.if.then51_crit_edge, %lor.lhs.false.if.then51_crit_edge, %if.end47.if.then51_crit_edge
  %64 = trunc i32 %indvars.iv to i8
  call fastcc void @cudbg_get_sge_ctxt_fw(ptr noundef %pdbg_init, i32 noundef 256, i8 noundef zeroext %64, ptr noundef nonnull %buff)
  br label %for.inc80

for.body56:                                       ; preds = %cleanup.for.body56_crit_edge, %for.body56.preheader
  %j.0178 = phi i32 [ %inc78, %cleanup.for.body56_crit_edge ], [ 0, %for.body56.preheader ]
  %incdec.ptr175177 = phi ptr [ %incdec.ptr174, %cleanup.for.body56_crit_edge ], [ %buff.promoted, %for.body56.preheader ]
  %mul = mul nuw i32 %j.0178, 24
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %mul
  %data57 = getelementptr inbounds %struct.cudbg_ch_cntxt, ptr %incdec.ptr175177, i32 0, i32 2
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr, align 8
  %67 = ptrtoint ptr %data57 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %data57, align 8
  %arrayidx65.1 = getelementptr i64, ptr %add.ptr, i32 1
  %68 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx65.1, align 8
  %arrayidx67.1 = getelementptr %struct.cudbg_ch_cntxt, ptr %incdec.ptr175177, i32 0, i32 2, i32 2
  %70 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx67.1, align 8
  %arrayidx65.2 = getelementptr i64, ptr %add.ptr, i32 2
  %71 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx65.2, align 8
  %arrayidx67.2 = getelementptr %struct.cudbg_ch_cntxt, ptr %incdec.ptr175177, i32 0, i32 2, i32 4
  %73 = ptrtoint ptr %arrayidx67.2 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %arrayidx67.2, align 8
  br i1 %62, label %switch.lookup, label %for.body56.cudbg_sge_ctxt_check_valid.exit_crit_edge

for.body56.cudbg_sge_ctxt_check_valid.exit_crit_edge: ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_sge_ctxt_check_valid.exit

switch.lookup:                                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %74)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cudbg_sge_ctxt_check_valid.exit

cudbg_sge_ctxt_check_valid.exit:                  ; preds = %switch.lookup, %for.body56.cudbg_sge_ctxt_check_valid.exit_crit_edge
  %bit_pos.0.i = phi i32 [ 0, %for.body56.cudbg_sge_ctxt_check_valid.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %div4.i = lshr i32 %bit_pos.0.i, 5
  %rem.i = and i32 %bit_pos.0.i, 29
  %arrayidx.i = getelementptr i32, ptr %data57, i32 %div4.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw nsw i32 1, %rem.i
  %and.i161 = and i32 %shl.i, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i161)
  %tobool72.not = icmp eq i32 %and.i161, 0
  br i1 %tobool72.not, label %cudbg_sge_ctxt_check_valid.exit.cleanup_crit_edge, label %if.end74

cudbg_sge_ctxt_check_valid.exit.cleanup_crit_edge: ; preds = %cudbg_sge_ctxt_check_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end74:                                         ; preds = %cudbg_sge_ctxt_check_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %incdec.ptr175177 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %indvars.iv, ptr %incdec.ptr175177, align 4
  %cntxt_id = getelementptr inbounds %struct.cudbg_ch_cntxt, ptr %incdec.ptr175177, i32 0, i32 1
  %78 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %j.0178, ptr %cntxt_id, align 4
  %incdec.ptr = getelementptr %struct.cudbg_ch_cntxt, ptr %incdec.ptr175177, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %cudbg_sge_ctxt_check_valid.exit.cleanup_crit_edge
  %incdec.ptr174 = phi ptr [ %incdec.ptr175177, %cudbg_sge_ctxt_check_valid.exit.cleanup_crit_edge ], [ %incdec.ptr, %if.end74 ]
  %inc78 = add nuw nsw i32 %j.0178, 1
  %exitcond.not = icmp eq i32 %inc78, %umax
  br i1 %exitcond.not, label %cleanup.for.inc80.loopexit_crit_edge, label %cleanup.for.body56_crit_edge

cleanup.for.body56_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56

cleanup.for.inc80.loopexit_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc80.loopexit

for.inc80.loopexit:                               ; preds = %cleanup.for.inc80.loopexit_crit_edge, %for.cond53.preheader.for.inc80.loopexit_crit_edge
  %incdec.ptr175.lcssa = phi ptr [ %buff.promoted, %for.cond53.preheader.for.inc80.loopexit_crit_edge ], [ %incdec.ptr174, %cleanup.for.inc80.loopexit_crit_edge ]
  %rc.2.lcssa = phi i32 [ 0, %for.cond53.preheader.for.inc80.loopexit_crit_edge ], [ %and.i161, %cleanup.for.inc80.loopexit_crit_edge ]
  %79 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %incdec.ptr175.lcssa, ptr %buff, align 4
  br label %for.inc80

for.inc80:                                        ; preds = %for.inc80.loopexit, %if.then51, %if.then25
  %rc.3 = phi i32 [ %rc.1, %if.then51 ], [ %rc.0185, %if.then25 ], [ %rc.2.lcssa, %for.inc80.loopexit ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond189.not = icmp eq i32 %indvars.iv.next, 2
  br i1 %exitcond189.not, label %for.end82, label %for.inc80.for.body_crit_edge

for.inc80.for.body_crit_edge:                     ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end82:                                        ; preds = %for.inc80
  call void @kvfree(ptr noundef nonnull %call.i.i) #8
  %end84 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 2, i32 2
  %80 = ptrtoint ptr %end84 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %end84, align 4
  %start86 = getelementptr inbounds [4 x %struct.cudbg_region_info], ptr %region_info, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %start86 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %start86, align 4
  %sub87 = add i32 %81, 1
  %add88 = sub i32 %sub87, %83
  %div89 = udiv i32 %add88, 24
  call fastcc void @cudbg_get_sge_ctxt_fw(ptr noundef %pdbg_init, i32 noundef %div89, i8 noundef zeroext 2, ptr noundef nonnull %buff)
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %84 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %85)
  %cmp.i = icmp eq i8 %85, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup91.sink.split

if.else.i:                                        ; preds = %for.end82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %86 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %88 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp34.i.i = icmp sgt i32 %92, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %92, %if.else.i.while.body.i.i_crit_edge ]
  %93 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %95, i32 %bytes_read.036.i.i
  %96 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %97 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %93, ptr %temp_in_buff.i.i, align 4
  %call.i.i162 = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %tobool.not.i.i = icmp eq i32 %call.i.i162, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %93
  %add.i.i = add i32 %93, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %98 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %99, %87
  %100 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i162, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup91.sink.split

cleanup91.sink.split:                             ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.end8.cleanup91.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end8.cleanup91.sink.split_crit_edge ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup91

cleanup91:                                        ; preds = %cleanup91.sink.split, %if.end4.cleanup91_crit_edge, %cudbg_dump_context_size.exit.cleanup91_crit_edge, %entry.cleanup91_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup91_crit_edge ], [ -24, %cudbg_dump_context_size.exit.cleanup91_crit_edge ], [ %call5, %if.end4.cleanup91_crit_edge ], [ %retval.0.ph, %cleanup91.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buff) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mem_type) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %region_info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cudbg_get_sge_ctxt_fw(ptr nocapture noundef readonly %pdbg_init, i32 noundef %max_qid, i8 noundef zeroext %ctxt_type, ptr nocapture noundef %out_buff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out_buff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_qid)
  %cmp47.not = icmp eq i32 %max_qid, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %ctxt_type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ctxt_type)
  %cmp6 = icmp eq i8 %ctxt_type, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %ctxt_type)
  %2 = icmp ult i8 %ctxt_type, 3
  %3 = sext i8 %ctxt_type to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cudbg_get_sge_ctxt_fw, i32 0, i32 %3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buff.048 = phi ptr [ %1, %for.body.lr.ph ], [ %buff.1, %for.inc.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.cudbg_ch_cntxt, ptr %buff.048, i32 0, i32 2
  %4 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdbg_init, align 4
  %flags.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 32
  %and.i.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.if.then3.i_crit_edge, label %is_fw_attached.exit.i

for.body.if.then3.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

is_fw_attached.exit.i:                            ; preds = %for.body
  %use_bd.i.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 62
  %8 = ptrtoint ptr %use_bd.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_bd.i.i, align 128, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 1
  br i1 %tobool.not.i, label %is_fw_attached.exit.i.if.then3.i_crit_edge, label %if.then.i

is_fw_attached.exit.i.if.then3.i_crit_edge:       ; preds = %is_fw_attached.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then.i:                                        ; preds = %is_fw_attached.exit.i
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox.i, align 8
  %call1.i = tail call i32 @t4_sge_ctxt_rd(ptr noundef %5, i32 noundef %11, i32 noundef %j.049, i32 noundef %conv, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %phi.cmp.i = icmp eq i32 %call1.i, 0
  br i1 %phi.cmp.i, label %if.then.i.cudbg_read_sge_ctxt.exit_crit_edge, label %if.then.i.if.then3.i_crit_edge

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then.i.cudbg_read_sge_ctxt.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_read_sge_ctxt.exit

if.then3.i:                                       ; preds = %if.then.i.if.then3.i_crit_edge, %is_fw_attached.exit.i.if.then3.i_crit_edge, %for.body.if.then3.i_crit_edge
  %call4.i = tail call i32 @t4_sge_ctxt_rd_bd(ptr noundef %5, i32 noundef %j.049, i32 noundef %conv, ptr noundef %data) #8
  br label %cudbg_read_sge_ctxt.exit

cudbg_read_sge_ctxt.exit:                         ; preds = %if.then3.i, %if.then.i.cudbg_read_sge_ctxt.exit_crit_edge
  br i1 %2, label %switch.lookup, label %cudbg_read_sge_ctxt.exit.cudbg_sge_ctxt_check_valid.exit_crit_edge

cudbg_read_sge_ctxt.exit.cudbg_sge_ctxt_check_valid.exit_crit_edge: ; preds = %cudbg_read_sge_ctxt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_sge_ctxt_check_valid.exit

switch.lookup:                                    ; preds = %cudbg_read_sge_ctxt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cudbg_sge_ctxt_check_valid.exit

cudbg_sge_ctxt_check_valid.exit:                  ; preds = %switch.lookup, %cudbg_read_sge_ctxt.exit.cudbg_sge_ctxt_check_valid.exit_crit_edge
  %bit_pos.0.i = phi i32 [ 0, %cudbg_read_sge_ctxt.exit.cudbg_sge_ctxt_check_valid.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %div4.i = lshr i32 %bit_pos.0.i, 5
  %rem.i = and i32 %bit_pos.0.i, 29
  %arrayidx.i = getelementptr i32, ptr %data, i32 %div4.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw nsw i32 1, %rem.i
  %and.i = and i32 %shl.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %cudbg_sge_ctxt_check_valid.exit.for.inc_crit_edge, label %if.end

cudbg_sge_ctxt_check_valid.exit.for.inc_crit_edge: ; preds = %cudbg_sge_ctxt_check_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %cudbg_sge_ctxt_check_valid.exit
  %15 = ptrtoint ptr %buff.048 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %buff.048, align 4
  %cntxt_id = getelementptr inbounds %struct.cudbg_ch_cntxt, ptr %buff.048, i32 0, i32 1
  %16 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %j.049, ptr %cntxt_id, align 4
  %incdec.ptr = getelementptr %struct.cudbg_ch_cntxt, ptr %buff.048, i32 1
  br i1 %cmp6, label %if.then8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8:                                         ; preds = %if.end
  %data9 = getelementptr %struct.cudbg_ch_cntxt, ptr %buff.048, i32 1, i32 2
  %17 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdbg_init, align 4
  %flags.i.i34 = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %flags.i.i34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i34, align 32
  %and.i.i35 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35)
  %tobool.not.i.i36 = icmp eq i32 %and.i.i35, 0
  br i1 %tobool.not.i.i36, label %if.then8.if.then3.i45_crit_edge, label %is_fw_attached.exit.i39

if.then8.if.then3.i45_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i45

is_fw_attached.exit.i39:                          ; preds = %if.then8
  %use_bd.i.i37 = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 62
  %21 = ptrtoint ptr %use_bd.i.i37 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_bd.i.i37, align 128, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %tobool.not.i38 = icmp eq i8 %22, 1
  br i1 %tobool.not.i38, label %is_fw_attached.exit.i39.if.then3.i45_crit_edge, label %if.then.i43

is_fw_attached.exit.i39.if.then3.i45_crit_edge:   ; preds = %is_fw_attached.exit.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i45

if.then.i43:                                      ; preds = %is_fw_attached.exit.i39
  %mbox.i40 = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 6
  %23 = ptrtoint ptr %mbox.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mbox.i40, align 8
  %call1.i41 = tail call i32 @t4_sge_ctxt_rd(ptr noundef %18, i32 noundef %24, i32 noundef %j.049, i32 noundef 3, ptr noundef %data9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %phi.cmp.i42 = icmp eq i32 %call1.i41, 0
  br i1 %phi.cmp.i42, label %if.then.i43.cudbg_read_sge_ctxt.exit46_crit_edge, label %if.then.i43.if.then3.i45_crit_edge

if.then.i43.if.then3.i45_crit_edge:               ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i45

if.then.i43.cudbg_read_sge_ctxt.exit46_crit_edge: ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_read_sge_ctxt.exit46

if.then3.i45:                                     ; preds = %if.then.i43.if.then3.i45_crit_edge, %is_fw_attached.exit.i39.if.then3.i45_crit_edge, %if.then8.if.then3.i45_crit_edge
  %call4.i44 = tail call i32 @t4_sge_ctxt_rd_bd(ptr noundef %18, i32 noundef %j.049, i32 noundef 3, ptr noundef %data9) #8
  br label %cudbg_read_sge_ctxt.exit46

cudbg_read_sge_ctxt.exit46:                       ; preds = %if.then3.i45, %if.then.i43.cudbg_read_sge_ctxt.exit46_crit_edge
  %25 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %incdec.ptr, align 4
  %cntxt_id12 = getelementptr %struct.cudbg_ch_cntxt, ptr %buff.048, i32 1, i32 1
  %26 = ptrtoint ptr %cntxt_id12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %j.049, ptr %cntxt_id12, align 4
  %incdec.ptr13 = getelementptr %struct.cudbg_ch_cntxt, ptr %buff.048, i32 2
  br label %for.inc

for.inc:                                          ; preds = %cudbg_read_sge_ctxt.exit46, %if.end.for.inc_crit_edge, %cudbg_sge_ctxt_check_valid.exit.for.inc_crit_edge
  %buff.1 = phi ptr [ %incdec.ptr13, %cudbg_read_sge_ctxt.exit46 ], [ %incdec.ptr, %if.end.for.inc_crit_edge ], [ %buff.048, %cudbg_sge_ctxt_check_valid.exit.for.inc_crit_edge ]
  %inc = add nuw i32 %j.049, 1
  %exitcond.not = icmp eq i32 %inc, %max_qid
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %buff.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %buff.1, %for.inc.for.end_crit_edge ]
  %27 = ptrtoint ptr %out_buff to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buff.0.lcssa, ptr %out_buff, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_ctxt_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_mps_tcam(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %ldst_cmd.i = alloca %struct.fw_ldst_cmd, align 8
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %mps_tcam_size = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 23, i32 6
  %3 = ptrtoint ptr %mps_tcam_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mps_tcam_size, align 4
  %conv = zext i16 %4 to i32
  %mul = mul nuw nsw i32 %conv, 88
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %mul, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp42.not = icmp eq i16 %4, 0
  br i1 %cmp42.not, label %if.end.if.then7_crit_edge, label %for.body.lr.ph

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

for.body.lr.ph:                                   ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = getelementptr inbounds i8, ptr %ldst_cmd.i, i32 8
  %cycles_to_len16.i = getelementptr inbounds %struct.fw_ldst_cmd, ptr %ldst_cmd.i, i32 0, i32 1
  %mps_rplc.sroa.4.0.u.sroa_idx.i = getelementptr inbounds %struct.fw_ldst_cmd, ptr %ldst_cmd.i, i32 0, i32 2, i32 0, i32 3
  %mps_rplc.sroa.7.0.u.sroa_idx.i = getelementptr inbounds %struct.fw_ldst_cmd, ptr %ldst_cmd.i, i32 0, i32 2, i32 0, i32 4
  %mps_rplc.sroa.10.0.u.sroa_idx.i = getelementptr inbounds i8, ptr %ldst_cmd.i, i32 20
  %mps_rplc.sroa.13.0.u.sroa_idx.i = getelementptr inbounds %struct.fw_ldst_cmd, ptr %ldst_cmd.i, i32 0, i32 2, i32 0, i32 5
  %mps_rplc.sroa.15.0.u.sroa_idx.i = getelementptr inbounds i8, ptr %ldst_cmd.i, i32 28
  %mps_rplc.sroa.17.0.u.sroa_idx.i = getelementptr inbounds %struct.fw_ldst_cmd, ptr %ldst_cmd.i, i32 0, i32 2, i32 1
  %mps_rplc.sroa.19.0.u.sroa_idx.i = getelementptr inbounds %struct.fw_ldst_cmd, ptr %ldst_cmd.i, i32 0, i32 2, i32 1, i32 4
  %mps_rplc.sroa.21.0.u.sroa_idx.i = getelementptr inbounds %struct.fw_ldst_cmd, ptr %ldst_cmd.i, i32 0, i32 2, i32 1, i32 8
  br label %for.body

for.body:                                         ; preds = %cudbg_collect_tcam_index.exit.for.body_crit_edge, %for.body.lr.ph
  %tcam.047 = phi ptr [ %6, %for.body.lr.ph ], [ %incdec.ptr, %cudbg_collect_tcam_index.exit.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cudbg_collect_tcam_index.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdbg_init, align 4
  %chip.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 15, i32 22
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip.i, align 8
  %12 = and i32 %11, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %12)
  %cmp.i = icmp ugt i32 %12, 80
  br i1 %cmp.i, label %if.then.i, label %if.else78.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.043)
  %cmp1.i = icmp ult i32 %i.043, 256
  %shl.i = shl i32 %i.043, 17
  %or3.i = or i32 %shl.i, 1073741824
  %shl4.i = add i32 %shl.i, -33554432
  %or6.i = or i32 %shl4.i, 1107296256
  %ctl.0.i = select i1 %cmp1.i, i32 %or3.i, i32 %or6.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %13 = call i32 @llvm.bswap.i32(i32 %ctl.0.i) #8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 128
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 61448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #8, !srcloc !100
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 128
  %add.ptr.i1.i = getelementptr i8, ptr %17, i32 61476
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #8, !srcloc !97
  %19 = call i32 @llvm.bswap.i32(i32 %18) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv.i = zext i32 %19 to i64
  %and8.i = shl nuw i64 %conv.i, 32
  %shl9.i = and i64 %and8.i, 281470681743360
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %9, align 128
  %add.ptr.i2.i = getelementptr i8, ptr %21, i32 61472
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #8, !srcloc !97
  %23 = call i32 @llvm.bswap.i32(i32 %22) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv11.i = zext i32 %23 to i64
  %or12.i = or i64 %shl9.i, %conv11.i
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 128
  %add.ptr.i3.i = getelementptr i8, ptr %25, i32 61480
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #8, !srcloc !97
  %27 = call i32 @llvm.bswap.i32(i32 %26) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %shr14.i = lshr i32 %27, 10
  %28 = trunc i32 %shr14.i to i8
  %conv16.i = and i8 %28, 3
  %lookup_type.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 13
  %29 = ptrtoint ptr %lookup_type.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv16.i, ptr %lookup_type.i, align 4
  %trunc.i = trunc i32 %shr14.i to i2
  %30 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.33)
  switch i2 %trunc.i, label %if.then23.i [
    i2 0, label %if.then.i.if.else37.i_crit_edge
    i2 -1, label %if.then.i.if.else37.i_crit_edge58
  ]

if.then.i.if.else37.i_crit_edge58:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else37.i

if.then.i.if.else37.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else37.i

if.then23.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %vniy.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 6
  %or27.i = shl i32 %27, 16
  %shl29.i = and i32 %or27.i, 16711680
  %shr31.i = lshr i32 %19, 16
  %or33.i = or i32 %shl29.i, %shr31.i
  %31 = ptrtoint ptr %vniy.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or33.i, ptr %vniy.i, align 8
  %and36.i = and i32 %27, 256
  %dip_hit.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 8
  %32 = ptrtoint ptr %dip_hit.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and36.i, ptr %dip_hit.i, align 8
  br label %if.end42.i

if.else37.i:                                      ; preds = %if.then.i.if.else37.i_crit_edge, %if.then.i.if.else37.i_crit_edge58
  %and38.i = and i32 %27, 128
  %vlan_vld.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 9
  %33 = ptrtoint ptr %vlan_vld.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and38.i, ptr %vlan_vld.i, align 4
  %shr39.i = lshr i32 %19, 16
  %conv41.i = trunc i32 %shr39.i to i16
  %ivlan.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 11
  %34 = ptrtoint ptr %ivlan.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv41.i, ptr %ivlan.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else37.i, %if.then23.i
  %shr43.i = lshr i32 %27, 12
  %35 = trunc i32 %shr43.i to i8
  %conv45.i = and i8 %35, 15
  %port_num.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 14
  %36 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv45.i, ptr %port_num.i, align 1
  %or46.i = or i32 %ctl.0.i, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %37 = call i32 @llvm.bswap.i32(i32 %or46.i) #8
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %9, align 128
  %add.ptr.i4.i = getelementptr i8, ptr %39, i32 61448
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %37) #8, !srcloc !100
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %9, align 128
  %add.ptr.i5.i = getelementptr i8, ptr %41, i32 61476
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !97
  %43 = call i32 @llvm.bswap.i32(i32 %42) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv48.i = zext i32 %43 to i64
  %and50.i = shl nuw i64 %conv48.i, 32
  %shl51.i = and i64 %and50.i, 281470681743360
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %9, align 128
  %add.ptr.i6.i = getelementptr i8, ptr %45, i32 61472
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #8, !srcloc !97
  %47 = call i32 @llvm.bswap.i32(i32 %46) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %conv53.i = zext i32 %47 to i64
  %or54.i = or i64 %shl51.i, %conv53.i
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %9, align 128
  %add.ptr.i7.i = getelementptr i8, ptr %49, i32 61480
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %51 = ptrtoint ptr %lookup_type.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lookup_type.i, align 4
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %52, label %if.then64.i [
    i8 0, label %if.end42.i.if.end83.i_crit_edge
    i8 3, label %if.end42.i.if.end83.i_crit_edge59
  ]

if.end42.i.if.end83.i_crit_edge59:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

if.end42.i.if.end83.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

if.then64.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %vnix.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 7
  %54 = lshr i32 %50, 8
  %or68.i = and i32 %54, 16711680
  %shr72.i = lshr i32 %43, 16
  %or74.i = or i32 %or68.i, %shr72.i
  %55 = ptrtoint ptr %vnix.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or74.i, ptr %vnix.i, align 4
  br label %if.end83.i

if.else78.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %i.043, 4
  %add.i = add nuw nsw i32 %mul.i, 61440
  %56 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %9, align 128
  %add.ptr.i8.i = getelementptr i8, ptr %57, i32 %add.i
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i8.i, i32 4
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %60 = zext i32 %59 to i64
  %61 = zext i32 %58 to i64
  %62 = shl nuw i64 %61, 32
  %63 = or i64 %62, %60
  %64 = call i64 @llvm.bswap.i64(i64 %63) #8
  %add81.i = add nuw nsw i32 %mul.i, 61448
  %65 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %9, align 128
  %add.ptr.i9.i = getelementptr i8, ptr %66, i32 %add81.i
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %add.ptr.i.i10.i = getelementptr i8, ptr %add.ptr.i9.i, i32 4
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %69 = zext i32 %68 to i64
  %70 = zext i32 %67 to i64
  %71 = shl nuw i64 %70, 32
  %72 = or i64 %71, %69
  %73 = call i64 @llvm.bswap.i64(i64 %72) #8
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.else78.i, %if.then64.i, %if.end42.i.if.end83.i_crit_edge, %if.end42.i.if.end83.i_crit_edge59
  %tcamy.0.i = phi i64 [ %or12.i, %if.then64.i ], [ %or12.i, %if.end42.i.if.end83.i_crit_edge ], [ %64, %if.else78.i ], [ %or12.i, %if.end42.i.if.end83.i_crit_edge59 ]
  %tcamx.0.i = phi i64 [ %or54.i, %if.then64.i ], [ %or54.i, %if.end42.i.if.end83.i_crit_edge ], [ %73, %if.else78.i ], [ %or54.i, %if.end42.i.if.end83.i_crit_edge59 ]
  %and84.i = and i64 %tcamx.0.i, %tcamy.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and84.i)
  %tobool85.not.i = icmp eq i64 %and84.i, 0
  br i1 %tobool85.not.i, label %if.end87.i, label %if.end83.i.cudbg_collect_tcam_index.exit_crit_edge

if.end83.i.cudbg_collect_tcam_index.exit_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_collect_tcam_index.exit

if.end87.i:                                       ; preds = %if.end83.i
  %mul88.i = shl i32 %i.043, 3
  %add89.i = add nuw nsw i32 %mul88.i, 57344
  %74 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %9, align 128
  %add.ptr.i11.i = getelementptr i8, ptr %75, i32 %add89.i
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !97
  %77 = call i32 @llvm.bswap.i32(i32 %76) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %cls_lo.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 3
  %78 = ptrtoint ptr %cls_lo.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %cls_lo.i, align 4
  %add92.i = add nuw nsw i32 %mul88.i, 57348
  %79 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %9, align 128
  %add.ptr.i12.i = getelementptr i8, ptr %80, i32 %add92.i
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !97
  %82 = call i32 @llvm.bswap.i32(i32 %81) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %cls_hi.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 4
  %83 = ptrtoint ptr %cls_hi.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %cls_hi.i, align 8
  %84 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %chip.i, align 8
  %86 = trunc i32 %85 to i8
  %trunc27.i = and i8 %86, -16
  %87 = zext i8 %trunc27.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %trunc27.i, label %if.end87.i.if.end111.i_crit_edge [
    i8 80, label %if.end87.i.if.end111.sink.split.i_crit_edge
    i8 96, label %if.then106.i
  ]

if.end87.i.if.end111.sink.split.i_crit_edge:      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111.sink.split.i

if.end87.i.if.end111.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111.i

if.then106.i:                                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111.sink.split.i

if.end111.sink.split.i:                           ; preds = %if.then106.i, %if.end87.i.if.end111.sink.split.i_crit_edge
  %.sink28.i = phi i32 [ 4096, %if.then106.i ], [ 2048, %if.end87.i.if.end111.sink.split.i_crit_edge ]
  %88 = ptrtoint ptr %cls_lo.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cls_lo.i, align 4
  %and108.i = and i32 %89, %.sink28.i
  %repli109.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 10
  %90 = ptrtoint ptr %repli109.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and108.i, ptr %repli109.i, align 8
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.end111.sink.split.i, %if.end87.i.if.end111.i_crit_edge
  %repli112.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 10
  %91 = ptrtoint ptr %repli112.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %repli112.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool113.not.i = icmp eq i32 %92, 0
  br i1 %tobool113.not.i, label %if.end111.i.if.end150.i_crit_edge, label %if.then114.i

if.end111.i.if.end150.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i

if.then114.i:                                     ; preds = %if.end111.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ldst_cmd.i) #8
  %93 = call ptr @memset(ptr %7, i32 0, i32 56)
  %94 = ptrtoint ptr %ldst_cmd.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 29360160, ptr %ldst_cmd.i, align 8
  %95 = ptrtoint ptr %cycles_to_len16.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 4, ptr %cycles_to_len16.i, align 4
  %96 = trunc i32 %i.043 to i16
  %conv117.i = or i16 %96, -32768
  %97 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv117.i, ptr %7, align 8
  %98 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdbg_init, align 4
  %flags.i.i = getelementptr inbounds %struct.adapter, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags.i.i, align 32
  %and.i.i = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then114.i.lor.lhs.false.i_crit_edge, label %is_fw_attached.exit.i

if.then114.i.lor.lhs.false.i_crit_edge:           ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

is_fw_attached.exit.i:                            ; preds = %if.then114.i
  %use_bd.i.i = getelementptr inbounds %struct.adapter, ptr %99, i32 0, i32 62
  %102 = ptrtoint ptr %use_bd.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %use_bd.i.i, align 128, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %103)
  %tobool119.not.i = icmp eq i8 %103, 1
  br i1 %tobool119.not.i, label %is_fw_attached.exit.i.lor.lhs.false.i_crit_edge, label %if.then120.i

is_fw_attached.exit.i.lor.lhs.false.i_crit_edge:  ; preds = %is_fw_attached.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.then120.i:                                     ; preds = %is_fw_attached.exit.i
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 6
  %104 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mbox.i, align 8
  %call.i.i = call i32 @t4_wr_mbox_meat(ptr noundef %9, i32 noundef %105, ptr noundef nonnull %ldst_cmd.i, i32 noundef 64, ptr noundef nonnull %ldst_cmd.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %phi.cmp.i, label %if.then120.i.lor.lhs.false.i_crit_edge, label %if.then120.i.if.then126.i_crit_edge

if.then120.i.if.then126.i_crit_edge:              ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126.i

if.then120.i.lor.lhs.false.i_crit_edge:           ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then120.i.lor.lhs.false.i_crit_edge, %is_fw_attached.exit.i.lor.lhs.false.i_crit_edge, %if.then114.i.lor.lhs.false.i_crit_edge
  %106 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdbg_init, align 4
  %flags.i15.i = getelementptr inbounds %struct.adapter, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %flags.i15.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i15.i, align 32
  %and.i16.i = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %tobool.not.i17.i, label %lor.lhs.false.i.if.then126.i_crit_edge, label %is_fw_attached.exit21.i

lor.lhs.false.i.if.then126.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126.i

is_fw_attached.exit21.i:                          ; preds = %lor.lhs.false.i
  %use_bd.i18.i = getelementptr inbounds %struct.adapter, ptr %107, i32 0, i32 62
  %110 = ptrtoint ptr %use_bd.i18.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %use_bd.i18.i, align 128, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %tobool125.not.i = icmp eq i8 %111, 1
  br i1 %tobool125.not.i, label %is_fw_attached.exit21.i.if.then126.i_crit_edge, label %if.else127.i

is_fw_attached.exit21.i.if.then126.i_crit_edge:   ; preds = %is_fw_attached.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then126.i

if.then126.i:                                     ; preds = %is_fw_attached.exit21.i.if.then126.i_crit_edge, %lor.lhs.false.i.if.then126.i_crit_edge, %if.then120.i.if.then126.i_crit_edge
  %112 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %chip.i, align 8
  %114 = and i32 %113, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %114)
  %cmp.i.not.i.i = icmp eq i32 %114, 80
  %115 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %9, align 128
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i22.i = getelementptr i8, ptr %116, i32 69928
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i22.i) #8, !srcloc !97
  %118 = call i32 @llvm.bswap.i32(i32 %117) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %119 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %9, align 128
  %add.ptr.i40.i.i = getelementptr i8, ptr %120, i32 69924
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i.i) #8, !srcloc !97
  %122 = call i32 @llvm.bswap.i32(i32 %121) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %123 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %9, align 128
  %add.ptr.i41.i.i = getelementptr i8, ptr %124, i32 69920
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i.i) #8, !srcloc !97
  %126 = call i32 @llvm.bswap.i32(i32 %125) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %127 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %9, align 128
  %add.ptr.i42.i.i = getelementptr i8, ptr %128, i32 69916
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i) #8, !srcloc !97
  %130 = call i32 @llvm.bswap.i32(i32 %129) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %cudbg_mps_rpl_backdoor.exit.i

if.else.i.i:                                      ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i43.i.i = getelementptr i8, ptr %116, i32 70412
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i.i) #8, !srcloc !97
  %132 = call i32 @llvm.bswap.i32(i32 %131) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %133 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %9, align 128
  %add.ptr.i44.i.i = getelementptr i8, ptr %134, i32 70408
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i.i) #8, !srcloc !97
  %136 = call i32 @llvm.bswap.i32(i32 %135) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %137 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %9, align 128
  %add.ptr.i45.i.i = getelementptr i8, ptr %138, i32 70404
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i.i) #8, !srcloc !97
  %140 = call i32 @llvm.bswap.i32(i32 %139) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %141 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %9, align 128
  %add.ptr.i46.i.i = getelementptr i8, ptr %142, i32 70400
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i.i) #8, !srcloc !97
  %144 = call i32 @llvm.bswap.i32(i32 %143) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %cudbg_mps_rpl_backdoor.exit.i

cudbg_mps_rpl_backdoor.exit.i:                    ; preds = %if.else.i.i, %if.then.i.i
  %mps_rplc.sroa.4.0.i = phi i32 [ %118, %if.then.i.i ], [ %132, %if.else.i.i ]
  %mps_rplc.sroa.7.0.i = phi i32 [ %122, %if.then.i.i ], [ %136, %if.else.i.i ]
  %mps_rplc.sroa.10.0.i = phi i32 [ %126, %if.then.i.i ], [ %140, %if.else.i.i ]
  %.sink.i.i = phi i32 [ %130, %if.then.i.i ], [ %144, %if.else.i.i ]
  %145 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %9, align 128
  %add.ptr.i47.i.i = getelementptr i8, ptr %146, i32 69928
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i.i) #8, !srcloc !97
  %148 = call i32 @llvm.bswap.i32(i32 %147) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %149 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %9, align 128
  %add.ptr.i48.i.i = getelementptr i8, ptr %150, i32 69924
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i.i) #8, !srcloc !97
  %152 = call i32 @llvm.bswap.i32(i32 %151) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %153 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %9, align 128
  %add.ptr.i49.i.i = getelementptr i8, ptr %154, i32 69920
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i.i) #8, !srcloc !97
  %156 = call i32 @llvm.bswap.i32(i32 %155) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %157 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %9, align 128
  %add.ptr.i50.i.i = getelementptr i8, ptr %158, i32 69916
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i.i) #8, !srcloc !97
  %160 = call i32 @llvm.bswap.i32(i32 %159) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.end129.i

if.else127.i:                                     ; preds = %is_fw_attached.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %mps_rplc.sroa.4.0.u.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %mps_rplc.sroa.4.0.copyload.i = load i32, ptr %mps_rplc.sroa.4.0.u.sroa_idx.i, align 4
  %162 = ptrtoint ptr %mps_rplc.sroa.7.0.u.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %mps_rplc.sroa.7.0.copyload.i = load i32, ptr %mps_rplc.sroa.7.0.u.sroa_idx.i, align 8
  %163 = ptrtoint ptr %mps_rplc.sroa.10.0.u.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %mps_rplc.sroa.10.0.copyload.i = load i32, ptr %mps_rplc.sroa.10.0.u.sroa_idx.i, align 4
  %164 = ptrtoint ptr %mps_rplc.sroa.13.0.u.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %mps_rplc.sroa.13.0.copyload.i = load i32, ptr %mps_rplc.sroa.13.0.u.sroa_idx.i, align 8
  %165 = ptrtoint ptr %mps_rplc.sroa.15.0.u.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %mps_rplc.sroa.15.0.copyload.i = load i32, ptr %mps_rplc.sroa.15.0.u.sroa_idx.i, align 4
  %166 = ptrtoint ptr %mps_rplc.sroa.17.0.u.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %mps_rplc.sroa.17.0.copyload.i = load i32, ptr %mps_rplc.sroa.17.0.u.sroa_idx.i, align 8
  %167 = ptrtoint ptr %mps_rplc.sroa.19.0.u.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %mps_rplc.sroa.19.0.copyload.i = load i32, ptr %mps_rplc.sroa.19.0.u.sroa_idx.i, align 4
  %168 = ptrtoint ptr %mps_rplc.sroa.21.0.u.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %mps_rplc.sroa.21.0.copyload.i = load i32, ptr %mps_rplc.sroa.21.0.u.sroa_idx.i, align 8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.else127.i, %cudbg_mps_rpl_backdoor.exit.i
  %mps_rplc.sroa.4.1.i = phi i32 [ %mps_rplc.sroa.4.0.i, %cudbg_mps_rpl_backdoor.exit.i ], [ %mps_rplc.sroa.4.0.copyload.i, %if.else127.i ]
  %mps_rplc.sroa.7.1.i = phi i32 [ %mps_rplc.sroa.7.0.i, %cudbg_mps_rpl_backdoor.exit.i ], [ %mps_rplc.sroa.7.0.copyload.i, %if.else127.i ]
  %mps_rplc.sroa.10.1.i = phi i32 [ %mps_rplc.sroa.10.0.i, %cudbg_mps_rpl_backdoor.exit.i ], [ %mps_rplc.sroa.10.0.copyload.i, %if.else127.i ]
  %mps_rplc.sroa.13.0.i = phi i32 [ %.sink.i.i, %cudbg_mps_rpl_backdoor.exit.i ], [ %mps_rplc.sroa.13.0.copyload.i, %if.else127.i ]
  %mps_rplc.sroa.15.0.i = phi i32 [ %148, %cudbg_mps_rpl_backdoor.exit.i ], [ %mps_rplc.sroa.15.0.copyload.i, %if.else127.i ]
  %mps_rplc.sroa.17.0.i = phi i32 [ %152, %cudbg_mps_rpl_backdoor.exit.i ], [ %mps_rplc.sroa.17.0.copyload.i, %if.else127.i ]
  %mps_rplc.sroa.19.0.i = phi i32 [ %156, %cudbg_mps_rpl_backdoor.exit.i ], [ %mps_rplc.sroa.19.0.copyload.i, %if.else127.i ]
  %mps_rplc.sroa.21.0.i = phi i32 [ %160, %cudbg_mps_rpl_backdoor.exit.i ], [ %mps_rplc.sroa.21.0.copyload.i, %if.else127.i ]
  %rplc.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 1
  %169 = ptrtoint ptr %rplc.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %mps_rplc.sroa.21.0.i, ptr %rplc.i, align 8
  %arrayidx131.i = getelementptr %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 1, i32 1
  %170 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %mps_rplc.sroa.19.0.i, ptr %arrayidx131.i, align 4
  %arrayidx133.i = getelementptr %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 1, i32 2
  %171 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %mps_rplc.sroa.17.0.i, ptr %arrayidx133.i, align 8
  %arrayidx135.i = getelementptr %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 1, i32 3
  %172 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %mps_rplc.sroa.15.0.i, ptr %arrayidx135.i, align 4
  %mps_rplc_size.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 15, i32 23, i32 3
  %173 = ptrtoint ptr %mps_rplc_size.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %mps_rplc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %174)
  %cmp138.i = icmp ugt i16 %174, 128
  br i1 %cmp138.i, label %if.then140.i, label %if.end129.i.if.end149.i_crit_edge

if.end129.i.if.end149.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.i

if.then140.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx142.i = getelementptr %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 1, i32 4
  %175 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %mps_rplc.sroa.13.0.i, ptr %arrayidx142.i, align 8
  %arrayidx144.i = getelementptr %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 1, i32 5
  %176 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %mps_rplc.sroa.10.1.i, ptr %arrayidx144.i, align 4
  %arrayidx146.i = getelementptr %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 1, i32 6
  %177 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %mps_rplc.sroa.7.1.i, ptr %arrayidx146.i, align 8
  %arrayidx148.i = getelementptr %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 1, i32 7
  %178 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %mps_rplc.sroa.4.1.i, ptr %arrayidx148.i, align 4
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then140.i, %if.end129.i.if.end149.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ldst_cmd.i) #8
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.end149.i, %if.end111.i.if.end150.i_crit_edge
  %addr.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 12
  %or.i.i = or i64 %tcamx.0.i, %tcamy.0.i
  %179 = ptrtoint ptr %tcam.047 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %or.i.i, ptr %tcam.047, align 8
  %y.addr.2.extract.trunc.i.i = trunc i64 %tcamy.0.i to i48
  %180 = ptrtoint ptr %addr.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 6)
  store i48 %y.addr.2.extract.trunc.i.i, ptr %addr.i, align 1
  %idx151.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 2
  %181 = ptrtoint ptr %idx151.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %i.043, ptr %idx151.i, align 8
  %mps_rplc_size154.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 15, i32 23, i32 3
  %182 = ptrtoint ptr %mps_rplc_size154.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %mps_rplc_size154.i, align 4
  %conv155.i = zext i16 %183 to i32
  %rplc_size.i = getelementptr inbounds %struct.cudbg_mps_tcam, ptr %tcam.047, i32 0, i32 5
  %184 = ptrtoint ptr %rplc_size.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %conv155.i, ptr %rplc_size.i, align 4
  br label %cudbg_collect_tcam_index.exit

cudbg_collect_tcam_index.exit:                    ; preds = %if.end150.i, %if.end83.i.cudbg_collect_tcam_index.exit_crit_edge
  %incdec.ptr = getelementptr %struct.cudbg_mps_tcam, ptr %tcam.047, i32 1
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %cudbg_collect_tcam_index.exit.for.body_crit_edge

cudbg_collect_tcam_index.exit.for.body_crit_edge: ; preds = %cudbg_collect_tcam_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cudbg_collect_tcam_index.exit
  br i1 %cmp42.not, label %for.end.if.then7_crit_edge, label %if.end9

for.end.if.then7_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %for.end.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %185 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -29, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

if.end9:                                          ; preds = %for.end
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %186 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %187)
  %cmp.i36 = icmp eq i8 %187, 1
  br i1 %cmp.i36, label %if.then.i37, label %if.else.i

if.then.i37:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %188 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %190 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %193 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp34.i.i = icmp sgt i32 %194, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %194, %if.else.i.while.body.i.i_crit_edge ]
  %195 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %196 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %data, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %197, i32 %bytes_read.036.i.i
  %198 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %add.ptr.i.i38, ptr %data4.i.i, align 4
  %199 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %195, ptr %temp_in_buff.i.i, align 4
  %call.i.i39 = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %call.i.i39, 0
  br i1 %tobool.not.i.i40, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %195
  %add.i.i = add i32 %195, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %200 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %201, %189
  %202 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i39, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i37, %if.then7
  %retval.0.ph = phi i32 [ -29, %if.then7 ], [ 0, %if.then.i37 ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_vpd_data(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  %vpd_str = alloca [3 x i8], align 1
  %vpd = alloca %struct.vpd_params, align 4
  %vpd_vers = alloca i32, align 4
  %fw_vers = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %vpd_str) #8
  %3 = ptrtoint ptr %vpd_str to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %vpd_str, align 1, !annotation !102
  %4 = getelementptr inbounds [3 x i8], ptr %vpd_str, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !102
  %6 = getelementptr inbounds [3 x i8], ptr %vpd_str, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %vpd) #8
  %8 = call ptr @memset(ptr %vpd, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpd_vers) #8
  %9 = ptrtoint ptr %vpd_vers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %vpd_vers, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_vers) #8
  %10 = ptrtoint ptr %fw_vers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %fw_vers, align 4, !annotation !102
  %call = call i32 @t4_get_raw_vpd_params(ptr noundef %1, ptr noundef nonnull %vpd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @t4_get_fw_version(ptr noundef %1, ptr noundef nonnull %fw_vers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pf.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pf.i, align 4
  %call.i = call i32 @t4_eeprom_ptov(i32 noundef 6343, i32 noundef %12, i32 noundef 1024) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %cudbg_read_vpd_reg.exit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cudbg_read_vpd_reg.exit:                          ; preds = %if.end4
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %conv1.i = zext i32 %call.i to i64
  %call1.i = call i32 @pci_read_vpd(ptr noundef %14, i64 noundef %conv1.i, i32 noundef 2, ptr noundef nonnull %vpd_str) #8
  %15 = call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %tobool6.not = icmp sgt i32 %call1.i, -1
  br i1 %tobool6.not, label %if.end8, label %cudbg_read_vpd_reg.exit.cleanup_crit_edge

cudbg_read_vpd_reg.exit.cleanup_crit_edge:        ; preds = %cudbg_read_vpd_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %cudbg_read_vpd_reg.exit
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %6, align 1
  %call10 = call i32 @kstrtouint(ptr noundef nonnull %vpd_str, i32 noundef 0, ptr noundef nonnull %vpd_vers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 88, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %sn19 = getelementptr inbounds %struct.vpd_params, ptr %vpd, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %18, ptr %sn19, i32 25)
  %bn = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 1
  %pn = getelementptr inbounds %struct.vpd_params, ptr %vpd, i32 0, i32 3
  %20 = call ptr @memcpy(ptr %bn, ptr %pn, i32 17)
  %na = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 2
  %na24 = getelementptr inbounds %struct.vpd_params, ptr %vpd, i32 0, i32 4
  %21 = call ptr @memcpy(ptr %na, ptr %na24, i32 13)
  %mn = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 3
  %id = getelementptr inbounds %struct.vpd_params, ptr %vpd, i32 0, i32 2
  %22 = call ptr @memcpy(ptr %mn, ptr %id, i32 17)
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %24, i32 23548
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %scfg_vers = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 8
  %27 = ptrtoint ptr %scfg_vers to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %scfg_vers, align 4
  %28 = ptrtoint ptr %vpd_vers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vpd_vers, align 4
  %vpd_vers29 = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 9
  %30 = ptrtoint ptr %vpd_vers29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %vpd_vers29, align 4
  %31 = ptrtoint ptr %fw_vers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw_vers, align 4
  %shr = lshr i32 %32, 24
  %conv = trunc i32 %shr to i16
  %fw_major = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 4
  %33 = ptrtoint ptr %fw_major to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %fw_major, align 4
  %shr30 = lshr i32 %32, 16
  %34 = trunc i32 %shr30 to i16
  %conv32 = and i16 %34, 255
  %fw_minor = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 5
  %35 = ptrtoint ptr %fw_minor to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv32, ptr %fw_minor, align 2
  %36 = trunc i32 %32 to i16
  %37 = lshr i16 %36, 8
  %fw_micro = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 6
  %38 = ptrtoint ptr %fw_micro to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %fw_micro, align 4
  %conv38 = and i16 %36, 255
  %fw_build = getelementptr inbounds %struct.cudbg_vpd_data, ptr %18, i32 0, i32 7
  %39 = ptrtoint ptr %fw_build to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv38, ptr %fw_build, align 2
  %call39 = call fastcc i32 @cudbg_write_and_release_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %cudbg_read_vpd_reg.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %15, %cudbg_read_vpd_reg.exit.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_vers) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpd_vers) #8
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %vpd) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %vpd_str) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_get_raw_vpd_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_get_fw_version(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_le_tcam(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  %tcam_region = alloca %struct.cudbg_tcam, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tcam_region) #8
  %3 = call ptr @memset(ptr %tcam_region, i32 0, i32 24)
  call void @cudbg_fill_le_tcam_info(ptr noundef %1, ptr noundef nonnull %tcam_region)
  %max_tid = getelementptr inbounds %struct.cudbg_tcam, ptr %tcam_region, i32 0, i32 5
  %4 = ptrtoint ptr %max_tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_tid, align 4
  %mul = mul i32 %5, 84
  %add = add i32 %mul, 24
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %add, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = call ptr @memcpy(ptr %7, ptr %tcam_region, i32 24)
  %9 = ptrtoint ptr %max_tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp67.not = icmp eq i32 %10, 0
  br i1 %cmp67.not, label %if.end.out_crit_edge, label %for.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %7, i32 24
  %.fca.1.gep = getelementptr inbounds [6 x i32], ptr %tcam_region, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [6 x i32], ptr %tcam_region, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [6 x i32], ptr %tcam_region, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [6 x i32], ptr %tcam_region, i32 0, i32 4
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %add20, %if.end24.for.body_crit_edge ]
  %tid_data.068 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %if.end24.for.body_crit_edge ]
  %11 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdbg_init, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %i.050.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %i.050.i, 2
  %add.i = add nuw nsw i32 %shl.i, 105728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !100
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %while.body.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

while.body.i:                                     ; preds = %for.body.i
  %or.i = or i32 %i.072, 4194304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %15 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %12, align 128
  %add.ptr.i45.i = getelementptr i8, ptr %17, i32 105716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %15) #8, !srcloc !100
  %dbig_cmd.i = getelementptr inbounds %struct.cudbg_tid_data, ptr %tid_data.068, i32 0, i32 1
  %18 = ptrtoint ptr %dbig_cmd.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i, ptr %dbig_cmd.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 128
  %add.ptr.i46.i = getelementptr i8, ptr %20, i32 105712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 83886080) #8, !srcloc !100
  %dbig_conf.i = getelementptr inbounds %struct.cudbg_tid_data, ptr %tid_data.068, i32 0, i32 2
  %21 = ptrtoint ptr %dbig_conf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %dbig_conf.i, align 4
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %12, align 128
  %add.ptr.i47.i = getelementptr i8, ptr %23, i32 105712
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %25 = and i32 %24, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.1.i = icmp eq i32 %25, 0
  br i1 %tobool.not.1.i, label %while.body.i.while.end.i_crit_edge, label %while.body.1.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.1.i:                                   ; preds = %while.body.i
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %12, align 128
  %add.ptr.i47.1.i = getelementptr i8, ptr %27, i32 105712
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.1.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %29 = and i32 %28, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.2.i = icmp eq i32 %29, 0
  br i1 %tobool.not.2.i, label %while.body.1.i.while.end.i_crit_edge, label %while.body.2.i

while.body.1.i.while.end.i_crit_edge:             ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.2.i:                                   ; preds = %while.body.1.i
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %12, align 128
  %add.ptr.i47.2.i = getelementptr i8, ptr %31, i32 105712
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.2.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %33 = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.3.i = icmp eq i32 %33, 0
  br i1 %tobool.not.3.i, label %while.body.2.i.while.end.i_crit_edge, label %while.body.3.i

while.body.2.i.while.end.i_crit_edge:             ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.3.i:                                   ; preds = %while.body.2.i
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %12, align 128
  %add.ptr.i47.3.i = getelementptr i8, ptr %35, i32 105712
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.3.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %37 = and i32 %36, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.4.i = icmp eq i32 %37, 0
  br i1 %tobool.not.4.i, label %while.body.3.i.while.end.i_crit_edge, label %while.body.4.i

while.body.3.i.while.end.i_crit_edge:             ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.4.i:                                   ; preds = %while.body.3.i
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %12, align 128
  %add.ptr.i47.4.i = getelementptr i8, ptr %39, i32 105712
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.4.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %41 = and i32 %40, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.5.i = icmp eq i32 %41, 0
  br i1 %tobool.not.5.i, label %while.body.4.i.while.end.i_crit_edge, label %while.body.5.i

while.body.4.i.while.end.i_crit_edge:             ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.5.i:                                   ; preds = %while.body.4.i
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %12, align 128
  %add.ptr.i47.5.i = getelementptr i8, ptr %43, i32 105712
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.5.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %45 = and i32 %44, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.6.i = icmp eq i32 %45, 0
  br i1 %tobool.not.6.i, label %while.body.5.i.while.end.i_crit_edge, label %while.body.6.i

while.body.5.i.while.end.i_crit_edge:             ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.6.i:                                   ; preds = %while.body.5.i
  %46 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %12, align 128
  %add.ptr.i47.6.i = getelementptr i8, ptr %47, i32 105712
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.6.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %49 = and i32 %48, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.7.i = icmp eq i32 %49, 0
  br i1 %tobool.not.7.i, label %while.body.6.i.while.end.i_crit_edge, label %while.body.7.i

while.body.6.i.while.end.i_crit_edge:             ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.7.i:                                   ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %12, align 128
  %add.ptr.i47.7.i = getelementptr i8, ptr %51, i32 105712
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.7.i) #8, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  br label %if.then5

while.end.i:                                      ; preds = %while.body.6.i.while.end.i_crit_edge, %while.body.5.i.while.end.i_crit_edge, %while.body.4.i.while.end.i_crit_edge, %while.body.3.i.while.end.i_crit_edge, %while.body.2.i.while.end.i_crit_edge, %while.body.1.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %12, align 128
  %add.ptr.i48.i = getelementptr i8, ptr %54, i32 105876
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #8, !srcloc !97
  %56 = call i32 @llvm.bswap.i32(i32 %55) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %dbig_rsp_stat.i = getelementptr inbounds %struct.cudbg_tid_data, ptr %tid_data.068, i32 0, i32 3
  %57 = ptrtoint ptr %dbig_rsp_stat.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %dbig_rsp_stat.i, align 4
  %and4.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %while.end.i.if.then5_crit_edge, label %while.end.i.for.body10.i_crit_edge

while.end.i.for.body10.i_crit_edge:               ; preds = %while.end.i
  br label %for.body10.i

while.end.i.if.then5_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %while.end.i.for.body10.i_crit_edge
  %i.151.i = phi i32 [ %inc15.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %while.end.i.for.body10.i_crit_edge ]
  %shl11.i = shl i32 %i.151.i, 2
  %add12.i = add nuw nsw i32 %shl11.i, 105888
  %58 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %12, align 128
  %add.ptr.i49.i = getelementptr i8, ptr %59, i32 %add12.i
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #8, !srcloc !97
  %61 = call i32 @llvm.bswap.i32(i32 %60) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx.i = getelementptr %struct.cudbg_tid_data, ptr %tid_data.068, i32 0, i32 4, i32 %i.151.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx.i, align 4
  %inc15.i = add nuw nsw i32 %i.151.i, 1
  %exitcond52.not.i = icmp eq i32 %inc15.i, 17
  br i1 %exitcond52.not.i, label %if.end8, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

if.then5:                                         ; preds = %while.end.i.if.then5_crit_edge, %while.body.7.i
  %sys_warn = getelementptr inbounds %struct.cudbg_error, ptr %cudbg_err, i32 0, i32 1
  %63 = ptrtoint ptr %sys_warn to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -41, ptr %sys_warn, align 4
  %64 = ptrtoint ptr %max_tid to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.072, ptr %max_tid, align 4
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %67 = call ptr @memcpy(ptr %66, ptr %tcam_region, i32 24)
  br label %out

if.end8:                                          ; preds = %for.body10.i
  %68 = ptrtoint ptr %tid_data.068 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %i.072, ptr %tid_data.068, align 4
  %69 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %70 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %71 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %72 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %72)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %73 = ptrtoint ptr %max_tid to i32
  call void @__asan_load4_noabort(i32 %73)
  %.fca.5.load = load i32, ptr %max_tid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.1.load, i32 %i.072)
  %cmp.i.i = icmp ugt i32 %.fca.1.load, %i.072
  br i1 %cmp.i.i, label %if.end8.cudbg_get_le_type.exit.i_crit_edge, label %if.else.i.i

if.end8.cudbg_get_le_type.exit.i_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_le_type.exit.i

if.else.i.i:                                      ; preds = %if.end8
  %74 = ptrtoint ptr %tcam_region to i32
  call void @__asan_load4_noabort(i32 %74)
  %.fca.0.load = load i32, ptr %tcam_region, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.0.load, i32 %i.072)
  %cmp1.i.i = icmp ugt i32 %.fca.0.load, %i.072
  br i1 %cmp1.i.i, label %if.else.i.i.cudbg_get_le_type.exit.i_crit_edge, label %if.else3.i.i

if.else.i.i.cudbg_get_le_type.exit.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_le_type.exit.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.2.load, i32 %i.072)
  %cmp4.i.i = icmp ugt i32 %.fca.2.load, %i.072
  br i1 %cmp4.i.i, label %if.else3.i.i.cudbg_get_le_type.exit.i_crit_edge, label %if.else6.i.i

if.else3.i.i.cudbg_get_le_type.exit.i_crit_edge:  ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_le_type.exit.i

if.else6.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.3.load, i32 %i.072)
  %cmp7.i.i = icmp ugt i32 %.fca.3.load, %i.072
  br i1 %cmp7.i.i, label %if.else6.i.i.cudbg_get_le_type.exit.i_crit_edge, label %if.else9.i.i

if.else6.i.i.cudbg_get_le_type.exit.i_crit_edge:  ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_le_type.exit.i

if.else9.i.i:                                     ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.4.load, i32 %i.072)
  %cmp10.i.i = icmp ugt i32 %.fca.4.load, %i.072
  br i1 %cmp10.i.i, label %if.else9.i.i.cudbg_get_le_type.exit.i_crit_edge, label %if.else12.i.i

if.else9.i.i.cudbg_get_le_type.exit.i_crit_edge:  ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_get_le_type.exit.i

if.else12.i.i:                                    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.5.load, i32 %i.072)
  %cmp13.i.i = icmp ugt i32 %.fca.5.load, %i.072
  %..i.i = select i1 %cmp13.i.i, i32 6, i32 8
  br label %cudbg_get_le_type.exit.i

cudbg_get_le_type.exit.i:                         ; preds = %if.else12.i.i, %if.else9.i.i.cudbg_get_le_type.exit.i_crit_edge, %if.else6.i.i.cudbg_get_le_type.exit.i_crit_edge, %if.else3.i.i.cudbg_get_le_type.exit.i_crit_edge, %if.else.i.i.cudbg_get_le_type.exit.i_crit_edge, %if.end8.cudbg_get_le_type.exit.i_crit_edge
  %type.0.i.i = phi i32 [ 1, %if.end8.cudbg_get_le_type.exit.i_crit_edge ], [ 2, %if.else.i.i.cudbg_get_le_type.exit.i_crit_edge ], [ 3, %if.else3.i.i.cudbg_get_le_type.exit.i_crit_edge ], [ 4, %if.else6.i.i.cudbg_get_le_type.exit.i_crit_edge ], [ 5, %if.else9.i.i.cudbg_get_le_type.exit.i_crit_edge ], [ %..i.i, %if.else12.i.i ]
  %and.i = and i32 %i.072, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cudbg_get_le_type.exit.i.if.end24_crit_edge

cudbg_get_le_type.exit.i.if.end24_crit_edge:      ; preds = %cudbg_get_le_type.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end.i:                                         ; preds = %cudbg_get_le_type.exit.i
  %75 = zext i32 %type.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %type.0.i.i, label %if.end.i.if.end24_crit_edge [
    i32 6, label %if.then2.i
    i32 1, label %if.then5.i
  ]

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i52 = getelementptr %struct.cudbg_tid_data, ptr %tid_data.068, i32 0, i32 4, i32 16
  %76 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i52, align 4
  %and3.i = and i32 %77, 32768
  br label %cudbg_is_ipv6_entry.exit

if.then5.i:                                       ; preds = %if.end.i
  %arrayidx7.i = getelementptr %struct.cudbg_tid_data, ptr %tid_data.068, i32 0, i32 4, i32 16
  %78 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx7.i, align 4
  %and8.i = and i32 %79, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.then5.i.if.end24_crit_edge, label %if.then10.i

if.then5.i.if.end24_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then10.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12.i = getelementptr %struct.cudbg_tid_data, ptr %tid_data.068, i32 0, i32 4, i32 9
  %80 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %81)
  %cmp13.i = icmp eq i32 %81, 12582912
  %conv.i = zext i1 %cmp13.i to i32
  br label %cudbg_is_ipv6_entry.exit

cudbg_is_ipv6_entry.exit:                         ; preds = %if.then10.i, %if.then2.i
  %retval.0.i53 = phi i32 [ %and3.i, %if.then2.i ], [ %conv.i, %if.then10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i53)
  %tobool10.not = icmp eq i32 %retval.0.i53, 0
  br i1 %tobool10.not, label %cudbg_is_ipv6_entry.exit.if.end24_crit_edge, label %if.then11

cudbg_is_ipv6_entry.exit.if.end24_crit_edge:      ; preds = %cudbg_is_ipv6_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then11:                                        ; preds = %cudbg_is_ipv6_entry.exit
  %82 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %chip, align 8
  %84 = and i32 %83, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %84)
  %cmp.i.not = icmp eq i32 %84, 96
  br i1 %cmp.i.not, label %land.lhs.true, label %if.then11.if.else_crit_edge

if.then11.if.else_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then11
  %85 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %.fca.2.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.072, i32 %86)
  %cmp14.not = icmp uge i32 %i.072, %86
  %add17 = add i32 %86, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %i.072, i32 %add17)
  %cmp18 = icmp ult i32 %i.072, %add17
  %or.cond = and i1 %cmp14.not, %cmp18
  br i1 %or.cond, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then11.if.else_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else, %land.lhs.true.if.end24_crit_edge, %cudbg_is_ipv6_entry.exit.if.end24_crit_edge, %if.then5.i.if.end24_crit_edge, %if.end.i.if.end24_crit_edge, %cudbg_get_le_type.exit.i.if.end24_crit_edge
  %.sink = phi i32 [ 2, %if.else ], [ 4, %land.lhs.true.if.end24_crit_edge ], [ 1, %if.end.i.if.end24_crit_edge ], [ 1, %if.then5.i.if.end24_crit_edge ], [ 1, %cudbg_get_le_type.exit.i.if.end24_crit_edge ], [ 1, %cudbg_is_ipv6_entry.exit.if.end24_crit_edge ]
  %add20 = add i32 %i.072, %.sink
  %incdec.ptr = getelementptr %struct.cudbg_tid_data, ptr %tid_data.068, i32 1
  %87 = ptrtoint ptr %max_tid to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_tid, align 4
  %cmp = icmp ult i32 %add20, %88
  br i1 %cmp, label %if.end24.for.body_crit_edge, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out:                                              ; preds = %if.end24.out_crit_edge, %if.then5, %if.end.out_crit_edge
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %89 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp.i55 = icmp eq i8 %90, 1
  br i1 %cmp.i55, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %out
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %91 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %93 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp34.i.i = icmp sgt i32 %97, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %97, %if.else.i.while.body.i.i_crit_edge ]
  %98 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %100, i32 %bytes_read.036.i.i
  %101 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr.i.i56, ptr %data4.i.i, align 4
  %102 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %98, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %98
  %add.i.i = add i32 %98, %bytes_read.036.i.i
  %cmp.i.i57 = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i57, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %103 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %104, %92
  %105 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tcam_region) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_cctrl(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 1024, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void @t4_read_cong_tbl(ptr noundef %1, ptr noundef %4) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %5 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %7 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %9 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34.i.i = icmp sgt i32 %13, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %13, %if.else.i.while.body.i.i_crit_edge ]
  %14 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %bytes_read.036.i.i
  %17 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %18 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %14, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %14
  %add.i.i = add i32 %14, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %19 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %20, %8
  %21 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_read_cong_tbl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_ma_indirect(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip, align 8
  %5 = and i32 %4, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %5)
  %cmp = icmp ult i32 %5, 96
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 864, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body37.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body37.preheader:                             ; preds = %if.end
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %outbuf = getelementptr inbounds %struct.ireg_buf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 30968, ptr %7, align 4
  %ireg_data = getelementptr inbounds %struct.ireg_field, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %ireg_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 30972, ptr %ireg_data, align 4
  %ireg_local_offset = getelementptr inbounds %struct.ireg_field, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ireg_local_offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 40960, ptr %ireg_local_offset, align 4
  %ireg_offset_range = getelementptr inbounds %struct.ireg_field, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %ireg_offset_range to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 23, ptr %ireg_offset_range, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 30968, i32 noundef 30972, ptr noundef %outbuf, i32 noundef 23, i32 noundef 40960) #8
  %incdec.ptr = getelementptr %struct.ireg_buf, ptr %7, i32 1
  %outbuf.1 = getelementptr %struct.ireg_buf, ptr %7, i32 1, i32 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30968, ptr %incdec.ptr, align 4
  %ireg_data.1 = getelementptr %struct.ireg_buf, ptr %7, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %ireg_data.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 30972, ptr %ireg_data.1, align 4
  %ireg_local_offset.1 = getelementptr %struct.ireg_buf, ptr %7, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %ireg_local_offset.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 41984, ptr %ireg_local_offset.1, align 4
  %ireg_offset_range.1 = getelementptr %struct.ireg_buf, ptr %7, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %ireg_offset_range.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 30, ptr %ireg_offset_range.1, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 30968, i32 noundef 30972, ptr noundef %outbuf.1, i32 noundef 30, i32 noundef 41984) #8
  %incdec.ptr.1 = getelementptr %struct.ireg_buf, ptr %7, i32 2
  %outbuf.2 = getelementptr %struct.ireg_buf, ptr %7, i32 2, i32 1
  %16 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 30968, ptr %incdec.ptr.1, align 4
  %ireg_data.2 = getelementptr %struct.ireg_buf, ptr %7, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %ireg_data.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 30972, ptr %ireg_data.2, align 4
  %ireg_local_offset.2 = getelementptr %struct.ireg_buf, ptr %7, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %ireg_local_offset.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 43008, ptr %ireg_local_offset.2, align 4
  %ireg_offset_range.2 = getelementptr %struct.ireg_buf, ptr %7, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %ireg_offset_range.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %ireg_offset_range.2, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 30968, i32 noundef 30972, ptr noundef %outbuf.2, i32 noundef 20, i32 noundef 43008) #8
  %incdec.ptr.2 = getelementptr %struct.ireg_buf, ptr %7, i32 3
  %20 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 30968, ptr %incdec.ptr.2, align 4
  %ireg_data29 = getelementptr %struct.ireg_buf, ptr %7, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %ireg_data29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 30972, ptr %ireg_data29, align 4
  %ireg_local_offset32 = getelementptr %struct.ireg_buf, ptr %7, i32 3, i32 0, i32 2
  %22 = ptrtoint ptr %ireg_local_offset32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 58368, ptr %ireg_local_offset32, align 4
  %outbuf22 = getelementptr %struct.ireg_buf, ptr %7, i32 3, i32 1
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body37.preheader
  %buff21.0102 = phi ptr [ %incdec.ptr41, %for.body37.for.body37_crit_edge ], [ %outbuf22, %for.body37.preheader ]
  %j.0101 = phi i32 [ %inc44, %for.body37.for.body37_crit_edge ], [ 0, %for.body37.preheader ]
  %23 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr.2, align 4
  %25 = ptrtoint ptr %ireg_data29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ireg_data29, align 4
  %27 = ptrtoint ptr %ireg_local_offset32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ireg_local_offset32, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef %24, i32 noundef %26, ptr noundef %buff21.0102, i32 noundef 1, i32 noundef %28) #8
  %incdec.ptr41 = getelementptr i32, ptr %buff21.0102, i32 1
  %29 = ptrtoint ptr %ireg_local_offset32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ireg_local_offset32, align 4
  %add = add i32 %30, 32
  store i32 %add, ptr %ireg_local_offset32, align 4
  %inc44 = add nuw i32 %j.0101, 1
  %exitcond.not = icmp eq i32 %inc44, 17
  br i1 %exitcond.not, label %for.body37.preheader.1, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

for.body37.preheader.1:                           ; preds = %for.body37
  %incdec.ptr46 = getelementptr %struct.ireg_buf, ptr %7, i32 4
  %31 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 30968, ptr %incdec.ptr46, align 4
  %ireg_data29.1 = getelementptr %struct.ireg_buf, ptr %7, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %ireg_data29.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 30972, ptr %ireg_data29.1, align 4
  %ireg_local_offset32.1 = getelementptr %struct.ireg_buf, ptr %7, i32 4, i32 0, i32 2
  %33 = ptrtoint ptr %ireg_local_offset32.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 58944, ptr %ireg_local_offset32.1, align 4
  %outbuf22.1 = getelementptr %struct.ireg_buf, ptr %7, i32 4, i32 1
  br label %for.body37.1

for.body37.1:                                     ; preds = %for.body37.1.for.body37.1_crit_edge, %for.body37.preheader.1
  %buff21.0102.1 = phi ptr [ %incdec.ptr41.1, %for.body37.1.for.body37.1_crit_edge ], [ %outbuf22.1, %for.body37.preheader.1 ]
  %j.0101.1 = phi i32 [ %inc44.1, %for.body37.1.for.body37.1_crit_edge ], [ 0, %for.body37.preheader.1 ]
  %34 = ptrtoint ptr %incdec.ptr46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %incdec.ptr46, align 4
  %36 = ptrtoint ptr %ireg_data29.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ireg_data29.1, align 4
  %38 = ptrtoint ptr %ireg_local_offset32.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ireg_local_offset32.1, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef %35, i32 noundef %37, ptr noundef %buff21.0102.1, i32 noundef 1, i32 noundef %39) #8
  %incdec.ptr41.1 = getelementptr i32, ptr %buff21.0102.1, i32 1
  %40 = ptrtoint ptr %ireg_local_offset32.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ireg_local_offset32.1, align 4
  %add.1 = add i32 %41, 32
  store i32 %add.1, ptr %ireg_local_offset32.1, align 4
  %inc44.1 = add nuw nsw i32 %j.0101.1, 1
  %exitcond.1.not = icmp eq i32 %inc44.1, 13
  br i1 %exitcond.1.not, label %for.end45.1, label %for.body37.1.for.body37.1_crit_edge

for.body37.1.for.body37.1_crit_edge:              ; preds = %for.body37.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37.1

for.end45.1:                                      ; preds = %for.body37.1
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %42 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp.i = icmp eq i8 %43, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end45.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %for.end45.1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %44 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %46 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp34.i.i = icmp sgt i32 %50, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %50, %if.else.i.while.body.i.i_crit_edge ]
  %51 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %bytes_read.036.i.i
  %54 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %55 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %51, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %51
  %add.i.i = add i32 %51, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %56 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %57, %45
  %58 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ -24, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_ulptx_la(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 26252, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -856838143, ptr %4, align 4
  %revision = getelementptr inbounds %struct.cudbg_ver_hdr, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %revision, align 4
  %size = getelementptr inbounds %struct.cudbg_ver_hdr, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 26244, ptr %size, align 2
  %8 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 8
  %wrptr = getelementptr i8, ptr %8, i32 52
  %rddata = getelementptr i8, ptr %8, i32 96
  %rd_data = getelementptr i8, ptr %8, i32 140
  br label %for.body

for.cond22.preheader:                             ; preds = %for.inc19
  %rdptr_asic = getelementptr i8, ptr %8, i32 22668
  %rddata_asic = getelementptr i8, ptr %8, i32 23180
  br label %for.body24

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %if.end
  %i.0120 = phi i32 [ 0, %if.end ], [ %inc20, %for.inc19.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.0120, 4
  %add = add nuw nsw i32 %mul, 36544
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !97
  %12 = call i32 @llvm.bswap.i32(i32 %11) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx = getelementptr [11 x i32], ptr %add.ptr, i32 0, i32 %i.0120
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  %add4 = add nuw nsw i32 %mul, 36552
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %add.ptr.i107 = getelementptr i8, ptr %15, i32 %add4
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #8, !srcloc !97
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx6 = getelementptr [11 x i32], ptr %wrptr, i32 0, i32 %i.0120
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx6, align 4
  %add8 = add nuw nsw i32 %mul, 36548
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %add.ptr.i108 = getelementptr i8, ptr %20, i32 %add8
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #8, !srcloc !97
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx10 = getelementptr [11 x i32], ptr %rddata, i32 0, i32 %i.0120
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx10, align 4
  %arrayidx17 = getelementptr [11 x [512 x i32]], ptr %rd_data, i32 0, i32 %i.0120
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body
  %j.0119 = phi i32 [ 0, %for.body ], [ %inc, %for.body13.for.body13_crit_edge ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %add.ptr.i109 = getelementptr i8, ptr %25, i32 %add8
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #8, !srcloc !97
  %27 = call i32 @llvm.bswap.i32(i32 %26) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx18 = getelementptr [512 x i32], ptr %arrayidx17, i32 0, i32 %j.0119
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx18, align 4
  %inc = add nuw nsw i32 %j.0119, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc19, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.inc19:                                        ; preds = %for.body13
  %inc20 = add nuw nsw i32 %i.0120, 1
  %exitcond123.not = icmp eq i32 %inc20, 11
  br i1 %exitcond123.not, label %for.cond22.preheader, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.cond22.preheader
  %i.1121 = phi i32 [ 0, %for.cond22.preheader ], [ %inc51, %for.body24.for.body24_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 128
  %add.ptr.i110 = getelementptr i8, ptr %30, i32 36720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 16777216) #8, !srcloc !100
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  %add.ptr.i111 = getelementptr i8, ptr %32, i32 36720
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #8, !srcloc !97
  %34 = call i32 @llvm.bswap.i32(i32 %33) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx26 = getelementptr [128 x i32], ptr %rdptr_asic, i32 0, i32 %i.1121
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx26, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 128
  %add.ptr.i112 = getelementptr i8, ptr %37, i32 36724
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #8, !srcloc !97
  %39 = call i32 @llvm.bswap.i32(i32 %38) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx28 = getelementptr [128 x [6 x i32]], ptr %rddata_asic, i32 0, i32 %i.1121
  %40 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx28, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 128
  %add.ptr.i113 = getelementptr i8, ptr %42, i32 36728
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #8, !srcloc !97
  %44 = call i32 @llvm.bswap.i32(i32 %43) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx33 = getelementptr [6 x i32], ptr %arrayidx28, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx33, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 128
  %add.ptr.i114 = getelementptr i8, ptr %47, i32 36732
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #8, !srcloc !97
  %49 = call i32 @llvm.bswap.i32(i32 %48) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx37 = getelementptr [6 x i32], ptr %arrayidx28, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx37, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 128
  %add.ptr.i115 = getelementptr i8, ptr %52, i32 36736
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #8, !srcloc !97
  %54 = call i32 @llvm.bswap.i32(i32 %53) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx41 = getelementptr [6 x i32], ptr %arrayidx28, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx41, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 128
  %add.ptr.i116 = getelementptr i8, ptr %57, i32 36740
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #8, !srcloc !97
  %59 = call i32 @llvm.bswap.i32(i32 %58) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx45 = getelementptr [6 x i32], ptr %arrayidx28, i32 0, i32 4
  %60 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx45, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 128
  %add.ptr.i117 = getelementptr i8, ptr %62, i32 36800
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #8, !srcloc !97
  %64 = call i32 @llvm.bswap.i32(i32 %63) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %arrayidx49 = getelementptr [6 x i32], ptr %arrayidx28, i32 0, i32 5
  %65 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx49, align 4
  %inc51 = add nuw nsw i32 %i.1121, 1
  %exitcond124.not = icmp eq i32 %inc51, 128
  br i1 %exitcond124.not, label %for.end52, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.end52:                                        ; preds = %for.body24
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %66 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp.i = icmp eq i8 %67, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %for.end52
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %68 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %70 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp34.i.i = icmp sgt i32 %74, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %74, %if.else.i.while.body.i.i_crit_edge ]
  %75 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 %bytes_read.036.i.i
  %78 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %79 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %75, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %75
  %add.i.i = add i32 %75, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %80 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %81, %69
  %82 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_up_cim_indirect(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip, align 8
  %5 = trunc i32 %4 to i8
  %trunc = and i8 %5, -16
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %trunc, label %entry.cleanup67_crit_edge [
    i8 80, label %entry.if.end7_crit_edge
    i8 96, label %if.end7.fold.split
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end7.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.end7.fold.split, %entry.if.end7_crit_edge
  %n.0 = phi i32 [ 13, %entry.if.end7_crit_edge ], [ 22, %if.end7.fold.split ]
  %mul = mul nuw nsw i32 %n.0, 144
  %call8 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %mul, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup67_crit_edge

if.end7.cleanup67_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end11:                                         ; preds = %if.end7
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc63.for.body_crit_edge, %if.end11
  %i.0136 = phi i32 [ 0, %if.end11 ], [ %inc64, %for.inc63.for.body_crit_edge ]
  %instance.0135 = phi i32 [ 0, %if.end11 ], [ %instance.1, %for.inc63.for.body_crit_edge ]
  %up_cim.0131 = phi ptr [ %8, %if.end11 ], [ %incdec.ptr61, %for.inc63.for.body_crit_edge ]
  %outbuf = getelementptr inbounds %struct.ireg_buf, ptr %up_cim.0131, i32 0, i32 1
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip, align 8
  %11 = trunc i32 %10 to i8
  %trunc138 = and i8 %11, -16
  %12 = zext i8 %trunc138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %trunc138, label %for.body.if.end47_crit_edge [
    i8 80, label %if.then16
    i8 96, label %if.then31
  ]

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [13 x [5 x i32]], ptr @t5_up_cim_reg_array, i32 0, i32 %i.0136
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %up_cim.0131 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %up_cim.0131, align 4
  %arrayidx19 = getelementptr [13 x [5 x i32]], ptr @t5_up_cim_reg_array, i32 0, i32 %i.0136, i32 1
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 4
  %ireg_data = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 1
  %18 = ptrtoint ptr %ireg_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ireg_data, align 4
  %arrayidx21 = getelementptr [13 x [5 x i32]], ptr @t5_up_cim_reg_array, i32 0, i32 %i.0136, i32 2
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx21, align 4
  %ireg_local_offset = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 2
  %21 = ptrtoint ptr %ireg_local_offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ireg_local_offset, align 4
  %arrayidx23 = getelementptr [13 x [5 x i32]], ptr @t5_up_cim_reg_array, i32 0, i32 %i.0136, i32 3
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx23, align 4
  %ireg_offset_range = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 3
  %24 = ptrtoint ptr %ireg_offset_range to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ireg_offset_range, align 4
  %arrayidx25 = getelementptr [13 x [5 x i32]], ptr @t5_up_cim_reg_array, i32 0, i32 %i.0136, i32 4
  br label %if.end47.sink.split

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx32 = getelementptr [22 x [5 x i32]], ptr @t6_up_cim_reg_array, i32 0, i32 %i.0136
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx32, align 4
  %27 = ptrtoint ptr %up_cim.0131 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %up_cim.0131, align 4
  %arrayidx36 = getelementptr [22 x [5 x i32]], ptr @t6_up_cim_reg_array, i32 0, i32 %i.0136, i32 1
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx36, align 4
  %ireg_data37 = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 1
  %30 = ptrtoint ptr %ireg_data37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ireg_data37, align 4
  %arrayidx39 = getelementptr [22 x [5 x i32]], ptr @t6_up_cim_reg_array, i32 0, i32 %i.0136, i32 2
  %31 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx39, align 4
  %ireg_local_offset40 = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 2
  %33 = ptrtoint ptr %ireg_local_offset40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ireg_local_offset40, align 4
  %arrayidx42 = getelementptr [22 x [5 x i32]], ptr @t6_up_cim_reg_array, i32 0, i32 %i.0136, i32 3
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx42, align 4
  %ireg_offset_range43 = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 3
  %36 = ptrtoint ptr %ireg_offset_range43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ireg_offset_range43, align 4
  %arrayidx45 = getelementptr [22 x [5 x i32]], ptr @t6_up_cim_reg_array, i32 0, i32 %i.0136, i32 4
  br label %if.end47.sink.split

if.end47.sink.split:                              ; preds = %if.then31, %if.then16
  %arrayidx45.sink = phi ptr [ %arrayidx45, %if.then31 ], [ %arrayidx25, %if.then16 ]
  %37 = ptrtoint ptr %arrayidx45.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx45.sink, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %for.body.if.end47_crit_edge
  %instance.1 = phi i32 [ %instance.0135, %for.body.if.end47_crit_edge ], [ %38, %if.end47.sink.split ]
  %39 = zext i32 %instance.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %instance.1, label %sw.epilog.thread [
    i32 4, label %if.end47.sw.epilog_crit_edge
    i32 16, label %sw.bb49
  ]

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %ireg_offset_range51 = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 3
  %40 = ptrtoint ptr %ireg_offset_range51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ireg_offset_range51, align 4
  br label %for.body54.lr.ph

sw.epilog:                                        ; preds = %sw.bb49, %if.end47.sw.epilog_crit_edge
  %local_offset.0 = phi i32 [ 16, %sw.bb49 ], [ 288, %if.end47.sw.epilog_crit_edge ]
  %ireg_offset_range50 = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 3
  %42 = ptrtoint ptr %ireg_offset_range50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ireg_offset_range50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp53128.not = icmp eq i32 %43, 0
  br i1 %cmp53128.not, label %sw.epilog.for.inc63_crit_edge, label %sw.epilog.for.body54.lr.ph_crit_edge

sw.epilog.for.body54.lr.ph_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54.lr.ph

sw.epilog.for.inc63_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63

for.body54.lr.ph:                                 ; preds = %sw.epilog.for.body54.lr.ph_crit_edge, %sw.epilog.thread
  %iter.0148 = phi i32 [ 1, %sw.epilog.thread ], [ %43, %sw.epilog.for.body54.lr.ph_crit_edge ]
  %local_range.0147 = phi i32 [ %41, %sw.epilog.thread ], [ 1, %sw.epilog.for.body54.lr.ph_crit_edge ]
  %local_offset.0146 = phi i32 [ 0, %sw.epilog.thread ], [ %local_offset.0, %sw.epilog.for.body54.lr.ph_crit_edge ]
  %ireg_local_offset55 = getelementptr inbounds %struct.ireg_field, ptr %up_cim.0131, i32 0, i32 2
  br label %for.body54

for.body54:                                       ; preds = %for.inc.for.body54_crit_edge, %for.body54.lr.ph
  %buff.0130 = phi ptr [ %outbuf, %for.body54.lr.ph ], [ %incdec.ptr, %for.inc.for.body54_crit_edge ]
  %j.0129 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc, %for.inc.for.body54_crit_edge ]
  %44 = ptrtoint ptr %ireg_local_offset55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ireg_local_offset55, align 4
  %mul56 = mul i32 %j.0129, %local_offset.0146
  %add = add i32 %45, %mul56
  %call57 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef %add, i32 noundef %local_range.0147, ptr noundef %buff.0130) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %for.inc, label %for.body54.cleanup67.sink.split_crit_edge

for.body54.cleanup67.sink.split_crit_edge:        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67.sink.split

for.inc:                                          ; preds = %for.body54
  %inc = add nuw i32 %j.0129, 1
  %incdec.ptr = getelementptr i32, ptr %buff.0130, i32 1
  %exitcond.not = icmp eq i32 %inc, %iter.0148
  br i1 %exitcond.not, label %for.inc.for.inc63_crit_edge, label %for.inc.for.body54_crit_edge

for.inc.for.body54_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.inc.for.inc63_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63

for.inc63:                                        ; preds = %for.inc.for.inc63_crit_edge, %sw.epilog.for.inc63_crit_edge
  %incdec.ptr61 = getelementptr %struct.ireg_buf, ptr %up_cim.0131, i32 1
  %inc64 = add nuw nsw i32 %i.0136, 1
  %exitcond141.not = icmp eq i32 %inc64, %n.0
  br i1 %exitcond141.not, label %for.end65, label %for.inc63.for.body_crit_edge

for.inc63.for.body_crit_edge:                     ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end65:                                        ; preds = %for.inc63
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %46 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp.i124 = icmp eq i8 %47, 1
  br i1 %cmp.i124, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup67.sink.split

if.else.i:                                        ; preds = %for.end65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %48 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %50 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp34.i.i = icmp sgt i32 %54, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %54, %if.else.i.while.body.i.i_crit_edge ]
  %55 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %57, i32 %bytes_read.036.i.i
  %58 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %59 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %55, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %55
  %add.i.i = add i32 %55, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %60 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %61, %49
  %62 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup67.sink.split

cleanup67.sink.split:                             ; preds = %cudbg_do_compression.exit.i, %if.then.i, %for.body54.cleanup67.sink.split_crit_edge
  %retval.2.ph = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ], [ %call57, %for.body54.cleanup67.sink.split_crit_edge ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup67.sink.split, %if.end7.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.2 = phi i32 [ %call8, %if.end7.cleanup67_crit_edge ], [ -28, %entry.cleanup67_crit_edge ], [ %retval.2.ph, %cleanup67.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_pbt_tables(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 2176, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call1 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 10240, i32 noundef 1, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr [8 x i32], ptr %4, i32 0, i32 1
  %call1.1 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 10244, i32 noundef 1, ptr noundef %arrayidx.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool2.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool2.not.1, label %for.cond.1, label %for.cond.if.then3_crit_edge

for.cond.if.then3_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr [8 x i32], ptr %4, i32 0, i32 2
  %call1.2 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 10248, i32 noundef 1, ptr noundef %arrayidx.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool2.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool2.not.2, label %for.cond.2, label %for.cond.1.if.then3_crit_edge

for.cond.1.if.then3_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr [8 x i32], ptr %4, i32 0, i32 3
  %call1.3 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 10252, i32 noundef 1, ptr noundef %arrayidx.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool2.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool2.not.3, label %for.cond.3, label %for.cond.2.if.then3_crit_edge

for.cond.2.if.then3_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr [8 x i32], ptr %4, i32 0, i32 4
  %call1.4 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 10256, i32 noundef 1, ptr noundef %arrayidx.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %tobool2.not.4 = icmp eq i32 %call1.4, 0
  br i1 %tobool2.not.4, label %for.cond.4, label %for.cond.3.if.then3_crit_edge

for.cond.3.if.then3_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr [8 x i32], ptr %4, i32 0, i32 5
  %call1.5 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 10260, i32 noundef 1, ptr noundef %arrayidx.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %tobool2.not.5 = icmp eq i32 %call1.5, 0
  br i1 %tobool2.not.5, label %for.cond.5, label %for.cond.4.if.then3_crit_edge

for.cond.4.if.then3_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr [8 x i32], ptr %4, i32 0, i32 6
  %call1.6 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 10264, i32 noundef 1, ptr noundef %arrayidx.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %tobool2.not.6 = icmp eq i32 %call1.6, 0
  br i1 %tobool2.not.6, label %for.cond.6, label %for.cond.5.if.then3_crit_edge

for.cond.5.if.then3_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr [8 x i32], ptr %4, i32 0, i32 7
  %call1.7 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 10268, i32 noundef 1, ptr noundef %arrayidx.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %tobool2.not.7 = icmp eq i32 %call1.7, 0
  br i1 %tobool2.not.7, label %for.cond.6.for.body7_crit_edge, label %for.cond.6.if.then3_crit_edge

for.cond.6.if.then3_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond.6.for.body7_crit_edge:                   ; preds = %for.cond.6
  br label %for.body7

if.then3:                                         ; preds = %for.cond.6.if.then3_crit_edge, %for.cond.5.if.then3_crit_edge, %for.cond.4.if.then3_crit_edge, %for.cond.3.if.then3_crit_edge, %for.cond.2.if.then3_crit_edge, %for.cond.1.if.then3_crit_edge, %for.cond.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %call1.lcssa = phi i32 [ %call1, %if.end.if.then3_crit_edge ], [ %call1.1, %for.cond.if.then3_crit_edge ], [ %call1.2, %for.cond.1.if.then3_crit_edge ], [ %call1.3, %for.cond.2.if.then3_crit_edge ], [ %call1.4, %for.cond.3.if.then3_crit_edge ], [ %call1.5, %for.cond.4.if.then3_crit_edge ], [ %call1.6, %for.cond.5.if.then3_crit_edge ], [ %call1.7, %for.cond.6.if.then3_crit_edge ]
  %5 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1.lcssa, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

for.cond5:                                        ; preds = %for.body7
  %inc17 = add nuw nsw i32 %i.1102, 1
  %exitcond.not = icmp eq i32 %inc17, 16
  br i1 %exitcond.not, label %for.body21.preheader, label %for.cond5.for.body7_crit_edge

for.cond5.for.body7_crit_edge:                    ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.body21.preheader:                             ; preds = %for.cond5
  %arrayidx24 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 2, i32 0
  %call25 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 12288, i32 noundef 1, ptr noundef %arrayidx24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond19, label %for.body21.preheader.if.then27_crit_edge

for.body21.preheader.if.then27_crit_edge:         ; preds = %for.body21.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.body7:                                        ; preds = %for.cond5.for.body7_crit_edge, %for.cond.6.for.body7_crit_edge
  %i.1102 = phi i32 [ %inc17, %for.cond5.for.body7_crit_edge ], [ 0, %for.cond.6.for.body7_crit_edge ]
  %mul8 = shl i32 %i.1102, 2
  %add9 = add nuw nsw i32 %mul8, 10304
  %arrayidx10 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 1, i32 %i.1102
  %call11 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef %add9, i32 noundef 1, ptr noundef %arrayidx10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond5, label %if.then13

if.then13:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call11, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

for.cond19:                                       ; preds = %for.body21.preheader
  %arrayidx24.1 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 2, i32 1
  %call25.1 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 12292, i32 noundef 1, ptr noundef %arrayidx24.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %tobool26.not.1 = icmp eq i32 %call25.1, 0
  br i1 %tobool26.not.1, label %for.cond19.1, label %for.cond19.if.then27_crit_edge

for.cond19.if.then27_crit_edge:                   ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.cond19.1:                                     ; preds = %for.cond19
  %arrayidx24.2 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 2, i32 2
  %call25.2 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 12296, i32 noundef 1, ptr noundef %arrayidx24.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %tobool26.not.2 = icmp eq i32 %call25.2, 0
  br i1 %tobool26.not.2, label %for.cond19.2, label %for.cond19.1.if.then27_crit_edge

for.cond19.1.if.then27_crit_edge:                 ; preds = %for.cond19.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.cond19.2:                                     ; preds = %for.cond19.1
  %arrayidx24.3 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 2, i32 3
  %call25.3 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 12300, i32 noundef 1, ptr noundef %arrayidx24.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3)
  %tobool26.not.3 = icmp eq i32 %call25.3, 0
  br i1 %tobool26.not.3, label %for.cond19.3, label %for.cond19.2.if.then27_crit_edge

for.cond19.2.if.then27_crit_edge:                 ; preds = %for.cond19.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.cond19.3:                                     ; preds = %for.cond19.2
  %arrayidx24.4 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 2, i32 4
  %call25.4 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 12304, i32 noundef 1, ptr noundef %arrayidx24.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.4)
  %tobool26.not.4 = icmp eq i32 %call25.4, 0
  br i1 %tobool26.not.4, label %for.cond19.4, label %for.cond19.3.if.then27_crit_edge

for.cond19.3.if.then27_crit_edge:                 ; preds = %for.cond19.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.cond19.4:                                     ; preds = %for.cond19.3
  %arrayidx24.5 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 2, i32 5
  %call25.5 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 12308, i32 noundef 1, ptr noundef %arrayidx24.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.5)
  %tobool26.not.5 = icmp eq i32 %call25.5, 0
  br i1 %tobool26.not.5, label %for.cond19.5, label %for.cond19.4.if.then27_crit_edge

for.cond19.4.if.then27_crit_edge:                 ; preds = %for.cond19.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.cond19.5:                                     ; preds = %for.cond19.4
  %arrayidx24.6 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 2, i32 6
  %call25.6 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 12312, i32 noundef 1, ptr noundef %arrayidx24.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.6)
  %tobool26.not.6 = icmp eq i32 %call25.6, 0
  br i1 %tobool26.not.6, label %for.cond19.6, label %for.cond19.5.if.then27_crit_edge

for.cond19.5.if.then27_crit_edge:                 ; preds = %for.cond19.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.cond19.6:                                     ; preds = %for.cond19.5
  %arrayidx24.7 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 2, i32 7
  %call25.7 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef 12316, i32 noundef 1, ptr noundef %arrayidx24.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.7)
  %tobool26.not.7 = icmp eq i32 %call25.7, 0
  br i1 %tobool26.not.7, label %for.cond19.6.for.body35_crit_edge, label %for.cond19.6.if.then27_crit_edge

for.cond19.6.if.then27_crit_edge:                 ; preds = %for.cond19.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.cond19.6.for.body35_crit_edge:                ; preds = %for.cond19.6
  br label %for.body35

if.then27:                                        ; preds = %for.cond19.6.if.then27_crit_edge, %for.cond19.5.if.then27_crit_edge, %for.cond19.4.if.then27_crit_edge, %for.cond19.3.if.then27_crit_edge, %for.cond19.2.if.then27_crit_edge, %for.cond19.1.if.then27_crit_edge, %for.cond19.if.then27_crit_edge, %for.body21.preheader.if.then27_crit_edge
  %call25.lcssa = phi i32 [ %call25, %for.body21.preheader.if.then27_crit_edge ], [ %call25.1, %for.cond19.if.then27_crit_edge ], [ %call25.2, %for.cond19.1.if.then27_crit_edge ], [ %call25.3, %for.cond19.2.if.then27_crit_edge ], [ %call25.4, %for.cond19.3.if.then27_crit_edge ], [ %call25.5, %for.cond19.4.if.then27_crit_edge ], [ %call25.6, %for.cond19.5.if.then27_crit_edge ], [ %call25.7, %for.cond19.6.if.then27_crit_edge ]
  %7 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call25.lcssa, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

for.cond33:                                       ; preds = %for.body35
  %inc45 = add nuw nsw i32 %i.3104, 1
  %exitcond111.not = icmp eq i32 %inc45, 512
  br i1 %exitcond111.not, label %for.end46, label %for.cond33.for.body35_crit_edge

for.cond33.for.body35_crit_edge:                  ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.body35:                                       ; preds = %for.cond33.for.body35_crit_edge, %for.cond19.6.for.body35_crit_edge
  %i.3104 = phi i32 [ %inc45, %for.cond33.for.body35_crit_edge ], [ 0, %for.cond19.6.for.body35_crit_edge ]
  %mul36 = shl i32 %i.3104, 2
  %add37 = add nuw nsw i32 %mul36, 14336
  %arrayidx38 = getelementptr %struct.cudbg_pbt_tables, ptr %4, i32 0, i32 3, i32 %i.3104
  %call39 = call i32 @t4_cim_read(ptr noundef %1, i32 noundef %add37, i32 noundef 1, ptr noundef %arrayidx38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.cond33, label %if.then41

if.then41:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %cudbg_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call39, ptr %cudbg_err, align 4
  br label %cleanup.sink.split

for.end46:                                        ; preds = %for.cond33
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %9 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp eq i8 %10, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %for.end46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %11 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %13 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp34.i.i = icmp sgt i32 %17, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %17, %if.else.i.while.body.i.i_crit_edge ]
  %18 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %bytes_read.036.i.i
  %21 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %22 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %18
  %add.i.i = add i32 %18, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %23 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %24, %12
  %25 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cudbg_do_compression.exit.i, %if.then.i, %if.then41, %if.then27, %if.then13, %if.then3
  %retval.0.ph = phi i32 [ %call39, %if.then41 ], [ %call25.lcssa, %if.then27 ], [ %call11, %if.then13 ], [ %call1.lcssa, %if.then3 ], [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_mbox_log(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %mbox_log = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 59
  %3 = ptrtoint ptr %mbox_log to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mbox_log, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %conv4 = and i32 %6, 65535
  %mul = mul nuw nsw i32 %conv4, 144
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %mul, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp67.not = icmp eq i32 %conv4, 0
  br i1 %cmp67.not, label %if.end.for.end29_crit_edge, label %for.body.lr.ph

if.end.for.end29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29

for.body.lr.ph:                                   ; preds = %if.end
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %cursor = getelementptr inbounds %struct.mbox_cmd_log, ptr %4, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.mbox_cmd_log, ptr %4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %for.body.lr.ph
  %k.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %for.inc27.for.body_crit_edge ]
  %mboxlog.068 = phi ptr [ %8, %for.body.lr.ph ], [ %mboxlog.1, %for.inc27.for.body_crit_edge ]
  %9 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cursor, align 4
  %add = add i32 %10, %k.069
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp8.not = icmp ult i32 %add, %12
  %sub = select i1 %cmp8.not, i32 0, i32 %12
  %spec.select = sub i32 %add, %sub
  %arrayidx1.i = getelementptr %struct.mbox_cmd, ptr %arrayidx.i, i32 %spec.select
  %timestamp = getelementptr inbounds %struct.mbox_cmd, ptr %arrayidx1.i, i32 0, i32 1
  %13 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %timestamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp14 = icmp eq i64 %14, 0
  br i1 %cmp14, label %for.body.for.inc27_crit_edge, label %if.end17

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc27

if.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memcpy(ptr %mboxlog.068, ptr %arrayidx1.i, i32 80)
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx1.i, align 8
  %shr = lshr i64 %17, 32
  %conv23 = trunc i64 %shr to i32
  %arrayidx24 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 1, i32 0
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv23, ptr %arrayidx24, align 4
  %conv25 = trunc i64 %17 to i32
  %arrayidx26 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 2, i32 0
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv25, ptr %arrayidx26, align 4
  %arrayidx.1 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.1, align 8
  %shr.1 = lshr i64 %21, 32
  %conv23.1 = trunc i64 %shr.1 to i32
  %arrayidx24.1 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv23.1, ptr %arrayidx24.1, align 4
  %conv25.1 = trunc i64 %21 to i32
  %arrayidx26.1 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv25.1, ptr %arrayidx26.1, align 4
  %arrayidx.2 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.2, align 8
  %shr.2 = lshr i64 %25, 32
  %conv23.2 = trunc i64 %shr.2 to i32
  %arrayidx24.2 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv23.2, ptr %arrayidx24.2, align 4
  %conv25.2 = trunc i64 %25 to i32
  %arrayidx26.2 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv25.2, ptr %arrayidx26.2, align 4
  %arrayidx.3 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.3, align 8
  %shr.3 = lshr i64 %29, 32
  %conv23.3 = trunc i64 %shr.3 to i32
  %arrayidx24.3 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv23.3, ptr %arrayidx24.3, align 4
  %conv25.3 = trunc i64 %29 to i32
  %arrayidx26.3 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv25.3, ptr %arrayidx26.3, align 4
  %arrayidx.4 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.4, align 8
  %shr.4 = lshr i64 %33, 32
  %conv23.4 = trunc i64 %shr.4 to i32
  %arrayidx24.4 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv23.4, ptr %arrayidx24.4, align 4
  %conv25.4 = trunc i64 %33 to i32
  %arrayidx26.4 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv25.4, ptr %arrayidx26.4, align 4
  %arrayidx.5 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.5, align 8
  %shr.5 = lshr i64 %37, 32
  %conv23.5 = trunc i64 %shr.5 to i32
  %arrayidx24.5 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv23.5, ptr %arrayidx24.5, align 4
  %conv25.5 = trunc i64 %37 to i32
  %arrayidx26.5 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 2, i32 5
  %39 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv25.5, ptr %arrayidx26.5, align 4
  %arrayidx.6 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.6, align 8
  %shr.6 = lshr i64 %41, 32
  %conv23.6 = trunc i64 %shr.6 to i32
  %arrayidx24.6 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 1, i32 6
  %42 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv23.6, ptr %arrayidx24.6, align 4
  %conv25.6 = trunc i64 %41 to i32
  %arrayidx26.6 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 2, i32 6
  %43 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv25.6, ptr %arrayidx26.6, align 4
  %arrayidx.7 = getelementptr [8 x i64], ptr %arrayidx1.i, i32 0, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx.7, align 8
  %shr.7 = lshr i64 %45, 32
  %conv23.7 = trunc i64 %shr.7 to i32
  %arrayidx24.7 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 1, i32 7
  %46 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv23.7, ptr %arrayidx24.7, align 4
  %conv25.7 = trunc i64 %45 to i32
  %arrayidx26.7 = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 0, i32 2, i32 7
  %47 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv25.7, ptr %arrayidx26.7, align 4
  %incdec.ptr = getelementptr %struct.cudbg_mbox_log, ptr %mboxlog.068, i32 1
  br label %for.inc27

for.inc27:                                        ; preds = %if.end17, %for.body.for.inc27_crit_edge
  %mboxlog.1 = phi ptr [ %mboxlog.068, %for.body.for.inc27_crit_edge ], [ %incdec.ptr, %if.end17 ]
  %inc28 = add nuw nsw i32 %k.069, 1
  %exitcond.not = icmp eq i32 %inc28, %conv4
  br i1 %exitcond.not, label %for.inc27.for.end29_crit_edge, label %for.inc27.for.body_crit_edge

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %if.end.for.end29_crit_edge
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %48 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp.i = icmp eq i8 %49, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %for.end29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %50 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %52 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp34.i.i = icmp sgt i32 %56, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %56, %if.else.i.while.body.i.i_crit_edge ]
  %57 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 %bytes_read.036.i.i
  %60 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %61 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %57
  %add.i.i = add i32 %57, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %62 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %63, %51
  %64 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_hma_indirect(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef readnone %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %chip = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 22
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip, align 8
  %5 = and i32 %4, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %5)
  %cmp = icmp ult i32 %5, 96
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef 144, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %outbuf = getelementptr inbounds %struct.ireg_buf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 332576, ptr %7, align 4
  %ireg_data = getelementptr inbounds %struct.ireg_field, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %ireg_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 332580, ptr %ireg_data, align 4
  %ireg_local_offset = getelementptr inbounds %struct.ireg_field, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ireg_local_offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 40960, ptr %ireg_local_offset, align 4
  %ireg_offset_range = getelementptr inbounds %struct.ireg_field, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %ireg_offset_range to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %ireg_offset_range, align 4
  call void @t4_read_indirect(ptr noundef %1, i32 noundef 332576, i32 noundef 332580, ptr noundef %outbuf, i32 noundef 32, i32 noundef 40960) #8
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %12 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i = icmp eq i8 %13, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cudbg_write_and_release_buff.exit

if.else.i:                                        ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %14 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset1.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %16 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset2.i.i, align 4
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %offset3.i.i, align 4
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp34.i.i = icmp sgt i32 %20, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.while.end.i.i_crit_edge

if.else.i.while.end.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %20, %if.else.i.while.body.i.i_crit_edge ]
  %21 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %bytes_read.036.i.i
  %24 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %25 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %while.body.i.i.cudbg_do_compression.exit.i_crit_edge

while.body.i.i.cudbg_do_compression.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_do_compression.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %21
  %add.i.i = add i32 %21, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %if.else.i.while.end.i.i_crit_edge
  %26 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %27, %15
  %28 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  br label %cudbg_do_compression.exit.i

cudbg_do_compression.exit.i:                      ; preds = %while.end.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %while.end.i.i ], [ %call.i.i, %while.body.i.i.cudbg_do_compression.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cudbg_write_and_release_buff.exit

cudbg_write_and_release_buff.exit:                ; preds = %cudbg_do_compression.exit.i, %if.then.i
  %rc.0.i = phi i32 [ 0, %if.then.i ], [ %retval.0.i.i, %cudbg_do_compression.exit.i ]
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %cleanup

cleanup:                                          ; preds = %cudbg_write_and_release_buff.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %cudbg_write_and_release_buff.exit ], [ -24, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_qdesc(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %2 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  %sge = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 33554432, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup533_crit_edge, label %if.end

entry.cleanup533_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup533

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -856838143, ptr %call.i.i, align 4
  %revision = getelementptr inbounds %struct.cudbg_ver_hdr, ptr %call.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %revision, align 4
  %size1 = getelementptr inbounds %struct.cudbg_ver_hdr, ptr %call.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %size1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 8, ptr %size1, align 2
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 8
  %data3 = getelementptr i8, ptr %call.i.i, i32 16
  %ethqsets = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 14
  %6 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ethqsets, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp41135.not = icmp eq i16 %7, 0
  br i1 %cmp41135.not, label %if.end.for.cond84.preheader_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.for.cond84.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond84.preheader

for.cond19.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp221144.not = icmp eq i16 %24, 0
  br i1 %cmp221144.not, label %for.cond51.preheaderthread-pre-split, label %for.cond19.preheader.do.body25_crit_edge

for.cond19.preheader.do.body25_crit_edge:         ; preds = %for.cond19.preheader
  br label %do.body25

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end.do.body_crit_edge
  %num_queues.01139 = phi i32 [ %num_queues.2.ph, %for.inc.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %i.01138 = phi i32 [ %inc18, %for.inc.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %qdesc_entry.01137 = phi ptr [ %qdesc_entry.2.ph, %for.inc.do.body_crit_edge ], [ %data3, %if.end.do.body_crit_edge ]
  %size.01136 = phi i32 [ %size.1.ph, %for.inc.do.body_crit_edge ], [ 33554416, %if.end.do.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.sge_eth_txq], ptr %sge, i32 0, i32 %i.01138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.01136)
  %cmp7 = icmp eq i32 %size.01136, 0
  br i1 %cmp7, label %do.body.out_crit_edge, label %if.end10

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %do.body
  %desc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 8
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end10.for.inc_crit_edge, label %if.then12

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.01137, i32 0, i32 1
  %10 = ptrtoint ptr %qtype.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %qtype.i, align 4
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 7
  %11 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cntxt_id.i, align 4
  %qid.i = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.01137, i32 0, i32 2
  %13 = ptrtoint ptr %qid.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %qid.i, align 4
  %desc_size.i = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.01137, i32 0, i32 3
  %14 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %desc_size.i, align 4
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  %num_desc.i = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.01137, i32 0, i32 4
  %17 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_desc.i, align 4
  %18 = load i32, ptr %size.i, align 4
  %mul.i = shl i32 %18, 6
  %19 = ptrtoint ptr %qdesc_entry.01137 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i, ptr %qdesc_entry.01137, align 4
  %data.i = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.01137, i32 0, i32 5
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 4
  %22 = call ptr @memcpy(ptr %data.i, ptr %21, i32 %mul.i)
  %add.neg = add i32 %size.01136, -20
  %sub13 = sub i32 %add.neg, %mul.i
  %inc = add i32 %num_queues.01139, 1
  %add.ptr1.i = getelementptr i8, ptr %data.i, i32 %mul.i
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end10.for.inc_crit_edge
  %size.1.ph = phi i32 [ %sub13, %if.then12 ], [ %size.01136, %if.end10.for.inc_crit_edge ]
  %qdesc_entry.2.ph = phi ptr [ %add.ptr1.i, %if.then12 ], [ %qdesc_entry.01137, %if.end10.for.inc_crit_edge ]
  %num_queues.2.ph = phi i32 [ %inc, %if.then12 ], [ %num_queues.01139, %if.end10.for.inc_crit_edge ]
  %inc18 = add nuw nsw i32 %i.01138, 1
  %23 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ethqsets, align 2
  %conv = zext i16 %24 to i32
  %cmp4 = icmp ult i32 %inc18, %conv
  br i1 %cmp4, label %for.inc.do.body_crit_edge, label %for.cond19.preheader

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond51.preheaderthread-pre-split:             ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %25)
  %.pr = load i16, ptr %ethqsets, align 2
  br label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %for.inc48.for.cond51.preheader_crit_edge, %for.cond51.preheaderthread-pre-split
  %26 = phi i16 [ %.pr, %for.cond51.preheaderthread-pre-split ], [ %46, %for.inc48.for.cond51.preheader_crit_edge ]
  %size.2.lcssa = phi i32 [ %size.1.ph, %for.cond51.preheaderthread-pre-split ], [ %size.3.ph, %for.inc48.for.cond51.preheader_crit_edge ]
  %qdesc_entry.3.lcssa = phi ptr [ %qdesc_entry.2.ph, %for.cond51.preheaderthread-pre-split ], [ %qdesc_entry.5.ph, %for.inc48.for.cond51.preheader_crit_edge ]
  %num_queues.3.lcssa = phi i32 [ %num_queues.2.ph, %for.cond51.preheaderthread-pre-split ], [ %num_queues.5.ph, %for.inc48.for.cond51.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp541153.not = icmp eq i16 %26, 0
  br i1 %cmp541153.not, label %for.cond51.preheader.for.cond84.preheader_crit_edge, label %for.cond51.preheader.do.body57_crit_edge

for.cond51.preheader.do.body57_crit_edge:         ; preds = %for.cond51.preheader
  br label %do.body57

for.cond51.preheader.for.cond84.preheader_crit_edge: ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond84.preheader

do.body25:                                        ; preds = %for.inc48.do.body25_crit_edge, %for.cond19.preheader.do.body25_crit_edge
  %num_queues.31148 = phi i32 [ %num_queues.5.ph, %for.inc48.do.body25_crit_edge ], [ %num_queues.2.ph, %for.cond19.preheader.do.body25_crit_edge ]
  %i.11147 = phi i32 [ %inc49, %for.inc48.do.body25_crit_edge ], [ 0, %for.cond19.preheader.do.body25_crit_edge ]
  %qdesc_entry.31146 = phi ptr [ %qdesc_entry.5.ph, %for.inc48.do.body25_crit_edge ], [ %qdesc_entry.2.ph, %for.cond19.preheader.do.body25_crit_edge ]
  %size.21145 = phi i32 [ %size.3.ph, %for.inc48.do.body25_crit_edge ], [ %size.1.ph, %for.cond19.preheader.do.body25_crit_edge ]
  %arrayidx26 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %i.11147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.21145)
  %cmp28 = icmp eq i32 %size.21145, 0
  br i1 %cmp28, label %do.body25.out_crit_edge, label %if.end31

do.body25.out_crit_edge:                          ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end31:                                         ; preds = %do.body25
  %desc32 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx26, i32 0, i32 13
  %27 = ptrtoint ptr %desc32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc32, align 8
  %tobool33.not = icmp eq ptr %28, null
  br i1 %tobool33.not, label %if.end31.for.inc48_crit_edge, label %if.then34

if.end31.for.inc48_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc48

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i753 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.31146, i32 0, i32 1
  %29 = ptrtoint ptr %qtype.i753 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %qtype.i753, align 4
  %cntxt_id.i754 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx26, i32 0, i32 11
  %30 = ptrtoint ptr %cntxt_id.i754 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cntxt_id.i754, align 4
  %conv.i = zext i16 %31 to i32
  %qid.i755 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.31146, i32 0, i32 2
  %32 = ptrtoint ptr %qid.i755 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %qid.i755, align 4
  %iqe_len.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx26, i32 0, i32 17
  %33 = ptrtoint ptr %iqe_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iqe_len.i, align 8
  %desc_size.i756 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.31146, i32 0, i32 3
  %35 = ptrtoint ptr %desc_size.i756 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %desc_size.i756, align 4
  %size.i757 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx26, i32 0, i32 18
  %36 = ptrtoint ptr %size.i757 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i757, align 4
  %num_desc.i758 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.31146, i32 0, i32 4
  %38 = ptrtoint ptr %num_desc.i758 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %num_desc.i758, align 4
  %39 = load i32, ptr %size.i757, align 4
  %40 = load i32, ptr %iqe_len.i, align 8
  %mul.i759 = mul i32 %40, %39
  %41 = ptrtoint ptr %qdesc_entry.31146 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul.i759, ptr %qdesc_entry.31146, align 4
  %data.i760 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.31146, i32 0, i32 5
  %42 = ptrtoint ptr %desc32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc32, align 8
  %44 = call ptr @memcpy(ptr %data.i760, ptr %43, i32 %mul.i759)
  %add36.neg = add i32 %size.21145, -20
  %sub37 = sub i32 %add36.neg, %mul.i759
  %inc38 = add i32 %num_queues.31148, 1
  %add.ptr1.i763 = getelementptr i8, ptr %data.i760, i32 %mul.i759
  br label %for.inc48

for.inc48:                                        ; preds = %if.then34, %if.end31.for.inc48_crit_edge
  %size.3.ph = phi i32 [ %sub37, %if.then34 ], [ %size.21145, %if.end31.for.inc48_crit_edge ]
  %qdesc_entry.5.ph = phi ptr [ %add.ptr1.i763, %if.then34 ], [ %qdesc_entry.31146, %if.end31.for.inc48_crit_edge ]
  %num_queues.5.ph = phi i32 [ %inc38, %if.then34 ], [ %num_queues.31148, %if.end31.for.inc48_crit_edge ]
  %inc49 = add nuw nsw i32 %i.11147, 1
  %45 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ethqsets, align 2
  %conv21 = zext i16 %46 to i32
  %cmp22 = icmp ult i32 %inc49, %conv21
  br i1 %cmp22, label %for.inc48.do.body25_crit_edge, label %for.inc48.for.cond51.preheader_crit_edge

for.inc48.for.cond51.preheader_crit_edge:         ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond51.preheader

for.inc48.do.body25_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.cond84.preheader:                             ; preds = %for.inc81.for.cond84.preheader_crit_edge, %for.cond51.preheader.for.cond84.preheader_crit_edge, %if.end.for.cond84.preheader_crit_edge
  %size.4.lcssa = phi i32 [ %size.2.lcssa, %for.cond51.preheader.for.cond84.preheader_crit_edge ], [ 33554416, %if.end.for.cond84.preheader_crit_edge ], [ %size.5.ph, %for.inc81.for.cond84.preheader_crit_edge ]
  %qdesc_entry.6.lcssa = phi ptr [ %qdesc_entry.3.lcssa, %for.cond51.preheader.for.cond84.preheader_crit_edge ], [ %data3, %if.end.for.cond84.preheader_crit_edge ], [ %qdesc_entry.8.ph, %for.inc81.for.cond84.preheader_crit_edge ]
  %num_queues.6.lcssa = phi i32 [ %num_queues.3.lcssa, %for.cond51.preheader.for.cond84.preheader_crit_edge ], [ 0, %if.end.for.cond84.preheader_crit_edge ], [ %num_queues.8.ph, %for.inc81.for.cond84.preheader_crit_edge ]
  %nports = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 20
  %47 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp861163.not = icmp eq i8 %48, 0
  br i1 %cmp861163.not, label %for.cond84.preheader.do.body117_crit_edge, label %for.cond84.preheader.do.body89_crit_edge

for.cond84.preheader.do.body89_crit_edge:         ; preds = %for.cond84.preheader
  br label %do.body89

for.cond84.preheader.do.body117_crit_edge:        ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

do.body57:                                        ; preds = %for.inc81.do.body57_crit_edge, %for.cond51.preheader.do.body57_crit_edge
  %num_queues.61158 = phi i32 [ %num_queues.8.ph, %for.inc81.do.body57_crit_edge ], [ %num_queues.3.lcssa, %for.cond51.preheader.do.body57_crit_edge ]
  %i.21156 = phi i32 [ %inc82, %for.inc81.do.body57_crit_edge ], [ 0, %for.cond51.preheader.do.body57_crit_edge ]
  %qdesc_entry.61155 = phi ptr [ %qdesc_entry.8.ph, %for.inc81.do.body57_crit_edge ], [ %qdesc_entry.3.lcssa, %for.cond51.preheader.do.body57_crit_edge ]
  %size.41154 = phi i32 [ %size.5.ph, %for.inc81.do.body57_crit_edge ], [ %size.2.lcssa, %for.cond51.preheader.do.body57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.41154)
  %cmp61 = icmp eq i32 %size.41154, 0
  br i1 %cmp61, label %do.body57.out_crit_edge, label %if.end64

do.body57.out_crit_edge:                          ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end64:                                         ; preds = %do.body57
  %desc65 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %i.21156, i32 1, i32 12
  %49 = ptrtoint ptr %desc65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc65, align 4
  %tobool66.not = icmp eq ptr %50, null
  br i1 %tobool66.not, label %if.end64.for.inc81_crit_edge, label %if.then67

if.end64.for.inc81_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i764 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.61155, i32 0, i32 1
  %51 = ptrtoint ptr %qtype.i764 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %qtype.i764, align 4
  %cntxt_id.i765 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %i.21156, i32 1, i32 9
  %52 = ptrtoint ptr %cntxt_id.i765 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cntxt_id.i765, align 4
  %qid.i766 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.61155, i32 0, i32 2
  %54 = ptrtoint ptr %qid.i766 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %qid.i766, align 4
  %desc_size.i767 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.61155, i32 0, i32 3
  %55 = ptrtoint ptr %desc_size.i767 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %desc_size.i767, align 4
  %size.i768 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 3, i32 %i.21156, i32 1, i32 10
  %56 = ptrtoint ptr %size.i768 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i768, align 4
  %num_desc.i769 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.61155, i32 0, i32 4
  %58 = ptrtoint ptr %num_desc.i769 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %num_desc.i769, align 4
  %59 = load i32, ptr %size.i768, align 4
  %mul.i770 = shl i32 %59, 3
  %60 = ptrtoint ptr %qdesc_entry.61155 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul.i770, ptr %qdesc_entry.61155, align 4
  %data.i771 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.61155, i32 0, i32 5
  %61 = ptrtoint ptr %desc65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %desc65, align 4
  %63 = call ptr @memcpy(ptr %data.i771, ptr %62, i32 %mul.i770)
  %add69.neg = add i32 %size.41154, -20
  %sub70 = sub i32 %add69.neg, %mul.i770
  %inc71 = add i32 %num_queues.61158, 1
  %add.ptr1.i774 = getelementptr i8, ptr %data.i771, i32 %mul.i770
  br label %for.inc81

for.inc81:                                        ; preds = %if.then67, %if.end64.for.inc81_crit_edge
  %size.5.ph = phi i32 [ %sub70, %if.then67 ], [ %size.41154, %if.end64.for.inc81_crit_edge ]
  %qdesc_entry.8.ph = phi ptr [ %add.ptr1.i774, %if.then67 ], [ %qdesc_entry.61155, %if.end64.for.inc81_crit_edge ]
  %num_queues.8.ph = phi i32 [ %inc71, %if.then67 ], [ %num_queues.61158, %if.end64.for.inc81_crit_edge ]
  %inc82 = add nuw nsw i32 %i.21156, 1
  %64 = ptrtoint ptr %ethqsets to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ethqsets, align 2
  %conv53 = zext i16 %65 to i32
  %cmp54 = icmp ult i32 %inc82, %conv53
  br i1 %cmp54, label %for.inc81.do.body57_crit_edge, label %for.inc81.for.cond84.preheader_crit_edge

for.inc81.for.cond84.preheader_crit_edge:         ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond84.preheader

for.inc81.do.body57_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

do.body89:                                        ; preds = %for.inc114.do.body89_crit_edge, %for.cond84.preheader.do.body89_crit_edge
  %num_queues.91167 = phi i32 [ %num_queues.11.ph, %for.inc114.do.body89_crit_edge ], [ %num_queues.6.lcssa, %for.cond84.preheader.do.body89_crit_edge ]
  %i.31166 = phi i32 [ %inc115, %for.inc114.do.body89_crit_edge ], [ 0, %for.cond84.preheader.do.body89_crit_edge ]
  %qdesc_entry.91165 = phi ptr [ %qdesc_entry.11.ph, %for.inc114.do.body89_crit_edge ], [ %qdesc_entry.6.lcssa, %for.cond84.preheader.do.body89_crit_edge ]
  %size.61164 = phi i32 [ %size.7.ph, %for.inc114.do.body89_crit_edge ], [ %size.4.lcssa, %for.cond84.preheader.do.body89_crit_edge ]
  %arrayidx91 = getelementptr %struct.adapter, ptr %1, i32 0, i32 22, i32 2, i32 %i.31166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.61164)
  %cmp94 = icmp eq i32 %size.61164, 0
  br i1 %cmp94, label %do.body89.out_crit_edge, label %if.end97

do.body89.out_crit_edge:                          ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end97:                                         ; preds = %do.body89
  %desc98 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx91, i32 0, i32 8
  %66 = ptrtoint ptr %desc98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc98, align 4
  %tobool99.not = icmp eq ptr %67, null
  br i1 %tobool99.not, label %if.end97.for.inc114_crit_edge, label %if.then100

if.end97.for.inc114_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i775 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.91165, i32 0, i32 1
  %68 = ptrtoint ptr %qtype.i775 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %qtype.i775, align 4
  %cntxt_id.i776 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx91, i32 0, i32 7
  %69 = ptrtoint ptr %cntxt_id.i776 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cntxt_id.i776, align 4
  %qid.i777 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.91165, i32 0, i32 2
  %71 = ptrtoint ptr %qid.i777 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %qid.i777, align 4
  %desc_size.i778 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.91165, i32 0, i32 3
  %72 = ptrtoint ptr %desc_size.i778 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 64, ptr %desc_size.i778, align 4
  %size.i779 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx91, i32 0, i32 2
  %73 = ptrtoint ptr %size.i779 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i779, align 4
  %num_desc.i780 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.91165, i32 0, i32 4
  %75 = ptrtoint ptr %num_desc.i780 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %num_desc.i780, align 4
  %76 = load i32, ptr %size.i779, align 4
  %mul.i781 = shl i32 %76, 6
  %77 = ptrtoint ptr %qdesc_entry.91165 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul.i781, ptr %qdesc_entry.91165, align 4
  %data.i782 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.91165, i32 0, i32 5
  %78 = ptrtoint ptr %desc98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %desc98, align 4
  %80 = call ptr @memcpy(ptr %data.i782, ptr %79, i32 %mul.i781)
  %add102.neg = add i32 %size.61164, -20
  %sub103 = sub i32 %add102.neg, %mul.i781
  %inc104 = add i32 %num_queues.91167, 1
  %add.ptr1.i785 = getelementptr i8, ptr %data.i782, i32 %mul.i781
  br label %for.inc114

for.inc114:                                       ; preds = %if.then100, %if.end97.for.inc114_crit_edge
  %size.7.ph = phi i32 [ %sub103, %if.then100 ], [ %size.61164, %if.end97.for.inc114_crit_edge ]
  %qdesc_entry.11.ph = phi ptr [ %add.ptr1.i785, %if.then100 ], [ %qdesc_entry.91165, %if.end97.for.inc114_crit_edge ]
  %num_queues.11.ph = phi i32 [ %inc104, %if.then100 ], [ %num_queues.91167, %if.end97.for.inc114_crit_edge ]
  %inc115 = add nuw nsw i32 %i.31166, 1
  %81 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nports, align 4
  %conv85 = zext i8 %82 to i32
  %cmp86 = icmp ult i32 %inc115, %conv85
  br i1 %cmp86, label %for.inc114.do.body89_crit_edge, label %for.inc114.do.body117_crit_edge

for.inc114.do.body117_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

for.inc114.do.body89_crit_edge:                   ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

do.body117:                                       ; preds = %for.inc114.do.body117_crit_edge, %for.cond84.preheader.do.body117_crit_edge
  %size.6.lcssa = phi i32 [ %size.4.lcssa, %for.cond84.preheader.do.body117_crit_edge ], [ %size.7.ph, %for.inc114.do.body117_crit_edge ]
  %qdesc_entry.9.lcssa = phi ptr [ %qdesc_entry.6.lcssa, %for.cond84.preheader.do.body117_crit_edge ], [ %qdesc_entry.11.ph, %for.inc114.do.body117_crit_edge ]
  %num_queues.9.lcssa = phi i32 [ %num_queues.6.lcssa, %for.cond84.preheader.do.body117_crit_edge ], [ %num_queues.11.ph, %for.inc114.do.body117_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.6.lcssa)
  %cmp120 = icmp eq i32 %size.6.lcssa, 0
  br i1 %cmp120, label %do.body117.out_crit_edge, label %if.end123

do.body117.out_crit_edge:                         ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end123:                                        ; preds = %do.body117
  %desc124 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 13
  %83 = ptrtoint ptr %desc124 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %desc124, align 8
  %tobool125.not = icmp eq ptr %84, null
  br i1 %tobool125.not, label %if.end123.if.end146_crit_edge, label %do.body140

if.end123.if.end146_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

do.body140:                                       ; preds = %if.end123
  %qtype.i786 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.9.lcssa, i32 0, i32 1
  %85 = ptrtoint ptr %qtype.i786 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 5, ptr %qtype.i786, align 4
  %cntxt_id.i787 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 11
  %86 = ptrtoint ptr %cntxt_id.i787 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %cntxt_id.i787, align 4
  %conv.i788 = zext i16 %87 to i32
  %qid.i789 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.9.lcssa, i32 0, i32 2
  %88 = ptrtoint ptr %qid.i789 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i788, ptr %qid.i789, align 4
  %iqe_len.i790 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 17
  %89 = ptrtoint ptr %iqe_len.i790 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iqe_len.i790, align 8
  %desc_size.i791 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.9.lcssa, i32 0, i32 3
  %91 = ptrtoint ptr %desc_size.i791 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %desc_size.i791, align 4
  %size.i792 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 4, i32 18
  %92 = ptrtoint ptr %size.i792 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size.i792, align 4
  %num_desc.i793 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.9.lcssa, i32 0, i32 4
  %94 = ptrtoint ptr %num_desc.i793 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %num_desc.i793, align 4
  %95 = load i32, ptr %size.i792, align 4
  %96 = load i32, ptr %iqe_len.i790, align 8
  %mul.i794 = mul i32 %96, %95
  %97 = ptrtoint ptr %qdesc_entry.9.lcssa to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul.i794, ptr %qdesc_entry.9.lcssa, align 4
  %data.i795 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.9.lcssa, i32 0, i32 5
  %98 = ptrtoint ptr %desc124 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %desc124, align 8
  %100 = call ptr @memcpy(ptr %data.i795, ptr %99, i32 %mul.i794)
  %add128.neg = add i32 %size.6.lcssa, -20
  %sub129 = sub i32 %add128.neg, %mul.i794
  %inc130 = add i32 %num_queues.9.lcssa, 1
  %add.ptr1.i798 = getelementptr i8, ptr %data.i795, i32 %mul.i794
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub129)
  %cmp143 = icmp eq i32 %sub129, 0
  br i1 %cmp143, label %do.body140.out_crit_edge, label %do.body140.if.end146_crit_edge

do.body140.if.end146_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

do.body140.out_crit_edge:                         ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end146:                                        ; preds = %do.body140.if.end146_crit_edge, %if.end123.if.end146_crit_edge
  %num_queues.13.ph984 = phi i32 [ %inc130, %do.body140.if.end146_crit_edge ], [ %num_queues.9.lcssa, %if.end123.if.end146_crit_edge ]
  %qdesc_entry.13.ph983 = phi ptr [ %add.ptr1.i798, %do.body140.if.end146_crit_edge ], [ %qdesc_entry.9.lcssa, %if.end123.if.end146_crit_edge ]
  %size.8.ph982 = phi i32 [ %sub129, %do.body140.if.end146_crit_edge ], [ %size.6.lcssa, %if.end123.if.end146_crit_edge ]
  %desc147 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 8, i32 13
  %101 = ptrtoint ptr %desc147 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %desc147, align 8
  %tobool148.not = icmp eq ptr %102, null
  br i1 %tobool148.not, label %if.end146.if.end170_crit_edge, label %do.body163

if.end146.if.end170_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

do.body163:                                       ; preds = %if.end146
  %qtype.i799 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.13.ph983, i32 0, i32 1
  %103 = ptrtoint ptr %qtype.i799 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 6, ptr %qtype.i799, align 4
  %cntxt_id.i800 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 8, i32 11
  %104 = ptrtoint ptr %cntxt_id.i800 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %cntxt_id.i800, align 4
  %conv.i801 = zext i16 %105 to i32
  %qid.i802 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.13.ph983, i32 0, i32 2
  %106 = ptrtoint ptr %qid.i802 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv.i801, ptr %qid.i802, align 4
  %iqe_len.i803 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 8, i32 17
  %107 = ptrtoint ptr %iqe_len.i803 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iqe_len.i803, align 8
  %desc_size.i804 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.13.ph983, i32 0, i32 3
  %109 = ptrtoint ptr %desc_size.i804 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %desc_size.i804, align 4
  %size.i805 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 8, i32 18
  %110 = ptrtoint ptr %size.i805 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %size.i805, align 4
  %num_desc.i806 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.13.ph983, i32 0, i32 4
  %112 = ptrtoint ptr %num_desc.i806 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %num_desc.i806, align 4
  %113 = load i32, ptr %size.i805, align 4
  %114 = load i32, ptr %iqe_len.i803, align 8
  %mul.i807 = mul i32 %114, %113
  %115 = ptrtoint ptr %qdesc_entry.13.ph983 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %mul.i807, ptr %qdesc_entry.13.ph983, align 4
  %data.i808 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.13.ph983, i32 0, i32 5
  %116 = ptrtoint ptr %desc147 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %desc147, align 8
  %118 = call ptr @memcpy(ptr %data.i808, ptr %117, i32 %mul.i807)
  %add151.neg = add i32 %size.8.ph982, -20
  %sub152 = sub i32 %add151.neg, %mul.i807
  %inc153 = add i32 %num_queues.13.ph984, 1
  %add.ptr1.i811 = getelementptr i8, ptr %data.i808, i32 %mul.i807
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub152)
  %cmp167 = icmp eq i32 %sub152, 0
  br i1 %cmp167, label %do.body163.out_crit_edge, label %do.body163.if.end170_crit_edge

do.body163.if.end170_crit_edge:                   ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

do.body163.out_crit_edge:                         ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end170:                                        ; preds = %do.body163.if.end170_crit_edge, %if.end146.if.end170_crit_edge
  %num_queues.15.ph1000 = phi i32 [ %inc153, %do.body163.if.end170_crit_edge ], [ %num_queues.13.ph984, %if.end146.if.end170_crit_edge ]
  %qdesc_entry.15.ph999 = phi ptr [ %add.ptr1.i811, %do.body163.if.end170_crit_edge ], [ %qdesc_entry.13.ph983, %if.end146.if.end170_crit_edge ]
  %size.9.ph998 = phi i32 [ %sub152, %do.body163.if.end170_crit_edge ], [ %size.8.ph982, %if.end146.if.end170_crit_edge ]
  %desc171 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 1, i32 0, i32 8
  %119 = ptrtoint ptr %desc171 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %desc171, align 4
  %tobool172.not = icmp eq ptr %120, null
  br i1 %tobool172.not, label %if.end170.do.end186_crit_edge, label %if.then173

if.end170.do.end186_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end186

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i812 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.15.ph999, i32 0, i32 1
  %121 = ptrtoint ptr %qtype.i812 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 7, ptr %qtype.i812, align 4
  %cntxt_id.i813 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 1, i32 0, i32 7
  %122 = ptrtoint ptr %cntxt_id.i813 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cntxt_id.i813, align 4
  %qid.i814 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.15.ph999, i32 0, i32 2
  %124 = ptrtoint ptr %qid.i814 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %qid.i814, align 4
  %desc_size.i815 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.15.ph999, i32 0, i32 3
  %125 = ptrtoint ptr %desc_size.i815 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 64, ptr %desc_size.i815, align 4
  %size.i816 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 1, i32 0, i32 2
  %126 = ptrtoint ptr %size.i816 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %size.i816, align 4
  %num_desc.i817 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.15.ph999, i32 0, i32 4
  %128 = ptrtoint ptr %num_desc.i817 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %num_desc.i817, align 4
  %129 = load i32, ptr %size.i816, align 4
  %mul.i818 = shl i32 %129, 6
  %130 = ptrtoint ptr %qdesc_entry.15.ph999 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %mul.i818, ptr %qdesc_entry.15.ph999, align 4
  %data.i819 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.15.ph999, i32 0, i32 5
  %131 = ptrtoint ptr %desc171 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %desc171, align 4
  %133 = call ptr @memcpy(ptr %data.i819, ptr %132, i32 %mul.i818)
  %add175.neg = add i32 %size.9.ph998, -20
  %sub176 = sub i32 %add175.neg, %mul.i818
  %inc177 = add i32 %num_queues.15.ph1000, 1
  %add.ptr1.i822 = getelementptr i8, ptr %data.i819, i32 %mul.i818
  br label %do.end186

do.end186:                                        ; preds = %if.then173, %if.end170.do.end186_crit_edge
  %size.10.ph = phi i32 [ %sub176, %if.then173 ], [ %size.9.ph998, %if.end170.do.end186_crit_edge ]
  %qdesc_entry.17.ph = phi ptr [ %add.ptr1.i822, %if.then173 ], [ %qdesc_entry.15.ph999, %if.end170.do.end186_crit_edge ]
  %num_queues.17.ph = phi i32 [ %inc177, %if.then173 ], [ %num_queues.15.ph1000, %if.end170.do.end186_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @uld_mutex, i32 noundef 0) #8
  %uld_txq_info = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 6
  %134 = ptrtoint ptr %uld_txq_info to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %uld_txq_info, align 4
  %tobool187.not = icmp eq ptr %135, null
  br i1 %tobool187.not, label %do.end186.if.end240_crit_edge, label %for.body192.preheader

do.end186.if.end240_crit_edge:                    ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

for.body192.preheader:                            ; preds = %do.end186
  %136 = ptrtoint ptr %uld_txq_info to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %uld_txq_info, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %tobool195.not = icmp eq ptr %139, null
  br i1 %tobool195.not, label %for.body192.preheader.for.inc234_crit_edge, label %for.cond200.preheader

for.body192.preheader.for.inc234_crit_edge:       ; preds = %for.body192.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc234

for.cond200.preheader:                            ; preds = %for.body192.preheader
  %ntxq = getelementptr inbounds %struct.sge_uld_txq_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %ntxq to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ntxq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %cmp2021172.not = icmp eq i16 %141, 0
  br i1 %cmp2021172.not, label %for.cond200.preheader.for.inc234_crit_edge, label %for.cond200.preheader.do.body205_crit_edge

for.cond200.preheader.do.body205_crit_edge:       ; preds = %for.cond200.preheader
  br label %do.body205

for.cond200.preheader.for.inc234_crit_edge:       ; preds = %for.cond200.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc234

do.body205:                                       ; preds = %for.inc231.do.body205_crit_edge, %for.cond200.preheader.do.body205_crit_edge
  %num_queues.191176 = phi i32 [ %num_queues.21.ph, %for.inc231.do.body205_crit_edge ], [ %num_queues.17.ph, %for.cond200.preheader.do.body205_crit_edge ]
  %i.41175 = phi i32 [ %inc232, %for.inc231.do.body205_crit_edge ], [ 0, %for.cond200.preheader.do.body205_crit_edge ]
  %qdesc_entry.191174 = phi ptr [ %qdesc_entry.21.ph, %for.inc231.do.body205_crit_edge ], [ %qdesc_entry.17.ph, %for.cond200.preheader.do.body205_crit_edge ]
  %size.121173 = phi i32 [ %size.13.ph, %for.inc231.do.body205_crit_edge ], [ %size.10.ph, %for.cond200.preheader.do.body205_crit_edge ]
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %139, align 4
  %arrayidx207 = getelementptr %struct.sge_uld_txq, ptr %143, i32 %i.41175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.121173)
  %cmp210 = icmp eq i32 %size.121173, 0
  br i1 %cmp210, label %do.body205.out_unlock_crit_edge, label %if.end213

do.body205.out_unlock_crit_edge:                  ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end213:                                        ; preds = %do.body205
  %desc214 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx207, i32 0, i32 8
  %144 = ptrtoint ptr %desc214 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %desc214, align 4
  %tobool215.not = icmp eq ptr %145, null
  br i1 %tobool215.not, label %if.end213.for.inc231_crit_edge, label %if.then216

if.end213.for.inc231_crit_edge:                   ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc231

if.then216:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i823 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174, i32 0, i32 1
  %146 = ptrtoint ptr %qtype.i823 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 8, ptr %qtype.i823, align 4
  %cntxt_id.i824 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx207, i32 0, i32 7
  %147 = ptrtoint ptr %cntxt_id.i824 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cntxt_id.i824, align 4
  %qid.i825 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174, i32 0, i32 2
  %149 = ptrtoint ptr %qid.i825 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %qid.i825, align 4
  %desc_size.i826 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174, i32 0, i32 3
  %150 = ptrtoint ptr %desc_size.i826 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 64, ptr %desc_size.i826, align 4
  %size.i827 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx207, i32 0, i32 2
  %151 = ptrtoint ptr %size.i827 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size.i827, align 4
  %num_desc.i828 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174, i32 0, i32 4
  %153 = ptrtoint ptr %num_desc.i828 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %num_desc.i828, align 4
  %154 = load i32, ptr %size.i827, align 4
  %mul.i829 = shl i32 %154, 6
  %155 = ptrtoint ptr %qdesc_entry.191174 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %mul.i829, ptr %qdesc_entry.191174, align 4
  %data.i830 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174, i32 0, i32 5
  %156 = ptrtoint ptr %desc214 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %desc214, align 4
  %158 = call ptr @memcpy(ptr %data.i830, ptr %157, i32 %mul.i829)
  %add219.neg = add i32 %size.121173, -20
  %sub220 = sub i32 %add219.neg, %mul.i829
  %inc221 = add i32 %num_queues.191176, 1
  %add.ptr1.i833 = getelementptr i8, ptr %data.i830, i32 %mul.i829
  br label %for.inc231

for.inc231:                                       ; preds = %if.then216, %if.end213.for.inc231_crit_edge
  %size.13.ph = phi i32 [ %sub220, %if.then216 ], [ %size.121173, %if.end213.for.inc231_crit_edge ]
  %qdesc_entry.21.ph = phi ptr [ %add.ptr1.i833, %if.then216 ], [ %qdesc_entry.191174, %if.end213.for.inc231_crit_edge ]
  %num_queues.21.ph = phi i32 [ %inc221, %if.then216 ], [ %num_queues.191176, %if.end213.for.inc231_crit_edge ]
  %inc232 = add nuw nsw i32 %i.41175, 1
  %159 = ptrtoint ptr %ntxq to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %ntxq, align 4
  %conv201 = zext i16 %160 to i32
  %cmp202 = icmp ult i32 %inc232, %conv201
  br i1 %cmp202, label %for.inc231.do.body205_crit_edge, label %for.inc231.for.inc234_crit_edge

for.inc231.for.inc234_crit_edge:                  ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc234

for.inc231.do.body205_crit_edge:                  ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body205

for.inc234:                                       ; preds = %for.inc231.for.inc234_crit_edge, %for.cond200.preheader.for.inc234_crit_edge, %for.body192.preheader.for.inc234_crit_edge
  %size.14 = phi i32 [ %size.10.ph, %for.body192.preheader.for.inc234_crit_edge ], [ %size.10.ph, %for.cond200.preheader.for.inc234_crit_edge ], [ %size.13.ph, %for.inc231.for.inc234_crit_edge ]
  %qdesc_entry.22 = phi ptr [ %qdesc_entry.17.ph, %for.body192.preheader.for.inc234_crit_edge ], [ %qdesc_entry.17.ph, %for.cond200.preheader.for.inc234_crit_edge ], [ %qdesc_entry.21.ph, %for.inc231.for.inc234_crit_edge ]
  %num_queues.22 = phi i32 [ %num_queues.17.ph, %for.body192.preheader.for.inc234_crit_edge ], [ %num_queues.17.ph, %for.cond200.preheader.for.inc234_crit_edge ], [ %num_queues.21.ph, %for.inc231.for.inc234_crit_edge ]
  %161 = ptrtoint ptr %uld_txq_info to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %uld_txq_info, align 4
  %arrayidx194.1 = getelementptr ptr, ptr %162, i32 1
  %163 = ptrtoint ptr %arrayidx194.1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx194.1, align 4
  %tobool195.not.1 = icmp eq ptr %164, null
  br i1 %tobool195.not.1, label %for.inc234.if.end240_crit_edge, label %for.cond200.preheader.1

for.inc234.if.end240_crit_edge:                   ; preds = %for.inc234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

for.cond200.preheader.1:                          ; preds = %for.inc234
  %ntxq.1 = getelementptr inbounds %struct.sge_uld_txq_info, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %ntxq.1 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %ntxq.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %cmp2021172.not.1 = icmp eq i16 %166, 0
  br i1 %cmp2021172.not.1, label %for.cond200.preheader.1.if.end240_crit_edge, label %for.cond200.preheader.1.do.body205.1_crit_edge

for.cond200.preheader.1.do.body205.1_crit_edge:   ; preds = %for.cond200.preheader.1
  br label %do.body205.1

for.cond200.preheader.1.if.end240_crit_edge:      ; preds = %for.cond200.preheader.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

do.body205.1:                                     ; preds = %for.inc231.1.do.body205.1_crit_edge, %for.cond200.preheader.1.do.body205.1_crit_edge
  %num_queues.191176.1 = phi i32 [ %num_queues.21.ph.1, %for.inc231.1.do.body205.1_crit_edge ], [ %num_queues.22, %for.cond200.preheader.1.do.body205.1_crit_edge ]
  %i.41175.1 = phi i32 [ %inc232.1, %for.inc231.1.do.body205.1_crit_edge ], [ 0, %for.cond200.preheader.1.do.body205.1_crit_edge ]
  %qdesc_entry.191174.1 = phi ptr [ %qdesc_entry.21.ph.1, %for.inc231.1.do.body205.1_crit_edge ], [ %qdesc_entry.22, %for.cond200.preheader.1.do.body205.1_crit_edge ]
  %size.121173.1 = phi i32 [ %size.13.ph.1, %for.inc231.1.do.body205.1_crit_edge ], [ %size.14, %for.cond200.preheader.1.do.body205.1_crit_edge ]
  %167 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %164, align 4
  %arrayidx207.1 = getelementptr %struct.sge_uld_txq, ptr %168, i32 %i.41175.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.121173.1)
  %cmp210.1 = icmp eq i32 %size.121173.1, 0
  br i1 %cmp210.1, label %do.body205.1.out_unlock_crit_edge, label %if.end213.1

do.body205.1.out_unlock_crit_edge:                ; preds = %do.body205.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end213.1:                                      ; preds = %do.body205.1
  %desc214.1 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx207.1, i32 0, i32 8
  %169 = ptrtoint ptr %desc214.1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %desc214.1, align 4
  %tobool215.not.1 = icmp eq ptr %170, null
  br i1 %tobool215.not.1, label %if.end213.1.for.inc231.1_crit_edge, label %if.then216.1

if.end213.1.for.inc231.1_crit_edge:               ; preds = %if.end213.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc231.1

if.then216.1:                                     ; preds = %if.end213.1
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i823.1 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174.1, i32 0, i32 1
  %171 = ptrtoint ptr %qtype.i823.1 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 16, ptr %qtype.i823.1, align 4
  %cntxt_id.i824.1 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx207.1, i32 0, i32 7
  %172 = ptrtoint ptr %cntxt_id.i824.1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cntxt_id.i824.1, align 4
  %qid.i825.1 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174.1, i32 0, i32 2
  %174 = ptrtoint ptr %qid.i825.1 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %qid.i825.1, align 4
  %desc_size.i826.1 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174.1, i32 0, i32 3
  %175 = ptrtoint ptr %desc_size.i826.1 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 64, ptr %desc_size.i826.1, align 4
  %size.i827.1 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx207.1, i32 0, i32 2
  %176 = ptrtoint ptr %size.i827.1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %size.i827.1, align 4
  %num_desc.i828.1 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174.1, i32 0, i32 4
  %178 = ptrtoint ptr %num_desc.i828.1 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %num_desc.i828.1, align 4
  %179 = load i32, ptr %size.i827.1, align 4
  %mul.i829.1 = shl i32 %179, 6
  %180 = ptrtoint ptr %qdesc_entry.191174.1 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %mul.i829.1, ptr %qdesc_entry.191174.1, align 4
  %data.i830.1 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.191174.1, i32 0, i32 5
  %181 = ptrtoint ptr %desc214.1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %desc214.1, align 4
  %183 = call ptr @memcpy(ptr %data.i830.1, ptr %182, i32 %mul.i829.1)
  %add219.neg.1 = add i32 %size.121173.1, -20
  %sub220.1 = sub i32 %add219.neg.1, %mul.i829.1
  %inc221.1 = add i32 %num_queues.191176.1, 1
  %add.ptr1.i833.1 = getelementptr i8, ptr %data.i830.1, i32 %mul.i829.1
  br label %for.inc231.1

for.inc231.1:                                     ; preds = %if.then216.1, %if.end213.1.for.inc231.1_crit_edge
  %size.13.ph.1 = phi i32 [ %sub220.1, %if.then216.1 ], [ %size.121173.1, %if.end213.1.for.inc231.1_crit_edge ]
  %qdesc_entry.21.ph.1 = phi ptr [ %add.ptr1.i833.1, %if.then216.1 ], [ %qdesc_entry.191174.1, %if.end213.1.for.inc231.1_crit_edge ]
  %num_queues.21.ph.1 = phi i32 [ %inc221.1, %if.then216.1 ], [ %num_queues.191176.1, %if.end213.1.for.inc231.1_crit_edge ]
  %inc232.1 = add nuw nsw i32 %i.41175.1, 1
  %184 = ptrtoint ptr %ntxq.1 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %ntxq.1, align 4
  %conv201.1 = zext i16 %185 to i32
  %cmp202.1 = icmp ult i32 %inc232.1, %conv201.1
  br i1 %cmp202.1, label %for.inc231.1.do.body205.1_crit_edge, label %for.inc231.1.if.end240_crit_edge

for.inc231.1.if.end240_crit_edge:                 ; preds = %for.inc231.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end240

for.inc231.1.do.body205.1_crit_edge:              ; preds = %for.inc231.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body205.1

if.end240:                                        ; preds = %for.inc231.1.if.end240_crit_edge, %for.cond200.preheader.1.if.end240_crit_edge, %for.inc234.if.end240_crit_edge, %do.end186.if.end240_crit_edge
  %size.16 = phi i32 [ %size.10.ph, %do.end186.if.end240_crit_edge ], [ %size.14, %for.inc234.if.end240_crit_edge ], [ %size.14, %for.cond200.preheader.1.if.end240_crit_edge ], [ %size.13.ph.1, %for.inc231.1.if.end240_crit_edge ]
  %qdesc_entry.24 = phi ptr [ %qdesc_entry.17.ph, %do.end186.if.end240_crit_edge ], [ %qdesc_entry.22, %for.inc234.if.end240_crit_edge ], [ %qdesc_entry.22, %for.cond200.preheader.1.if.end240_crit_edge ], [ %qdesc_entry.21.ph.1, %for.inc231.1.if.end240_crit_edge ]
  %num_queues.24 = phi i32 [ %num_queues.17.ph, %do.end186.if.end240_crit_edge ], [ %num_queues.22, %for.inc234.if.end240_crit_edge ], [ %num_queues.22, %for.cond200.preheader.1.if.end240_crit_edge ], [ %num_queues.21.ph.1, %for.inc231.1.if.end240_crit_edge ]
  %uld_rxq_info = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 5
  %186 = ptrtoint ptr %uld_rxq_info to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %uld_rxq_info, align 8
  %tobool241.not = icmp eq ptr %187, null
  br i1 %tobool241.not, label %if.end240.if.end397_crit_edge, label %if.end240.for.body246_crit_edge

if.end240.for.body246_crit_edge:                  ; preds = %if.end240
  br label %for.body246

if.end240.if.end397_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end397

for.body246:                                      ; preds = %for.inc288.for.body246_crit_edge, %if.end240.for.body246_crit_edge
  %num_queues.251200 = phi i32 [ %num_queues.29, %for.inc288.for.body246_crit_edge ], [ %num_queues.24, %if.end240.for.body246_crit_edge ]
  %j.11197 = phi i32 [ %inc289, %for.inc288.for.body246_crit_edge ], [ 0, %if.end240.for.body246_crit_edge ]
  %qdesc_entry.251196 = phi ptr [ %qdesc_entry.29, %for.inc288.for.body246_crit_edge ], [ %qdesc_entry.24, %if.end240.for.body246_crit_edge ]
  %size.171195 = phi i32 [ %size.20, %for.inc288.for.body246_crit_edge ], [ %size.16, %if.end240.for.body246_crit_edge ]
  %188 = ptrtoint ptr %uld_rxq_info to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %uld_rxq_info, align 8
  %arrayidx248 = getelementptr ptr, ptr %189, i32 %j.11197
  %190 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx248, align 4
  %tobool249.not = icmp eq ptr %191, null
  br i1 %tobool249.not, label %for.body246.for.inc288_crit_edge, label %for.cond254.preheader

for.body246.for.inc288_crit_edge:                 ; preds = %for.body246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc288

for.cond254.preheader:                            ; preds = %for.body246
  %nrxq = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %nrxq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %193)
  %cmp2561187.not = icmp eq i16 %193, 0
  br i1 %cmp2561187.not, label %for.cond254.preheader.for.inc288_crit_edge, label %do.body259.lr.ph

for.cond254.preheader.for.inc288_crit_edge:       ; preds = %for.cond254.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc288

do.body259.lr.ph:                                 ; preds = %for.cond254.preheader
  %uldrxq = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %191, i32 0, i32 1
  %switch.tableidx = add nsw i32 %j.11197, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %194 = icmp ult i32 %switch.tableidx, 6
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.cudbg_collect_qdesc, i32 0, i32 %switch.tableidx
  br label %do.body259

do.body259:                                       ; preds = %for.inc285.do.body259_crit_edge, %do.body259.lr.ph
  %num_queues.261191 = phi i32 [ %num_queues.251200, %do.body259.lr.ph ], [ %num_queues.28.ph, %for.inc285.do.body259_crit_edge ]
  %i.51190 = phi i32 [ 0, %do.body259.lr.ph ], [ %inc286, %for.inc285.do.body259_crit_edge ]
  %qdesc_entry.261189 = phi ptr [ %qdesc_entry.251196, %do.body259.lr.ph ], [ %qdesc_entry.28.ph, %for.inc285.do.body259_crit_edge ]
  %size.181188 = phi i32 [ %size.171195, %do.body259.lr.ph ], [ %size.19.ph, %for.inc285.do.body259_crit_edge ]
  %195 = ptrtoint ptr %uldrxq to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %uldrxq, align 4
  %arrayidx261 = getelementptr %struct.sge_ofld_rxq, ptr %196, i32 %i.51190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.181188)
  %cmp264 = icmp eq i32 %size.181188, 0
  br i1 %cmp264, label %do.body259.out_unlock_crit_edge, label %if.end267

do.body259.out_unlock_crit_edge:                  ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end267:                                        ; preds = %do.body259
  %desc268 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx261, i32 0, i32 13
  %197 = ptrtoint ptr %desc268 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %desc268, align 8
  %tobool269.not = icmp eq ptr %198, null
  br i1 %tobool269.not, label %if.end267.for.inc285_crit_edge, label %if.then270

if.end267.for.inc285_crit_edge:                   ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc285

if.then270:                                       ; preds = %if.end267
  br i1 %194, label %switch.lookup, label %if.then270.cudbg_uld_rxq_to_qtype.exit_crit_edge

if.then270.cudbg_uld_rxq_to_qtype.exit_crit_edge: ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_uld_rxq_to_qtype.exit

switch.lookup:                                    ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %199)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cudbg_uld_rxq_to_qtype.exit

cudbg_uld_rxq_to_qtype.exit:                      ; preds = %switch.lookup, %if.then270.cudbg_uld_rxq_to_qtype.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then270.cudbg_uld_rxq_to_qtype.exit_crit_edge ]
  %qtype.i834 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.261189, i32 0, i32 1
  %200 = ptrtoint ptr %qtype.i834 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %retval.0.i, ptr %qtype.i834, align 4
  %cntxt_id.i835 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx261, i32 0, i32 11
  %201 = ptrtoint ptr %cntxt_id.i835 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %cntxt_id.i835, align 4
  %conv.i836 = zext i16 %202 to i32
  %qid.i837 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.261189, i32 0, i32 2
  %203 = ptrtoint ptr %qid.i837 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %conv.i836, ptr %qid.i837, align 4
  %iqe_len.i838 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx261, i32 0, i32 17
  %204 = ptrtoint ptr %iqe_len.i838 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %iqe_len.i838, align 8
  %desc_size.i839 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.261189, i32 0, i32 3
  %206 = ptrtoint ptr %desc_size.i839 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %desc_size.i839, align 4
  %size.i840 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx261, i32 0, i32 18
  %207 = ptrtoint ptr %size.i840 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %size.i840, align 4
  %num_desc.i841 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.261189, i32 0, i32 4
  %209 = ptrtoint ptr %num_desc.i841 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %num_desc.i841, align 4
  %210 = load i32, ptr %size.i840, align 4
  %211 = load i32, ptr %iqe_len.i838, align 8
  %mul.i842 = mul i32 %211, %210
  %212 = ptrtoint ptr %qdesc_entry.261189 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %mul.i842, ptr %qdesc_entry.261189, align 4
  %data.i843 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.261189, i32 0, i32 5
  %213 = ptrtoint ptr %desc268 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %desc268, align 8
  %215 = call ptr @memcpy(ptr %data.i843, ptr %214, i32 %mul.i842)
  %add273.neg = add i32 %size.181188, -20
  %sub274 = sub i32 %add273.neg, %mul.i842
  %inc275 = add i32 %num_queues.261191, 1
  %add.ptr1.i846 = getelementptr i8, ptr %data.i843, i32 %mul.i842
  br label %for.inc285

for.inc285:                                       ; preds = %cudbg_uld_rxq_to_qtype.exit, %if.end267.for.inc285_crit_edge
  %size.19.ph = phi i32 [ %sub274, %cudbg_uld_rxq_to_qtype.exit ], [ %size.181188, %if.end267.for.inc285_crit_edge ]
  %qdesc_entry.28.ph = phi ptr [ %add.ptr1.i846, %cudbg_uld_rxq_to_qtype.exit ], [ %qdesc_entry.261189, %if.end267.for.inc285_crit_edge ]
  %num_queues.28.ph = phi i32 [ %inc275, %cudbg_uld_rxq_to_qtype.exit ], [ %num_queues.261191, %if.end267.for.inc285_crit_edge ]
  %inc286 = add nuw nsw i32 %i.51190, 1
  %216 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %nrxq, align 4
  %conv255 = zext i16 %217 to i32
  %cmp256 = icmp ult i32 %inc286, %conv255
  br i1 %cmp256, label %for.inc285.do.body259_crit_edge, label %for.inc285.for.inc288_crit_edge

for.inc285.for.inc288_crit_edge:                  ; preds = %for.inc285
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc288

for.inc285.do.body259_crit_edge:                  ; preds = %for.inc285
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body259

for.inc288:                                       ; preds = %for.inc285.for.inc288_crit_edge, %for.cond254.preheader.for.inc288_crit_edge, %for.body246.for.inc288_crit_edge
  %size.20 = phi i32 [ %size.171195, %for.body246.for.inc288_crit_edge ], [ %size.171195, %for.cond254.preheader.for.inc288_crit_edge ], [ %size.19.ph, %for.inc285.for.inc288_crit_edge ]
  %qdesc_entry.29 = phi ptr [ %qdesc_entry.251196, %for.body246.for.inc288_crit_edge ], [ %qdesc_entry.251196, %for.cond254.preheader.for.inc288_crit_edge ], [ %qdesc_entry.28.ph, %for.inc285.for.inc288_crit_edge ]
  %num_queues.29 = phi i32 [ %num_queues.251200, %for.body246.for.inc288_crit_edge ], [ %num_queues.251200, %for.cond254.preheader.for.inc288_crit_edge ], [ %num_queues.28.ph, %for.inc285.for.inc288_crit_edge ]
  %inc289 = add nuw nsw i32 %j.11197, 1
  %exitcond.not = icmp eq i32 %inc289, 8
  br i1 %exitcond.not, label %for.inc288.for.body294_crit_edge, label %for.inc288.for.body246_crit_edge

for.inc288.for.body246_crit_edge:                 ; preds = %for.inc288
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body246

for.inc288.for.body294_crit_edge:                 ; preds = %for.inc288
  br label %for.body294

for.body294:                                      ; preds = %for.inc338.for.body294_crit_edge, %for.inc288.for.body294_crit_edge
  %num_queues.301216 = phi i32 [ %num_queues.34, %for.inc338.for.body294_crit_edge ], [ %num_queues.29, %for.inc288.for.body294_crit_edge ]
  %j.21213 = phi i32 [ %inc339, %for.inc338.for.body294_crit_edge ], [ 0, %for.inc288.for.body294_crit_edge ]
  %qdesc_entry.301212 = phi ptr [ %qdesc_entry.34, %for.inc338.for.body294_crit_edge ], [ %qdesc_entry.29, %for.inc288.for.body294_crit_edge ]
  %size.211211 = phi i32 [ %size.24, %for.inc338.for.body294_crit_edge ], [ %size.20, %for.inc288.for.body294_crit_edge ]
  %218 = ptrtoint ptr %uld_rxq_info to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %uld_rxq_info, align 8
  %arrayidx296 = getelementptr ptr, ptr %219, i32 %j.21213
  %220 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx296, align 4
  %tobool297.not = icmp eq ptr %221, null
  br i1 %tobool297.not, label %for.body294.for.inc338_crit_edge, label %for.cond302.preheader

for.body294.for.inc338_crit_edge:                 ; preds = %for.body294
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc338

for.cond302.preheader:                            ; preds = %for.body294
  %nrxq303 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %221, i32 0, i32 3
  %222 = ptrtoint ptr %nrxq303 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %nrxq303, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %cmp3051202.not = icmp eq i16 %223, 0
  br i1 %cmp3051202.not, label %for.cond302.preheader.for.inc338_crit_edge, label %do.body308.lr.ph

for.cond302.preheader.for.inc338_crit_edge:       ; preds = %for.cond302.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc338

do.body308.lr.ph:                                 ; preds = %for.cond302.preheader
  %uldrxq310 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %221, i32 0, i32 1
  %switch.tableidx1359 = add nsw i32 %j.21213, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx1359)
  %224 = icmp ult i32 %switch.tableidx1359, 6
  %switch.gep1360 = getelementptr inbounds [6 x i32], ptr @switch.table.cudbg_collect_qdesc.24, i32 0, i32 %switch.tableidx1359
  br label %do.body308

do.body308:                                       ; preds = %for.inc335.do.body308_crit_edge, %do.body308.lr.ph
  %num_queues.311207 = phi i32 [ %num_queues.301216, %do.body308.lr.ph ], [ %num_queues.33.ph, %for.inc335.do.body308_crit_edge ]
  %i.61205 = phi i32 [ 0, %do.body308.lr.ph ], [ %inc336, %for.inc335.do.body308_crit_edge ]
  %qdesc_entry.311204 = phi ptr [ %qdesc_entry.301212, %do.body308.lr.ph ], [ %qdesc_entry.33.ph, %for.inc335.do.body308_crit_edge ]
  %size.221203 = phi i32 [ %size.211211, %do.body308.lr.ph ], [ %size.23.ph, %for.inc335.do.body308_crit_edge ]
  %225 = ptrtoint ptr %uldrxq310 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %uldrxq310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.221203)
  %cmp314 = icmp eq i32 %size.221203, 0
  br i1 %cmp314, label %do.body308.out_unlock_crit_edge, label %if.end317

do.body308.out_unlock_crit_edge:                  ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end317:                                        ; preds = %do.body308
  %desc318 = getelementptr %struct.sge_ofld_rxq, ptr %226, i32 %i.61205, i32 1, i32 12
  %227 = ptrtoint ptr %desc318 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %desc318, align 4
  %tobool319.not = icmp eq ptr %228, null
  br i1 %tobool319.not, label %if.end317.for.inc335_crit_edge, label %if.then320

if.end317.for.inc335_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc335

if.then320:                                       ; preds = %if.end317
  br i1 %224, label %switch.lookup1358, label %if.then320.cudbg_uld_flq_to_qtype.exit_crit_edge

if.then320.cudbg_uld_flq_to_qtype.exit_crit_edge: ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_uld_flq_to_qtype.exit

switch.lookup1358:                                ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #10
  %229 = ptrtoint ptr %switch.gep1360 to i32
  call void @__asan_load4_noabort(i32 %229)
  %switch.load1361 = load i32, ptr %switch.gep1360, align 4
  br label %cudbg_uld_flq_to_qtype.exit

cudbg_uld_flq_to_qtype.exit:                      ; preds = %switch.lookup1358, %if.then320.cudbg_uld_flq_to_qtype.exit_crit_edge
  %retval.0.i852 = phi i32 [ %switch.load1361, %switch.lookup1358 ], [ 0, %if.then320.cudbg_uld_flq_to_qtype.exit_crit_edge ]
  %qtype.i853 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.311204, i32 0, i32 1
  %230 = ptrtoint ptr %qtype.i853 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %retval.0.i852, ptr %qtype.i853, align 4
  %cntxt_id.i854 = getelementptr %struct.sge_ofld_rxq, ptr %226, i32 %i.61205, i32 1, i32 9
  %231 = ptrtoint ptr %cntxt_id.i854 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %cntxt_id.i854, align 4
  %qid.i855 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.311204, i32 0, i32 2
  %233 = ptrtoint ptr %qid.i855 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %qid.i855, align 4
  %desc_size.i856 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.311204, i32 0, i32 3
  %234 = ptrtoint ptr %desc_size.i856 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 8, ptr %desc_size.i856, align 4
  %size.i857 = getelementptr %struct.sge_ofld_rxq, ptr %226, i32 %i.61205, i32 1, i32 10
  %235 = ptrtoint ptr %size.i857 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %size.i857, align 4
  %num_desc.i858 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.311204, i32 0, i32 4
  %237 = ptrtoint ptr %num_desc.i858 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %num_desc.i858, align 4
  %238 = load i32, ptr %size.i857, align 4
  %mul.i859 = shl i32 %238, 3
  %239 = ptrtoint ptr %qdesc_entry.311204 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %mul.i859, ptr %qdesc_entry.311204, align 4
  %data.i860 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.311204, i32 0, i32 5
  %240 = ptrtoint ptr %desc318 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %desc318, align 4
  %242 = call ptr @memcpy(ptr %data.i860, ptr %241, i32 %mul.i859)
  %add323.neg = add i32 %size.221203, -20
  %sub324 = sub i32 %add323.neg, %mul.i859
  %inc325 = add i32 %num_queues.311207, 1
  %add.ptr1.i863 = getelementptr i8, ptr %data.i860, i32 %mul.i859
  br label %for.inc335

for.inc335:                                       ; preds = %cudbg_uld_flq_to_qtype.exit, %if.end317.for.inc335_crit_edge
  %size.23.ph = phi i32 [ %sub324, %cudbg_uld_flq_to_qtype.exit ], [ %size.221203, %if.end317.for.inc335_crit_edge ]
  %qdesc_entry.33.ph = phi ptr [ %add.ptr1.i863, %cudbg_uld_flq_to_qtype.exit ], [ %qdesc_entry.311204, %if.end317.for.inc335_crit_edge ]
  %num_queues.33.ph = phi i32 [ %inc325, %cudbg_uld_flq_to_qtype.exit ], [ %num_queues.311207, %if.end317.for.inc335_crit_edge ]
  %inc336 = add nuw nsw i32 %i.61205, 1
  %243 = ptrtoint ptr %nrxq303 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %nrxq303, align 4
  %conv304 = zext i16 %244 to i32
  %cmp305 = icmp ult i32 %inc336, %conv304
  br i1 %cmp305, label %for.inc335.do.body308_crit_edge, label %for.inc335.for.inc338_crit_edge

for.inc335.for.inc338_crit_edge:                  ; preds = %for.inc335
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc338

for.inc335.do.body308_crit_edge:                  ; preds = %for.inc335
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body308

for.inc338:                                       ; preds = %for.inc335.for.inc338_crit_edge, %for.cond302.preheader.for.inc338_crit_edge, %for.body294.for.inc338_crit_edge
  %size.24 = phi i32 [ %size.211211, %for.body294.for.inc338_crit_edge ], [ %size.211211, %for.cond302.preheader.for.inc338_crit_edge ], [ %size.23.ph, %for.inc335.for.inc338_crit_edge ]
  %qdesc_entry.34 = phi ptr [ %qdesc_entry.301212, %for.body294.for.inc338_crit_edge ], [ %qdesc_entry.301212, %for.cond302.preheader.for.inc338_crit_edge ], [ %qdesc_entry.33.ph, %for.inc335.for.inc338_crit_edge ]
  %num_queues.34 = phi i32 [ %num_queues.301216, %for.body294.for.inc338_crit_edge ], [ %num_queues.301216, %for.cond302.preheader.for.inc338_crit_edge ], [ %num_queues.33.ph, %for.inc335.for.inc338_crit_edge ]
  %inc339 = add nuw nsw i32 %j.21213, 1
  %exitcond1288.not = icmp eq i32 %inc339, 8
  br i1 %exitcond1288.not, label %for.inc338.for.body344_crit_edge, label %for.inc338.for.body294_crit_edge

for.inc338.for.body294_crit_edge:                 ; preds = %for.inc338
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body294

for.inc338.for.body344_crit_edge:                 ; preds = %for.inc338
  br label %for.body344

for.body344:                                      ; preds = %for.inc390.for.body344_crit_edge, %for.inc338.for.body344_crit_edge
  %num_queues.351231 = phi i32 [ %num_queues.39, %for.inc390.for.body344_crit_edge ], [ %num_queues.34, %for.inc338.for.body344_crit_edge ]
  %j.31228 = phi i32 [ %inc391, %for.inc390.for.body344_crit_edge ], [ 0, %for.inc338.for.body344_crit_edge ]
  %qdesc_entry.351227 = phi ptr [ %qdesc_entry.39, %for.inc390.for.body344_crit_edge ], [ %qdesc_entry.34, %for.inc338.for.body344_crit_edge ]
  %size.251226 = phi i32 [ %size.28, %for.inc390.for.body344_crit_edge ], [ %size.24, %for.inc338.for.body344_crit_edge ]
  %245 = ptrtoint ptr %uld_rxq_info to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %uld_rxq_info, align 8
  %arrayidx346 = getelementptr ptr, ptr %246, i32 %j.31228
  %247 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx346, align 4
  %tobool347.not = icmp eq ptr %248, null
  br i1 %tobool347.not, label %for.body344.for.inc390_crit_edge, label %if.end349

for.body344.for.inc390_crit_edge:                 ; preds = %for.body344
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc390

if.end349:                                        ; preds = %for.body344
  %nrxq352 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %248, i32 0, i32 3
  %249 = ptrtoint ptr %nrxq352 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %nrxq352, align 4
  %conv353 = zext i16 %250 to i32
  %nciq = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %248, i32 0, i32 4
  %251 = ptrtoint ptr %nciq to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %nciq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %cmp3561218.not = icmp eq i16 %252, 0
  br i1 %cmp3561218.not, label %if.end349.for.inc390_crit_edge, label %do.body359.lr.ph

if.end349.for.inc390_crit_edge:                   ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc390

do.body359.lr.ph:                                 ; preds = %if.end349
  %uldrxq361 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %248, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.31228)
  %cond.i = icmp eq i32 %j.31228, 1
  %..i = select i1 %cond.i, i32 11, i32 0
  br label %do.body359

do.body359:                                       ; preds = %for.inc387.do.body359_crit_edge, %do.body359.lr.ph
  %num_queues.361222 = phi i32 [ %num_queues.351231, %do.body359.lr.ph ], [ %num_queues.38.ph, %for.inc387.do.body359_crit_edge ]
  %i.71221 = phi i32 [ 0, %do.body359.lr.ph ], [ %inc388, %for.inc387.do.body359_crit_edge ]
  %qdesc_entry.361220 = phi ptr [ %qdesc_entry.351227, %do.body359.lr.ph ], [ %qdesc_entry.38.ph, %for.inc387.do.body359_crit_edge ]
  %size.261219 = phi i32 [ %size.251226, %do.body359.lr.ph ], [ %size.27.ph, %for.inc387.do.body359_crit_edge ]
  %253 = ptrtoint ptr %uldrxq361 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %uldrxq361, align 4
  %add362 = add nuw nsw i32 %i.71221, %conv353
  %arrayidx363 = getelementptr %struct.sge_ofld_rxq, ptr %254, i32 %add362
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.261219)
  %cmp366 = icmp eq i32 %size.261219, 0
  br i1 %cmp366, label %do.body359.out_unlock_crit_edge, label %if.end369

do.body359.out_unlock_crit_edge:                  ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end369:                                        ; preds = %do.body359
  %desc370 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx363, i32 0, i32 13
  %255 = ptrtoint ptr %desc370 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %desc370, align 8
  %tobool371.not = icmp eq ptr %256, null
  br i1 %tobool371.not, label %if.end369.for.inc387_crit_edge, label %if.then372

if.end369.for.inc387_crit_edge:                   ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc387

if.then372:                                       ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i864 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.361220, i32 0, i32 1
  %257 = ptrtoint ptr %qtype.i864 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %..i, ptr %qtype.i864, align 4
  %cntxt_id.i865 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx363, i32 0, i32 11
  %258 = ptrtoint ptr %cntxt_id.i865 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %cntxt_id.i865, align 4
  %conv.i866 = zext i16 %259 to i32
  %qid.i867 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.361220, i32 0, i32 2
  %260 = ptrtoint ptr %qid.i867 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %conv.i866, ptr %qid.i867, align 4
  %iqe_len.i868 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx363, i32 0, i32 17
  %261 = ptrtoint ptr %iqe_len.i868 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %iqe_len.i868, align 8
  %desc_size.i869 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.361220, i32 0, i32 3
  %263 = ptrtoint ptr %desc_size.i869 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %desc_size.i869, align 4
  %size.i870 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx363, i32 0, i32 18
  %264 = ptrtoint ptr %size.i870 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %size.i870, align 4
  %num_desc.i871 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.361220, i32 0, i32 4
  %266 = ptrtoint ptr %num_desc.i871 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %num_desc.i871, align 4
  %267 = load i32, ptr %size.i870, align 4
  %268 = load i32, ptr %iqe_len.i868, align 8
  %mul.i872 = mul i32 %268, %267
  %269 = ptrtoint ptr %qdesc_entry.361220 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %mul.i872, ptr %qdesc_entry.361220, align 4
  %data.i873 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.361220, i32 0, i32 5
  %270 = ptrtoint ptr %desc370 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %desc370, align 8
  %272 = call ptr @memcpy(ptr %data.i873, ptr %271, i32 %mul.i872)
  %add375.neg = add i32 %size.261219, -20
  %sub376 = sub i32 %add375.neg, %mul.i872
  %inc377 = add i32 %num_queues.361222, 1
  %add.ptr1.i876 = getelementptr i8, ptr %data.i873, i32 %mul.i872
  br label %for.inc387

for.inc387:                                       ; preds = %if.then372, %if.end369.for.inc387_crit_edge
  %size.27.ph = phi i32 [ %sub376, %if.then372 ], [ %size.261219, %if.end369.for.inc387_crit_edge ]
  %qdesc_entry.38.ph = phi ptr [ %add.ptr1.i876, %if.then372 ], [ %qdesc_entry.361220, %if.end369.for.inc387_crit_edge ]
  %num_queues.38.ph = phi i32 [ %inc377, %if.then372 ], [ %num_queues.361222, %if.end369.for.inc387_crit_edge ]
  %inc388 = add nuw nsw i32 %i.71221, 1
  %273 = ptrtoint ptr %nciq to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %nciq, align 2
  %conv355 = zext i16 %274 to i32
  %cmp356 = icmp ult i32 %inc388, %conv355
  br i1 %cmp356, label %for.inc387.do.body359_crit_edge, label %for.inc387.for.inc390_crit_edge

for.inc387.for.inc390_crit_edge:                  ; preds = %for.inc387
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc390

for.inc387.do.body359_crit_edge:                  ; preds = %for.inc387
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body359

for.inc390:                                       ; preds = %for.inc387.for.inc390_crit_edge, %if.end349.for.inc390_crit_edge, %for.body344.for.inc390_crit_edge
  %size.28 = phi i32 [ %size.251226, %for.body344.for.inc390_crit_edge ], [ %size.251226, %if.end349.for.inc390_crit_edge ], [ %size.27.ph, %for.inc387.for.inc390_crit_edge ]
  %qdesc_entry.39 = phi ptr [ %qdesc_entry.351227, %for.body344.for.inc390_crit_edge ], [ %qdesc_entry.351227, %if.end349.for.inc390_crit_edge ], [ %qdesc_entry.38.ph, %for.inc387.for.inc390_crit_edge ]
  %num_queues.39 = phi i32 [ %num_queues.351231, %for.body344.for.inc390_crit_edge ], [ %num_queues.351231, %if.end349.for.inc390_crit_edge ], [ %num_queues.38.ph, %for.inc387.for.inc390_crit_edge ]
  %inc391 = add nuw nsw i32 %j.31228, 1
  %exitcond1289.not = icmp eq i32 %inc391, 8
  br i1 %exitcond1289.not, label %for.inc390.if.end397_crit_edge, label %for.inc390.for.body344_crit_edge

for.inc390.for.body344_crit_edge:                 ; preds = %for.inc390
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body344

for.inc390.if.end397_crit_edge:                   ; preds = %for.inc390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end397

if.end397:                                        ; preds = %for.inc390.if.end397_crit_edge, %if.end240.if.end397_crit_edge
  %size.30 = phi i32 [ %size.16, %if.end240.if.end397_crit_edge ], [ %size.28, %for.inc390.if.end397_crit_edge ]
  %qdesc_entry.41 = phi ptr [ %qdesc_entry.24, %if.end240.if.end397_crit_edge ], [ %qdesc_entry.39, %for.inc390.if.end397_crit_edge ]
  %num_queues.41 = phi i32 [ %num_queues.24, %if.end240.if.end397_crit_edge ], [ %num_queues.39, %for.inc390.if.end397_crit_edge ]
  %eohw_txq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 10
  %275 = ptrtoint ptr %eohw_txq to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %eohw_txq, align 4
  %tobool398.not = icmp eq ptr %276, null
  br i1 %tobool398.not, label %if.end397.if.end434_crit_edge, label %for.cond400.preheader

if.end397.if.end434_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end434

for.cond400.preheader:                            ; preds = %if.end397
  %eoqsets = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 18
  %277 = ptrtoint ptr %eoqsets to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %eoqsets, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %278)
  %cmp4021233.not = icmp eq i16 %278, 0
  br i1 %cmp4021233.not, label %for.cond400.preheader.if.end434_crit_edge, label %for.cond400.preheader.do.body405_crit_edge

for.cond400.preheader.do.body405_crit_edge:       ; preds = %for.cond400.preheader
  br label %do.body405

for.cond400.preheader.if.end434_crit_edge:        ; preds = %for.cond400.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end434

do.body405:                                       ; preds = %for.inc431.do.body405_crit_edge, %for.cond400.preheader.do.body405_crit_edge
  %num_queues.421238 = phi i32 [ %num_queues.44.ph, %for.inc431.do.body405_crit_edge ], [ %num_queues.41, %for.cond400.preheader.do.body405_crit_edge ]
  %i.81236 = phi i32 [ %inc432, %for.inc431.do.body405_crit_edge ], [ 0, %for.cond400.preheader.do.body405_crit_edge ]
  %qdesc_entry.421235 = phi ptr [ %qdesc_entry.44.ph, %for.inc431.do.body405_crit_edge ], [ %qdesc_entry.41, %for.cond400.preheader.do.body405_crit_edge ]
  %size.311234 = phi i32 [ %size.32.ph, %for.inc431.do.body405_crit_edge ], [ %size.30, %for.cond400.preheader.do.body405_crit_edge ]
  %279 = ptrtoint ptr %eohw_txq to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %eohw_txq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.311234)
  %cmp411 = icmp eq i32 %size.311234, 0
  br i1 %cmp411, label %do.body405.out_crit_edge, label %if.end414

do.body405.out_crit_edge:                         ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end414:                                        ; preds = %do.body405
  %desc415 = getelementptr %struct.sge_eohw_txq, ptr %280, i32 %i.81236, i32 1, i32 8
  %281 = ptrtoint ptr %desc415 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %desc415, align 4
  %tobool416.not = icmp eq ptr %282, null
  br i1 %tobool416.not, label %if.end414.for.inc431_crit_edge, label %if.then417

if.end414.for.inc431_crit_edge:                   ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc431

if.then417:                                       ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i877 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.421235, i32 0, i32 1
  %283 = ptrtoint ptr %qtype.i877 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 21, ptr %qtype.i877, align 4
  %cntxt_id.i878 = getelementptr %struct.sge_eohw_txq, ptr %280, i32 %i.81236, i32 1, i32 7
  %284 = ptrtoint ptr %cntxt_id.i878 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %cntxt_id.i878, align 4
  %qid.i879 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.421235, i32 0, i32 2
  %286 = ptrtoint ptr %qid.i879 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %qid.i879, align 4
  %desc_size.i880 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.421235, i32 0, i32 3
  %287 = ptrtoint ptr %desc_size.i880 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 64, ptr %desc_size.i880, align 4
  %size.i881 = getelementptr %struct.sge_eohw_txq, ptr %280, i32 %i.81236, i32 1, i32 2
  %288 = ptrtoint ptr %size.i881 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %size.i881, align 4
  %num_desc.i882 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.421235, i32 0, i32 4
  %290 = ptrtoint ptr %num_desc.i882 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %289, ptr %num_desc.i882, align 4
  %291 = load i32, ptr %size.i881, align 4
  %mul.i883 = shl i32 %291, 6
  %292 = ptrtoint ptr %qdesc_entry.421235 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %mul.i883, ptr %qdesc_entry.421235, align 4
  %data.i884 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.421235, i32 0, i32 5
  %293 = ptrtoint ptr %desc415 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %desc415, align 4
  %295 = call ptr @memcpy(ptr %data.i884, ptr %294, i32 %mul.i883)
  %add419.neg = add i32 %size.311234, -20
  %sub420 = sub i32 %add419.neg, %mul.i883
  %inc421 = add i32 %num_queues.421238, 1
  %add.ptr1.i887 = getelementptr i8, ptr %data.i884, i32 %mul.i883
  br label %for.inc431

for.inc431:                                       ; preds = %if.then417, %if.end414.for.inc431_crit_edge
  %size.32.ph = phi i32 [ %sub420, %if.then417 ], [ %size.311234, %if.end414.for.inc431_crit_edge ]
  %qdesc_entry.44.ph = phi ptr [ %add.ptr1.i887, %if.then417 ], [ %qdesc_entry.421235, %if.end414.for.inc431_crit_edge ]
  %num_queues.44.ph = phi i32 [ %inc421, %if.then417 ], [ %num_queues.421238, %if.end414.for.inc431_crit_edge ]
  %inc432 = add nuw nsw i32 %i.81236, 1
  %296 = ptrtoint ptr %eoqsets to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %eoqsets, align 2
  %conv401 = zext i16 %297 to i32
  %cmp402 = icmp ult i32 %inc432, %conv401
  br i1 %cmp402, label %for.inc431.do.body405_crit_edge, label %for.inc431.if.end434_crit_edge

for.inc431.if.end434_crit_edge:                   ; preds = %for.inc431
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end434

for.inc431.do.body405_crit_edge:                  ; preds = %for.inc431
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body405

if.end434:                                        ; preds = %for.inc431.if.end434_crit_edge, %for.cond400.preheader.if.end434_crit_edge, %if.end397.if.end434_crit_edge
  %size.33 = phi i32 [ %size.30, %if.end397.if.end434_crit_edge ], [ %size.30, %for.cond400.preheader.if.end434_crit_edge ], [ %size.32.ph, %for.inc431.if.end434_crit_edge ]
  %qdesc_entry.45 = phi ptr [ %qdesc_entry.41, %if.end397.if.end434_crit_edge ], [ %qdesc_entry.41, %for.cond400.preheader.if.end434_crit_edge ], [ %qdesc_entry.44.ph, %for.inc431.if.end434_crit_edge ]
  %num_queues.45 = phi i32 [ %num_queues.41, %if.end397.if.end434_crit_edge ], [ %num_queues.41, %for.cond400.preheader.if.end434_crit_edge ], [ %num_queues.44.ph, %for.inc431.if.end434_crit_edge ]
  %eohw_rxq = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 11
  %298 = ptrtoint ptr %eohw_rxq to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %eohw_rxq, align 8
  %tobool435.not = icmp eq ptr %299, null
  br i1 %tobool435.not, label %if.end434.out_unlock_crit_edge, label %for.cond437.preheader

if.end434.out_unlock_crit_edge:                   ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

for.cond437.preheader:                            ; preds = %if.end434
  %eoqsets438 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 22, i32 18
  %300 = ptrtoint ptr %eoqsets438 to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %eoqsets438, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %301)
  %cmp4401243.not = icmp eq i16 %301, 0
  br i1 %cmp4401243.not, label %for.cond437.preheader.out_unlock_crit_edge, label %for.cond437.preheader.do.body443_crit_edge

for.cond437.preheader.do.body443_crit_edge:       ; preds = %for.cond437.preheader
  br label %do.body443

for.cond437.preheader.out_unlock_crit_edge:       ; preds = %for.cond437.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

for.cond472.preheader:                            ; preds = %for.inc469
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %323)
  %cmp4751253.not = icmp eq i16 %323, 0
  br i1 %cmp4751253.not, label %for.cond472.preheader.out_unlock_crit_edge, label %for.cond472.preheader.do.body478_crit_edge

for.cond472.preheader.do.body478_crit_edge:       ; preds = %for.cond472.preheader
  br label %do.body478

for.cond472.preheader.out_unlock_crit_edge:       ; preds = %for.cond472.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.body443:                                       ; preds = %for.inc469.do.body443_crit_edge, %for.cond437.preheader.do.body443_crit_edge
  %num_queues.461247 = phi i32 [ %num_queues.48.ph, %for.inc469.do.body443_crit_edge ], [ %num_queues.45, %for.cond437.preheader.do.body443_crit_edge ]
  %i.91246 = phi i32 [ %inc470, %for.inc469.do.body443_crit_edge ], [ 0, %for.cond437.preheader.do.body443_crit_edge ]
  %qdesc_entry.461245 = phi ptr [ %qdesc_entry.48.ph, %for.inc469.do.body443_crit_edge ], [ %qdesc_entry.45, %for.cond437.preheader.do.body443_crit_edge ]
  %size.341244 = phi i32 [ %size.35.ph, %for.inc469.do.body443_crit_edge ], [ %size.33, %for.cond437.preheader.do.body443_crit_edge ]
  %302 = ptrtoint ptr %eohw_rxq to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %eohw_rxq, align 8
  %arrayidx446 = getelementptr %struct.sge_ofld_rxq, ptr %303, i32 %i.91246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.341244)
  %cmp449 = icmp eq i32 %size.341244, 0
  br i1 %cmp449, label %do.body443.out_crit_edge, label %if.end452

do.body443.out_crit_edge:                         ; preds = %do.body443
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end452:                                        ; preds = %do.body443
  %desc453 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx446, i32 0, i32 13
  %304 = ptrtoint ptr %desc453 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %desc453, align 8
  %tobool454.not = icmp eq ptr %305, null
  br i1 %tobool454.not, label %if.end452.for.inc469_crit_edge, label %if.then455

if.end452.for.inc469_crit_edge:                   ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc469

if.then455:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i888 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.461245, i32 0, i32 1
  %306 = ptrtoint ptr %qtype.i888 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 22, ptr %qtype.i888, align 4
  %cntxt_id.i889 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx446, i32 0, i32 11
  %307 = ptrtoint ptr %cntxt_id.i889 to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %cntxt_id.i889, align 4
  %conv.i890 = zext i16 %308 to i32
  %qid.i891 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.461245, i32 0, i32 2
  %309 = ptrtoint ptr %qid.i891 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %conv.i890, ptr %qid.i891, align 4
  %iqe_len.i892 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx446, i32 0, i32 17
  %310 = ptrtoint ptr %iqe_len.i892 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %iqe_len.i892, align 8
  %desc_size.i893 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.461245, i32 0, i32 3
  %312 = ptrtoint ptr %desc_size.i893 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %desc_size.i893, align 4
  %size.i894 = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx446, i32 0, i32 18
  %313 = ptrtoint ptr %size.i894 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %size.i894, align 4
  %num_desc.i895 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.461245, i32 0, i32 4
  %315 = ptrtoint ptr %num_desc.i895 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %314, ptr %num_desc.i895, align 4
  %316 = load i32, ptr %size.i894, align 4
  %317 = load i32, ptr %iqe_len.i892, align 8
  %mul.i896 = mul i32 %317, %316
  %318 = ptrtoint ptr %qdesc_entry.461245 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %mul.i896, ptr %qdesc_entry.461245, align 4
  %data.i897 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.461245, i32 0, i32 5
  %319 = ptrtoint ptr %desc453 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %desc453, align 8
  %321 = call ptr @memcpy(ptr %data.i897, ptr %320, i32 %mul.i896)
  %add457.neg = add i32 %size.341244, -20
  %sub458 = sub i32 %add457.neg, %mul.i896
  %inc459 = add i32 %num_queues.461247, 1
  %add.ptr1.i900 = getelementptr i8, ptr %data.i897, i32 %mul.i896
  br label %for.inc469

for.inc469:                                       ; preds = %if.then455, %if.end452.for.inc469_crit_edge
  %size.35.ph = phi i32 [ %sub458, %if.then455 ], [ %size.341244, %if.end452.for.inc469_crit_edge ]
  %qdesc_entry.48.ph = phi ptr [ %add.ptr1.i900, %if.then455 ], [ %qdesc_entry.461245, %if.end452.for.inc469_crit_edge ]
  %num_queues.48.ph = phi i32 [ %inc459, %if.then455 ], [ %num_queues.461247, %if.end452.for.inc469_crit_edge ]
  %inc470 = add nuw nsw i32 %i.91246, 1
  %322 = ptrtoint ptr %eoqsets438 to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %eoqsets438, align 2
  %conv439 = zext i16 %323 to i32
  %cmp440 = icmp ult i32 %inc470, %conv439
  br i1 %cmp440, label %for.inc469.do.body443_crit_edge, label %for.cond472.preheader

for.inc469.do.body443_crit_edge:                  ; preds = %for.inc469
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body443

do.body478:                                       ; preds = %for.inc504.do.body478_crit_edge, %for.cond472.preheader.do.body478_crit_edge
  %num_queues.491258 = phi i32 [ %num_queues.51.ph, %for.inc504.do.body478_crit_edge ], [ %num_queues.48.ph, %for.cond472.preheader.do.body478_crit_edge ]
  %i.101256 = phi i32 [ %inc505, %for.inc504.do.body478_crit_edge ], [ 0, %for.cond472.preheader.do.body478_crit_edge ]
  %qdesc_entry.491255 = phi ptr [ %qdesc_entry.51.ph, %for.inc504.do.body478_crit_edge ], [ %qdesc_entry.48.ph, %for.cond472.preheader.do.body478_crit_edge ]
  %size.361254 = phi i32 [ %size.37.ph, %for.inc504.do.body478_crit_edge ], [ %size.35.ph, %for.cond472.preheader.do.body478_crit_edge ]
  %324 = ptrtoint ptr %eohw_rxq to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %eohw_rxq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.361254)
  %cmp484 = icmp eq i32 %size.361254, 0
  br i1 %cmp484, label %do.body478.out_crit_edge, label %if.end487

do.body478.out_crit_edge:                         ; preds = %do.body478
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end487:                                        ; preds = %do.body478
  %desc488 = getelementptr %struct.sge_ofld_rxq, ptr %325, i32 %i.101256, i32 1, i32 12
  %326 = ptrtoint ptr %desc488 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %desc488, align 4
  %tobool489.not = icmp eq ptr %327, null
  br i1 %tobool489.not, label %if.end487.for.inc504_crit_edge, label %if.then490

if.end487.for.inc504_crit_edge:                   ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc504

if.then490:                                       ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #10
  %qtype.i901 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.491255, i32 0, i32 1
  %328 = ptrtoint ptr %qtype.i901 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 23, ptr %qtype.i901, align 4
  %cntxt_id.i902 = getelementptr %struct.sge_ofld_rxq, ptr %325, i32 %i.101256, i32 1, i32 9
  %329 = ptrtoint ptr %cntxt_id.i902 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %cntxt_id.i902, align 4
  %qid.i903 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.491255, i32 0, i32 2
  %331 = ptrtoint ptr %qid.i903 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %qid.i903, align 4
  %desc_size.i904 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.491255, i32 0, i32 3
  %332 = ptrtoint ptr %desc_size.i904 to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 8, ptr %desc_size.i904, align 4
  %size.i905 = getelementptr %struct.sge_ofld_rxq, ptr %325, i32 %i.101256, i32 1, i32 10
  %333 = ptrtoint ptr %size.i905 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %size.i905, align 4
  %num_desc.i906 = getelementptr inbounds %struct.cudbg_qdesc_entry, ptr %qdesc_entry.491255, i32 0, i32 4
  %335 = ptrtoint ptr %num_desc.i906 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %num_desc.i906, align 4
  %336 = load i32, ptr %size.i905, align 4
  %mul.i907 = shl i32 %336, 3
  %337 = ptrtoint ptr %qdesc_entry.491255 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %mul.i907, ptr %qdesc_entry.491255, align 4
  %data.i908 = getelementptr %struct.cudbg_qdesc_entry, ptr %qdesc_entry.491255, i32 0, i32 5
  %338 = ptrtoint ptr %desc488 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %desc488, align 4
  %340 = call ptr @memcpy(ptr %data.i908, ptr %339, i32 %mul.i907)
  %add492.neg = add i32 %size.361254, -20
  %sub493 = sub i32 %add492.neg, %mul.i907
  %inc494 = add i32 %num_queues.491258, 1
  %add.ptr1.i911 = getelementptr i8, ptr %data.i908, i32 %mul.i907
  br label %for.inc504

for.inc504:                                       ; preds = %if.then490, %if.end487.for.inc504_crit_edge
  %size.37.ph = phi i32 [ %sub493, %if.then490 ], [ %size.361254, %if.end487.for.inc504_crit_edge ]
  %qdesc_entry.51.ph = phi ptr [ %add.ptr1.i911, %if.then490 ], [ %qdesc_entry.491255, %if.end487.for.inc504_crit_edge ]
  %num_queues.51.ph = phi i32 [ %inc494, %if.then490 ], [ %num_queues.491258, %if.end487.for.inc504_crit_edge ]
  %inc505 = add nuw nsw i32 %i.101256, 1
  %341 = ptrtoint ptr %eoqsets438 to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %eoqsets438, align 2
  %conv474 = zext i16 %342 to i32
  %cmp475 = icmp ult i32 %inc505, %conv474
  br i1 %cmp475, label %for.inc504.do.body478_crit_edge, label %for.inc504.out_unlock_crit_edge

for.inc504.out_unlock_crit_edge:                  ; preds = %for.inc504
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

for.inc504.do.body478_crit_edge:                  ; preds = %for.inc504
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body478

out_unlock:                                       ; preds = %for.inc504.out_unlock_crit_edge, %for.cond472.preheader.out_unlock_crit_edge, %for.cond437.preheader.out_unlock_crit_edge, %if.end434.out_unlock_crit_edge, %do.body359.out_unlock_crit_edge, %do.body308.out_unlock_crit_edge, %do.body259.out_unlock_crit_edge, %do.body205.1.out_unlock_crit_edge, %do.body205.out_unlock_crit_edge
  %num_queues.52 = phi i32 [ %num_queues.45, %if.end434.out_unlock_crit_edge ], [ %num_queues.48.ph, %for.cond472.preheader.out_unlock_crit_edge ], [ %num_queues.45, %for.cond437.preheader.out_unlock_crit_edge ], [ %num_queues.51.ph, %for.inc504.out_unlock_crit_edge ], [ %num_queues.361222, %do.body359.out_unlock_crit_edge ], [ %num_queues.311207, %do.body308.out_unlock_crit_edge ], [ %num_queues.261191, %do.body259.out_unlock_crit_edge ], [ %num_queues.191176.1, %do.body205.1.out_unlock_crit_edge ], [ %num_queues.191176, %do.body205.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @uld_mutex) #8
  br label %out

out:                                              ; preds = %out_unlock, %do.body478.out_crit_edge, %do.body443.out_crit_edge, %do.body405.out_crit_edge, %do.body163.out_crit_edge, %do.body140.out_crit_edge, %do.body117.out_crit_edge, %do.body89.out_crit_edge, %do.body57.out_crit_edge, %do.body25.out_crit_edge, %do.body.out_crit_edge
  %num_queues.53 = phi i32 [ %num_queues.52, %out_unlock ], [ %num_queues.9.lcssa, %do.body117.out_crit_edge ], [ %inc130, %do.body140.out_crit_edge ], [ %inc153, %do.body163.out_crit_edge ], [ %num_queues.491258, %do.body478.out_crit_edge ], [ %num_queues.461247, %do.body443.out_crit_edge ], [ %num_queues.421238, %do.body405.out_crit_edge ], [ %num_queues.91167, %do.body89.out_crit_edge ], [ %num_queues.61158, %do.body57.out_crit_edge ], [ %num_queues.31148, %do.body25.out_crit_edge ], [ %num_queues.01139, %do.body.out_crit_edge ]
  %343 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 20, ptr %add.ptr, align 4
  %num_queues508 = getelementptr i8, ptr %call.i.i, i32 12
  %344 = ptrtoint ptr %num_queues508 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %num_queues.53, ptr %num_queues508, align 4
  %data521 = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup530.while.body_crit_edge, %out
  %tot_len.01261 = phi i32 [ 33554432, %out ], [ %sub523, %cleanup530.while.body_crit_edge ]
  %cur_off.01260 = phi i32 [ 0, %out ], [ %add524, %cleanup530.while.body_crit_edge ]
  %345 = call i32 @llvm.umin.i32(i32 %tot_len.01261, i32 64512)
  %call517 = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %345, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call517)
  %tobool518.not = icmp eq i32 %call517, 0
  br i1 %tobool518.not, label %if.end520, label %while.body.out_free.sink.split_crit_edge

while.body.out_free.sink.split_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free.sink.split

if.end520:                                        ; preds = %while.body
  %346 = ptrtoint ptr %data521 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %data521, align 4
  %add.ptr522 = getelementptr i8, ptr %call.i.i, i32 %cur_off.01260
  %348 = call ptr @memcpy(ptr %347, ptr %add.ptr522, i32 %345)
  %sub523 = sub i32 %tot_len.01261, %345
  %add524 = add i32 %345, %cur_off.01260
  %349 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %350)
  %cmp.i = icmp eq i8 %350, 1
  br i1 %cmp.i, label %cudbg_write_and_release_buff.exit.thread, label %if.else.i

cudbg_write_and_release_buff.exit.thread:         ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %cleanup530

if.else.i:                                        ; preds = %if.end520
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %351 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %offset1.i.i, align 4
  %353 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %offset2.i.i, align 4
  %355 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %offset3.i.i, align 4
  %356 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %cmp34.i.i = icmp sgt i32 %357, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.cudbg_write_and_release_buff.exit.thread1068_crit_edge

if.else.i.cudbg_write_and_release_buff.exit.thread1068_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_write_and_release_buff.exit.thread1068

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %357, %if.else.i.while.body.i.i_crit_edge ]
  %358 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %359 = ptrtoint ptr %data521 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %data521, align 4
  %add.ptr.i.i = getelementptr i8, ptr %360, i32 %bytes_read.036.i.i
  %361 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %362 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %358, ptr %temp_in_buff.i.i, align 4
  %call.i.i912 = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i912)
  %tobool.not.i.i = icmp eq i32 %call.i.i912, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then527

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %358
  %add.i.i = add i32 %358, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.cudbg_write_and_release_buff.exit.thread1068_crit_edge

if.end.i.i.cudbg_write_and_release_buff.exit.thread1068_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_write_and_release_buff.exit.thread1068

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

cudbg_write_and_release_buff.exit.thread1068:     ; preds = %if.end.i.i.cudbg_write_and_release_buff.exit.thread1068_crit_edge, %if.else.i.cudbg_write_and_release_buff.exit.thread1068_crit_edge
  %363 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %364, %352
  %365 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %cleanup530

if.then527:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %out_free.sink.split

cleanup530:                                       ; preds = %cudbg_write_and_release_buff.exit.thread1068, %cudbg_write_and_release_buff.exit.thread
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  %tobool509.not = icmp eq i32 %sub523, 0
  br i1 %tobool509.not, label %cleanup530.out_free_crit_edge, label %cleanup530.while.body_crit_edge

cleanup530.while.body_crit_edge:                  ; preds = %cleanup530
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup530.out_free_crit_edge:                    ; preds = %cleanup530
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

out_free.sink.split:                              ; preds = %if.then527, %while.body.out_free.sink.split_crit_edge
  %rc.2.ph = phi i32 [ %call.i.i912, %if.then527 ], [ %call517, %while.body.out_free.sink.split_crit_edge ]
  %sys_warn528 = getelementptr inbounds %struct.cudbg_error, ptr %cudbg_err, i32 0, i32 1
  %366 = ptrtoint ptr %sys_warn528 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 -41, ptr %sys_warn528, align 4
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %cleanup530.out_free_crit_edge
  %rc.2 = phi i32 [ %rc.2.ph, %out_free.sink.split ], [ 0, %cleanup530.out_free_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup533

cleanup533:                                       ; preds = %out_free, %entry.cleanup533_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out_free ], [ -12, %entry.cleanup533_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cudbg_collect_flash(ptr noundef %pdbg_init, ptr noundef %dbg_buff, ptr nocapture noundef writeonly %cudbg_err) local_unnamed_addr #0 align 64 {
entry:
  %temp_in_buff.i.i = alloca %struct.cudbg_buffer, align 4
  %temp_buff = alloca %struct.cudbg_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdbg_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdbg_init, align 4
  %sf_size = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 15, i32 8
  %2 = ptrtoint ptr %sf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sf_size, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_buff) #8
  %4 = call ptr @memset(ptr %temp_buff, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp35.not = icmp eq i32 %3, 0
  br i1 %cmp35.not, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 2
  %compress_type.i = getelementptr inbounds %struct.cudbg_init, ptr %pdbg_init, i32 0, i32 3
  %offset1.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %offset2.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_buff, i32 0, i32 1
  %offset3.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 1
  %data4.i.i = getelementptr inbounds %struct.cudbg_buffer, ptr %temp_in_buff.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %add11, %for.inc.for.body_crit_edge ]
  %addr.036 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %sub = sub i32 %3, %i.037
  %5 = call i32 @llvm.umin.i32(i32 %sub, i32 256)
  %call = call i32 @cudbg_get_buff(ptr noundef %pdbg_init, ptr noundef %dbg_buff, i32 noundef %5, ptr noundef nonnull %temp_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.out.sink.split_crit_edge

for.body.out.sink.split_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call2 = call i32 @t4_read_flash(ptr noundef %1, i32 noundef %addr.036, i32 noundef %5, ptr noundef %7, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %compress_type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %compress_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp eq i8 %9, 1
  br i1 %cmp.i, label %cudbg_write_and_release_buff.exit.thread, label %if.else.i

cudbg_write_and_release_buff.exit.thread:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_update_buff(ptr noundef nonnull %temp_buff, ptr noundef %dbg_buff) #8
  br label %for.inc

if.else.i:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  %10 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset1.i.i, align 4
  %12 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset2.i.i, align 4
  %14 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %offset3.i.i, align 4
  %15 = ptrtoint ptr %temp_buff to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp_buff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp34.i.i = icmp sgt i32 %16, 0
  br i1 %cmp34.i.i, label %if.else.i.while.body.i.i_crit_edge, label %if.else.i.cudbg_write_and_release_buff.exit.thread30_crit_edge

if.else.i.cudbg_write_and_release_buff.exit.thread30_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_write_and_release_buff.exit.thread30

if.else.i.while.body.i.i_crit_edge:               ; preds = %if.else.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.while.body.i.i_crit_edge
  %bytes_read.036.i.i = phi i32 [ %add.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.while.body.i.i_crit_edge ]
  %bytes_left.035.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %16, %if.else.i.while.body.i.i_crit_edge ]
  %17 = call i32 @llvm.umin.i32(i32 %bytes_left.035.i.i, i32 64512) #8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %bytes_read.036.i.i
  %20 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i.i, ptr %data4.i.i, align 4
  %21 = ptrtoint ptr %temp_in_buff.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %temp_in_buff.i.i, align 4
  %call.i.i = call i32 @cudbg_compress_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_in_buff.i.i, ptr noundef %dbg_buff) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then8

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = sub nsw i32 %bytes_left.035.i.i, %17
  %add.i.i = add i32 %17, %bytes_read.036.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.cudbg_write_and_release_buff.exit.thread30_crit_edge

if.end.i.i.cudbg_write_and_release_buff.exit.thread30_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cudbg_write_and_release_buff.exit.thread30

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

cudbg_write_and_release_buff.exit.thread30:       ; preds = %if.end.i.i.cudbg_write_and_release_buff.exit.thread30_crit_edge, %if.else.i.cudbg_write_and_release_buff.exit.thread30_crit_edge
  %22 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset1.i.i, align 4
  %sub12.i.i = sub i32 %23, %11
  %24 = ptrtoint ptr %temp_buff to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub12.i.i, ptr %temp_buff, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  br label %for.inc

if.then8:                                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_in_buff.i.i) #8
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  br label %out.sink.split

for.inc:                                          ; preds = %cudbg_write_and_release_buff.exit.thread30, %cudbg_write_and_release_buff.exit.thread
  call void @cudbg_put_buff(ptr noundef %pdbg_init, ptr noundef nonnull %temp_buff) #8
  %mul = shl nuw nsw i32 %5, 2
  %add = add i32 %mul, %addr.036
  %add11 = add i32 %i.037, 256
  %cmp = icmp ugt i32 %3, %add11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out.sink.split:                                   ; preds = %if.then8, %for.body.out.sink.split_crit_edge
  %rc.1.ph = phi i32 [ %call.i.i, %if.then8 ], [ %call, %for.body.out.sink.split_crit_edge ]
  %sys_warn9 = getelementptr inbounds %struct.cudbg_error, ptr %cudbg_err, i32 0, i32 1
  %25 = ptrtoint ptr %sys_warn9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -41, ptr %sys_warn9, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ -1, %entry.out_crit_edge ], [ %rc.1.ph, %out.sink.split ], [ %call2, %if.end.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %temp_buff) #8
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_read_flash(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cudbg_update_buff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_compress_buff(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_read_cim_ibq(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_read_cim_obq(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_fwcache(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cudbg_get_mem_region(ptr nocapture noundef readonly %padap, ptr nocapture noundef %meminfo, i8 noundef zeroext %mem_type, ptr noundef %region_name, ptr nocapture noundef writeonly %mem_desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %mem_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %mem_type, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.epilog.i_crit_edge
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb4.i
    i8 4, label %sw.bb5.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip.i = getelementptr inbounds %struct.adapter, ptr %padap, i32 0, i32 15, i32 22
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip.i, align 8
  %3 = and i32 %2, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 80
  %cond.i = select i1 %cmp.i.not.i, i32 3, i32 2
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb2.i, %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %flag.0.i = phi i32 [ 5, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ %cond.i, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.sw.epilog.i_crit_edge ]
  %avail_c.i = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo, i32 0, i32 2
  %4 = ptrtoint ptr %avail_c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail_c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18.not.i = icmp eq i32 %5, 0
  br i1 %cmp18.not.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %conv620.i = phi i32 [ %conv6.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i_crit_edge ]
  %i.019.i = phi i8 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i_crit_edge ]
  %idx8.i = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo, i32 0, i32 %conv620.i, i32 2
  %6 = ptrtoint ptr %idx8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %flag.0.i)
  %cmp10.i = icmp eq i32 %7, %flag.0.i
  br i1 %cmp10.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i8 %i.019.i, 1
  %conv6.i = zext i8 %inc.i to i32
  %cmp.i = icmp ugt i32 %5, %conv6.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %call1 = tail call i32 @match_string(ptr noundef nonnull @cudbg_region, i32 noundef 24, ptr noundef %region_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %mem_c = getelementptr inbounds %struct.cudbg_meminfo, ptr %meminfo, i32 0, i32 3
  %8 = ptrtoint ptr %mem_c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp498.not = icmp eq i32 %9, 0
  br i1 %cmp498.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %10 = phi i32 [ %30, %for.inc.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %i.099 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %idx5 = getelementptr %struct.cudbg_meminfo, ptr %meminfo, i32 0, i32 1, i32 %i.099, i32 2
  %11 = ptrtoint ptr %idx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %12)
  %cmp6 = icmp ugt i32 %12, 23
  br i1 %cmp6, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %limit = getelementptr %struct.cudbg_meminfo, ptr %meminfo, i32 0, i32 1, i32 %i.099, i32 1
  %13 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.then12, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then12:                                        ; preds = %if.end8
  %sub = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.099, i32 %sub)
  %cmp14 = icmp ult i32 %i.099, %sub
  br i1 %cmp14, label %cond.true, label %if.then12.cond.end_crit_edge

if.then12.cond.end_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw i32 %i.099, 1
  %arrayidx16 = getelementptr %struct.cudbg_meminfo, ptr %meminfo, i32 0, i32 1, i32 %add
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  %sub17 = add i32 %16, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then12.cond.end_crit_edge
  %cond = phi i32 [ %sub17, %cond.true ], [ -1, %if.then12.cond.end_crit_edge ]
  %17 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %limit, align 4
  br label %if.end21

if.end21:                                         ; preds = %cond.end, %if.end8.if.end21_crit_edge
  %18 = ptrtoint ptr %idx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call1)
  %cmp25 = icmp eq i32 %19, %call1
  br i1 %cmp25, label %if.then26, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then26:                                        ; preds = %if.end21
  %arrayidx.le = getelementptr %struct.cudbg_meminfo, ptr %meminfo, i32 0, i32 1, i32 %i.099
  %20 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.le, align 4
  %idxprom = zext i8 %i.019.i to i32
  %arrayidx30 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo, i32 0, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp32 = icmp ult i32 %21, %23
  br i1 %cmp32, label %land.lhs.true, label %if.then26.if.end42_crit_edge

if.then26.if.end42_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then26
  %24 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp40 = icmp ult i32 %25, %23
  br i1 %cmp40, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.then26.if.end42_crit_edge
  %limit49 = getelementptr [4 x %struct.cudbg_mem_desc], ptr %meminfo, i32 0, i32 %idxprom, i32 1
  %26 = ptrtoint ptr %limit49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %limit49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %27)
  %cmp50 = icmp ugt i32 %21, %27
  br i1 %cmp50, label %if.end42.cleanup_crit_edge, label %if.end52

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call ptr @memcpy(ptr %mem_desc, ptr %arrayidx.le, i32 12)
  br label %cleanup

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.099, 1
  %29 = ptrtoint ptr %mem_c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mem_c, align 4
  %cmp4 = icmp ult i32 %inc, %30
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end52, %if.end42.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end42.cleanup_crit_edge ], [ -24, %entry.cleanup_crit_edge ], [ -24, %sw.epilog.i.cleanup_crit_edge ], [ 0, %if.end52 ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -24, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_memory_rw_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_memory_update_win(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_memory_rw_residual(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_ctxt_rd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_ctxt_rd_bd(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_wr_mbox_meat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_eeprom_ptov(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_vpd(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 1370, i32 46}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 1371, i32 11}
!4 = distinct !{null, !5, !"region_name", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 1370, i32 28}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 89, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 89, i32 19}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 89, i32 37}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 89, i32 51}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 90, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 90, i32 15}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 90, i32 26}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 90, i32 36}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 90, i32 46}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 91, i32 32}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 91, i32 44}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 92, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 92, i32 18}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 92, i32 33}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 92, i32 49}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 93, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 93, i32 19}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 93, i32 34}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 94, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 94, i32 21}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 94, i32 37}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 95, i32 2}
!50 = !{ptr @cudbg_region, !51, !"cudbg_region", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_entity.h", i32 88, i32 27}
!52 = !{ptr @t5_tp_pio_array, !53, !"t5_tp_pio_array", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 33, i32 18}
!54 = !{ptr @t6_tp_pio_array, !55, !"t6_tp_pio_array", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 18, i32 18}
!56 = !{ptr @t5_tp_tm_pio_array, !57, !"t5_tp_tm_pio_array", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 51, i32 18}
!58 = !{ptr @t6_tp_tm_pio_array, !59, !"t6_tp_tm_pio_array", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 47, i32 18}
!60 = !{ptr @t5_tp_mib_index_array, !61, !"t5_tp_mib_index_array", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 64, i32 18}
!62 = !{ptr @t6_tp_mib_index_array, !63, !"t6_tp_mib_index_array", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 55, i32 18}
!64 = distinct !{null, !65, !"t5_sge_dbg_index_array", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 76, i32 18}
!66 = distinct !{null, !67, !"t6_sge_qbase_index_array", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 81, i32 18}
!68 = distinct !{null, !69, !"t5_pcie_pdbg_array", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 86, i32 18}
!70 = distinct !{null, !71, !"t5_pcie_cdbg_array", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 92, i32 18}
!72 = distinct !{null, !73, !"t5_pm_rx_array", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 97, i32 18}
!74 = distinct !{null, !75, !"t5_pm_tx_array", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 102, i32 18}
!76 = !{ptr @t5_pcie_config_array, !77, !"t5_pcie_config_array", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 107, i32 18}
!78 = distinct !{null, !79, !"t6_ma_ireg_array", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 124, i32 18}
!80 = distinct !{null, !81, !"t6_ma_ireg_array2", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 130, i32 18}
!82 = !{ptr @t5_up_cim_reg_array, !83, !"t5_up_cim_reg_array", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 160, i32 18}
!84 = !{ptr @t6_up_cim_reg_array, !85, !"t6_up_cim_reg_array", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 135, i32 18}
!86 = distinct !{null, !87, !"t6_hma_ireg_array", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c", i32 176, i32 18}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 6461062}
!98 = !{i64 2160157693}
!99 = !{i64 2160158080}
!100 = !{i64 6460644}
!101 = !{i8 0, i8 2}
!102 = !{!"auto-init"}
!103 = !{i64 2160158862}
!104 = !{i64 2160159312}
