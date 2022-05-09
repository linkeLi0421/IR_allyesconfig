; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/iwl-io.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/iwl-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.reg = type { i32, i8 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@iwl_dump_fh.fh_tbl = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 7104, i32 7108, i32 7112, i32 7168, i32 7232, i32 7236, i32 7240, i32 7856, i32 7864], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FH register values:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  %34s: 0X%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.iwl_finish_nic_init = private unnamed_addr constant [20 x i8] c"iwl_finish_nic_init\00", align 1
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to wake NIC\0A\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_iwlwifi_dev_iowrite8 = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h\00", [43 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_iowrite8.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_iowrite32 = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_iowrite32.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_iwlwifi_dev_iowrite64 = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_iowrite64.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_iwlwifi_dev_ioread32 = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_ioread32.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_iwlwifi_dev_ioread_prph32 = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_ioread_prph32.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_iwlwifi_dev_iowrite_prph32 = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_iowrite_prph32.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_iwlwifi_dev_iowrite_prph64 = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_iowrite_prph64.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_dump_rfh.rfh_tbl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 10524704, i32 10524672, i32 10524680, i32 7856, i32 7864], [44 x i8] zeroinitializer }, align 32
@iwl_dump_rfh.rfh_mq_tbl = internal constant { [4 x %struct.reg], [32 x i8] } { [4 x %struct.reg] [%struct.reg { i32 10518528, i8 1 }, %struct.reg { i32 10518656, i8 0 }, %struct.reg { i32 10518720, i8 0 }, %struct.reg { i32 10519040, i8 1 }], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RFH register values:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%40s: 0X%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%34s(q %2d): 0X%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  %34s(q %d): 0X%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RFH_Q_FRBDCB_BA_LSB\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RFH_Q_FRBDCB_WIDX\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RFH_Q_FRBDCB_RIDX\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RFH_Q_URBD_STTS_WPTR_LSB\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RFH_RXF_DMA_CFG\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RFH_GEN_CFG\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RFH_GEN_STATUS\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FH_TSSR_TX_STATUS_REG\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FH_TSSR_TX_ERROR_REG\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FH_RSCSR_CHNL0_STTS_WPTR_REG\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FH_RSCSR_CHNL0_RBDCB_BASE_REG\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FH_RSCSR_CHNL0_WPTR\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FH_MEM_RCSR_CHNL0_CONFIG_REG\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FH_MEM_RSSR_SHARED_CTRL_REG\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FH_MEM_RSSR_RX_STATUS_REG\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FH_MEM_RSSR_RX_ENABLE_ERR_IRQ2DRV\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CSR_RESET = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Host monitor block 0x%x vector 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"    value [iter %d]: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@iwl_trans_fw_error.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 7856, i64 7864, i64 10524672, i64 10524680, i64 10524704]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 7856, i64 7864, i64 10524672, i64 10524680, i64 10524704]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 7856, i64 7864, i64 10524672, i64 10524680, i64 10524704]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 7856, i64 7864, i64 10524672, i64 10524680, i64 10524704]
@__sancov_gen_cov_switch_values.34 = internal global [11 x i64] [i64 9, i64 32, i64 7104, i64 7108, i64 7112, i64 7168, i64 7232, i64 7236, i64 7240, i64 7856, i64 7864]
@__sancov_gen_cov_switch_values.35 = internal global [11 x i64] [i64 9, i64 32, i64 7104, i64 7108, i64 7112, i64 7168, i64 7232, i64 7236, i64 7240, i64 7856, i64 7864]
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"fh_tbl\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 355, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 380, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 384, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 478, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 34, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 108, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"rfh_tbl\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 260, i32 19 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"rfh_mq_tbl\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 267, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 292, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 296, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 306, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 326, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 233, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 234, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 235, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 236, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 240, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 241, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 242, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 243, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 244, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 246, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 337, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 338, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 339, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 340, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 341, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 342, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 343, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 425, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 413, i32 2 }
@___asan_gen_.133 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-io.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 416, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1426, i32 6 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @iwl_dump_fh.fh_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @iwl_dump_rfh.rfh_tbl, ptr @iwl_dump_rfh.rfh_mq_tbl, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dump_fh.fh_tbl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dump_rfh.rfh_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dump_rfh.rfh_mq_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_write8(ptr noundef %trans, i32 noundef %ofs, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite8(ptr noundef %1, i32 noundef %ofs, i8 noundef zeroext %val)
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write8.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8.i, align 4
  tail call void %5(ptr noundef %trans, i32 noundef %ofs, i8 noundef zeroext %val) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_iowrite8(ptr noundef %dev, i32 noundef %offs, i8 noundef zeroext %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite8, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_iowrite8, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !102
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_iowrite8(ptr noundef null, ptr noundef %dev, i32 noundef %offs, i8 noundef zeroext %val) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite8, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite8, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_iowrite8.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_iwlwifi_dev_iowrite8.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 49, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_write32(ptr noundef %trans, i32 noundef %ofs, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite32(ptr noundef %1, i32 noundef %ofs, i32 noundef %val)
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i, align 4
  tail call void %5(ptr noundef %trans, i32 noundef %ofs, i32 noundef %val) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_iowrite32(ptr noundef %dev, i32 noundef %offs, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite32, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_iowrite32, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !106
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_iowrite32(ptr noundef null, ptr noundef %dev, i32 noundef %offs, i32 noundef %val) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite32, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite32, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_iowrite32.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_iwlwifi_dev_iowrite32.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_write64(ptr noundef %trans, i64 noundef %ofs, i64 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite64(ptr noundef %1, i64 noundef %ofs, i64 noundef %val)
  %conv = trunc i64 %ofs to i32
  %conv1 = trunc i64 %val to i32
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i, align 4
  tail call void %5(ptr noundef %trans, i32 noundef %conv, i32 noundef %conv1) #6
  %conv2 = add i32 %conv, 4
  %shr = lshr i64 %val, 32
  %conv4 = trunc i64 %shr to i32
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %write32.i12 = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %write32.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i12, align 4
  tail call void %9(ptr noundef %trans, i32 noundef %conv2, i32 noundef %conv4) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_iowrite64(ptr noundef %dev, i64 noundef %offs, i64 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite64, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_iowrite64, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !108
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_iowrite64(ptr noundef null, ptr noundef %dev, i64 noundef %offs, i64 noundef %val) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite64, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite64, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_iowrite64.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_iwlwifi_dev_iowrite64.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 83, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_read32(ptr noundef %trans, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %trans, i32 noundef %ofs) #6
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %5, i32 noundef %ofs, i32 noundef %call.i)
  ret i32 %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %dev, i32 noundef %offs, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ioread32, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_ioread32, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !110
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_ioread32(ptr noundef null, ptr noundef %dev, i32 noundef %offs, i32 noundef %val) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ioread32, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ioread32, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_ioread32.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_iwlwifi_dev_ioread32.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 32, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_poll_bit(ptr noundef %trans, i32 noundef %addr, i32 noundef %bits, i32 noundef %mask, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %add, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %trans, i32 noundef %addr) #6
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %5, i32 noundef %addr, i32 noundef %call.i.i) #6
  %6 = xor i32 %call.i.i, %bits
  %7 = and i32 %6, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  %add = add i32 %t.0, 10
  %cmp2 = icmp slt i32 %add, %timeout
  br i1 %cmp2, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %t.0, %do.body.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_read_direct32(ptr noundef %trans, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %read32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %trans, i32 noundef %reg) #6
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %9, i32 noundef %reg, i32 noundef %call.i.i) #6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %13(ptr noundef %trans) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %call.i.i, %if.then ], [ 1515870810, %entry.if.end_crit_edge ]
  ret i32 %value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_write_direct32(ptr noundef %trans, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite32(ptr noundef %5, i32 noundef %reg, i32 noundef %value) #6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %trans, i32 noundef %reg, i32 noundef %value) #6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %13(ptr noundef %trans) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_write_direct64(ptr noundef %trans, i64 noundef %reg, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite64(ptr noundef %5, i64 noundef %reg, i64 noundef %value) #6
  %conv.i = trunc i64 %reg to i32
  %conv1.i = trunc i64 %value to i32
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %trans, i32 noundef %conv.i, i32 noundef %conv1.i) #6
  %conv2.i = add i32 %conv.i, 4
  %shr.i = lshr i64 %value, 32
  %conv4.i = trunc i64 %shr.i to i32
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %write32.i12.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %write32.i12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i12.i, align 4
  tail call void %13(ptr noundef %trans, i32 noundef %conv2.i, i32 noundef %conv4.i) #6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %17(ptr noundef %trans) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_poll_direct_bit(ptr noundef %trans, i32 noundef %addr, i32 noundef %mask, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %add, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access.i, align 4
  %call.i = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call.i, label %if.then.i, label %do.body.iwl_read_direct32.exit_crit_edge, !prof !101

do.body.iwl_read_direct32.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_read_direct32.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %7(ptr noundef %trans, i32 noundef %addr) #6
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %9, i32 noundef %addr, i32 noundef %call.i.i.i) #6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_nic_access.i.i, align 4
  tail call void %13(ptr noundef %trans) #6
  br label %iwl_read_direct32.exit

iwl_read_direct32.exit:                           ; preds = %if.then.i, %do.body.iwl_read_direct32.exit_crit_edge
  %value.0.i = phi i32 [ %call.i.i.i, %if.then.i ], [ 1515870810, %do.body.iwl_read_direct32.exit_crit_edge ]
  %and = and i32 %value.0.i, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %mask)
  %cmp = icmp eq i32 %and, %mask
  br i1 %cmp, label %iwl_read_direct32.exit.cleanup_crit_edge, label %if.end

iwl_read_direct32.exit.cleanup_crit_edge:         ; preds = %iwl_read_direct32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %iwl_read_direct32.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #6
  %add = add i32 %t.0, 10
  %cmp1 = icmp slt i32 %add, %timeout
  br i1 %cmp1, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %iwl_read_direct32.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %t.0, %iwl_read_direct32.exit.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_read_prph_no_grab(ptr noundef %trans, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_prph.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %read_prph.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_prph.i, align 4
  %call.i = tail call i32 %3(ptr noundef %trans, i32 noundef %ofs) #6
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %5, i32 noundef %ofs, i32 noundef %call.i)
  ret i32 %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %dev, i32 noundef %offs, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ioread_prph32, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_ioread_prph32, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !112
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_ioread_prph32(ptr noundef null, ptr noundef %dev, i32 noundef %offs, i32 noundef %val) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ioread_prph32, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ioread_prph32, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_ioread_prph32.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_iwlwifi_dev_ioread_prph32.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 134, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_write_prph_no_grab(ptr noundef %trans, i32 noundef %ofs, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %1, i32 noundef %ofs, i32 noundef %val)
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write_prph.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %write_prph.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_prph.i, align 4
  tail call void %5(ptr noundef %trans, i32 noundef %ofs, i32 noundef %val) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %dev, i32 noundef %offs, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite_prph32, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_iowrite_prph32, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !114
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_iowrite_prph32(ptr noundef null, ptr noundef %dev, i32 noundef %offs, i32 noundef %val) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite_prph32, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite_prph32, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_iowrite_prph32.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_iwlwifi_dev_iowrite_prph32.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 100, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_write_prph64_no_grab(ptr noundef %trans, i64 noundef %ofs, i64 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph64(ptr noundef %1, i64 noundef %ofs, i64 noundef %val)
  %conv = trunc i64 %ofs to i32
  %conv1 = trunc i64 %val to i32
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %3, i32 noundef %conv, i32 noundef %conv1) #6
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %write_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %write_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_prph.i.i, align 4
  tail call void %7(ptr noundef %trans, i32 noundef %conv, i32 noundef %conv1) #6
  %conv2 = add i32 %conv, 4
  %shr = lshr i64 %val, 32
  %conv3 = trunc i64 %shr to i32
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %9, i32 noundef %conv2, i32 noundef %conv3) #6
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %write_prph.i.i12 = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %write_prph.i.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_prph.i.i12, align 4
  tail call void %13(ptr noundef %trans, i32 noundef %conv2, i32 noundef %conv3) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_iowrite_prph64(ptr noundef %dev, i64 noundef %offs, i64 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite_prph64, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_iowrite_prph64, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !116
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_iowrite_prph64(ptr noundef null, ptr noundef %dev, i64 noundef %offs, i64 noundef %val) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite_prph64, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_iowrite_prph64, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_iowrite_prph64.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_iwlwifi_dev_iowrite_prph64.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 117, ptr noundef nonnull @.str.4) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !90) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_read_prph(ptr noundef %trans, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %read_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %read_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_prph.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %trans, i32 noundef %ofs) #6
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %9, i32 noundef %ofs, i32 noundef %call.i.i) #6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %13(ptr noundef %trans) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %call.i.i, %if.then ], [ 1515870810, %entry.if.end_crit_edge ]
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_write_prph_delay(ptr noundef %trans, i32 noundef %ofs, i32 noundef %val, i32 noundef %delay_ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call, label %while.cond.preheader, label %entry.if.end_crit_edge, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_ms)
  %tobool12.not23 = icmp eq i32 %delay_ms, 0
  br i1 %tobool12.not23, label %while.cond.preheader.cond.end13_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cond.end13_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end13

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %__ms.024 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %delay_ms, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %__ms.024, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %while.body.cond.end13_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.cond.end13_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end13

