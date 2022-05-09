; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxgb4_collect_entity = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.cudbg_error = type { i32, i32, i32 }
%struct.cudbg_buffer = type { i32, i32, ptr }
%struct.cudbg_init = type { ptr, ptr, i32, i8, ptr, i32, ptr }
%struct.cudbg_hdr = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, [8 x i32] }
%struct.cudbg_entity_hdr = type { i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8], i32, [5 x i32] }

@cxgb4_collect_hw_dump = internal constant { [47 x %struct.cxgb4_collect_entity], [72 x i8] } { [47 x %struct.cxgb4_collect_entity] [%struct.cxgb4_collect_entity { i32 66, ptr @cudbg_collect_mbox_log }, %struct.cxgb4_collect_entity { i32 70, ptr @cudbg_collect_qdesc }, %struct.cxgb4_collect_entity { i32 2, ptr @cudbg_collect_fw_devlog }, %struct.cxgb4_collect_entity { i32 1, ptr @cudbg_collect_reg_dump }, %struct.cxgb4_collect_entity { i32 3, ptr @cudbg_collect_cim_la }, %struct.cxgb4_collect_entity { i32 4, ptr @cudbg_collect_cim_ma_la }, %struct.cxgb4_collect_entity { i32 5, ptr @cudbg_collect_cim_qcfg }, %struct.cxgb4_collect_entity { i32 6, ptr @cudbg_collect_cim_ibq_tp0 }, %struct.cxgb4_collect_entity { i32 7, ptr @cudbg_collect_cim_ibq_tp1 }, %struct.cxgb4_collect_entity { i32 8, ptr @cudbg_collect_cim_ibq_ulp }, %struct.cxgb4_collect_entity { i32 9, ptr @cudbg_collect_cim_ibq_sge0 }, %struct.cxgb4_collect_entity { i32 10, ptr @cudbg_collect_cim_ibq_sge1 }, %struct.cxgb4_collect_entity { i32 11, ptr @cudbg_collect_cim_ibq_ncsi }, %struct.cxgb4_collect_entity { i32 12, ptr @cudbg_collect_cim_obq_ulp0 }, %struct.cxgb4_collect_entity { i32 13, ptr @cudbg_collect_cim_obq_ulp1 }, %struct.cxgb4_collect_entity { i32 14, ptr @cudbg_collect_cim_obq_ulp2 }, %struct.cxgb4_collect_entity { i32 15, ptr @cudbg_collect_cim_obq_ulp3 }, %struct.cxgb4_collect_entity { i32 16, ptr @cudbg_collect_cim_obq_sge }, %struct.cxgb4_collect_entity { i32 17, ptr @cudbg_collect_cim_obq_ncsi }, %struct.cxgb4_collect_entity { i32 22, ptr @cudbg_collect_rss }, %struct.cxgb4_collect_entity { i32 25, ptr @cudbg_collect_rss_vf_config }, %struct.cxgb4_collect_entity { i32 27, ptr @cudbg_collect_path_mtu }, %struct.cxgb4_collect_entity { i32 30, ptr @cudbg_collect_pm_stats }, %struct.cxgb4_collect_entity { i32 31, ptr @cudbg_collect_hw_sched }, %struct.cxgb4_collect_entity { i32 36, ptr @cudbg_collect_tp_indirect }, %struct.cxgb4_collect_entity { i32 37, ptr @cudbg_collect_sge_indirect }, %struct.cxgb4_collect_entity { i32 41, ptr @cudbg_collect_ulprx_la }, %struct.cxgb4_collect_entity { i32 43, ptr @cudbg_collect_tp_la }, %struct.cxgb4_collect_entity { i32 44, ptr @cudbg_collect_meminfo }, %struct.cxgb4_collect_entity { i32 45, ptr @cudbg_collect_cim_pif_la }, %struct.cxgb4_collect_entity { i32 46, ptr @cudbg_collect_clk_info }, %struct.cxgb4_collect_entity { i32 47, ptr @cudbg_collect_obq_sge_rx_q0 }, %struct.cxgb4_collect_entity { i32 48, ptr @cudbg_collect_obq_sge_rx_q1 }, %struct.cxgb4_collect_entity { i32 50, ptr @cudbg_collect_pcie_indirect }, %struct.cxgb4_collect_entity { i32 51, ptr @cudbg_collect_pm_indirect }, %struct.cxgb4_collect_entity { i32 54, ptr @cudbg_collect_tid }, %struct.cxgb4_collect_entity { i32 55, ptr @cudbg_collect_pcie_config }, %struct.cxgb4_collect_entity { i32 56, ptr @cudbg_collect_dump_context }, %struct.cxgb4_collect_entity { i32 57, ptr @cudbg_collect_mps_tcam }, %struct.cxgb4_collect_entity { i32 58, ptr @cudbg_collect_vpd_data }, %struct.cxgb4_collect_entity { i32 59, ptr @cudbg_collect_le_tcam }, %struct.cxgb4_collect_entity { i32 60, ptr @cudbg_collect_cctrl }, %struct.cxgb4_collect_entity { i32 61, ptr @cudbg_collect_ma_indirect }, %struct.cxgb4_collect_entity { i32 62, ptr @cudbg_collect_ulptx_la }, %struct.cxgb4_collect_entity { i32 64, ptr @cudbg_collect_up_cim_indirect }, %struct.cxgb4_collect_entity { i32 65, ptr @cudbg_collect_pbt_tables }, %struct.cxgb4_collect_entity { i32 67, ptr @cudbg_collect_hma_indirect }], [72 x i8] zeroinitializer }, align 32
@cxgb4_collect_mem_dump = internal constant { [5 x %struct.cxgb4_collect_entity], [56 x i8] } { [5 x %struct.cxgb4_collect_entity] [%struct.cxgb4_collect_entity { i32 18, ptr @cudbg_collect_edc0_meminfo }, %struct.cxgb4_collect_entity { i32 19, ptr @cudbg_collect_edc1_meminfo }, %struct.cxgb4_collect_entity { i32 20, ptr @cudbg_collect_mc0_meminfo }, %struct.cxgb4_collect_entity { i32 21, ptr @cudbg_collect_mc1_meminfo }, %struct.cxgb4_collect_entity { i32 68, ptr @cudbg_collect_hma_meminfo }], [56 x i8] zeroinitializer }, align 32
@cxgb4_cudbg_collect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Fail allocating compression buffer ret: %d.  Continuing without compression.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgb4_cudbg_collect\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxgb4_cudbg_collect._entry_ptr = internal global ptr @cxgb4_cudbg_collect._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@cxgb4_driver_name = external dso_local global [0 x i8], align 1
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"cxgb4_collect_hw_dump\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 19, i32 42 }
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"cxgb4_collect_mem_dump\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 11, i32 42 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 205, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [52 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 274, i32 53 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @cxgb4_cudbg_collect._entry, ptr @cxgb4_cudbg_collect._entry_ptr, ptr @cxgb4_collect_hw_dump, ptr @cxgb4_collect_mem_dump, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_collect_hw_dump to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_collect_mem_dump to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_cudbg_collect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_get_dump_length(ptr noundef %adap, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.041 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [47 x %struct.cxgb4_collect_entity], ptr @cxgb4_collect_hw_dump, i32 0, i32 %i.040
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @cudbg_get_entity_length(ptr noundef %adap, i32 noundef %1) #8
  %add = add i32 %call, %len.041
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 47
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %len.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %add, %for.body.if.end_crit_edge ]
  %and2 = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %for.body7.preheader

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.body7.preheader:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @cudbg_get_entity_length(ptr noundef %adap, i32 noundef 18) #8
  %add11 = add i32 %call10, %len.1
  %call10.1 = tail call i32 @cudbg_get_entity_length(ptr noundef %adap, i32 noundef 19) #8
  %add11.1 = add i32 %call10.1, %add11
  %call10.2 = tail call i32 @cudbg_get_entity_length(ptr noundef %adap, i32 noundef 20) #8
  %add11.2 = add i32 %call10.2, %add11.1
  %call10.3 = tail call i32 @cudbg_get_entity_length(ptr noundef %adap, i32 noundef 21) #8
  %add11.3 = add i32 %call10.3, %add11.2
  %call10.4 = tail call i32 @cudbg_get_entity_length(ptr noundef %adap, i32 noundef 68) #8
  %add11.4 = add i32 %call10.4, %add11.3
  br label %if.end15