cond.end13:                                       ; preds = %while.body.cond.end13_crit_edge, %while.cond.preheader.cond.end13_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %6, i32 noundef %ofs, i32 noundef %val) #6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %write_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %write_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_prph.i.i, align 4
  tail call void %10(ptr noundef %trans, i32 noundef %ofs, i32 noundef %val) #6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %14(ptr noundef %trans) #6
  br label %if.end

if.end:                                           ; preds = %cond.end13, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_poll_prph_bit(ptr noundef %trans, i32 noundef %addr, i32 noundef %bits, i32 noundef %mask, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %add, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access.i, align 4
  %call.i = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call.i, label %if.then.i, label %do.body.iwl_read_prph.exit_crit_edge, !prof !101

do.body.iwl_read_prph.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_read_prph.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_prph.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %read_prph.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_prph.i.i.i, align 4
  %call.i.i.i = tail call i32 %7(ptr noundef %trans, i32 noundef %addr) #6
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %9, i32 noundef %addr, i32 noundef %call.i.i.i) #6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release_nic_access.i.i, align 4
  tail call void %13(ptr noundef %trans) #6
  br label %iwl_read_prph.exit

iwl_read_prph.exit:                               ; preds = %if.then.i, %do.body.iwl_read_prph.exit_crit_edge
  %val.0.i = phi i32 [ %call.i.i.i, %if.then.i ], [ 1515870810, %do.body.iwl_read_prph.exit_crit_edge ]
  %14 = xor i32 %val.0.i, %bits
  %15 = and i32 %14, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %iwl_read_prph.exit.cleanup_crit_edge, label %if.end

iwl_read_prph.exit.cleanup_crit_edge:             ; preds = %iwl_read_prph.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %iwl_read_prph.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #6
  %add = add i32 %t.0, 10
  %cmp2 = icmp slt i32 %add, %timeout
  br i1 %cmp2, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %iwl_read_prph.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %t.0, %iwl_read_prph.exit.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_set_bits_prph(ptr noundef %trans, i32 noundef %ofs, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %read_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %read_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_prph.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %trans, i32 noundef %ofs) #6
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %9, i32 noundef %ofs, i32 noundef %call.i.i) #6
  %or = or i32 %call.i.i, %mask
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %11, i32 noundef %ofs, i32 noundef %or) #6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %write_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %write_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_prph.i.i, align 4
  tail call void %15(ptr noundef %trans, i32 noundef %ofs, i32 noundef %or) #6
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %19(ptr noundef %trans) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_set_bits_mask_prph(ptr noundef %trans, i32 noundef %ofs, i32 noundef %bits, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %read_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %read_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_prph.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %trans, i32 noundef %ofs) #6
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %9, i32 noundef %ofs, i32 noundef %call.i.i) #6
  %and = and i32 %call.i.i, %mask
  %or = or i32 %and, %bits
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %11, i32 noundef %ofs, i32 noundef %or) #6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %write_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %write_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_prph.i.i, align 4
  tail call void %15(ptr noundef %trans, i32 noundef %ofs, i32 noundef %or) #6
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %19(ptr noundef %trans) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_clear_bits_prph(ptr noundef %trans, i32 noundef %ofs, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %3(ptr noundef %trans) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %read_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %read_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_prph.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %trans, i32 noundef %ofs) #6
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %9, i32 noundef %ofs, i32 noundef %call.i.i) #6
  %neg = xor i32 %mask, -1
  %and = and i32 %call.i.i, %neg
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %11, i32 noundef %ofs, i32 noundef %and) #6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %write_prph.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %write_prph.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_prph.i.i, align 4
  tail call void %15(ptr noundef %trans, i32 noundef %ofs, i32 noundef %and) #6
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %19(ptr noundef %trans) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_force_nmi(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp = icmp ult i32 %3, 17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grab_nic_access.i, align 4
  %call.i = tail call zeroext i1 %7(ptr noundef %trans) #6
  br i1 %call.i, label %if.then.i, label %if.then.if.end12_crit_edge, !prof !101

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %10, i32 noundef 10492976, i32 noundef 128) #6
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write_prph.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %write_prph.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_prph.i.i.i, align 4
  tail call void %14(ptr noundef %trans, i32 noundef 10492976, i32 noundef 128) #6
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %release_nic_access.i.i, align 4
  tail call void %18(ptr noundef %trans) #6
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %3)
  %cmp3 = icmp ult i32 %3, 19
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %umac_prph_offset.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %umac_prph_offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %umac_prph_offset.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i.i, align 4
  %grab_nic_access.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %grab_nic_access.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %grab_nic_access.i.i.i, align 4
  %call.i.i.i = tail call zeroext i1 %24(ptr noundef %trans) #6
  br i1 %call.i.i.i, label %if.then.i.i.i, label %if.then4.if.end12_crit_edge, !prof !101

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.i.i.i:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %20, 10509328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 0) #6
  %dev.i.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %26 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %27, i32 noundef %add.i, i32 noundef 16777216) #6
  %28 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i.i, align 4
  %write_prph.i.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %write_prph.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_prph.i.i.i.i.i, align 4
  tail call void %31(ptr noundef %trans, i32 noundef %add.i, i32 noundef 16777216) #6
  %32 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i.i, align 4
  %release_nic_access.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %release_nic_access.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release_nic_access.i.i.i.i, align 4
  tail call void %35(ptr noundef %trans) #6
  br label %if.end12

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %3)
  %cmp8 = icmp eq i32 %3, 19
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else5
  %umac_prph_offset.i20 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %umac_prph_offset.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %umac_prph_offset.i20, align 4
  %ops.i.i.i21 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %38 = ptrtoint ptr %ops.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i.i21, align 4
  %grab_nic_access.i.i.i22 = getelementptr inbounds %struct.iwl_trans_ops, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %grab_nic_access.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %grab_nic_access.i.i.i22, align 4
  %call.i.i.i23 = tail call zeroext i1 %41(ptr noundef %trans) #6
  br i1 %call.i.i.i23, label %if.then.i.i.i28, label %if.then9.if.end12_crit_edge, !prof !101

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.i.i.i28:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %add.i24 = add i32 %37, 10509316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 0) #6
  %dev.i.i.i.i25 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %43 = ptrtoint ptr %dev.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i.i.i25, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite_prph32(ptr noundef %44, i32 noundef %add.i24, i32 noundef 1) #6
  %45 = ptrtoint ptr %ops.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i.i21, align 4
  %write_prph.i.i.i.i.i26 = getelementptr inbounds %struct.iwl_trans_ops, ptr %46, i32 0, i32 25
  %47 = ptrtoint ptr %write_prph.i.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_prph.i.i.i.i.i26, align 4
  tail call void %48(ptr noundef %trans, i32 noundef %add.i24, i32 noundef 1) #6
  %49 = ptrtoint ptr %ops.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i.i21, align 4
  %release_nic_access.i.i.i.i27 = getelementptr inbounds %struct.iwl_trans_ops, ptr %50, i32 0, i32 33
  %51 = ptrtoint ptr %release_nic_access.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %release_nic_access.i.i.i.i27, align 4
  tail call void %52(ptr noundef %trans) #6
  br label %if.end12

if.else10:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite32(ptr noundef %54, i32 noundef 304, i32 noundef 1) #6
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %55 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write32.i.i, align 4
  tail call void %58(ptr noundef %trans, i32 noundef 304, i32 noundef 1) #6
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then.i.i.i28, %if.then9.if.end12_crit_edge, %if.then.i.i.i, %if.then4.if.end12_crit_edge, %if.then.i, %if.then.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_dump_fh(ptr noundef %trans, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %mq_rx_supported = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mq_rx_supported to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %mq_rx_supported, align 4
  %3 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %num_rx_queues.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 25
  %4 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rx_queues.i, align 8
  %conv.i = zext i8 %5 to i32
  %tobool.not.i = icmp eq ptr %buf, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %mul.i = mul nuw nsw i32 %conv.i, 212
  %add1.i = add nuw nsw i32 %mul.i, 305
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i, i32 noundef 3264) #9
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %buf, align 4
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.cleanup37_crit_edge, label %if.end.i

if.then.i.cleanup37_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add1.i, ptr noundef nonnull @.str.6) #6
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %dev.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body.i

for.cond14.preheader.i:                           ; preds = %iwl_read_prph.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp19269.not.i = icmp eq i8 %5, 0
  br label %for.cond18.preheader.i

for.body.i:                                       ; preds = %iwl_read_prph.exit.i.for.body.i_crit_edge, %if.end.i
  %i.0268.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %iwl_read_prph.exit.i.for.body.i_crit_edge ]
  %pos.0267.i = phi i32 [ %call4.i, %if.end.i ], [ %add13.i, %iwl_read_prph.exit.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %add.ptr7.i = getelementptr i8, ptr %8, i32 %pos.0267.i
  %sub8.i = sub i32 %add1.i, %pos.0267.i
  %arrayidx.i = getelementptr [5 x i32], ptr @iwl_dump_rfh.rfh_tbl, i32 0, i32 %i.0268.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %if.end11.i.i
  %inc.i.i = add nuw nsw i32 %i.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i
  %i.030.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.030.i.i, 3
  %add.i.i = add nuw nsw i32 %mul.i.i, 10518528
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %10)
  %cmp1.i.i = icmp eq i32 %add.i.i, %10
  br i1 %cmp1.i.i, label %for.body.i.i.get_rfh_string.exit.i_crit_edge, label %if.end.i152.i

for.body.i.i.get_rfh_string.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

if.end.i152.i:                                    ; preds = %for.body.i.i
  %mul2.i.i = shl i32 %i.030.i.i, 2
  %add3.i.i = add nuw nsw i32 %mul2.i.i, 10518656
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %10)
  %cmp4.i.i = icmp eq i32 %add3.i.i, %10
  br i1 %cmp4.i.i, label %if.end.i152.i.get_rfh_string.exit.i_crit_edge, label %if.end6.i.i

if.end.i152.i.get_rfh_string.exit.i_crit_edge:    ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

if.end6.i.i:                                      ; preds = %if.end.i152.i
  %add8.i.i = add nuw nsw i32 %mul2.i.i, 10518720
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i.i, i32 %10)
  %cmp9.i.i = icmp eq i32 %add8.i.i, %10
  br i1 %cmp9.i.i, label %if.end6.i.i.get_rfh_string.exit.i_crit_edge, label %if.end11.i.i

if.end6.i.i.get_rfh_string.exit.i_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %add13.i.i = add nuw nsw i32 %mul.i.i, 10519040
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i.i, i32 %10)
  %cmp14.i.i = icmp eq i32 %add13.i.i, %10
  br i1 %cmp14.i.i, label %if.end11.i.i.get_rfh_string.exit.i_crit_edge, label %for.cond.i.i

if.end11.i.i.get_rfh_string.exit.i_crit_edge:     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %sw.default.i.i [
    i32 10524704, label %for.end.i.i.get_rfh_string.exit.i_crit_edge
    i32 10524672, label %sw.bb17.i.i
    i32 10524680, label %sw.bb18.i.i
    i32 7856, label %sw.bb19.i.i
    i32 7864, label %sw.bb20.i.i
  ]

for.end.i.i.get_rfh_string.exit.i_crit_edge:      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

sw.bb17.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

sw.bb18.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

sw.bb19.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

sw.bb20.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

sw.default.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit.i

get_rfh_string.exit.i:                            ; preds = %sw.default.i.i, %sw.bb20.i.i, %sw.bb19.i.i, %sw.bb18.i.i, %sw.bb17.i.i, %for.end.i.i.get_rfh_string.exit.i_crit_edge, %if.end11.i.i.get_rfh_string.exit.i_crit_edge, %if.end6.i.i.get_rfh_string.exit.i_crit_edge, %if.end.i152.i.get_rfh_string.exit.i_crit_edge, %for.body.i.i.get_rfh_string.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.19, %sw.default.i.i ], [ @.str.18, %sw.bb20.i.i ], [ @.str.17, %sw.bb19.i.i ], [ @.str.16, %sw.bb18.i.i ], [ @.str.15, %sw.bb17.i.i ], [ @.str.14, %for.end.i.i.get_rfh_string.exit.i_crit_edge ], [ @.str.13, %if.end11.i.i.get_rfh_string.exit.i_crit_edge ], [ @.str.12, %if.end6.i.i.get_rfh_string.exit.i_crit_edge ], [ @.str.11, %if.end.i152.i.get_rfh_string.exit.i_crit_edge ], [ @.str.10, %for.body.i.i.get_rfh_string.exit.i_crit_edge ]
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %grab_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %grab_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %grab_nic_access.i.i, align 4
  %call.i.i = tail call zeroext i1 %15(ptr noundef %trans) #6
  br i1 %call.i.i, label %if.then.i153.i, label %get_rfh_string.exit.i.iwl_read_prph.exit.i_crit_edge, !prof !101

get_rfh_string.exit.i.iwl_read_prph.exit.i_crit_edge: ; preds = %get_rfh_string.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_read_prph.exit.i

if.then.i153.i:                                   ; preds = %get_rfh_string.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %read_prph.i.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %read_prph.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_prph.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %19(ptr noundef %trans, i32 noundef %10) #6
  %20 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %21, i32 noundef %10, i32 noundef %call.i.i.i.i) #6
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %release_nic_access.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %release_nic_access.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release_nic_access.i.i.i, align 4
  tail call void %25(ptr noundef %trans) #6
  br label %iwl_read_prph.exit.i

iwl_read_prph.exit.i:                             ; preds = %if.then.i153.i, %get_rfh_string.exit.i.iwl_read_prph.exit.i_crit_edge
  %val.0.i.i = phi i32 [ %call.i.i.i.i, %if.then.i153.i ], [ 1515870810, %get_rfh_string.exit.i.iwl_read_prph.exit.i_crit_edge ]
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7.i, i32 noundef %sub8.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %retval.0.i.i, i32 noundef %val.0.i.i) #6
  %add13.i = add i32 %call12.i, %pos.0267.i
  %inc.i = add nuw nsw i32 %i.0268.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.cond14.preheader.i, label %iwl_read_prph.exit.i.for.body.i_crit_edge

iwl_read_prph.exit.i.for.body.i_crit_edge:        ; preds = %iwl_read_prph.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond18.preheader.i:                           ; preds = %for.inc38.i.for.cond18.preheader.i_crit_edge, %for.cond14.preheader.i
  %i.1273.i = phi i32 [ 0, %for.cond14.preheader.i ], [ %inc39.i, %for.inc38.i.for.cond18.preheader.i_crit_edge ]
  %pos.1272.i = phi i32 [ %add13.i, %for.cond14.preheader.i ], [ %pos.2.lcssa.i, %for.inc38.i.for.cond18.preheader.i_crit_edge ]
  br i1 %cmp19269.not.i, label %for.cond18.preheader.i.for.inc38.i_crit_edge, label %for.body21.lr.ph.i

for.cond18.preheader.i.for.inc38.i_crit_edge:     ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.i