if.end15:                                         ; preds = %for.body7.preheader, %if.end.if.end15_crit_edge
  %len.3 = phi i32 [ %len.1, %if.end.if.end15_crit_edge ], [ %add11.4, %for.body7.preheader ]
  %and16 = and i32 %flag, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %sf_size = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 8
  %2 = ptrtoint ptr %sf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sf_size, align 4
  %add19 = add i32 %3, %len.3
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %len.4 = phi i32 [ %add19, %if.then18 ], [ %len.3, %if.end15.if.end20_crit_edge ]
  %call.i = tail call i32 @zlib_deflate_workspacesize(i32 noundef 12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  %4 = tail call i32 @llvm.umin.i32(i32 %len.4, i32 33554432)
  %spec.select = select i1 %tobool22.not, i32 %len.4, i32 %4
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_get_entity_length(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_cudbg_collect(ptr noundef %adap, ptr noundef %buf, ptr nocapture noundef %buf_size, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %cudbg_err.i103 = alloca %struct.cudbg_error, align 4
  %cudbg_err.i76 = alloca %struct.cudbg_error, align 4
  %cudbg_err.i = alloca %struct.cudbg_error, align 4
  %dbg_buff = alloca %struct.cudbg_buffer, align 4
  %cudbg_init = alloca %struct.cudbg_init, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dbg_buff) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cudbg_init) #8
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_size, align 4
  %2 = getelementptr inbounds i8, ptr %cudbg_init, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %cudbg_init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %adap, ptr %cudbg_init, align 4
  %outbuf = getelementptr inbounds %struct.cudbg_init, ptr %cudbg_init, i32 0, i32 1
  %5 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %outbuf, align 4
  %outbuf_size = getelementptr inbounds %struct.cudbg_init, ptr %cudbg_init, i32 0, i32 2
  %6 = ptrtoint ptr %outbuf_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %outbuf_size, align 4
  %data = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %data, align 4
  %8 = ptrtoint ptr %dbg_buff to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %dbg_buff, align 4
  %offset = getelementptr inbounds %struct.cudbg_buffer, ptr %dbg_buff, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 67856866, ptr %buf, align 4
  %hdr_len = getelementptr inbounds %struct.cudbg_hdr, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 56, ptr %hdr_len, align 4
  %major_ver = getelementptr inbounds %struct.cudbg_hdr, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %major_ver to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %major_ver, align 4
  %minor_ver = getelementptr inbounds %struct.cudbg_hdr, ptr %buf, i32 0, i32 3
  %12 = ptrtoint ptr %minor_ver to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 14, ptr %minor_ver, align 2
  %max_entities = getelementptr inbounds %struct.cudbg_hdr, ptr %buf, i32 0, i32 6
  %13 = ptrtoint ptr %max_entities to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 72, ptr %max_entities, align 4
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip, align 8
  %conv = trunc i32 %15 to i8
  %chip_ver = getelementptr inbounds %struct.cudbg_hdr, ptr %buf, i32 0, i32 7
  %16 = ptrtoint ptr %chip_ver to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %chip_ver, align 2
  %dump_type = getelementptr inbounds %struct.cudbg_hdr, ptr %buf, i32 0, i32 8
  %17 = ptrtoint ptr %dump_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %dump_type, align 1
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.clear, 32
  store i8 %bf.set, ptr %dump_type, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3800, i32 %1)
  %cmp = icmp ult i32 %1, 3800
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @zlib_deflate_workspacesize(i32 noundef 12, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %2, align 4
  %call.i.i = tail call i32 @zlib_deflate_workspacesize(i32 noundef 12, i32 noundef 4) #8
  %add.i = add i32 %call.i.i, 4194304
  %call1.i = tail call noalias ptr @vzalloc(i32 noundef %add.i) #11
  %compress_buff.i = getelementptr inbounds %struct.cudbg_init, ptr %cudbg_init, i32 0, i32 4
  %19 = ptrtoint ptr %compress_buff.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1.i, ptr %compress_buff.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end, label %cudbg_alloc_compress_buff.exit.thread

cudbg_alloc_compress_buff.exit.thread:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %compress_buff_size.i = getelementptr inbounds %struct.cudbg_init, ptr %cudbg_init, i32 0, i32 5
  %20 = ptrtoint ptr %compress_buff_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4194304, ptr %compress_buff_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 4194304
  %idx.neg.i = sub i32 0, %call.i.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %workspace.i = getelementptr inbounds %struct.cudbg_init, ptr %cudbg_init, i32 0, i32 6
  %21 = ptrtoint ptr %workspace.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr4.i, ptr %workspace.i, align 4
  br label %if.end13

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %22 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef -12) #12
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %2, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %2, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %do.end, %cudbg_alloc_compress_buff.exit.thread
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 4
  %28 = ptrtoint ptr %dump_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load16 = load i8, ptr %dump_type, align 1
  %bf.value = and i8 %27, 15
  %bf.clear17 = and i8 %bf.load16, -16
  %bf.set18 = or i8 %bf.clear17, %bf.value
  store i8 %bf.set18, ptr %dump_type, align 1
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3800, ptr %offset, align 4
  %and = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end13.if.end24_crit_edge, label %if.then23

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cudbg_err.i) #8
  %30 = call ptr @memset(ptr %cudbg_err.i, i32 0, i32 12)
  %sys_warn.i = getelementptr inbounds %struct.cudbg_error, ptr %cudbg_err.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i75.for.body.i_crit_edge, %if.then23
  %total_size.032.i = phi i32 [ 0, %if.then23 ], [ %add.i74, %if.end.i75.for.body.i_crit_edge ]
  %i.031.i = phi i32 [ 0, %if.then23 ], [ %inc.i, %if.end.i75.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cxgb4_collect_entity, ptr @cxgb4_collect_hw_dump, i32 %i.031.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %call.i72 = call ptr @cudbg_get_entity_hdr(ptr noundef %buf, i32 noundef %32) #8
  %33 = ptrtoint ptr %call.i72 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call.i72, align 4
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset, align 4
  %start_offset.i = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i72, i32 0, i32 1
  %36 = ptrtoint ptr %start_offset.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %start_offset.i, align 4
  %37 = call ptr @memset(ptr %cudbg_err.i, i32 0, i32 12)
  %collect_cb.i = getelementptr %struct.cxgb4_collect_entity, ptr @cxgb4_collect_hw_dump, i32 %i.031.i, i32 1
  %38 = ptrtoint ptr %collect_cb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %collect_cb.i, align 4
  %call2.i = call i32 %39(ptr noundef nonnull %cudbg_init, ptr noundef nonnull %dbg_buff, ptr noundef nonnull %cudbg_err.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i73 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i73, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %size.i = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i72, i32 0, i32 2
  %40 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %size.i, align 4
  %41 = ptrtoint ptr %start_offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start_offset.i, align 4
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %offset, align 4
  br label %if.end.i75

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_align_debug_buffer(ptr noundef nonnull %dbg_buff, ptr noundef %call.i72) #8
  br label %if.end.i75

if.end.i75:                                       ; preds = %if.else.i, %if.then.i
  %44 = ptrtoint ptr %cudbg_err.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cudbg_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool5.not.i = icmp eq i32 %45, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 %call2.i, i32 -29
  %hdr_flags.i = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i72, i32 0, i32 3
  %46 = ptrtoint ptr %hdr_flags.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select.i, ptr %hdr_flags.i, align 4
  %sys_err9.i = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i72, i32 0, i32 5
  %47 = ptrtoint ptr %sys_err9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %sys_err9.i, align 4
  %48 = ptrtoint ptr %sys_warn.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sys_warn.i, align 4
  %sys_warn10.i = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i72, i32 0, i32 4
  %50 = ptrtoint ptr %sys_warn10.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %sys_warn10.i, align 4
  %size11.i = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i72, i32 0, i32 2
  %51 = ptrtoint ptr %size11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size11.i, align 4
  %add.i74 = add i32 %52, %total_size.032.i
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 47
  br i1 %exitcond.not.i, label %cxgb4_cudbg_collect_entity.exit, label %if.end.i75.for.body.i_crit_edge

if.end.i75.for.body.i_crit_edge:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cxgb4_cudbg_collect_entity.exit:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  %add12.i = add i32 %add.i74, 3800
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cudbg_err.i) #8
  br label %if.end24

if.end24:                                         ; preds = %cxgb4_cudbg_collect_entity.exit, %if.end13.if.end24_crit_edge
  %total_size.0 = phi i32 [ 3800, %if.end13.if.end24_crit_edge ], [ %add12.i, %cxgb4_cudbg_collect_entity.exit ]
  %and25 = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cudbg_err.i76) #8
  %53 = call ptr @memset(ptr %cudbg_err.i76, i32 0, i32 12)
  %sys_warn.i78 = getelementptr inbounds %struct.cudbg_error, ptr %cudbg_err.i76, i32 0, i32 1
  br label %for.body.i87