for.body21.lr.ph.i:                               ; preds = %for.cond18.preheader.i
  %arrayidx22.i = getelementptr [4 x %struct.reg], ptr @iwl_dump_rfh.rfh_mq_tbl, i32 0, i32 %i.1273.i
  %26 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22.i, align 4
  %28 = add nsw i32 %i.1273.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %29 = icmp ult i32 %28, 2
  %cond.i = select i1 %29, i32 4, i32 8
  br label %for.body21.i

for.body21.i:                                     ; preds = %iwl_read_prph.exit191.i.for.body21.i_crit_edge, %for.body21.lr.ph.i
  %pos.2271.i = phi i32 [ %pos.1272.i, %for.body21.lr.ph.i ], [ %add34.i, %iwl_read_prph.exit191.i.for.body21.i_crit_edge ]
  %q.0270.i = phi i32 [ 0, %for.body21.lr.ph.i ], [ %inc36.i, %iwl_read_prph.exit191.i.for.body21.i_crit_edge ]
  %mul27.i = mul nuw nsw i32 %q.0270.i, %cond.i
  %add28.i = add i32 %mul27.i, %27
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf, align 4
  %add.ptr29.i = getelementptr i8, ptr %31, i32 %pos.2271.i
  %sub30.i = sub i32 %add1.i, %pos.2271.i
  br label %for.body.i162.i

for.cond.i157.i:                                  ; preds = %if.end11.i172.i
  %inc.i155.i = add nuw nsw i32 %i.030.i158.i, 1
  %exitcond.not.i156.i = icmp eq i32 %inc.i155.i, 16
  br i1 %exitcond.not.i156.i, label %for.end.i173.i, label %for.cond.i157.i.for.body.i162.i_crit_edge

for.cond.i157.i.for.body.i162.i_crit_edge:        ; preds = %for.cond.i157.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i162.i

for.body.i162.i:                                  ; preds = %for.cond.i157.i.for.body.i162.i_crit_edge, %for.body21.i
  %i.030.i158.i = phi i32 [ 0, %for.body21.i ], [ %inc.i155.i, %for.cond.i157.i.for.body.i162.i_crit_edge ]
  %mul.i159.i = shl i32 %i.030.i158.i, 3
  %add.i160.i = add nuw nsw i32 %mul.i159.i, 10518528
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i160.i, i32 %add28.i)
  %cmp1.i161.i = icmp eq i32 %add.i160.i, %add28.i
  br i1 %cmp1.i161.i, label %for.body.i162.i.get_rfh_string.exit180.i_crit_edge, label %if.end.i166.i

for.body.i162.i.get_rfh_string.exit180.i_crit_edge: ; preds = %for.body.i162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

if.end.i166.i:                                    ; preds = %for.body.i162.i
  %mul2.i163.i = shl i32 %i.030.i158.i, 2
  %add3.i164.i = add nuw nsw i32 %mul2.i163.i, 10518656
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i164.i, i32 %add28.i)
  %cmp4.i165.i = icmp eq i32 %add3.i164.i, %add28.i
  br i1 %cmp4.i165.i, label %if.end.i166.i.get_rfh_string.exit180.i_crit_edge, label %if.end6.i169.i

if.end.i166.i.get_rfh_string.exit180.i_crit_edge: ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

if.end6.i169.i:                                   ; preds = %if.end.i166.i
  %add8.i167.i = add nuw nsw i32 %mul2.i163.i, 10518720
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i167.i, i32 %add28.i)
  %cmp9.i168.i = icmp eq i32 %add8.i167.i, %add28.i
  br i1 %cmp9.i168.i, label %if.end6.i169.i.get_rfh_string.exit180.i_crit_edge, label %if.end11.i172.i

if.end6.i169.i.get_rfh_string.exit180.i_crit_edge: ; preds = %if.end6.i169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

if.end11.i172.i:                                  ; preds = %if.end6.i169.i
  %add13.i170.i = add nuw nsw i32 %mul.i159.i, 10519040
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i170.i, i32 %add28.i)
  %cmp14.i171.i = icmp eq i32 %add13.i170.i, %add28.i
  br i1 %cmp14.i171.i, label %if.end11.i172.i.get_rfh_string.exit180.i_crit_edge, label %for.cond.i157.i

if.end11.i172.i.get_rfh_string.exit180.i_crit_edge: ; preds = %if.end11.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

for.end.i173.i:                                   ; preds = %for.cond.i157.i
  %32 = zext i32 %add28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %add28.i, label %sw.default.i178.i [
    i32 10524704, label %for.end.i173.i.get_rfh_string.exit180.i_crit_edge
    i32 10524672, label %sw.bb17.i174.i
    i32 10524680, label %sw.bb18.i175.i
    i32 7856, label %sw.bb19.i176.i
    i32 7864, label %sw.bb20.i177.i
  ]

for.end.i173.i.get_rfh_string.exit180.i_crit_edge: ; preds = %for.end.i173.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

sw.bb17.i174.i:                                   ; preds = %for.end.i173.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

sw.bb18.i175.i:                                   ; preds = %for.end.i173.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

sw.bb19.i176.i:                                   ; preds = %for.end.i173.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

sw.bb20.i177.i:                                   ; preds = %for.end.i173.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

sw.default.i178.i:                                ; preds = %for.end.i173.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit180.i

get_rfh_string.exit180.i:                         ; preds = %sw.default.i178.i, %sw.bb20.i177.i, %sw.bb19.i176.i, %sw.bb18.i175.i, %sw.bb17.i174.i, %for.end.i173.i.get_rfh_string.exit180.i_crit_edge, %if.end11.i172.i.get_rfh_string.exit180.i_crit_edge, %if.end6.i169.i.get_rfh_string.exit180.i_crit_edge, %if.end.i166.i.get_rfh_string.exit180.i_crit_edge, %for.body.i162.i.get_rfh_string.exit180.i_crit_edge
  %retval.0.i179.i = phi ptr [ @.str.19, %sw.default.i178.i ], [ @.str.18, %sw.bb20.i177.i ], [ @.str.17, %sw.bb19.i176.i ], [ @.str.16, %sw.bb18.i175.i ], [ @.str.15, %sw.bb17.i174.i ], [ @.str.14, %for.end.i173.i.get_rfh_string.exit180.i_crit_edge ], [ @.str.13, %if.end11.i172.i.get_rfh_string.exit180.i_crit_edge ], [ @.str.12, %if.end6.i169.i.get_rfh_string.exit180.i_crit_edge ], [ @.str.11, %if.end.i166.i.get_rfh_string.exit180.i_crit_edge ], [ @.str.10, %for.body.i162.i.get_rfh_string.exit180.i_crit_edge ]
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %grab_nic_access.i182.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %34, i32 0, i32 32
  %35 = ptrtoint ptr %grab_nic_access.i182.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %grab_nic_access.i182.i, align 4
  %call.i183.i = tail call zeroext i1 %36(ptr noundef %trans) #6
  br i1 %call.i183.i, label %if.then.i188.i, label %get_rfh_string.exit180.i.iwl_read_prph.exit191.i_crit_edge, !prof !101

get_rfh_string.exit180.i.iwl_read_prph.exit191.i_crit_edge: ; preds = %get_rfh_string.exit180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_read_prph.exit191.i

if.then.i188.i:                                   ; preds = %get_rfh_string.exit180.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i, align 4
  %read_prph.i.i.i184.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %read_prph.i.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_prph.i.i.i184.i, align 4
  %call.i.i.i185.i = tail call i32 %40(ptr noundef %trans, i32 noundef %add28.i) #6
  %41 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %42, i32 noundef %add28.i, i32 noundef %call.i.i.i185.i) #6
  %43 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i, align 4
  %release_nic_access.i.i187.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %44, i32 0, i32 33
  %45 = ptrtoint ptr %release_nic_access.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %release_nic_access.i.i187.i, align 4
  tail call void %46(ptr noundef %trans) #6
  br label %iwl_read_prph.exit191.i

iwl_read_prph.exit191.i:                          ; preds = %if.then.i188.i, %get_rfh_string.exit180.i.iwl_read_prph.exit191.i_crit_edge
  %val.0.i189.i = phi i32 [ %call.i.i.i185.i, %if.then.i188.i ], [ 1515870810, %get_rfh_string.exit180.i.iwl_read_prph.exit191.i_crit_edge ]
  %call33.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29.i, i32 noundef %sub30.i, ptr noundef nonnull @.str.8, ptr noundef nonnull %retval.0.i179.i, i32 noundef %q.0270.i, i32 noundef %val.0.i189.i) #6
  %add34.i = add i32 %call33.i, %pos.2271.i
  %inc36.i = add nuw nsw i32 %q.0270.i, 1
  %exitcond281.not.i = icmp eq i32 %inc36.i, %conv.i
  br i1 %exitcond281.not.i, label %iwl_read_prph.exit191.i.for.inc38.i_crit_edge, label %iwl_read_prph.exit191.i.for.body21.i_crit_edge

iwl_read_prph.exit191.i.for.body21.i_crit_edge:   ; preds = %iwl_read_prph.exit191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21.i

iwl_read_prph.exit191.i.for.inc38.i_crit_edge:    ; preds = %iwl_read_prph.exit191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %iwl_read_prph.exit191.i.for.inc38.i_crit_edge, %for.cond18.preheader.i.for.inc38.i_crit_edge
  %pos.2.lcssa.i = phi i32 [ %pos.1272.i, %for.cond18.preheader.i.for.inc38.i_crit_edge ], [ %add34.i, %iwl_read_prph.exit191.i.for.inc38.i_crit_edge ]
  %inc39.i = add nuw nsw i32 %i.1273.i, 1
  %exitcond282.not.i = icmp eq i32 %inc39.i, 4
  br i1 %exitcond282.not.i, label %for.inc38.i.cleanup37_crit_edge, label %for.inc38.i.for.cond18.preheader.i_crit_edge