for.body.i87:                                     ; preds = %if.end.i100.for.body.i87_crit_edge, %if.then27
  %total_size.032.i79 = phi i32 [ 0, %if.then27 ], [ %add.i97, %if.end.i100.for.body.i87_crit_edge ]
  %i.031.i80 = phi i32 [ 0, %if.then27 ], [ %inc.i98, %if.end.i100.for.body.i87_crit_edge ]
  %arrayidx.i81 = getelementptr %struct.cxgb4_collect_entity, ptr @cxgb4_collect_mem_dump, i32 %i.031.i80
  %54 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i81, align 4
  %call.i82 = call ptr @cudbg_get_entity_hdr(ptr noundef %buf, i32 noundef %55) #8
  %56 = ptrtoint ptr %call.i82 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %call.i82, align 4
  %57 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset, align 4
  %start_offset.i83 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i82, i32 0, i32 1
  %59 = ptrtoint ptr %start_offset.i83 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %start_offset.i83, align 4
  %60 = call ptr @memset(ptr %cudbg_err.i76, i32 0, i32 12)
  %collect_cb.i84 = getelementptr %struct.cxgb4_collect_entity, ptr @cxgb4_collect_mem_dump, i32 %i.031.i80, i32 1
  %61 = ptrtoint ptr %collect_cb.i84 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %collect_cb.i84, align 4
  %call2.i85 = call i32 %62(ptr noundef nonnull %cudbg_init, ptr noundef nonnull %dbg_buff, ptr noundef nonnull %cudbg_err.i76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i85)
  %tobool.not.i86 = icmp eq i32 %call2.i85, 0
  br i1 %tobool.not.i86, label %if.else.i90, label %if.then.i89