for.inc38.i.for.cond18.preheader.i_crit_edge:     ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.preheader.i

for.inc38.i.cleanup37_crit_edge:                  ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

do.end.i:                                         ; preds = %if.then
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.6) #6
  %ops.i218.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  br label %do.end53.i

for.cond64.preheader.i:                           ; preds = %iwl_read_prph.exit228.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp69276.not.i = icmp eq i8 %5, 0
  br label %for.cond68.preheader.i

do.end53.i:                                       ; preds = %iwl_read_prph.exit228.i.do.end53.i_crit_edge, %do.end.i
  %i.2275.i = phi i32 [ 0, %do.end.i ], [ %inc62.i, %iwl_read_prph.exit228.i.do.end53.i_crit_edge ]
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 8
  %arrayidx55.i = getelementptr [5 x i32], ptr @iwl_dump_rfh.rfh_tbl, i32 0, i32 %i.2275.i
  %51 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx55.i, align 4
  br label %for.body.i199.i

for.cond.i194.i:                                  ; preds = %if.end11.i209.i
  %inc.i192.i = add nuw nsw i32 %i.030.i195.i, 1
  %exitcond.not.i193.i = icmp eq i32 %inc.i192.i, 16
  br i1 %exitcond.not.i193.i, label %for.end.i210.i, label %for.cond.i194.i.for.body.i199.i_crit_edge

for.cond.i194.i.for.body.i199.i_crit_edge:        ; preds = %for.cond.i194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i199.i

for.body.i199.i:                                  ; preds = %for.cond.i194.i.for.body.i199.i_crit_edge, %do.end53.i
  %i.030.i195.i = phi i32 [ 0, %do.end53.i ], [ %inc.i192.i, %for.cond.i194.i.for.body.i199.i_crit_edge ]
  %mul.i196.i = shl i32 %i.030.i195.i, 3
  %add.i197.i = add nuw nsw i32 %mul.i196.i, 10518528
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i197.i, i32 %52)
  %cmp1.i198.i = icmp eq i32 %add.i197.i, %52
  br i1 %cmp1.i198.i, label %for.body.i199.i.get_rfh_string.exit217.i_crit_edge, label %if.end.i203.i

for.body.i199.i.get_rfh_string.exit217.i_crit_edge: ; preds = %for.body.i199.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

if.end.i203.i:                                    ; preds = %for.body.i199.i
  %mul2.i200.i = shl i32 %i.030.i195.i, 2
  %add3.i201.i = add nuw nsw i32 %mul2.i200.i, 10518656
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i201.i, i32 %52)
  %cmp4.i202.i = icmp eq i32 %add3.i201.i, %52
  br i1 %cmp4.i202.i, label %if.end.i203.i.get_rfh_string.exit217.i_crit_edge, label %if.end6.i206.i

if.end.i203.i.get_rfh_string.exit217.i_crit_edge: ; preds = %if.end.i203.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

if.end6.i206.i:                                   ; preds = %if.end.i203.i
  %add8.i204.i = add nuw nsw i32 %mul2.i200.i, 10518720
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i204.i, i32 %52)
  %cmp9.i205.i = icmp eq i32 %add8.i204.i, %52
  br i1 %cmp9.i205.i, label %if.end6.i206.i.get_rfh_string.exit217.i_crit_edge, label %if.end11.i209.i

if.end6.i206.i.get_rfh_string.exit217.i_crit_edge: ; preds = %if.end6.i206.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

if.end11.i209.i:                                  ; preds = %if.end6.i206.i
  %add13.i207.i = add nuw nsw i32 %mul.i196.i, 10519040
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i207.i, i32 %52)
  %cmp14.i208.i = icmp eq i32 %add13.i207.i, %52
  br i1 %cmp14.i208.i, label %if.end11.i209.i.get_rfh_string.exit217.i_crit_edge, label %for.cond.i194.i

if.end11.i209.i.get_rfh_string.exit217.i_crit_edge: ; preds = %if.end11.i209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

for.end.i210.i:                                   ; preds = %for.cond.i194.i
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %52, label %sw.default.i215.i [
    i32 10524704, label %for.end.i210.i.get_rfh_string.exit217.i_crit_edge
    i32 10524672, label %sw.bb17.i211.i
    i32 10524680, label %sw.bb18.i212.i
    i32 7856, label %sw.bb19.i213.i
    i32 7864, label %sw.bb20.i214.i
  ]

for.end.i210.i.get_rfh_string.exit217.i_crit_edge: ; preds = %for.end.i210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

sw.bb17.i211.i:                                   ; preds = %for.end.i210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

sw.bb18.i212.i:                                   ; preds = %for.end.i210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

sw.bb19.i213.i:                                   ; preds = %for.end.i210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

sw.bb20.i214.i:                                   ; preds = %for.end.i210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

sw.default.i215.i:                                ; preds = %for.end.i210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit217.i

get_rfh_string.exit217.i:                         ; preds = %sw.default.i215.i, %sw.bb20.i214.i, %sw.bb19.i213.i, %sw.bb18.i212.i, %sw.bb17.i211.i, %for.end.i210.i.get_rfh_string.exit217.i_crit_edge, %if.end11.i209.i.get_rfh_string.exit217.i_crit_edge, %if.end6.i206.i.get_rfh_string.exit217.i_crit_edge, %if.end.i203.i.get_rfh_string.exit217.i_crit_edge, %for.body.i199.i.get_rfh_string.exit217.i_crit_edge
  %retval.0.i216.i = phi ptr [ @.str.19, %sw.default.i215.i ], [ @.str.18, %sw.bb20.i214.i ], [ @.str.17, %sw.bb19.i213.i ], [ @.str.16, %sw.bb18.i212.i ], [ @.str.15, %sw.bb17.i211.i ], [ @.str.14, %for.end.i210.i.get_rfh_string.exit217.i_crit_edge ], [ @.str.13, %if.end11.i209.i.get_rfh_string.exit217.i_crit_edge ], [ @.str.12, %if.end6.i206.i.get_rfh_string.exit217.i_crit_edge ], [ @.str.11, %if.end.i203.i.get_rfh_string.exit217.i_crit_edge ], [ @.str.10, %for.body.i199.i.get_rfh_string.exit217.i_crit_edge ]
  %54 = ptrtoint ptr %ops.i218.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i218.i, align 4
  %grab_nic_access.i219.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %grab_nic_access.i219.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %grab_nic_access.i219.i, align 4
  %call.i220.i = tail call zeroext i1 %57(ptr noundef %trans) #6
  br i1 %call.i220.i, label %if.then.i225.i, label %get_rfh_string.exit217.i.iwl_read_prph.exit228.i_crit_edge, !prof !101

get_rfh_string.exit217.i.iwl_read_prph.exit228.i_crit_edge: ; preds = %get_rfh_string.exit217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_read_prph.exit228.i

if.then.i225.i:                                   ; preds = %get_rfh_string.exit217.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %ops.i218.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i218.i, align 4
  %read_prph.i.i.i221.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %59, i32 0, i32 24
  %60 = ptrtoint ptr %read_prph.i.i.i221.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_prph.i.i.i221.i, align 4
  %call.i.i.i222.i = tail call i32 %61(ptr noundef %trans, i32 noundef %52) #6
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %63, i32 noundef %52, i32 noundef %call.i.i.i222.i) #6
  %64 = ptrtoint ptr %ops.i218.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i218.i, align 4
  %release_nic_access.i.i224.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %65, i32 0, i32 33
  %66 = ptrtoint ptr %release_nic_access.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %release_nic_access.i.i224.i, align 4
  tail call void %67(ptr noundef %trans) #6
  br label %iwl_read_prph.exit228.i

iwl_read_prph.exit228.i:                          ; preds = %if.then.i225.i, %get_rfh_string.exit217.i.iwl_read_prph.exit228.i_crit_edge
  %val.0.i226.i = phi i32 [ %call.i.i.i222.i, %if.then.i225.i ], [ 1515870810, %get_rfh_string.exit217.i.iwl_read_prph.exit228.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %retval.0.i216.i, i32 noundef %val.0.i226.i) #6
  %inc62.i = add nuw nsw i32 %i.2275.i, 1
  %exitcond283.not.i = icmp eq i32 %inc62.i, 5
  br i1 %exitcond283.not.i, label %for.cond64.preheader.i, label %iwl_read_prph.exit228.i.do.end53.i_crit_edge

iwl_read_prph.exit228.i.do.end53.i_crit_edge:     ; preds = %iwl_read_prph.exit228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53.i

for.cond68.preheader.i:                           ; preds = %for.inc94.i.for.cond68.preheader.i_crit_edge, %for.cond64.preheader.i
  %i.3278.i = phi i32 [ 0, %for.cond64.preheader.i ], [ %inc95.i, %for.inc94.i.for.cond68.preheader.i_crit_edge ]
  br i1 %cmp69276.not.i, label %for.cond68.preheader.i.for.inc94.i_crit_edge, label %for.body71.lr.ph.i

for.cond68.preheader.i.for.inc94.i_crit_edge:     ; preds = %for.cond68.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc94.i