if.then.i89:                                      ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #10
  %size.i88 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i82, i32 0, i32 2
  %63 = ptrtoint ptr %size.i88 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %size.i88, align 4
  %64 = ptrtoint ptr %start_offset.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %start_offset.i83, align 4
  %66 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %offset, align 4
  br label %if.end.i100

if.else.i90:                                      ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_align_debug_buffer(ptr noundef nonnull %dbg_buff, ptr noundef %call.i82) #8
  br label %if.end.i100

if.end.i100:                                      ; preds = %if.else.i90, %if.then.i89
  %67 = ptrtoint ptr %cudbg_err.i76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cudbg_err.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool5.not.i91 = icmp eq i32 %68, 0
  %spec.select.i92 = select i1 %tobool5.not.i91, i32 %call2.i85, i32 -29
  %hdr_flags.i93 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i82, i32 0, i32 3
  %69 = ptrtoint ptr %hdr_flags.i93 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.select.i92, ptr %hdr_flags.i93, align 4
  %sys_err9.i94 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i82, i32 0, i32 5
  %70 = ptrtoint ptr %sys_err9.i94 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %68, ptr %sys_err9.i94, align 4
  %71 = ptrtoint ptr %sys_warn.i78 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sys_warn.i78, align 4
  %sys_warn10.i95 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i82, i32 0, i32 4
  %73 = ptrtoint ptr %sys_warn10.i95 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sys_warn10.i95, align 4
  %size11.i96 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i82, i32 0, i32 2
  %74 = ptrtoint ptr %size11.i96 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size11.i96, align 4
  %add.i97 = add i32 %75, %total_size.032.i79
  %inc.i98 = add nuw nsw i32 %i.031.i80, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 5
  br i1 %exitcond.not.i99, label %cxgb4_cudbg_collect_entity.exit102, label %if.end.i100.for.body.i87_crit_edge