for.body71.lr.ph.i:                               ; preds = %for.cond68.preheader.i
  %arrayidx73.i = getelementptr [4 x %struct.reg], ptr @iwl_dump_rfh.rfh_mq_tbl, i32 0, i32 %i.3278.i
  %68 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx73.i, align 4
  %70 = add nsw i32 %i.3278.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %71 = icmp ult i32 %70, 2
  %cond79.i = select i1 %71, i32 4, i32 8
  br label %for.body71.i

for.body71.i:                                     ; preds = %iwl_read_prph.exit265.i.for.body71.i_crit_edge, %for.body71.lr.ph.i
  %q.1277.i = phi i32 [ 0, %for.body71.lr.ph.i ], [ %inc92.i, %iwl_read_prph.exit265.i.for.body71.i_crit_edge ]
  %mul80.i = mul nuw nsw i32 %q.1277.i, %cond79.i
  %add81.i = add i32 %mul80.i, %69
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 8
  br label %for.body.i236.i

for.cond.i231.i:                                  ; preds = %if.end11.i246.i
  %inc.i229.i = add nuw nsw i32 %i.030.i232.i, 1
  %exitcond.not.i230.i = icmp eq i32 %inc.i229.i, 16
  br i1 %exitcond.not.i230.i, label %for.end.i247.i, label %for.cond.i231.i.for.body.i236.i_crit_edge

for.cond.i231.i.for.body.i236.i_crit_edge:        ; preds = %for.cond.i231.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i236.i

for.body.i236.i:                                  ; preds = %for.cond.i231.i.for.body.i236.i_crit_edge, %for.body71.i
  %i.030.i232.i = phi i32 [ 0, %for.body71.i ], [ %inc.i229.i, %for.cond.i231.i.for.body.i236.i_crit_edge ]
  %mul.i233.i = shl i32 %i.030.i232.i, 3
  %add.i234.i = add nuw nsw i32 %mul.i233.i, 10518528
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i234.i, i32 %add81.i)
  %cmp1.i235.i = icmp eq i32 %add.i234.i, %add81.i
  br i1 %cmp1.i235.i, label %for.body.i236.i.get_rfh_string.exit254.i_crit_edge, label %if.end.i240.i

for.body.i236.i.get_rfh_string.exit254.i_crit_edge: ; preds = %for.body.i236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

if.end.i240.i:                                    ; preds = %for.body.i236.i
  %mul2.i237.i = shl i32 %i.030.i232.i, 2
  %add3.i238.i = add nuw nsw i32 %mul2.i237.i, 10518656
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i238.i, i32 %add81.i)
  %cmp4.i239.i = icmp eq i32 %add3.i238.i, %add81.i
  br i1 %cmp4.i239.i, label %if.end.i240.i.get_rfh_string.exit254.i_crit_edge, label %if.end6.i243.i

if.end.i240.i.get_rfh_string.exit254.i_crit_edge: ; preds = %if.end.i240.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

if.end6.i243.i:                                   ; preds = %if.end.i240.i
  %add8.i241.i = add nuw nsw i32 %mul2.i237.i, 10518720
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i241.i, i32 %add81.i)
  %cmp9.i242.i = icmp eq i32 %add8.i241.i, %add81.i
  br i1 %cmp9.i242.i, label %if.end6.i243.i.get_rfh_string.exit254.i_crit_edge, label %if.end11.i246.i

if.end6.i243.i.get_rfh_string.exit254.i_crit_edge: ; preds = %if.end6.i243.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

if.end11.i246.i:                                  ; preds = %if.end6.i243.i
  %add13.i244.i = add nuw nsw i32 %mul.i233.i, 10519040
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i244.i, i32 %add81.i)
  %cmp14.i245.i = icmp eq i32 %add13.i244.i, %add81.i
  br i1 %cmp14.i245.i, label %if.end11.i246.i.get_rfh_string.exit254.i_crit_edge, label %for.cond.i231.i

if.end11.i246.i.get_rfh_string.exit254.i_crit_edge: ; preds = %if.end11.i246.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

for.end.i247.i:                                   ; preds = %for.cond.i231.i
  %74 = zext i32 %add81.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %add81.i, label %sw.default.i252.i [
    i32 10524704, label %for.end.i247.i.get_rfh_string.exit254.i_crit_edge
    i32 10524672, label %sw.bb17.i248.i
    i32 10524680, label %sw.bb18.i249.i
    i32 7856, label %sw.bb19.i250.i
    i32 7864, label %sw.bb20.i251.i
  ]

for.end.i247.i.get_rfh_string.exit254.i_crit_edge: ; preds = %for.end.i247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

sw.bb17.i248.i:                                   ; preds = %for.end.i247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

sw.bb18.i249.i:                                   ; preds = %for.end.i247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

sw.bb19.i250.i:                                   ; preds = %for.end.i247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

sw.bb20.i251.i:                                   ; preds = %for.end.i247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

sw.default.i252.i:                                ; preds = %for.end.i247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_rfh_string.exit254.i

get_rfh_string.exit254.i:                         ; preds = %sw.default.i252.i, %sw.bb20.i251.i, %sw.bb19.i250.i, %sw.bb18.i249.i, %sw.bb17.i248.i, %for.end.i247.i.get_rfh_string.exit254.i_crit_edge, %if.end11.i246.i.get_rfh_string.exit254.i_crit_edge, %if.end6.i243.i.get_rfh_string.exit254.i_crit_edge, %if.end.i240.i.get_rfh_string.exit254.i_crit_edge, %for.body.i236.i.get_rfh_string.exit254.i_crit_edge
  %retval.0.i253.i = phi ptr [ @.str.19, %sw.default.i252.i ], [ @.str.18, %sw.bb20.i251.i ], [ @.str.17, %sw.bb19.i250.i ], [ @.str.16, %sw.bb18.i249.i ], [ @.str.15, %sw.bb17.i248.i ], [ @.str.14, %for.end.i247.i.get_rfh_string.exit254.i_crit_edge ], [ @.str.13, %if.end11.i246.i.get_rfh_string.exit254.i_crit_edge ], [ @.str.12, %if.end6.i243.i.get_rfh_string.exit254.i_crit_edge ], [ @.str.11, %if.end.i240.i.get_rfh_string.exit254.i_crit_edge ], [ @.str.10, %for.body.i236.i.get_rfh_string.exit254.i_crit_edge ]
  %75 = ptrtoint ptr %ops.i218.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i218.i, align 4
  %grab_nic_access.i256.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %76, i32 0, i32 32
  %77 = ptrtoint ptr %grab_nic_access.i256.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %grab_nic_access.i256.i, align 4
  %call.i257.i = tail call zeroext i1 %78(ptr noundef %trans) #6
  br i1 %call.i257.i, label %if.then.i262.i, label %get_rfh_string.exit254.i.iwl_read_prph.exit265.i_crit_edge, !prof !101

get_rfh_string.exit254.i.iwl_read_prph.exit265.i_crit_edge: ; preds = %get_rfh_string.exit254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_read_prph.exit265.i

if.then.i262.i:                                   ; preds = %get_rfh_string.exit254.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %ops.i218.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i218.i, align 4
  %read_prph.i.i.i258.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %80, i32 0, i32 24
  %81 = ptrtoint ptr %read_prph.i.i.i258.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read_prph.i.i.i258.i, align 4
  %call.i.i.i259.i = tail call i32 %82(ptr noundef %trans, i32 noundef %add81.i) #6
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread_prph32(ptr noundef %84, i32 noundef %add81.i, i32 noundef %call.i.i.i259.i) #6
  %85 = ptrtoint ptr %ops.i218.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i218.i, align 4
  %release_nic_access.i.i261.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %86, i32 0, i32 33
  %87 = ptrtoint ptr %release_nic_access.i.i261.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %release_nic_access.i.i261.i, align 4
  tail call void %88(ptr noundef %trans) #6
  br label %iwl_read_prph.exit265.i

iwl_read_prph.exit265.i:                          ; preds = %if.then.i262.i, %get_rfh_string.exit254.i.iwl_read_prph.exit265.i_crit_edge
  %val.0.i263.i = phi i32 [ %call.i.i.i259.i, %if.then.i262.i ], [ 1515870810, %get_rfh_string.exit254.i.iwl_read_prph.exit265.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %73, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %retval.0.i253.i, i32 noundef %q.1277.i, i32 noundef %val.0.i263.i) #6
  %inc92.i = add nuw nsw i32 %q.1277.i, 1
  %exitcond284.not.i = icmp eq i32 %inc92.i, %conv.i
  br i1 %exitcond284.not.i, label %iwl_read_prph.exit265.i.for.inc94.i_crit_edge, label %iwl_read_prph.exit265.i.for.body71.i_crit_edge

iwl_read_prph.exit265.i.for.body71.i_crit_edge:   ; preds = %iwl_read_prph.exit265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body71.i

iwl_read_prph.exit265.i.for.inc94.i_crit_edge:    ; preds = %iwl_read_prph.exit265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc94.i

for.inc94.i:                                      ; preds = %iwl_read_prph.exit265.i.for.inc94.i_crit_edge, %for.cond68.preheader.i.for.inc94.i_crit_edge
  %inc95.i = add nuw nsw i32 %i.3278.i, 1
  %exitcond285.not.i = icmp eq i32 %inc95.i, 4
  br i1 %exitcond285.not.i, label %for.inc94.i.cleanup37_crit_edge, label %for.inc94.i.for.cond68.preheader.i_crit_edge

for.inc94.i.for.cond68.preheader.i_crit_edge:     ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond68.preheader.i

for.inc94.i.cleanup37_crit_edge:                  ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %buf, null
  br i1 %tobool1.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3264, i32 noundef 472) #10
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i, ptr %buf, align 4
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then2.cleanup37_crit_edge, label %if.end6

if.then2.cleanup37_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

if.end6:                                          ; preds = %if.then2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 472, ptr noundef nonnull @.str) #6
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %iwl_read_direct32.exit.for.body_crit_edge, %if.end6
  %pos.091 = phi i32 [ %call7, %if.end6 ], [ %add14, %iwl_read_direct32.exit.for.body_crit_edge ]
  %i.090 = phi i32 [ 0, %if.end6 ], [ %inc, %iwl_read_direct32.exit.for.body_crit_edge ]
  %91 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buf, align 4
  %add.ptr8 = getelementptr i8, ptr %92, i32 %pos.091
  %sub9 = sub i32 472, %pos.091
  %arrayidx = getelementptr [9 x i32], ptr @iwl_dump_fh.fh_tbl, i32 0, i32 %i.090
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %94, label %sw.default.i [
    i32 7104, label %for.body.get_fh_string.exit_crit_edge
    i32 7108, label %sw.bb1.i
    i32 7112, label %sw.bb2.i
    i32 7168, label %sw.bb3.i
    i32 7232, label %sw.bb4.i
    i32 7236, label %sw.bb5.i
    i32 7240, label %sw.bb6.i
    i32 7856, label %sw.bb7.i
    i32 7864, label %sw.bb8.i
  ]

for.body.get_fh_string.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.bb2.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.bb4.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.bb6.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.bb7.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.bb8.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit

get_fh_string.exit:                               ; preds = %sw.default.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %for.body.get_fh_string.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.19, %sw.default.i ], [ @.str.18, %sw.bb8.i ], [ @.str.17, %sw.bb7.i ], [ @.str.26, %sw.bb6.i ], [ @.str.25, %sw.bb5.i ], [ @.str.24, %sw.bb4.i ], [ @.str.23, %sw.bb3.i ], [ @.str.22, %sw.bb2.i ], [ @.str.21, %sw.bb1.i ], [ @.str.20, %for.body.get_fh_string.exit_crit_edge ]
  %96 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i, align 4
  %grab_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %97, i32 0, i32 32
  %98 = ptrtoint ptr %grab_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %grab_nic_access.i, align 4
  %call.i = tail call zeroext i1 %99(ptr noundef %trans) #6
  br i1 %call.i, label %if.then.i63, label %get_fh_string.exit.iwl_read_direct32.exit_crit_edge, !prof !101

get_fh_string.exit.iwl_read_direct32.exit_crit_edge: ; preds = %get_fh_string.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_read_direct32.exit

if.then.i63:                                      ; preds = %get_fh_string.exit
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %101, i32 0, i32 23
  %102 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %103(ptr noundef %trans, i32 noundef %94) #6
  %104 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %105, i32 noundef %94, i32 noundef %call.i.i.i) #6
  %106 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %107, i32 0, i32 33
  %108 = ptrtoint ptr %release_nic_access.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %release_nic_access.i.i, align 4
  tail call void %109(ptr noundef %trans) #6
  br label %iwl_read_direct32.exit

iwl_read_direct32.exit:                           ; preds = %if.then.i63, %get_fh_string.exit.iwl_read_direct32.exit_crit_edge
  %value.0.i = phi i32 [ %call.i.i.i, %if.then.i63 ], [ 1515870810, %get_fh_string.exit.iwl_read_direct32.exit_crit_edge ]
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.1, ptr noundef nonnull %retval.0.i, i32 noundef %value.0.i) #6
  %add14 = add i32 %call13, %pos.091
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %iwl_read_direct32.exit.cleanup37_crit_edge, label %iwl_read_direct32.exit.for.body_crit_edge

iwl_read_direct32.exit.for.body_crit_edge:        ; preds = %iwl_read_direct32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

iwl_read_direct32.exit.cleanup37_crit_edge:       ; preds = %iwl_read_direct32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %111, i32 noundef 0, ptr noundef nonnull @.str) #6
  %ops.i76 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  br label %do.end26

do.end26:                                         ; preds = %iwl_read_direct32.exit86.do.end26_crit_edge, %do.end
  %i.192 = phi i32 [ 0, %do.end ], [ %inc35, %iwl_read_direct32.exit86.do.end26_crit_edge ]
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 8
  %arrayidx28 = getelementptr [9 x i32], ptr @iwl_dump_fh.fh_tbl, i32 0, i32 %i.192
  %114 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx28, align 4
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %115, label %sw.default.i73 [
    i32 7104, label %do.end26.get_fh_string.exit75_crit_edge
    i32 7108, label %sw.bb1.i65
    i32 7112, label %sw.bb2.i66
    i32 7168, label %sw.bb3.i67
    i32 7232, label %sw.bb4.i68
    i32 7236, label %sw.bb5.i69
    i32 7240, label %sw.bb6.i70
    i32 7856, label %sw.bb7.i71
    i32 7864, label %sw.bb8.i72
  ]

do.end26.get_fh_string.exit75_crit_edge:          ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.bb1.i65:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.bb2.i66:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.bb3.i67:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.bb4.i68:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.bb5.i69:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.bb6.i70:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.bb7.i71:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.bb8.i72:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

sw.default.i73:                                   ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_fh_string.exit75

get_fh_string.exit75:                             ; preds = %sw.default.i73, %sw.bb8.i72, %sw.bb7.i71, %sw.bb6.i70, %sw.bb5.i69, %sw.bb4.i68, %sw.bb3.i67, %sw.bb2.i66, %sw.bb1.i65, %do.end26.get_fh_string.exit75_crit_edge
  %retval.0.i74 = phi ptr [ @.str.19, %sw.default.i73 ], [ @.str.18, %sw.bb8.i72 ], [ @.str.17, %sw.bb7.i71 ], [ @.str.26, %sw.bb6.i70 ], [ @.str.25, %sw.bb5.i69 ], [ @.str.24, %sw.bb4.i68 ], [ @.str.23, %sw.bb3.i67 ], [ @.str.22, %sw.bb2.i66 ], [ @.str.21, %sw.bb1.i65 ], [ @.str.20, %do.end26.get_fh_string.exit75_crit_edge ]
  %117 = ptrtoint ptr %ops.i76 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i76, align 4
  %grab_nic_access.i77 = getelementptr inbounds %struct.iwl_trans_ops, ptr %118, i32 0, i32 32
  %119 = ptrtoint ptr %grab_nic_access.i77 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %grab_nic_access.i77, align 4
  %call.i78 = tail call zeroext i1 %120(ptr noundef %trans) #6
  br i1 %call.i78, label %if.then.i83, label %get_fh_string.exit75.iwl_read_direct32.exit86_crit_edge, !prof !101

get_fh_string.exit75.iwl_read_direct32.exit86_crit_edge: ; preds = %get_fh_string.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_read_direct32.exit86

if.then.i83:                                      ; preds = %get_fh_string.exit75
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %ops.i76 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i76, align 4
  %read32.i.i.i79 = getelementptr inbounds %struct.iwl_trans_ops, ptr %122, i32 0, i32 23
  %123 = ptrtoint ptr %read32.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read32.i.i.i79, align 4
  %call.i.i.i80 = tail call i32 %124(ptr noundef %trans, i32 noundef %115) #6
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %126, i32 noundef %115, i32 noundef %call.i.i.i80) #6
  %127 = ptrtoint ptr %ops.i76 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ops.i76, align 4
  %release_nic_access.i.i82 = getelementptr inbounds %struct.iwl_trans_ops, ptr %128, i32 0, i32 33
  %129 = ptrtoint ptr %release_nic_access.i.i82 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %release_nic_access.i.i82, align 4
  tail call void %130(ptr noundef %trans) #6
  br label %iwl_read_direct32.exit86

iwl_read_direct32.exit86:                         ; preds = %if.then.i83, %get_fh_string.exit75.iwl_read_direct32.exit86_crit_edge
  %value.0.i84 = phi i32 [ %call.i.i.i80, %if.then.i83 ], [ 1515870810, %get_fh_string.exit75.iwl_read_direct32.exit86_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %113, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %retval.0.i74, i32 noundef %value.0.i84) #6
  %inc35 = add nuw nsw i32 %i.192, 1
  %exitcond96.not = icmp eq i32 %inc35, 9
  br i1 %exitcond96.not, label %iwl_read_direct32.exit86.cleanup37_crit_edge, label %iwl_read_direct32.exit86.do.end26_crit_edge

iwl_read_direct32.exit86.do.end26_crit_edge:      ; preds = %iwl_read_direct32.exit86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

iwl_read_direct32.exit86.cleanup37_crit_edge:     ; preds = %iwl_read_direct32.exit86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