if.end.i100.for.body.i87_crit_edge:               ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i87

cxgb4_cudbg_collect_entity.exit102:               ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #10
  %add12.i101 = add i32 %add.i97, %total_size.0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cudbg_err.i76) #8
  br label %if.end28

if.end28:                                         ; preds = %cxgb4_cudbg_collect_entity.exit102, %if.end24.if.end28_crit_edge
  %total_size.1 = phi i32 [ %total_size.0, %if.end24.if.end28_crit_edge ], [ %add12.i101, %cxgb4_cudbg_collect_entity.exit102 ]
  %and29 = and i32 %flag, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end32_crit_edge, label %if.then31

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cudbg_err.i103) #8
  %sys_warn.i105 = getelementptr inbounds %struct.cudbg_error, ptr %cudbg_err.i103, i32 0, i32 1
  %call.i109 = call ptr @cudbg_get_entity_hdr(ptr noundef %buf, i32 noundef 71) #8
  %76 = ptrtoint ptr %call.i109 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 71, ptr %call.i109, align 4
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset, align 4
  %start_offset.i110 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i109, i32 0, i32 1
  %79 = ptrtoint ptr %start_offset.i110 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %start_offset.i110, align 4
  %80 = call ptr @memset(ptr %cudbg_err.i103, i32 0, i32 12)
  %call2.i112 = call i32 @cudbg_collect_flash(ptr noundef nonnull %cudbg_init, ptr noundef nonnull %dbg_buff, ptr noundef nonnull %cudbg_err.i103) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i112)
  %tobool.not.i113 = icmp eq i32 %call2.i112, 0
  br i1 %tobool.not.i113, label %if.else.i117, label %if.then.i116