cleanup37:                                        ; preds = %iwl_read_direct32.exit86.cleanup37_crit_edge, %iwl_read_direct32.exit.cleanup37_crit_edge, %if.then2.cleanup37_crit_edge, %for.inc94.i.cleanup37_crit_edge, %for.inc38.i.cleanup37_crit_edge, %if.then.i.cleanup37_crit_edge
  %retval.1 = phi i32 [ -12, %if.then2.cleanup37_crit_edge ], [ -12, %if.then.i.cleanup37_crit_edge ], [ 0, %iwl_read_direct32.exit86.cleanup37_crit_edge ], [ %add14, %iwl_read_direct32.exit.cleanup37_crit_edge ], [ 0, %for.inc94.i.cleanup37_crit_edge ], [ %pos.2.lcssa.i, %for.inc38.i.cleanup37_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_finish_nic_init(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %bisr_workaround = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bisr_workaround to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %bisr_workaround, align 4
  %3 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496000) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %6)
  %cmp = icmp ugt i32 %6, 19
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %8, i32 0, i32 34
  %9 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_bits_mask.i.i, align 4
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %trans, i32 noundef 36, i32 noundef 65, i32 noundef 65) #6
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %trans, i32 noundef 36, i32 noundef 4, i32 noundef 4) #6
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %poll_ready.0 = phi i32 [ 1048576, %if.then1 ], [ 1, %if.else ]
  %11 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp4 = icmp eq i32 %12, 16
  br i1 %cmp4, label %if.then5, label %if.end2.if.end6_crit_edge

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2.if.end6_crit_edge
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end6
  %t.0.i = phi i32 [ 0, %if.end6 ], [ %add.i, %if.end.i.do.body.i_crit_edge ]
  %14 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %17(ptr noundef %trans, i32 noundef 36) #6
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %19, i32 noundef 36, i32 noundef %call.i.i.i) #6
  %20 = xor i32 %call.i.i.i, -1
  %21 = and i32 %poll_ready.0, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %do.body.i.if.end12_crit_edge, label %if.end.i

do.body.i.if.end12_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #6
  %add.i = add nuw nsw i32 %t.0.i, 10
  %cmp2.i = icmp ult i32 %t.0.i, 24990
  br i1 %cmp2.i, label %if.end.i.do.body.i_crit_edge, label %do.end

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end:                                           ; preds = %if.end.i
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_finish_nic_init, ptr noundef nonnull @.str.2) #6
  %25 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_cfg, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %device_family.i, align 4
  %29 = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %29)
  %switch.i = icmp eq i32 %29, 18
  br i1 %switch.i, label %do.end.i, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 8
  %32 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i.i, align 4
  %read32.i.i.i36 = getelementptr inbounds %struct.iwl_trans_ops, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %read32.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i36, align 4
  %call.i.i.i37 = tail call i32 %35(ptr noundef %trans, i32 noundef 32) #6
  %36 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %37, i32 noundef 32, i32 noundef %call.i.i.i37) #6
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %call.i.i.i37) #6
  tail call fastcc void @iwl_dump_host_monitor_block(ptr noundef %trans, i32 noundef 0, i32 noundef 0, i32 noundef 15) #6
  tail call fastcc void @iwl_dump_host_monitor_block(ptr noundef %trans, i32 noundef 0, i32 noundef 1, i32 noundef 15) #6
  tail call fastcc void @iwl_dump_host_monitor_block(ptr noundef %trans, i32 noundef 0, i32 noundef 6, i32 noundef 15) #6
  tail call fastcc void @iwl_dump_host_monitor_block(ptr noundef %trans, i32 noundef 34, i32 noundef 0, i32 noundef 1) #6
  br label %if.end12

if.end12:                                         ; preds = %do.end.i, %do.end.if.end12_crit_edge, %do.body.i.if.end12_crit_edge
  %cmp742 = phi i32 [ -110, %do.end.if.end12_crit_edge ], [ -110, %do.end.i ], [ 0, %do.body.i.if.end12_crit_edge ]
  %38 = ptrtoint ptr %bisr_workaround to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load14 = load i16, ptr %bisr_workaround, align 4
  %39 = and i16 %bf.load14, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool18.not = icmp eq i16 %39, 0
  br i1 %tobool18.not, label %if.end12.if.end20_crit_edge, label %if.then19

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 42949600) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end12.if.end20_crit_edge
  ret i32 %cmp742
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_trans_sync_nmi_with_addr(ptr noundef %trans, i32 noundef %inta_addr, i32 noundef %sw_err_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %status = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status, align 4
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %interrupts.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %interrupts.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupts.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %trans, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @iwl_force_nmi(ptr noundef %trans)
  %add.neg = sub i32 -25, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub31 = add i32 %add.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %cmp32 = icmp slt i32 %sub31, 0
  br i1 %cmp32, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %trans, i32 noundef %inta_addr) #6
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %14, i32 noundef %inta_addr, i32 noundef %call.i.i) #6
  %and = and i32 %call.i.i, %sw_err_bit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite32(ptr noundef %16, i32 noundef %inta_addr, i32 noundef %and) #6
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i, align 4
  tail call void %20(ptr noundef %trans, i32 noundef %inta_addr, i32 noundef %and) #6
  br label %while.end

cleanup:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %22
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %if.end.while.end_crit_edge
  br i1 %tobool.not, label %while.end.if.end9_crit_edge, label %if.then8

while.end.if.end9_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %while.end
  %ops.i22 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i22, align 4
  %interrupts.i23 = getelementptr inbounds %struct.iwl_trans_ops, ptr %24, i32 0, i32 40
  %25 = ptrtoint ptr %interrupts.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %interrupts.i23, align 4
  %tobool.not.i24 = icmp eq ptr %26, null
  br i1 %tobool.not.i24, label %if.then8.if.end9_crit_edge, label %if.then.i25

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then.i25:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %26(ptr noundef %trans, i1 noundef zeroext true) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then.i25, %if.then8.if.end9_crit_edge, %while.end.if.end9_crit_edge
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %27 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %op_mode.i, align 8
  %tobool.not.i27 = icmp eq ptr %28, null
  br i1 %tobool.not.i27, label %land.rhs.i, label %if.end40.critedge.i

land.rhs.i:                                       ; preds = %if.end9
  %.b1.i = load i1, ptr @iwl_trans_fw_error.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.iwl_trans_fw_error.exit_crit_edge, label %if.then.i28, !prof !101

land.rhs.i.iwl_trans_fw_error.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_trans_fw_error.exit

if.then.i28:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_trans_fw_error.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1426, i32 noundef 9, ptr noundef null) #6
  br label %iwl_trans_fw_error.exit

if.end40.critedge.i:                              ; preds = %if.end9
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end40.critedge.i.iwl_trans_fw_error.exit_crit_edge

if.end40.critedge.i.iwl_trans_fw_error.exit_crit_edge: ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_trans_fw_error.exit

if.then42.i:                                      ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %op_mode.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %nic_error.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %nic_error.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nic_error.i.i, align 4
  tail call void %34(ptr noundef %30, i1 noundef zeroext false) #6
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 6
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %state.i, align 8
  br label %iwl_trans_fw_error.exit

iwl_trans_fw_error.exit:                          ; preds = %if.then42.i, %if.end40.critedge.i.iwl_trans_fw_error.exit_crit_edge, %if.then.i28, %land.rhs.i.iwl_trans_fw_error.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_iowrite8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_iowrite32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_iowrite64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_ioread32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_ioread_prph32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_iowrite_prph32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_iowrite_prph64(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_dump_host_monitor_block(ptr noundef %trans, i32 noundef %block, i32 noundef %vec, i32 noundef %iter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %block, i32 noundef %vec) #6
  %shl = shl i32 %block, 8
  %or = or i32 %shl, %vec
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_iowrite32(ptr noundef %3, i32 noundef 532, i32 noundef %or) #6
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %trans, i32 noundef 532, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter)
  %cmp20.not = icmp eq i32 %iter, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  br label %do.end7

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end7:                                          ; preds = %do.end7.do.end7_crit_edge, %entry.do.end7_crit_edge
  %i.021 = phi i32 [ %inc, %do.end7.do.end7_crit_edge ], [ 0, %entry.do.end7_crit_edge ]
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %trans, i32 noundef 552) #6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_ioread32(ptr noundef %15, i32 noundef 552, i32 noundef %call.i.i) #6
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %i.021, i32 noundef %call.i.i) #6
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %iter
  br i1 %exitcond.not, label %do.end7.for.end_crit_edge, label %do.end7.do.end7_crit_edge

do.end7.do.end7_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.end7.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @iwl_dump_fh.fh_tbl, !1, !"fh_tbl", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 355, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 380, i32 5}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 384, i32 5}
!6 = !{ptr @__func__.iwl_finish_nic_init, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 478, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 34, i32 1}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 51, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 68, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 17, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 119, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 85, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-devtrace-io.h", i32 102, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = !{ptr @iwl_dump_rfh.rfh_tbl, !36, !"rfh_tbl", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 260, i32 19}
!37 = !{ptr @iwl_dump_rfh.rfh_mq_tbl, !38, !"rfh_mq_tbl", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 267, i32 26}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 292, i32 5}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 296, i32 5}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 306, i32 6}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 326, i32 4}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 233, i32 3}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 234, i32 3}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 235, i32 3}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 236, i32 3}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 240, i32 2}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 241, i32 2}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 242, i32 2}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 243, i32 2}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 244, i32 2}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 246, i32 10}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 337, i32 2}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 338, i32 2}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 339, i32 2}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 340, i32 2}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 341, i32 2}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 342, i32 2}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 343, i32 2}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 425, i32 3}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 413, i32 2}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-io.c", i32 416, i32 3}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-trans.h", i32 1426, i32 6}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148768144, i64 2148768149, i64 2148768162, i64 2148768206, i64 2148768240, i64 2148768261}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2157735994}
!103 = !{i64 2157736225}
!104 = !{i64 2149269300}
!105 = !{i64 2149270336}
!106 = !{i64 2157757178}
!107 = !{i64 2157757411}
!108 = !{i64 2157774357}
!109 = !{i64 2157774590}
!110 = !{i64 2157718921}
!111 = !{i64 2157719152}
!112 = !{i64 2157831034}
!113 = !{i64 2157831275}
!114 = !{i64 2157791727}
!115 = !{i64 2157791970}
!116 = !{i64 2157813430}
!117 = !{i64 2157813673}