if.then.i116:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %size.i115 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i109, i32 0, i32 2
  %81 = ptrtoint ptr %size.i115 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %size.i115, align 4
  %82 = ptrtoint ptr %start_offset.i110 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %start_offset.i110, align 4
  %84 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %offset, align 4
  br label %if.end.i127

if.else.i117:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  call void @cudbg_align_debug_buffer(ptr noundef nonnull %dbg_buff, ptr noundef %call.i109) #8
  br label %if.end.i127

if.end.i127:                                      ; preds = %if.else.i117, %if.then.i116
  %85 = ptrtoint ptr %cudbg_err.i103 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cudbg_err.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool5.not.i118 = icmp eq i32 %86, 0
  %spec.select.i119 = select i1 %tobool5.not.i118, i32 %call2.i112, i32 -29
  %hdr_flags.i120 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i109, i32 0, i32 3
  %87 = ptrtoint ptr %hdr_flags.i120 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select.i119, ptr %hdr_flags.i120, align 4
  %sys_err9.i121 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i109, i32 0, i32 5
  %88 = ptrtoint ptr %sys_err9.i121 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %sys_err9.i121, align 4
  %89 = ptrtoint ptr %sys_warn.i105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sys_warn.i105, align 4
  %sys_warn10.i122 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i109, i32 0, i32 4
  %91 = ptrtoint ptr %sys_warn10.i122 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %sys_warn10.i122, align 4
  %size11.i123 = getelementptr inbounds %struct.cudbg_entity_hdr, ptr %call.i109, i32 0, i32 2
  %92 = ptrtoint ptr %size11.i123 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size11.i123, align 4
  %add12.i128 = add i32 %93, %total_size.1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cudbg_err.i103) #8
  br label %if.end32

if.end32:                                         ; preds = %if.end.i127, %if.end28.if.end32_crit_edge
  %total_size.2 = phi i32 [ %total_size.1, %if.end28.if.end32_crit_edge ], [ %add12.i128, %if.end.i127 ]
  %compress_buff.i130 = getelementptr inbounds %struct.cudbg_init, ptr %cudbg_init, i32 0, i32 4
  %94 = ptrtoint ptr %compress_buff.i130 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %compress_buff.i130, align 4
  call void @vfree(ptr noundef %95) #8
  %data_len = getelementptr inbounds %struct.cudbg_hdr, ptr %buf, i32 0, i32 4
  %96 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %total_size.2, ptr %data_len, align 4
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %cmp35.not = icmp eq i8 %98, 1
  %spec.select = select i1 %cmp35.not, i32 %total_size.2, i32 %1
  %99 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %spec.select, ptr %buf_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cudbg_init) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dbg_buff) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cxgb4_init_ethtool_dump(ptr nocapture noundef %adapter) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 81, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flag, align 4
  %fw_vers = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 15, i32 10
  %1 = ptrtoint ptr %fw_vers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_vers, align 4
  %version = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 81, i32 1
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %version, align 4
  %len = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 81, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_cudbg_vmcore_add_dump(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vmcoredd = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 84
  %size = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 84, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33558232, ptr %size, align 4
  %name = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %vmcoredd, i32 noundef 44, ptr noundef nonnull @.str.5, ptr noundef nonnull @cxgb4_driver_name, ptr noundef %2)
  %vmcoredd_callback = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 84, i32 2
  %3 = ptrtoint ptr %vmcoredd_callback to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cxgb4_cudbg_vmcoredd_collect, ptr %vmcoredd_callback, align 4
  %call1 = tail call i32 @vmcore_add_device_dump(ptr noundef %vmcoredd) #8
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_cudbg_vmcoredd_collect(ptr noundef %data, ptr noundef %buf) #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -29916
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %size = getelementptr inbounds %struct.vmcoredd_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %len, align 4
  %call = call i32 @cxgb4_cudbg_collect(ptr noundef %add.ptr, ptr noundef %buf, ptr noundef nonnull %len, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmcore_add_device_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_mbox_log(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_qdesc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_fw_devlog(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_reg_dump(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_la(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_ma_la(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_qcfg(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_ibq_tp0(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_ibq_tp1(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_ibq_ulp(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_ibq_sge0(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_ibq_sge1(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_ibq_ncsi(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_obq_ulp0(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_obq_ulp1(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_obq_ulp2(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_obq_ulp3(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_obq_sge(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_obq_ncsi(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_rss(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_rss_vf_config(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_path_mtu(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_pm_stats(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_hw_sched(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_tp_indirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_sge_indirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_ulprx_la(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_tp_la(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_meminfo(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cim_pif_la(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_clk_info(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_obq_sge_rx_q0(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_obq_sge_rx_q1(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_pcie_indirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_pm_indirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_tid(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_pcie_config(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_dump_context(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_mps_tcam(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_vpd_data(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_le_tcam(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_cctrl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_ma_indirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_ulptx_la(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_up_cim_indirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_pbt_tables(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_hma_indirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_edc0_meminfo(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_edc1_meminfo(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_mc0_meminfo(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_mc1_meminfo(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_hma_meminfo(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_deflate_workspacesize(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cudbg_get_entity_hdr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cudbg_align_debug_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cudbg_collect_flash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c", i32 205, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cxgb4_cudbg_collect._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cxgb4_cudbg_collect._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c", i32 274, i32 53}
!10 = !{ptr @cxgb4_collect_hw_dump, !11, !"cxgb4_collect_hw_dump", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c", i32 19, i32 42}
!12 = !{ptr @cxgb4_collect_mem_dump, !13, !"cxgb4_collect_mem_dump", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c", i32 11, i32 42}
!14 = distinct !{null, !15, !"cxgb4_collect_flash_dump", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_cudbg.c", i32 69, i32 42}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
