; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@aq_fw_1x_ops = dso_local constant { %struct.aq_fw_ops, [60 x i8] } { %struct.aq_fw_ops { ptr @hw_atl_utils_mpi_create, ptr @hw_atl_fw1x_deinit, ptr null, ptr null, ptr @hw_atl_utils_get_mac_permanent, ptr @hw_atl_utils_mpi_set_speed, ptr @hw_atl_utils_mpi_set_state, ptr @hw_atl_utils_mpi_get_link_status, ptr @hw_atl_utils_update_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aq_fw1x_set_power, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@aq_fw_2x_ops = external dso_local constant %struct.aq_fw_ops, align 4
@hw_atl_utils_initfw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013atlantic: Bad FW version detected: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hw_atl_utils_initfw\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c\00", [35 x i8] zeroinitializer }, align 32
@hw_atl_utils_initfw._entry_ptr = internal global ptr @hw_atl_utils_initfw._entry, section ".printk_index", align 4
@hw_atl_utils_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013atlantic: Neither RBL nor FLB firmware started\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hw_atl_utils_soft_reset\00", [40 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset._entry_ptr = internal global ptr @hw_atl_utils_soft_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hw_atl_utils_soft_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013atlantic: reset sema1 timeout\00", [32 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset._entry_ptr.7 = internal global ptr @hw_atl_utils_soft_reset._entry.5, section ".printk_index", align 4
@hw_atl_utils_soft_reset._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013atlantic: reset sema2 timeout\00", [32 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset._entry_ptr.10 = internal global ptr @hw_atl_utils_soft_reset._entry.8, section ".printk_index", align 4
@hw_atl_utils_fw_rpc_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Invalid sw len: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hw_atl_utils_fw_rpc_wait\00", [39 x i8] zeroinitializer }, align 32
@hw_atl_utils_fw_rpc_wait._entry_ptr = internal global ptr @hw_atl_utils_fw_rpc_wait._entry, section ".printk_index", align 4
@hw_atl_utils_fw_rpc_wait._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Invalid fw len: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@hw_atl_utils_fw_rpc_wait._entry_ptr.15 = internal global ptr @hw_atl_utils_fw_rpc_wait._entry.13, section ".printk_index", align 4
@hw_atl_utils_hw_mac_regs = internal constant { [88 x i32], [64 x i8] } { [88 x i32] [i32 21888, i32 21904, i32 21936, i32 21940, i32 21952, i32 23296, i32 23300, i32 23304, i32 23308, i32 23312, i32 23316, i32 23320, i32 23324, i32 23328, i32 23332, i32 23336, i32 23340, i32 23344, i32 23348, i32 23352, i32 23356, i32 23360, i32 23364, i32 23368, i32 23372, i32 23376, i32 23380, i32 23384, i32 23388, i32 23392, i32 23396, i32 23400, i32 23404, i32 23408, i32 23412, i32 23416, i32 23420, i32 31744, i32 31748, i32 31752, i32 31756, i32 31760, i32 31764, i32 31768, i32 31772, i32 31776, i32 31808, i32 31812, i32 31816, i32 31820, i32 31824, i32 31828, i32 31832, i32 31836, i32 31840, i32 31872, i32 31876, i32 31880, i32 31884, i32 31888, i32 31892, i32 31896, i32 31900, i32 31904, i32 31936, i32 31940, i32 31944, i32 31948, i32 31952, i32 31956, i32 31960, i32 31964, i32 31968, i32 768, i32 772, i32 776, i32 780, i32 784, i32 788, i32 792, i32 796, i32 864, i32 868, i32 872, i32 876, i32 880, i32 884, i32 26880], [64 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset_rbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013atlantic: RBL Restart failed\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hw_atl_utils_soft_reset_rbl\00", [36 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset_rbl._entry_ptr = internal global ptr @hw_atl_utils_soft_reset_rbl._entry, section ".printk_index", align 4
@hw_atl_utils_soft_reset_rbl._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013atlantic: No FW detected. Dynamic FW load not implemented\0A\00", [35 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset_rbl._entry_ptr.20 = internal global ptr @hw_atl_utils_soft_reset_rbl._entry.18, section ".printk_index", align 4
@hw_atl_utils_soft_reset_rbl._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013atlantic: FW kickstart failed\0A\00", [63 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset_rbl._entry_ptr.23 = internal global ptr @hw_atl_utils_soft_reset_rbl._entry.21, section ".printk_index", align 4
@hw_atl_utils_soft_reset_flb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013atlantic: MAC kickstart failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hw_atl_utils_soft_reset_flb\00", [36 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset_flb._entry_ptr = internal global ptr @hw_atl_utils_soft_reset_flb._entry, section ".printk_index", align 4
@hw_atl_utils_soft_reset_flb._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.25, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hw_atl_utils_soft_reset_flb._entry_ptr.27 = internal global ptr @hw_atl_utils_soft_reset_flb._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 57005, i64 61863]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 57005, i64 61863]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 536870912, i64 2147483648]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 2500, i64 5000]
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"aq_fw_1x_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1081, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 85, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 257, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 291, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 296, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 563, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 576, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"hw_atl_utils_hw_mac_regs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 924, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 210, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 219, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 231, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 134, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private constant [64 x i8] c"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 162, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @hw_atl_utils_fw_rpc_wait._entry, ptr @hw_atl_utils_fw_rpc_wait._entry.13, ptr @hw_atl_utils_fw_rpc_wait._entry_ptr, ptr @hw_atl_utils_fw_rpc_wait._entry_ptr.15, ptr @hw_atl_utils_initfw._entry, ptr @hw_atl_utils_initfw._entry_ptr, ptr @hw_atl_utils_soft_reset._entry, ptr @hw_atl_utils_soft_reset._entry.5, ptr @hw_atl_utils_soft_reset._entry.8, ptr @hw_atl_utils_soft_reset._entry_ptr, ptr @hw_atl_utils_soft_reset._entry_ptr.10, ptr @hw_atl_utils_soft_reset._entry_ptr.7, ptr @hw_atl_utils_soft_reset_flb._entry, ptr @hw_atl_utils_soft_reset_flb._entry.26, ptr @hw_atl_utils_soft_reset_flb._entry_ptr, ptr @hw_atl_utils_soft_reset_flb._entry_ptr.27, ptr @hw_atl_utils_soft_reset_rbl._entry, ptr @hw_atl_utils_soft_reset_rbl._entry.18, ptr @hw_atl_utils_soft_reset_rbl._entry.21, ptr @hw_atl_utils_soft_reset_rbl._entry_ptr, ptr @hw_atl_utils_soft_reset_rbl._entry_ptr.20, ptr @hw_atl_utils_soft_reset_rbl._entry_ptr.23, ptr @aq_fw_1x_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @hw_atl_utils_hw_mac_regs, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_fw_1x_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_initfw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_soft_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_soft_reset._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_fw_rpc_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_fw_rpc_wait._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_hw_mac_regs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_soft_reset_rbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_soft_reset_rbl._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_soft_reset_rbl._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_soft_reset_flb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_utils_soft_reset_flb._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_initfw(ptr noundef %self, ptr nocapture noundef %fw_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %call.i = tail call i32 @hw_atl_reg_glb_mif_id_get(ptr noundef %self) #6
  %and1.i = and i32 %call.i, 15
  %0 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and1.i, label %if.end13.fold.split.i [
    i32 1, label %entry.hw_atl_utils_hw_chip_features_init.exit_crit_edge
    i32 2, label %if.then5.i
    i32 10, label %if.then10.i
  ]

entry.hw_atl_utils_hw_chip_features_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_utils_hw_chip_features_init.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_utils_hw_chip_features_init.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_utils_hw_chip_features_init.exit

if.end13.fold.split.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_utils_hw_chip_features_init.exit

hw_atl_utils_hw_chip_features_init.exit:          ; preds = %if.end13.fold.split.i, %if.then10.i, %if.then5.i, %entry.hw_atl_utils_hw_chip_features_init.exit_crit_edge
  %chip_features.0.i = phi i32 [ 41943063, %if.then5.i ], [ 75497495, %if.then10.i ], [ 25165841, %entry.hw_atl_utils_hw_chip_features_init.exit_crit_edge ], [ 8388608, %if.end13.fold.split.i ]
  %1 = ptrtoint ptr %chip_features to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %chip_features.0.i, ptr %chip_features, align 4
  %call.i37 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 24) #6
  %fw_ver_actual = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 13
  %2 = ptrtoint ptr %fw_ver_actual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i37, ptr %fw_ver_actual, align 4
  %xor.i = xor i32 %call.i37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor.i)
  %tobool.not.i = icmp ult i32 %xor.i, 16777216
  %and4.i = and i32 %call.i37, 16777214
  call void @__sanitizer_cov_trace_const_cmp4(i32 327685, i32 %and4.i)
  %cmp.i = icmp ugt i32 %and4.i, 327685
  %ver_match.0.in.i = and i1 %tobool.not.i, %cmp.i
  br i1 %ver_match.0.in.i, label %hw_atl_utils_hw_chip_features_init.exit.if.end19_crit_edge, label %if.else

hw_atl_utils_hw_chip_features_init.exit.if.end19_crit_edge: ; preds = %hw_atl_utils_hw_chip_features_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.else:                                          ; preds = %hw_atl_utils_hw_chip_features_init.exit
  %xor.i38 = xor i32 %call.i37, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor.i38)
  %tobool.not.i39 = icmp ult i32 %xor.i38, 16777216
  %xor.i41 = xor i32 %call.i37, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor.i41)
  %tobool.not.i42 = icmp ult i32 %xor.i41, 16777216
  %or.cond = or i1 %tobool.not.i39, %tobool.not.i42
  %xor.i44 = xor i32 %call.i37, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor.i44)
  %tobool.not.i45 = icmp ult i32 %xor.i44, 16777216
  %or.cond47 = select i1 %or.cond, i1 true, i1 %tobool.not.i45
  br i1 %or.cond47, label %if.else.if.end19_crit_edge, label %do.end

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i37) #9
  br label %cleanup

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %hw_atl_utils_hw_chip_features_init.exit.if.end19_crit_edge
  %aq_fw_2x_ops.sink = phi ptr [ @aq_fw_1x_ops, %hw_atl_utils_hw_chip_features_init.exit.if.end19_crit_edge ], [ @aq_fw_2x_ops, %if.else.if.end19_crit_edge ]
  %3 = ptrtoint ptr %fw_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %aq_fw_2x_ops.sink, ptr %fw_ops, align 4
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %4 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %aq_fw_2x_ops.sink, ptr %aq_fw_ops, align 4
  %5 = ptrtoint ptr %aq_fw_2x_ops.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_fw_2x_ops.sink, align 4
  %call21 = tail call i32 %6(ptr noundef %self) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ -95, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_utils_hw_chip_features_init(ptr noundef %self, ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl_reg_glb_mif_id_get(ptr noundef %self) #6
  %and1 = and i32 %call, 15
  %0 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and1, label %if.end13.fold.split [
    i32 1, label %entry.if.end13_crit_edge
    i32 2, label %if.then5
    i32 10, label %if.then10
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %if.end13.fold.split, %if.then10, %if.then5, %entry.if.end13_crit_edge
  %chip_features.0 = phi i32 [ 41943063, %if.then5 ], [ 75497495, %if.then10 ], [ 25165841, %entry.if.end13_crit_edge ], [ 8388608, %if.end13.fold.split ]
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %chip_features.0, ptr %p, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_get_fw_version(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 24) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hw_atl_utils_ver_match(i32 noundef %ver_expected, i32 noundef %ver_actual) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xor = xor i32 %ver_actual, %ver_expected
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor)
  %tobool.not = icmp ult i32 %xor, 16777216
  %and3 = and i32 %ver_expected, 16777215
  %and4 = and i32 %ver_actual, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and4)
  %cmp = icmp ule i32 %and3, %and4
  %ver_match.0.in = and i1 %tobool.not, %cmp
  ret i1 %ver_match.0.in
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_soft_reset(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 24) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %k.0258 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call1 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 1796) #6
  %call2 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 904) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %call1)
  %cmp3.not = icmp eq i32 %call1, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp3.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %for.inc, label %if.end8

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %k.0258, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %cleanup161

if.end8:                                          ; preds = %for.body
  %rbl_enabled = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 1
  %0 = ptrtoint ptr %rbl_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rbl_enabled, align 4
  %bf.shl = select i1 %cmp4.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %rbl_enabled, align 4
  %xor.i = xor i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor.i)
  %tobool.not.i = icmp ult i32 %xor.i, 16777216
  %and4.i = and i32 %call.i, 16777214
  call void @__sanitizer_cov_trace_const_cmp4(i32 327685, i32 %and4.i)
  %cmp.i = icmp ugt i32 %and4.i, 327685
  %ver_match.0.in.i = and i1 %tobool.not.i, %cmp.i
  br i1 %ver_match.0.in.i, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  %call.i214 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 872) #6
  %or.i = and i32 %call.i214, -33554688
  %and34.i = or i32 %or.i, 33554432
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef %and34.i) #6
  %call14 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call14, 10000000
  %call.i215263 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #6
  %and264 = and i32 %call.i215263, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %cmp18265 = icmp eq i32 %and264, 0
  br i1 %cmp18265, label %if.then12.if.end153_crit_edge, label %if.then12.land.lhs.true_crit_edge

if.then12.land.lhs.true_crit_edge:                ; preds = %if.then12
  br label %land.lhs.true

if.then12.if.end153_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then12.land.lhs.true_crit_edge
  %call22 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %for.end37, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #6
  %call.i215 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #6
  %and = and i32 %call.i215, 255
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %cond.false.if.end153_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cond.false.if.end153_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

for.end37:                                        ; preds = %land.lhs.true
  %call.i217 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #6
  %.pre = and i32 %call.i217, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %cmp40 = icmp eq i32 %.pre, 0
  br i1 %cmp40, label %for.end37.if.end153_crit_edge, label %for.end37.cleanup161_crit_edge

for.end37.cleanup161_crit_edge:                   ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup161

for.end37.if.end153_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

if.else:                                          ; preds = %if.end8
  %xor.i218 = xor i32 %call.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor.i218)
  %tobool.not.i219 = icmp ult i32 %xor.i218, 16777216
  br i1 %tobool.not.i219, label %if.then49, label %if.else.if.end153_crit_edge

if.else.if.end153_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

if.then49:                                        ; preds = %if.else
  %call50 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 840) #6
  %2 = tail call i32 @llvm.umin.i32(i32 %call50, i32 3000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp57.not = icmp eq i32 %2, 0
  br i1 %cmp57.not, label %if.then49.if.end153_crit_edge, label %if.then59

if.then49.if.end153_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

if.then59:                                        ; preds = %if.then49
  %call64 = tail call i64 @ktime_get() #6
  %narrow251 = mul nuw i32 %2, 1000000
  %mul.i = zext i32 %narrow251 to i64
  %add.i221 = add i64 %call64, %mul.i
  %call67259 = tail call i32 @hw_atl_sem_reset1_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67259)
  %cmp68260 = icmp eq i32 %call67259, 1
  br i1 %cmp68260, label %if.then59.if.end105_crit_edge, label %if.then59.land.lhs.true73_crit_edge

if.then59.land.lhs.true73_crit_edge:              ; preds = %if.then59
  br label %land.lhs.true73

if.then59.if.end105_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

land.lhs.true73:                                  ; preds = %cond.false87.land.lhs.true73_crit_edge, %if.then59.land.lhs.true73_crit_edge
  %call74 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call74, i64 %add.i221)
  %cmp3.i223 = icmp sgt i64 %call74, %add.i221
  br i1 %cmp3.i223, label %if.then78, label %cond.false87

if.then78:                                        ; preds = %land.lhs.true73
  %call79 = tail call i32 @hw_atl_sem_reset1_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call79)
  %phi.cmp = icmp eq i32 %call79, 1
  br i1 %phi.cmp, label %if.then78.if.end105_crit_edge, label %do.end102

if.then78.if.end105_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

cond.false87:                                     ; preds = %land.lhs.true73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #6
  %call67 = tail call i32 @hw_atl_sem_reset1_get(ptr noundef %self) #6
  %cmp68 = icmp eq i32 %call67, 1
  br i1 %cmp68, label %cond.false87.if.end105_crit_edge, label %cond.false87.land.lhs.true73_crit_edge

cond.false87.land.lhs.true73_crit_edge:           ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true73

cond.false87.if.end105_crit_edge:                 ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

do.end102:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %if.end105

if.end105:                                        ; preds = %do.end102, %cond.false87.if.end105_crit_edge, %if.then78.if.end105_crit_edge, %if.then59.if.end105_crit_edge
  %call109 = tail call i64 @ktime_get() #6
  %add.i227 = add i64 %call109, %mul.i
  %call112261 = tail call i32 @hw_atl_sem_reset2_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call112261)
  %cmp113262 = icmp eq i32 %call112261, 1
  br i1 %cmp113262, label %if.end105.if.end153_crit_edge, label %if.end105.land.lhs.true118_crit_edge

if.end105.land.lhs.true118_crit_edge:             ; preds = %if.end105
  br label %land.lhs.true118

if.end105.if.end153_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

land.lhs.true118:                                 ; preds = %cond.false132.land.lhs.true118_crit_edge, %if.end105.land.lhs.true118_crit_edge
  %call119 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call119, i64 %add.i227)
  %cmp3.i229 = icmp sgt i64 %call119, %add.i227
  br i1 %cmp3.i229, label %if.then123, label %cond.false132

if.then123:                                       ; preds = %land.lhs.true118
  %call124 = tail call i32 @hw_atl_sem_reset2_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call124)
  %phi.cmp212 = icmp eq i32 %call124, 1
  br i1 %phi.cmp212, label %if.then123.if.end153_crit_edge, label %do.end147

if.then123.if.end153_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

cond.false132:                                    ; preds = %land.lhs.true118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %call112 = tail call i32 @hw_atl_sem_reset2_get(ptr noundef %self) #6
  %cmp113 = icmp eq i32 %call112, 1
  br i1 %cmp113, label %cond.false132.if.end153_crit_edge, label %cond.false132.land.lhs.true118_crit_edge

cond.false132.land.lhs.true118_crit_edge:         ; preds = %cond.false132
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true118

cond.false132.if.end153_crit_edge:                ; preds = %cond.false132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

do.end147:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %if.end153

if.end153:                                        ; preds = %do.end147, %cond.false132.if.end153_crit_edge, %if.then123.if.end153_crit_edge, %if.end105.if.end153_crit_edge, %if.then49.if.end153_crit_edge, %if.else.if.end153_crit_edge, %for.end37.if.end153_crit_edge, %cond.false.if.end153_crit_edge, %if.then12.if.end153_crit_edge
  %5 = ptrtoint ptr %rbl_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load155 = load i8, ptr %rbl_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load155)
  %tobool156.not = icmp sgt i8 %bf.load155, -1
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1028, i32 noundef 16609) #6
  br i1 %tobool156.not, label %if.end153.while.body.i_crit_edge, label %if.then157

if.end153.while.body.i_crit_edge:                 ; preds = %if.end153
  br label %while.body.i

if.then157:                                       ; preds = %if.end153
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 928, i32 noundef 1) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 12968, i32 noundef 0) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 904, i32 noundef 57005) #6
  %call.i232 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 1340) #6
  %or.i233 = or i32 %call.i232, 16
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1340, i32 noundef %or.i233) #6
  tail call void @hw_atl_rx_rx_reg_res_dis_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_tx_tx_reg_res_dis_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @aq_hw_write_reg_bit(ptr noundef %self, i32 noundef 16384, i32 noundef 536870912, i32 noundef 29, i32 noundef 0) #6
  %call1.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 0) #6
  %and.i = and i32 %call1.i, -49153
  %or2.i = or i32 %and.i, 32768
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 0, i32 noundef %or2.i) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1028, i32 noundef 16608) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then157
  %k.078.i = phi i32 [ 0, %if.then157 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call3.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 904) #6
  %trunc.i = trunc i32 %call3.i to i16
  %6 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %trunc.i, label %for.body.i.for.body22.i.preheader_crit_edge [
    i16 0, label %for.body.i.if.end.i_crit_edge
    i16 -8531, label %for.body.i.if.end.i_crit_edge296
    i16 -3673, label %for.body.i.do.end16.i_crit_edge
  ]

for.body.i.do.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.i

for.body.i.if.end.i_crit_edge296:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.i.for.body22.i.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22.i.preheader

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  %inc.i = add nuw nsw i32 %k.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  %trunc.i.le = trunc i32 %call3.i to i16
  %17 = zext i16 %trunc.i.le to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %trunc.i.le, label %for.end.i.for.body22.i.preheader_crit_edge [
    i16 0, label %for.end.i.do.end.i_crit_edge
    i16 -8531, label %for.end.i.do.end.i_crit_edge297
    i16 -3673, label %for.end.i.do.end16.i_crit_edge
  ]

for.end.i.do.end16.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.i

for.end.i.do.end.i_crit_edge297:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.end.i.for.body22.i.preheader_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22.i.preheader

for.body22.i.preheader:                           ; preds = %for.end.i.for.body22.i.preheader_crit_edge, %for.body.i.for.body22.i.preheader_crit_edge
  br label %for.body22.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %for.end.i.do.end.i_crit_edge297
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %cleanup161

do.end16.i:                                       ; preds = %for.end.i.do.end16.i_crit_edge, %for.body.i.do.end16.i_crit_edge
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %cleanup161

for.body22.i:                                     ; preds = %while.body31.preheader.i.for.body22.i_crit_edge, %for.body22.i.preheader
  %k.180.i = phi i32 [ %inc34.i, %while.body31.preheader.i.for.body22.i_crit_edge ], [ 0, %for.body22.i.preheader ]
  %call23.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %while.body31.preheader.i, label %for.end35.i

while.body31.preheader.i:                         ; preds = %for.body22.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  %inc34.i = add nuw nsw i32 %k.180.i, 1
  %exitcond83.not.i = icmp eq i32 %inc34.i, 1000
  br i1 %exitcond83.not.i, label %while.body31.preheader.i.do.end40.i_crit_edge, label %while.body31.preheader.i.for.body22.i_crit_edge

while.body31.preheader.i.for.body22.i_crit_edge:  ; preds = %while.body31.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22.i

while.body31.preheader.i.do.end40.i_crit_edge:    ; preds = %while.body31.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40.i

for.end35.i:                                      ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %k.180.i)
  %cmp36.i = icmp eq i32 %k.180.i, 1000
  br i1 %cmp36.i, label %for.end35.i.do.end40.i_crit_edge, label %while.body48.preheader.i

for.end35.i.do.end40.i_crit_edge:                 ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40.i

while.body48.preheader.i:                         ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  br label %cleanup161

do.end40.i:                                       ; preds = %for.end35.i.do.end40.i_crit_edge, %while.body31.preheader.i.do.end40.i_crit_edge
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup161

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end153.while.body.i_crit_edge
  %__ms.0107.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 50, %if.end153.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.0107.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  %tobool.not.i235 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i235, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %call.i236 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 1340) #6
  %or.i237 = or i32 %call.i236, 16
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1340, i32 noundef %or.i237) #6
  %call1.i238 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 0) #6
  %and.i239 = and i32 %call1.i238, 16383
  %or2.i240 = or i32 %and.i239, 32768
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 0, i32 noundef %or2.i240) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1028, i32 noundef 32992) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 12968, i32 noundef 0) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1312, i32 noundef 1) #6
  %call3.i241 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 1340) #6
  %or4.i = or i32 %call3.i241, 16
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1340, i32 noundef %or4.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #6
  %and11.i = and i32 %call3.i241, -17
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1340, i32 noundef %and11.i) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1028, i32 noundef 98528) #6
  br label %for.body.i242

for.body.i242:                                    ; preds = %while.body19.preheader.i.for.body.i242_crit_edge, %while.end.i
  %k.0110.i = phi i32 [ 0, %while.end.i ], [ %inc.i243, %while.body19.preheader.i.for.body.i242_crit_edge ]
  %call12.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 1796) #6
  %and13.i = and i32 %call12.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %while.body19.preheader.i, label %if.end24.i

while.body19.preheader.i:                         ; preds = %for.body.i242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #6
  %inc.i243 = add nuw nsw i32 %k.0110.i, 1
  %exitcond.not.i244 = icmp eq i32 %inc.i243, 1000
  br i1 %exitcond.not.i244, label %do.end.i246, label %while.body19.preheader.i.for.body.i242_crit_edge

while.body19.preheader.i.for.body.i242_crit_edge: ; preds = %while.body19.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i242

do.end.i246:                                      ; preds = %while.body19.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %cleanup161

if.end24.i:                                       ; preds = %for.body.i242
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 1028, i32 noundef 32992) #6
  br label %while.body29.i

while.body29.i:                                   ; preds = %while.body29.i.while.body29.i_crit_edge, %if.end24.i
  %__ms25.0111.i = phi i32 [ 50, %if.end24.i ], [ %dec27.i, %while.body29.i.while.body29.i_crit_edge ]
  %dec27.i = add nsw i32 %__ms25.0111.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #6
  %tobool28.not.i = icmp eq i32 %dec27.i, 0
  br i1 %tobool28.not.i, label %while.end30.i, label %while.body29.i.while.body29.i_crit_edge

while.body29.i.while.body29.i_crit_edge:          ; preds = %while.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body29.i

while.end30.i:                                    ; preds = %while.body29.i
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 928, i32 noundef 1) #6
  tail call void @hw_atl_rx_rx_reg_res_dis_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_tx_tx_reg_res_dis_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @aq_hw_write_reg_bit(ptr noundef %self, i32 noundef 16384, i32 noundef 536870912, i32 noundef 29, i32 noundef 0) #6
  %call31.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 0) #6
  %and32.i = and i32 %call31.i, 16383
  %or33.i = or i32 %and32.i, 32768
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 0, i32 noundef %or33.i) #6
  br label %for.body36.i

for.body36.i:                                     ; preds = %while.body45.preheader.i.for.body36.i_crit_edge, %while.end30.i
  %k.1113.i = phi i32 [ 0, %while.end30.i ], [ %inc51.i, %while.body45.preheader.i.for.body36.i_crit_edge ]
  %call37.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %while.body45.preheader.i, label %for.end52.i

while.body45.preheader.i:                         ; preds = %for.body36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #6
  %inc51.i = add nuw nsw i32 %k.1113.i, 1
  %exitcond115.not.i = icmp eq i32 %inc51.i, 1000
  br i1 %exitcond115.not.i, label %while.body45.preheader.i.do.end57.i_crit_edge, label %while.body45.preheader.i.for.body36.i_crit_edge

while.body45.preheader.i.for.body36.i_crit_edge:  ; preds = %while.body45.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36.i

while.body45.preheader.i.do.end57.i_crit_edge:    ; preds = %while.body45.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57.i

for.end52.i:                                      ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %k.1113.i)
  %cmp53.i = icmp eq i32 %k.1113.i, 1000
  br i1 %cmp53.i, label %for.end52.i.do.end57.i_crit_edge, label %while.body65.preheader.i

for.end52.i.do.end57.i_crit_edge:                 ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57.i

while.body65.preheader.i:                         ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #6
  br label %cleanup161

do.end57.i:                                       ; preds = %for.end52.i.do.end57.i_crit_edge, %while.body45.preheader.i.do.end57.i_crit_edge
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup161

cleanup161:                                       ; preds = %do.end57.i, %while.body65.preheader.i, %do.end.i246, %do.end40.i, %while.body48.preheader.i, %do.end16.i, %do.end.i, %for.end37.cleanup161_crit_edge, %do.end
  %retval.1 = phi i32 [ -95, %do.end ], [ -110, %for.end37.cleanup161_crit_edge ], [ -5, %do.end.i ], [ -95, %do.end16.i ], [ -5, %do.end40.i ], [ 0, %while.body48.preheader.i ], [ -5, %do.end.i246 ], [ -5, %do.end57.i ], [ 0, %while.body65.preheader.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_utils_mpi_set_state(ptr noundef %self, i32 noundef %state) #0 align 64 {
entry:
  %mbox.i55 = alloca %struct.hw_atl_utils_mbox_header, align 4
  %mbox.i = alloca %struct.hw_atl_utils_mbox_header, align 4
  %mbox = alloca %struct.hw_atl_utils_mbox_header, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 872) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mbox) #6
  %0 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mbox, align 4, !annotation !62
  %1 = getelementptr inbounds %struct.hw_atl_utils_mbox_header, ptr %mbox, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !62
  %3 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %state, label %entry.if.else_crit_edge [
    i32 1, label %if.then
    i32 0, label %entry.if.then32_crit_edge
    i32 4, label %entry.if.then32_crit_edge64
  ]

entry.if.then32_crit_edge64:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

entry.if.then32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %entry
  %mbox_addr.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %4 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbox_addr.i, align 4
  %call.i = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %5, ptr noundef nonnull %mbox, i32 noundef 3) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %call3 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call3, 100000000
  %8 = getelementptr inbounds %struct.hw_atl_utils_mbox_header, ptr %mbox.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mbox.i) #6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !62
  %10 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mbox_addr.i, align 4
  %call.i.i59 = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %11, ptr noundef nonnull %mbox.i, i32 noundef 3) #6
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mbox.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp8.not60 = icmp eq i32 %7, %13
  br i1 %cmp8.not60, label %if.then.land.lhs.true_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call10 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call10, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call10, %add.i
  br i1 %cmp3.i, label %if.then13, label %cond.false

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mbox.i55) #6
  %14 = getelementptr inbounds %struct.hw_atl_utils_mbox_header, ptr %mbox.i55, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !62
  %16 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbox_addr.i, align 4
  %call.i.i57 = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %17, ptr noundef nonnull %mbox.i55, i32 noundef 3) #6
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mbox.i55) #6
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mbox.i) #6
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %8, align 4, !annotation !62
  %22 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbox_addr.i, align 4
  %call.i.i = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %23, ptr noundef nonnull %mbox.i, i32 noundef 3) #6
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mbox.i) #6
  %cmp8.not = icmp eq i32 %7, %25
  br i1 %cmp8.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then13, %if.then.for.end_crit_edge
  %storemerge = phi i32 [ %19, %if.then13 ], [ %13, %if.then.for.end_crit_edge ], [ %25, %cond.false.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %storemerge)
  %cmp25.not = icmp eq i32 %7, %storemerge
  br i1 %cmp25.not, label %for.end.err_exit_crit_edge, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.end.err_exit_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.then32:                                        ; preds = %entry.if.then32_crit_edge, %entry.if.then32_crit_edge64
  %or = or i32 %call, 33554432
  br label %if.end33

if.else:                                          ; preds = %for.end.if.else_crit_edge, %entry.if.else_crit_edge
  %and = and i32 %call, -33554433
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then32
  %val.0 = phi i32 [ %or, %if.then32 ], [ %and, %if.else ]
  %and34 = and i32 %val.0, -256
  %and35 = and i32 %state, 255
  %or36 = or i32 %and34, %and35
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef %or36) #6
  br label %err_exit

err_exit:                                         ; preds = %if.end33, %for.end.err_exit_crit_edge
  %err.1 = phi i32 [ -110, %for.end.err_exit_crit_edge ], [ 0, %if.end33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mbox) #6
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_sem_reset1_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_sem_reset2_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %a, ptr nocapture noundef writeonly %p, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  %call2161 = tail call i32 @hw_atl_sem_ram_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2161)
  %cmp162 = icmp eq i32 %call2161, 1
  br i1 %cmp162, label %entry.if.end24_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call3 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call3, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #6
  %call2 = tail call i32 @hw_atl_sem_ram_get(ptr noundef %self) #6
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %cond.false.if.end24_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cond.false.if.end24_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.end:                                          ; preds = %land.lhs.true
  %call7 = tail call i32 @hw_atl_sem_ram_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp16 = icmp eq i32 %call7, 1
  br i1 %cmp16, label %for.end.if.end24_crit_edge, label %if.then18

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then18:                                        ; preds = %for.end
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %self, i32 noundef 1, i32 noundef 2) #6
  %call19 = tail call i32 @hw_atl_sem_ram_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cleanup102_crit_edge, label %if.then18.if.end24_crit_edge

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then18.cleanup102_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup102

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %for.end.if.end24_crit_edge, %cond.false.if.end24_crit_edge, %entry.if.end24_crit_edge
  %tobool27.not170 = phi i1 [ true, %entry.if.end24_crit_edge ], [ false, %if.then18.if.end24_crit_edge ], [ true, %for.end.if.end24_crit_edge ], [ true, %cond.false.if.end24_crit_edge ]
  %err.1 = phi i32 [ 0, %entry.if.end24_crit_edge ], [ -110, %if.then18.if.end24_crit_edge ], [ 0, %for.end.if.end24_crit_edge ], [ 0, %cond.false.if.end24_crit_edge ]
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 520, i32 noundef %a) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %tobool26.not169 = icmp ne i32 %cnt, 0
  %or.cond171 = and i1 %tobool26.not169, %tobool27.not170
  br i1 %or.cond171, label %for.body.lr.ph, label %if.end24.for.end101_crit_edge

if.end24.for.end101_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end101

for.body.lr.ph:                                   ; preds = %if.end24
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end99.for.body_crit_edge, %for.body.lr.ph
  %dec175 = phi i32 [ %cnt, %for.body.lr.ph ], [ %dec, %if.end99.for.body_crit_edge ]
  %a.addr.0173 = phi i32 [ %a, %for.body.lr.ph ], [ %add, %if.end99.for.body_crit_edge ]
  %p.addr.0172 = phi ptr [ %p, %for.body.lr.ph ], [ %incdec.ptr, %if.end99.for.body_crit_edge ]
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 512, i32 noundef 32768) #6
  %1 = ptrtoint ptr %chip_features to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip_features, align 8
  %and = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %call66 = tail call i64 @ktime_get() #6
  %add.i149 = add i64 %call66, 1000000
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %for.body
  %call.i163 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 520) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i163, i32 %a.addr.0173)
  %cmp37.not164 = icmp eq i32 %call.i163, %a.addr.0173
  br i1 %cmp37.not164, label %if.then29.land.lhs.true41_crit_edge, label %if.then29.for.end59_crit_edge

if.then29.for.end59_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

if.then29.land.lhs.true41_crit_edge:              ; preds = %if.then29
  br label %land.lhs.true41

land.lhs.true41:                                  ; preds = %cond.false53.land.lhs.true41_crit_edge, %if.then29.land.lhs.true41_crit_edge
  %call42 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call42, i64 %add.i149)
  %cmp3.i145 = icmp sgt i64 %call42, %add.i149
  br i1 %cmp3.i145, label %if.then45, label %cond.false53

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  %call.i148 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 520) #6
  br label %for.end59

cond.false53:                                     ; preds = %land.lhs.true41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #6
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 520) #6
  %cmp37.not = icmp eq i32 %call.i, %a.addr.0173
  br i1 %cmp37.not, label %cond.false53.land.lhs.true41_crit_edge, label %cond.false53.for.end59_crit_edge

cond.false53.for.end59_crit_edge:                 ; preds = %cond.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

cond.false53.land.lhs.true41_crit_edge:           ; preds = %cond.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true41

for.end59:                                        ; preds = %cond.false53.for.end59_crit_edge, %if.then45, %if.then29.for.end59_crit_edge
  %val.1 = phi i32 [ %call.i148, %if.then45 ], [ %call.i163, %if.then29.for.end59_crit_edge ], [ %call.i, %cond.false53.for.end59_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.1, i32 %a.addr.0173)
  %cmp61.not = icmp eq i32 %val.1, %a.addr.0173
  %cond62 = select i1 %cmp61.not, i32 -110, i32 0
  br label %if.end99

if.else:                                          ; preds = %for.body
  %call.i150165 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 512) #6
  %and70166 = and i32 %call.i150165, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70166)
  %tobool71.not167 = icmp eq i32 %and70166, 0
  br i1 %tobool71.not167, label %if.else.for.end93.thread_crit_edge, label %if.else.land.lhs.true75_crit_edge

if.else.land.lhs.true75_crit_edge:                ; preds = %if.else
  br label %land.lhs.true75

if.else.for.end93.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end93.thread

land.lhs.true75:                                  ; preds = %cond.false87.land.lhs.true75_crit_edge, %if.else.land.lhs.true75_crit_edge
  %call76 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call76, i64 %add.i149)
  %cmp3.i152 = icmp sgt i64 %call76, %add.i149
  br i1 %cmp3.i152, label %for.end93, label %cond.false87

cond.false87:                                     ; preds = %land.lhs.true75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %call.i150 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 512) #6
  %and70 = and i32 %call.i150, 256
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %cond.false87.for.end93.thread_crit_edge, label %cond.false87.land.lhs.true75_crit_edge

cond.false87.land.lhs.true75_crit_edge:           ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true75

cond.false87.for.end93.thread_crit_edge:          ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end93.thread

for.end93:                                        ; preds = %land.lhs.true75
  %call.i155 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 512) #6
  %.pre = and i32 %call.i155, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool96.not = icmp eq i32 %.pre, 0
  br i1 %tobool96.not, label %for.end93.for.end93.thread_crit_edge, label %for.end93.if.end99_crit_edge

for.end93.if.end99_crit_edge:                     ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

for.end93.for.end93.thread_crit_edge:             ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end93.thread

for.end93.thread:                                 ; preds = %for.end93.for.end93.thread_crit_edge, %cond.false87.for.end93.thread_crit_edge, %if.else.for.end93.thread_crit_edge
  br label %if.end99

if.end99:                                         ; preds = %for.end93.thread, %for.end93.if.end99_crit_edge, %for.end59
  %err.3 = phi i32 [ %cond62, %for.end59 ], [ 0, %for.end93.thread ], [ -110, %for.end93.if.end99_crit_edge ]
  %call100 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 524) #6
  %incdec.ptr = getelementptr i32, ptr %p.addr.0172, i32 1
  %5 = ptrtoint ptr %p.addr.0172 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call100, ptr %p.addr.0172, align 4
  %add = add i32 %a.addr.0173, 4
  %dec = add i32 %dec175, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool26.not = icmp ne i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool27.not = icmp eq i32 %err.3, 0
  %or.cond = select i1 %tobool26.not, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %if.end99.for.body_crit_edge, label %if.end99.for.end101_crit_edge

if.end99.for.end101_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end101

if.end99.for.body_crit_edge:                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end101:                                       ; preds = %if.end99.for.end101_crit_edge, %if.end24.for.end101_crit_edge
  %err.2.lcssa = phi i32 [ %err.1, %if.end24.for.end101_crit_edge ], [ %err.3, %if.end99.for.end101_crit_edge ]
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %self, i32 noundef 1, i32 noundef 2) #6
  br label %cleanup102

cleanup102:                                       ; preds = %for.end101, %if.then18.cleanup102_crit_edge
  %retval.0 = phi i32 [ -62, %if.then18.cleanup102_crit_edge ], [ %err.2.lcssa, %for.end101 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_sem_ram_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_glb_cpu_sem_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_write_fwcfg_dwords(ptr noundef %self, ptr nocapture noundef readonly %p, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rpc_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 16
  %0 = ptrtoint ptr %rpc_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rpc_addr, align 8
  %call = tail call fastcc i32 @hw_atl_utils_fw_upload_dwords(ptr noundef %self, i32 noundef %1, ptr noundef %p, i32 noundef %cnt, i32 noundef -2147483648)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_atl_utils_fw_upload_dwords(ptr noundef %self, i32 noundef %addr, ptr nocapture noundef readonly %p, i32 noundef %cnt, i32 noundef %area) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 100000000
  %call265 = tail call i32 @hw_atl_sem_ram_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call265)
  %cmp66 = icmp eq i32 %call265, 1
  br i1 %cmp66, label %entry.if.end19_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call3 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call3, %add.i
  br i1 %cmp3.i, label %if.then6, label %cond.false

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call i32 @hw_atl_sem_ram_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %phi.cmp = icmp eq i32 %call7, 1
  br i1 %phi.cmp, label %if.then6.if.end19_crit_edge, label %if.then6.err_exit_crit_edge

if.then6.err_exit_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #6
  %call2 = tail call i32 @hw_atl_sem_ram_get(ptr noundef %self) #6
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %cond.false.if.end19_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cond.false.if.end19_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %cond.false.if.end19_crit_edge, %if.then6.if.end19_crit_edge, %entry.if.end19_crit_edge
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %1 = ptrtoint ptr %chip_features to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip_features, align 8
  %and = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  %3 = zext i32 %area to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %area, label %if.then21.sw.epilog.i_crit_edge [
    i32 -2147483648, label %sw.bb.i
    i32 536870912, label %sw.bb1.i
  ]

if.then21.sw.epilog.i_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %rpc_addr.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 16
  %4 = ptrtoint ptr %rpc_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rpc_addr.i, align 8
  %sub.i = sub i32 %addr, %5
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %settings_addr.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 17
  %6 = ptrtoint ptr %settings_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %settings_addr.i, align 4
  %sub2.i = sub i32 %addr, %7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i, %if.then21.sw.epilog.i_crit_edge
  %offset.0.i = phi i32 [ %addr, %if.then21.sw.epilog.i_crit_edge ], [ %sub2.i, %sw.bb1.i ], [ %sub.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp56.not.i = icmp eq i32 %cnt, 0
  br i1 %cmp56.not.i, label %sw.epilog.i.if.end27_crit_edge, label %for.body.preheader.i

sw.epilog.i.if.end27_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.body.preheader.i:                             ; preds = %sw.epilog.i
  %div51.i = lshr i32 %offset.0.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %data_offset.058.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %offset.157.i = phi i32 [ %inc27.i, %for.inc.i.for.body.i_crit_edge ], [ %div51.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %p, i32 %data_offset.058.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 808, i32 noundef %9) #6
  %mul.i = shl i32 %offset.157.i, 2
  %and.i = and i32 %mul.i, 65532
  %or.i = or i32 %and.i, %area
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 812, i32 noundef %or.i) #6
  tail call void @hw_atl_mcp_up_force_intr_set(ptr noundef %self, i32 noundef 1) #6
  %call.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i, 10000000
  %call553.i = tail call i32 @hw_atl_scrpad12_get(ptr noundef %self) #6
  %and654.i = and i32 %call553.i, -268435456
  call void @__sanitizer_cov_trace_cmp4(i32 %and654.i, i32 %area)
  %cmp7.not55.i = icmp eq i32 %and654.i, %area
  br i1 %cmp7.not55.i, label %for.body.i.land.lhs.true.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge
  %call8.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call8.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call8.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 @hw_atl_scrpad12_get(ptr noundef %self) #6
  %.pre.i = and i32 %call12.i, -268435456
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #6
  %call5.i = tail call i32 @hw_atl_scrpad12_get(ptr noundef %self) #6
  %and6.i = and i32 %call5.i, -268435456
  %cmp7.not.i = icmp eq i32 %and6.i, %area
  br i1 %cmp7.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.for.end.i_crit_edge

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then11.i, %for.body.i.for.end.i_crit_edge
  %and22.pre-phi.i = phi i32 [ %and654.i, %for.body.i.for.end.i_crit_edge ], [ %.pre.i, %if.then11.i ], [ %and6.i, %cond.false.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.pre-phi.i, i32 %area)
  %cmp23.not.i = icmp eq i32 %and22.pre-phi.i, %area
  br i1 %cmp23.not.i, label %for.end.i.if.end24_crit_edge, label %for.inc.i

for.end.i.if.end24_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.inc.i:                                        ; preds = %for.end.i
  %inc.i = add nuw i32 %data_offset.058.i, 1
  %inc27.i = add i32 %offset.157.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cnt
  br i1 %exitcond.not.i, label %for.inc.i.if.end27_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end27_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else:                                          ; preds = %if.end19
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 520, i32 noundef %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp42.not.i = icmp eq i32 %cnt, 0
  br i1 %cmp42.not.i, label %if.else.if.end27_crit_edge, label %if.else.for.body.i51_crit_edge

if.else.for.body.i51_crit_edge:                   ; preds = %if.else
  br label %for.body.i51

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.cond.i:                                       ; preds = %for.end.i57
  %inc.i46 = add nuw i32 %offset.043.i, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, %cnt
  br i1 %exitcond.not.i47, label %for.cond.i.if.end27_crit_edge, label %for.cond.i.for.body.i51_crit_edge

for.cond.i.for.body.i51_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i51

for.cond.i.if.end27_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.body.i51:                                     ; preds = %for.cond.i.for.body.i51_crit_edge, %if.else.for.body.i51_crit_edge
  %offset.043.i = phi i32 [ %inc.i46, %for.cond.i.for.body.i51_crit_edge ], [ 0, %if.else.for.body.i51_crit_edge ]
  %arrayidx.i48 = getelementptr i32, ptr %p, i32 %offset.043.i
  %11 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i48, align 4
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 524, i32 noundef %12) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 512, i32 noundef 49152) #6
  %call.i49 = tail call i64 @ktime_get() #6
  %add.i.i50 = add i64 %call.i49, 10000000
  %call.i39.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 512) #6
  %and40.i = and i32 %call.i39.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %cmp441.i = icmp eq i32 %and40.i, 0
  br i1 %cmp441.i, label %for.body.i51.for.end.i57_crit_edge, label %for.body.i51.land.lhs.true.i54_crit_edge

for.body.i51.land.lhs.true.i54_crit_edge:         ; preds = %for.body.i51
  br label %land.lhs.true.i54

for.body.i51.for.end.i57_crit_edge:               ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i57

land.lhs.true.i54:                                ; preds = %cond.false.i56.land.lhs.true.i54_crit_edge, %for.body.i51.land.lhs.true.i54_crit_edge
  %call5.i52 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i52, i64 %add.i.i50)
  %cmp3.i.i53 = icmp sgt i64 %call5.i52, %add.i.i50
  br i1 %cmp3.i.i53, label %if.then8.i, label %cond.false.i56

if.then8.i:                                       ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #8
  %call.i37.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 512) #6
  br label %for.end.i57

cond.false.i56:                                   ; preds = %land.lhs.true.i54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #6
  %call.i.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 512) #6
  %and.i55 = and i32 %call.i.i, 256
  %cmp4.i = icmp eq i32 %and.i55, 0
  br i1 %cmp4.i, label %cond.false.i56.for.end.i57_crit_edge, label %cond.false.i56.land.lhs.true.i54_crit_edge

cond.false.i56.land.lhs.true.i54_crit_edge:       ; preds = %cond.false.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i54

cond.false.i56.for.end.i57_crit_edge:             ; preds = %cond.false.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i57

for.end.i57:                                      ; preds = %cond.false.i56.for.end.i57_crit_edge, %if.then8.i, %for.body.i51.for.end.i57_crit_edge
  %val.0.i = phi i32 [ %call.i37.i, %if.then8.i ], [ %call.i39.i, %for.body.i51.for.end.i57_crit_edge ], [ %call.i.i, %cond.false.i56.for.end.i57_crit_edge ]
  %and18.i = and i32 %val.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %cmp19.i = icmp eq i32 %and18.i, 0
  br i1 %cmp19.i, label %for.cond.i, label %for.end.i57.if.end24_crit_edge

for.end.i57.if.end24_crit_edge:                   ; preds = %for.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %for.end.i57.if.end24_crit_edge, %for.end.i.if.end24_crit_edge
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %self, i32 noundef 1, i32 noundef 2) #6
  br label %err_exit

if.end27:                                         ; preds = %for.cond.i.if.end27_crit_edge, %if.else.if.end27_crit_edge, %for.inc.i.if.end27_crit_edge, %sw.epilog.i.if.end27_crit_edge
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %self, i32 noundef 1, i32 noundef 2) #6
  %call28 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  br label %err_exit

err_exit:                                         ; preds = %if.end27, %if.end24, %if.then6.err_exit_crit_edge
  %err.1 = phi i32 [ -110, %if.end24 ], [ %call28, %if.end27 ], [ -110, %if.then6.err_exit_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_write_fwsettings_dwords(ptr noundef %self, i32 noundef %offset, ptr nocapture noundef readonly %p, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %settings_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 17
  %0 = ptrtoint ptr %settings_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %settings_addr, align 4
  %add = add i32 %1, %offset
  %call = tail call fastcc i32 @hw_atl_utils_fw_upload_dwords(ptr noundef %self, i32 noundef %add, ptr noundef %p, i32 noundef %cnt, i32 noundef 536870912)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_fw_rpc_call(ptr noundef %self, i32 noundef %rpc_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %0 = ptrtoint ptr %chip_features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_features, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end:                                           ; preds = %entry
  %rpc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 19
  %sub = add i32 %rpc_size, 3
  %div11 = lshr i32 %sub, 2
  %rpc_addr.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 16
  %2 = ptrtoint ptr %rpc_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpc_addr.i, align 8
  %call.i = tail call fastcc i32 @hw_atl_utils_fw_upload_dwords(ptr noundef %self, i32 noundef %3, ptr noundef %rpc, i32 noundef %div11, i32 noundef -2147483648) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.err_exit_crit_edge, label %if.end2

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rpc_tid = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 18
  %4 = ptrtoint ptr %rpc_tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rpc_tid, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rpc_tid, align 8
  %sw.sroa.5.0.insert.ext = and i32 %rpc_size, 65535
  %sw.sroa.0.0.insert.shift = shl i32 %inc, 16
  %sw.sroa.0.0.insert.insert = or i32 %sw.sroa.0.0.insert.shift, %sw.sroa.5.0.insert.ext
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 824, i32 noundef %sw.sroa.0.0.insert.insert) #6
  br label %err_exit

err_exit:                                         ; preds = %if.end2, %if.end.err_exit_crit_edge, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end.err_exit_crit_edge ], [ %call.i, %if.end2 ], [ -1, %entry.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_fw_rpc_wait(ptr noundef %self, ptr noundef writeonly %rpc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rpc_tid = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 18
  %chip_features.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %rpc.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 19
  %rpc_addr.i.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %do.cond62, %entry
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 824) #6
  %sw.sroa.0.0.extract.shift = lshr i32 %call, 16
  %0 = ptrtoint ptr %rpc_tid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sw.sroa.0.0.extract.shift, ptr %rpc_tid, align 8
  %call1 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call1, 100000000
  %call.i150 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 828) #6
  %fw.sroa.0.0.extract.shift151 = lshr i32 %call.i150, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sw.sroa.0.0.extract.shift, i32 %fw.sroa.0.0.extract.shift151)
  %cmp152 = icmp eq i32 %sw.sroa.0.0.extract.shift, %fw.sroa.0.0.extract.shift151
  br i1 %cmp152, label %do.body.if.end33_crit_edge, label %do.body.land.lhs.true_crit_edge

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  br label %land.lhs.true

do.body.if.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.body.land.lhs.true_crit_edge
  %call9 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call9, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 828) #6
  %fw.sroa.0.0.extract.shift = lshr i32 %call.i, 16
  %cmp = icmp eq i32 %sw.sroa.0.0.extract.shift, %fw.sroa.0.0.extract.shift
  br i1 %cmp, label %cond.false.if.end33_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cond.false.if.end33_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

for.end:                                          ; preds = %land.lhs.true
  %call.i138 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 828) #6
  %fw.sroa.0.0.extract.shift114 = lshr i32 %call.i138, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %sw.sroa.0.0.extract.shift, i32 %fw.sroa.0.0.extract.shift114)
  %cmp28 = icmp eq i32 %sw.sroa.0.0.extract.shift, %fw.sroa.0.0.extract.shift114
  br i1 %cmp28, label %for.end.if.end33_crit_edge, label %for.end.err_exit_crit_edge

for.end.err_exit_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %for.end.if.end33_crit_edge, %cond.false.if.end33_crit_edge, %do.body.if.end33_crit_edge
  %fw.sroa.8.0.in161 = phi i32 [ %call.i138, %for.end.if.end33_crit_edge ], [ %call.i150, %do.body.if.end33_crit_edge ], [ %call.i, %cond.false.if.end33_crit_edge ]
  %call34 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.err_exit_crit_edge, label %if.end38

if.end33.err_exit_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end38:                                         ; preds = %if.end33
  %conv39 = and i32 %fw.sroa.8.0.in161, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv39)
  %cmp40 = icmp eq i32 %conv39, 65535
  br i1 %cmp40, label %if.then42, label %do.end73

if.then42:                                        ; preds = %if.end38
  %conv44 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %conv44)
  %cmp45 = icmp ugt i32 %conv44, 88
  br i1 %cmp45, label %do.end, label %if.end53

do.end:                                           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv44) #9
  br label %err_exit

if.end53:                                         ; preds = %if.then42
  %2 = ptrtoint ptr %chip_features.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_features.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end53.err_exit_crit_edge, label %if.end.i

if.end53.err_exit_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end.i:                                         ; preds = %if.end53
  %sub.i = add nuw nsw i32 %conv44, 3
  %div11.i = lshr i32 %sub.i, 2
  %4 = ptrtoint ptr %rpc_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rpc_addr.i.i, align 8
  %call.i.i = tail call fastcc i32 @hw_atl_utils_fw_upload_dwords(ptr noundef %self, i32 noundef %5, ptr noundef %rpc.i, i32 noundef %div11.i, i32 noundef -2147483648) #6
  %cmp.i139 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i139, label %if.end.i.err_exit_crit_edge, label %do.cond62

if.end.i.err_exit_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

do.cond62:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rpc_tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rpc_tid, align 8
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %rpc_tid, align 8
  %sw.sroa.0.0.insert.shift.i = shl i32 %inc.i, 16
  %sw.sroa.0.0.insert.insert.i = or i32 %sw.sroa.0.0.insert.shift.i, %conv44
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 824, i32 noundef %sw.sroa.0.0.insert.insert.i) #6
  br label %do.body

do.end73:                                         ; preds = %if.end38
  %tobool74.not = icmp eq ptr %rpc, null
  br i1 %tobool74.not, label %do.end73.err_exit_crit_edge, label %if.then75

do.end73.err_exit_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.then75:                                        ; preds = %do.end73
  %fw.sroa.8.0.le = trunc i32 %fw.sroa.8.0.in161 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %fw.sroa.8.0.le)
  %tobool77.not = icmp eq i16 %fw.sroa.8.0.le, 0
  br i1 %tobool77.not, label %if.then75.if.end100_crit_edge, label %if.then78

if.then75.if.end100_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then78:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %conv39)
  %cmp81 = icmp ugt i32 %conv39, 88
  br i1 %cmp81, label %do.end86, label %if.end91

do.end86:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv39) #9
  br label %err_exit

if.end91:                                         ; preds = %if.then78
  %8 = ptrtoint ptr %rpc_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rpc_addr.i.i, align 8
  %sub = add nuw nsw i32 %conv39, 3
  %div137 = lshr i32 %sub, 2
  %call95 = tail call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %9, ptr noundef %rpc.i, i32 noundef %div137)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end91.err_exit_crit_edge, label %if.end91.if.end100_crit_edge

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.end91.err_exit_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end100:                                        ; preds = %if.end91.if.end100_crit_edge, %if.then75.if.end100_crit_edge
  %err.1 = phi i32 [ 0, %if.end91.if.end100_crit_edge ], [ %call34, %if.then75.if.end100_crit_edge ]
  %10 = ptrtoint ptr %rpc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rpc.i, ptr %rpc, align 4
  br label %err_exit

err_exit:                                         ; preds = %if.end100, %if.end91.err_exit_crit_edge, %do.end86, %do.end73.err_exit_crit_edge, %if.end.i.err_exit_crit_edge, %if.end53.err_exit_crit_edge, %do.end, %if.end33.err_exit_crit_edge, %for.end.err_exit_crit_edge
  %err.2 = phi i32 [ -22, %do.end ], [ -22, %do.end86 ], [ %call95, %if.end91.err_exit_crit_edge ], [ %err.1, %if.end100 ], [ %call34, %do.end73.err_exit_crit_edge ], [ %call.i.i, %if.end.i.err_exit_crit_edge ], [ -1, %if.end53.err_exit_crit_edge ], [ %call34, %if.end33.err_exit_crit_edge ], [ -110, %for.end.err_exit_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_err_from_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_mpi_read_mbox(ptr noundef %self, ptr nocapture noundef writeonly %pmbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %0 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbox_addr, align 4
  %call = tail call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %1, ptr noundef %pmbox, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_utils_mpi_read_stats(ptr noundef %self, ptr nocapture noundef %pmbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_addr = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %0 = ptrtoint ptr %mbox_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbox_addr, align 4
  %call = tail call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %1, ptr noundef %pmbox, i32 noundef 93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end:                                           ; preds = %entry
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %2 = ptrtoint ptr %chip_features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_features, align 8
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %4 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_nic_cfg, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then1.cond.end_crit_edge, label %cond.true

if.then1.cond.end_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %mtu4 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %mtu4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then1.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 1514, %if.then1.cond.end_crit_edge ]
  %stats = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %pmbox, i32 0, i32 1
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %stats, align 1
  %mul = mul i32 %9, %cond
  %ubrc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %pmbox, i32 0, i32 1, i32 12
  %10 = ptrtoint ptr %ubrc to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %mul, ptr %ubrc, align 1
  %uptc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %pmbox, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %uptc to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %uptc, align 1
  %mul7 = mul i32 %12, %cond
  %ubtc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %pmbox, i32 0, i32 1, i32 13
  %13 = ptrtoint ptr %ubtc to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %mul7, ptr %ubtc, align 1
  %dpc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dpc, i32 noundef 4) #6
  %14 = ptrtoint ptr %dpc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dpc, align 4
  br label %err_exit.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @hw_atl_rpb_rx_dma_drop_pkt_cnt_get(ptr noundef %self) #6
  br label %err_exit.sink.split

err_exit.sink.split:                              ; preds = %if.else, %cond.end
  %.sink = phi i32 [ %15, %cond.end ], [ %call12, %if.else ]
  %dpc11 = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %pmbox, i32 0, i32 1, i32 14
  %16 = ptrtoint ptr %dpc11 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %.sink, ptr %dpc11, align 1
  br label %err_exit

err_exit:                                         ; preds = %err_exit.sink.split, %entry.err_exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rpb_rx_dma_drop_pkt_cnt_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_mpi_get_link_status(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 876) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call.i)
  %tobool.not = icmp ult i32 %call.i, 65536
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  %shr = lshr i32 %call.i, 16
  %trunc = trunc i32 %shr to i16
  %0 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %trunc, label %if.else.cleanup_crit_edge [
    i16 1, label %if.else.if.end_crit_edge
    i16 2, label %if.else.sw.bb2_crit_edge
    i16 4, label %if.else.sw.bb2_crit_edge20
    i16 8, label %sw.bb4
    i16 16, label %sw.bb6
    i16 32, label %sw.bb8
  ]

if.else.sw.bb2_crit_edge20:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

if.else.sw.bb2_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %if.else.sw.bb2_crit_edge, %if.else.sw.bb2_crit_edge20
  br label %if.end

sw.bb4:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb6:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb8:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i32 [ 5000, %sw.bb2 ], [ 2500, %sw.bb4 ], [ 1000, %sw.bb6 ], [ 100, %sw.bb8 ], [ 0, %entry.if.end_crit_edge ], [ 10000, %if.else.if.end_crit_edge ]
  %1 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %aq_link_status, align 4
  %full_duplex = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %full_duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_get_mac_permanent(ptr noundef %self, ptr nocapture noundef %mac) #0 align 64 {
entry:
  %mac_addr = alloca [2 x i32], align 4
  %rnd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mac_addr) #6
  %0 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mac_addr, align 4, !annotation !62
  %1 = getelementptr inbounds [2 x i32], ptr %mac_addr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !62
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 880) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rnd) #6
  %3 = ptrtoint ptr %rnd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rnd, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd, i32 noundef 4) #6
  %4 = ptrtoint ptr %rnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rnd, align 4
  %and = and i32 %5, -50529028
  %or = or i32 %and, 33686018
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 880, i32 noundef %or) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rnd) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 884) #6
  %add = add i32 %call1, 160
  %call2 = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %add, ptr noundef nonnull %mac_addr, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mac_addr, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_addr, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mac_addr, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %phi.bo = lshr i32 %13, 16
  %phi.cast = trunc i32 %phi.bo to i16
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %storemerge = phi i16 [ %phi.cast, %if.else ], [ 0, %if.then3 ]
  %err.0 = phi i32 [ %call2, %if.else ], [ 0, %if.then3 ]
  %14 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_addr, align 4
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mac, align 4
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %storemerge, ptr %add.ptr1.i, align 2
  %18 = lshr i32 %15, 24
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end9.if.then24_crit_edge

if.end9.if.then24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end9
  %arrayidx16 = getelementptr i8, ptr %mac, i32 1
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx16, align 1
  %or1874 = or i8 %22, %19
  %arrayidx19 = getelementptr i8, ptr %mac, i32 2
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx19, align 1
  %or2175 = or i8 %or1874, %24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or2175)
  %cmp22 = icmp eq i8 %or2175, 0
  br i1 %cmp22, label %lor.lhs.false.if.then24_crit_edge, label %lor.lhs.false.if.end50_crit_edge

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end9.if.then24_crit_edge
  %call25 = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 880) #6
  %conv30 = trunc i32 %call25 to i8
  %arrayidx31 = getelementptr i8, ptr %mac, i32 5
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv30, ptr %arrayidx31, align 1
  %and26 = lshr i32 %call25, 8
  %conv33 = trunc i32 %and26 to i8
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv33, ptr %add.ptr1.i, align 1
  %arrayidx38 = getelementptr i8, ptr %mac, i32 3
  %27 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx38, align 1
  %arrayidx42 = getelementptr i8, ptr %mac, i32 2
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -29, ptr %arrayidx42, align 1
  %arrayidx45 = getelementptr i8, ptr %mac, i32 1
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 14, ptr %arrayidx45, align 1
  %30 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 48, ptr %mac, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then24, %lor.lhs.false.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac_addr) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hw_atl_utils_mbps_2_speed_index(i32 noundef %mbps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mbps to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %mbps, label %entry.sw.epilog_crit_edge [
    i32 100, label %sw.bb
    i32 1000, label %sw.bb1
    i32 2500, label %sw.bb2
    i32 5000, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 1, %sw.bb3 ], [ 3, %sw.bb2 ], [ 4, %sw.bb1 ], [ 5, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_reg_glb_mif_id_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_update_stats(ptr noundef %self) #0 align 64 {
entry:
  %curr_stats1.sroa.0 = alloca { i64, i64 }, align 8
  %curr_stats1.sroa.35 = alloca { i64, i64, i64, i64 }, align 8
  %mbox = alloca %struct.hw_atl_utils_mbox, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_stats = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %curr_stats1.sroa.0)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %curr_stats1.sroa.35)
  %0 = call ptr @memcpy(ptr %curr_stats1.sroa.0, ptr %curr_stats, i32 16)
  %curr_stats1.sroa.5.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 2
  %1 = ptrtoint ptr %curr_stats1.sroa.5.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %1)
  %curr_stats1.sroa.5.0.copyload = load i64, ptr %curr_stats1.sroa.5.0..sroa_idx, align 8
  %curr_stats1.sroa.7.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %curr_stats1.sroa.7.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %2)
  %curr_stats1.sroa.7.0.copyload = load i64, ptr %curr_stats1.sroa.7.0..sroa_idx, align 8
  %curr_stats1.sroa.9.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 4
  %3 = ptrtoint ptr %curr_stats1.sroa.9.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %3)
  %curr_stats1.sroa.9.0.copyload = load i64, ptr %curr_stats1.sroa.9.0..sroa_idx, align 8
  %curr_stats1.sroa.11.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 5
  %4 = ptrtoint ptr %curr_stats1.sroa.11.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %4)
  %curr_stats1.sroa.11.0.copyload = load i64, ptr %curr_stats1.sroa.11.0..sroa_idx, align 8
  %curr_stats1.sroa.13.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 6
  %5 = ptrtoint ptr %curr_stats1.sroa.13.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %5)
  %curr_stats1.sroa.13.0.copyload = load i64, ptr %curr_stats1.sroa.13.0..sroa_idx, align 8
  %curr_stats1.sroa.15.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 7
  %6 = ptrtoint ptr %curr_stats1.sroa.15.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %6)
  %curr_stats1.sroa.15.0.copyload = load i64, ptr %curr_stats1.sroa.15.0..sroa_idx, align 8
  %curr_stats1.sroa.17.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 8
  %7 = ptrtoint ptr %curr_stats1.sroa.17.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %7)
  %curr_stats1.sroa.17.0.copyload = load i64, ptr %curr_stats1.sroa.17.0..sroa_idx, align 8
  %curr_stats1.sroa.19.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 9
  %8 = ptrtoint ptr %curr_stats1.sroa.19.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %8)
  %curr_stats1.sroa.19.0.copyload = load i64, ptr %curr_stats1.sroa.19.0..sroa_idx, align 8
  %curr_stats1.sroa.21.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 10
  %9 = ptrtoint ptr %curr_stats1.sroa.21.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %9)
  %curr_stats1.sroa.21.0.copyload = load i64, ptr %curr_stats1.sroa.21.0..sroa_idx, align 8
  %curr_stats1.sroa.23.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 11
  %10 = ptrtoint ptr %curr_stats1.sroa.23.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %10)
  %curr_stats1.sroa.23.0.copyload = load i64, ptr %curr_stats1.sroa.23.0..sroa_idx, align 8
  %curr_stats1.sroa.25.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 12
  %11 = ptrtoint ptr %curr_stats1.sroa.25.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %11)
  %curr_stats1.sroa.25.0.copyload = load i64, ptr %curr_stats1.sroa.25.0..sroa_idx, align 8
  %curr_stats1.sroa.27.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 13
  %12 = ptrtoint ptr %curr_stats1.sroa.27.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %12)
  %curr_stats1.sroa.27.0.copyload = load i64, ptr %curr_stats1.sroa.27.0..sroa_idx, align 8
  %curr_stats1.sroa.29.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 14
  %13 = ptrtoint ptr %curr_stats1.sroa.29.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %13)
  %curr_stats1.sroa.29.0.copyload = load i64, ptr %curr_stats1.sroa.29.0..sroa_idx, align 8
  %curr_stats1.sroa.31.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 15
  %14 = ptrtoint ptr %curr_stats1.sroa.31.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %14)
  %curr_stats1.sroa.31.0.copyload = load i64, ptr %curr_stats1.sroa.31.0..sroa_idx, align 8
  %curr_stats1.sroa.33.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 16
  %15 = ptrtoint ptr %curr_stats1.sroa.33.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %15)
  %curr_stats1.sroa.33.0.copyload = load i64, ptr %curr_stats1.sroa.33.0..sroa_idx, align 8
  %curr_stats1.sroa.35.0..sroa_idx = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 17
  %16 = call ptr @memcpy(ptr %curr_stats1.sroa.35, ptr %curr_stats1.sroa.35.0..sroa_idx, i32 32)
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %mbox) #6
  %17 = call ptr @memset(ptr %mbox, i32 255, i32 372)
  %mbox_addr.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %18 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox_addr.i, align 4
  %call.i = call i32 @hw_atl_utils_fw_downld_dwords(ptr noundef %self, i32 noundef %19, ptr noundef nonnull %mbox, i32 noundef 93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.hw_atl_utils_mpi_read_stats.exit_crit_edge, label %if.end.i

entry.hw_atl_utils_mpi_read_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_utils_mpi_read_stats.exit

if.end.i:                                         ; preds = %entry
  %chip_features.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %20 = ptrtoint ptr %chip_features.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_features.i, align 8
  %and.i = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %aq_nic_cfg.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %22 = ptrtoint ptr %aq_nic_cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aq_nic_cfg.i, align 8
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %if.then1.i.cond.end.i_crit_edge, label %cond.true.i

if.then1.i.cond.end.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  %mtu4.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %mtu4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu4.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then1.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %25, %cond.true.i ], [ 1514, %if.then1.i.cond.end.i_crit_edge ]
  %stats.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1
  %26 = ptrtoint ptr %stats.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %stats.i, align 1
  %mul.i = mul i32 %27, %cond.i
  %ubrc.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 12
  %28 = ptrtoint ptr %ubrc.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %mul.i, ptr %ubrc.i, align 1
  %uptc.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %uptc.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %uptc.i, align 1
  %mul7.i = mul i32 %30, %cond.i
  %ubtc.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 13
  %31 = ptrtoint ptr %ubtc.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %mul7.i, ptr %ubtc.i, align 1
  %dpc.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dpc.i, i32 noundef 4) #6
  %32 = ptrtoint ptr %dpc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %dpc.i, align 4
  br label %err_exit.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 @hw_atl_rpb_rx_dma_drop_pkt_cnt_get(ptr noundef %self) #6
  br label %err_exit.sink.split.i

err_exit.sink.split.i:                            ; preds = %if.else.i, %cond.end.i
  %.sink.i = phi i32 [ %33, %cond.end.i ], [ %call12.i, %if.else.i ]
  %dpc11.i = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 14
  %34 = ptrtoint ptr %dpc11.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %.sink.i, ptr %dpc11.i, align 1
  br label %hw_atl_utils_mpi_read_stats.exit

hw_atl_utils_mpi_read_stats.exit:                 ; preds = %err_exit.sink.split.i, %entry.hw_atl_utils_mpi_read_stats.exit_crit_edge
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %35 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %aq_link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %hw_atl_utils_mpi_read_stats.exit.if.end338_crit_edge, label %if.then5

hw_atl_utils_mpi_read_stats.exit.if.end338_crit_edge: ; preds = %hw_atl_utils_mpi_read_stats.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338

if.then5:                                         ; preds = %hw_atl_utils_mpi_read_stats.exit
  call void @__sanitizer_cov_trace_pc() #8
  %stats = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1
  %37 = ptrtoint ptr %stats to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %stats, align 1
  %last_stats = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7
  %39 = ptrtoint ptr %last_stats to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %last_stats, align 8
  %sub = sub i32 %38, %40
  %conv = zext i32 %sub to i64
  %add = add i64 %curr_stats1.sroa.5.0.copyload, %conv
  %mprc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %mprc to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %mprc, align 1
  %mprc18 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %mprc18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mprc18, align 4
  %sub19 = sub i32 %42, %44
  %conv20 = zext i32 %sub19 to i64
  %add31 = add i64 %curr_stats1.sroa.7.0.copyload, %conv20
  %bprc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %bprc to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %bprc, align 1
  %bprc41 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %bprc41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bprc41, align 8
  %sub42 = sub i32 %46, %48
  %conv43 = zext i32 %sub42 to i64
  %add54 = add i64 %curr_stats1.sroa.9.0.copyload, %conv43
  %erpt = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %erpt to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %erpt, align 1
  %erpt64 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 3
  %51 = ptrtoint ptr %erpt64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %erpt64, align 4
  %sub65 = sub i32 %50, %52
  %conv66 = zext i32 %sub65 to i64
  %add77 = add i64 %curr_stats1.sroa.11.0.copyload, %conv66
  %uptc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 4
  %53 = ptrtoint ptr %uptc to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %uptc, align 1
  %uptc87 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 4
  %55 = ptrtoint ptr %uptc87 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %uptc87, align 8
  %sub88 = sub i32 %54, %56
  %conv89 = zext i32 %sub88 to i64
  %add100 = add i64 %curr_stats1.sroa.13.0.copyload, %conv89
  %mptc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 5
  %57 = ptrtoint ptr %mptc to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %mptc, align 1
  %mptc110 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 5
  %59 = ptrtoint ptr %mptc110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mptc110, align 4
  %sub111 = sub i32 %58, %60
  %conv112 = zext i32 %sub111 to i64
  %add123 = add i64 %curr_stats1.sroa.15.0.copyload, %conv112
  %bptc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 6
  %61 = ptrtoint ptr %bptc to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %bptc, align 1
  %bptc133 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 6
  %63 = ptrtoint ptr %bptc133 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bptc133, align 8
  %sub134 = sub i32 %62, %64
  %conv135 = zext i32 %sub134 to i64
  %add146 = add i64 %curr_stats1.sroa.17.0.copyload, %conv135
  %erpr = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 7
  %65 = ptrtoint ptr %erpr to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %erpr, align 1
  %erpr156 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 7
  %67 = ptrtoint ptr %erpr156 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %erpr156, align 4
  %sub157 = sub i32 %66, %68
  %conv158 = zext i32 %sub157 to i64
  %add169 = add i64 %curr_stats1.sroa.19.0.copyload, %conv158
  %ubrc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 12
  %69 = ptrtoint ptr %ubrc to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %ubrc, align 1
  %ubrc179 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 12
  %71 = ptrtoint ptr %ubrc179 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ubrc179, align 8
  %sub180 = sub i32 %70, %72
  %conv181 = zext i32 %sub180 to i64
  %add192 = add i64 %curr_stats1.sroa.29.0.copyload, %conv181
  %ubtc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 13
  %73 = ptrtoint ptr %ubtc to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %ubtc, align 1
  %ubtc202 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 13
  %75 = ptrtoint ptr %ubtc202 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ubtc202, align 4
  %sub203 = sub i32 %74, %76
  %conv204 = zext i32 %sub203 to i64
  %add215 = add i64 %curr_stats1.sroa.31.0.copyload, %conv204
  %mbrc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 10
  %77 = ptrtoint ptr %mbrc to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %mbrc, align 1
  %mbrc225 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 10
  %79 = ptrtoint ptr %mbrc225 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mbrc225, align 8
  %sub226 = sub i32 %78, %80
  %conv227 = zext i32 %sub226 to i64
  %add238 = add i64 %curr_stats1.sroa.25.0.copyload, %conv227
  %mbtc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 8
  %81 = ptrtoint ptr %mbtc to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %mbtc, align 1
  %mbtc248 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 8
  %83 = ptrtoint ptr %mbtc248 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mbtc248, align 8
  %sub249 = sub i32 %82, %84
  %conv250 = zext i32 %sub249 to i64
  %add261 = add i64 %curr_stats1.sroa.21.0.copyload, %conv250
  %bbrc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 11
  %85 = ptrtoint ptr %bbrc to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %bbrc, align 1
  %bbrc271 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 11
  %87 = ptrtoint ptr %bbrc271 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bbrc271, align 4
  %sub272 = sub i32 %86, %88
  %conv273 = zext i32 %sub272 to i64
  %add284 = add i64 %curr_stats1.sroa.27.0.copyload, %conv273
  %bbtc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 9
  %89 = ptrtoint ptr %bbtc to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %bbtc, align 1
  %bbtc294 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 9
  %91 = ptrtoint ptr %bbtc294 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bbtc294, align 4
  %sub295 = sub i32 %90, %92
  %conv296 = zext i32 %sub295 to i64
  %add307 = add i64 %curr_stats1.sroa.23.0.copyload, %conv296
  %dpc = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1, i32 14
  %93 = ptrtoint ptr %dpc to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %dpc, align 1
  %dpc317 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7, i32 14
  %95 = ptrtoint ptr %dpc317 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dpc317, align 8
  %sub318 = sub i32 %94, %96
  %conv319 = zext i32 %sub318 to i64
  %add330 = add i64 %curr_stats1.sroa.33.0.copyload, %conv319
  %97 = call ptr @memcpy(ptr %curr_stats, ptr %curr_stats1.sroa.0, i32 16)
  %98 = ptrtoint ptr %curr_stats1.sroa.5.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %add, ptr %curr_stats1.sroa.5.0..sroa_idx, align 8
  %99 = ptrtoint ptr %curr_stats1.sroa.7.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %add31, ptr %curr_stats1.sroa.7.0..sroa_idx, align 8
  %100 = ptrtoint ptr %curr_stats1.sroa.9.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %add54, ptr %curr_stats1.sroa.9.0..sroa_idx, align 8
  %101 = ptrtoint ptr %curr_stats1.sroa.11.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %add77, ptr %curr_stats1.sroa.11.0..sroa_idx, align 8
  %102 = ptrtoint ptr %curr_stats1.sroa.13.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %add100, ptr %curr_stats1.sroa.13.0..sroa_idx, align 8
  %103 = ptrtoint ptr %curr_stats1.sroa.15.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %add123, ptr %curr_stats1.sroa.15.0..sroa_idx, align 8
  %104 = ptrtoint ptr %curr_stats1.sroa.17.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %add146, ptr %curr_stats1.sroa.17.0..sroa_idx, align 8
  %105 = ptrtoint ptr %curr_stats1.sroa.19.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %add169, ptr %curr_stats1.sroa.19.0..sroa_idx, align 8
  %106 = ptrtoint ptr %curr_stats1.sroa.21.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %add261, ptr %curr_stats1.sroa.21.0..sroa_idx, align 8
  %107 = ptrtoint ptr %curr_stats1.sroa.23.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %add307, ptr %curr_stats1.sroa.23.0..sroa_idx, align 8
  %108 = ptrtoint ptr %curr_stats1.sroa.25.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %add238, ptr %curr_stats1.sroa.25.0..sroa_idx, align 8
  %109 = ptrtoint ptr %curr_stats1.sroa.27.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add284, ptr %curr_stats1.sroa.27.0..sroa_idx, align 8
  %110 = ptrtoint ptr %curr_stats1.sroa.29.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %add192, ptr %curr_stats1.sroa.29.0..sroa_idx, align 8
  %111 = ptrtoint ptr %curr_stats1.sroa.31.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %add215, ptr %curr_stats1.sroa.31.0..sroa_idx, align 8
  %112 = ptrtoint ptr %curr_stats1.sroa.33.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %add330, ptr %curr_stats1.sroa.33.0..sroa_idx, align 8
  %113 = call ptr @memcpy(ptr %curr_stats1.sroa.35.0..sroa_idx, ptr %curr_stats1.sroa.35, i32 32)
  br label %if.end338

if.end338:                                        ; preds = %if.then5, %hw_atl_utils_mpi_read_stats.exit.if.end338_crit_edge
  %call = tail call i64 @hw_atl_stats_rx_dma_good_pkt_counter_get(ptr noundef %self) #6
  %114 = ptrtoint ptr %curr_stats1.sroa.35.0..sroa_idx to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %call, ptr %curr_stats1.sroa.35.0..sroa_idx, align 8
  %call339 = tail call i64 @hw_atl_stats_tx_dma_good_pkt_counter_get(ptr noundef %self) #6
  %dma_pkt_tc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 18
  %115 = ptrtoint ptr %dma_pkt_tc to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %call339, ptr %dma_pkt_tc, align 8
  %call340 = tail call i64 @hw_atl_stats_rx_dma_good_octet_counter_get(ptr noundef %self) #6
  %dma_oct_rc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 19
  %116 = ptrtoint ptr %dma_oct_rc to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %call340, ptr %dma_oct_rc, align 8
  %call341 = tail call i64 @hw_atl_stats_tx_dma_good_octet_counter_get(ptr noundef %self) #6
  %dma_oct_tc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 20
  %117 = ptrtoint ptr %dma_oct_tc to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %call341, ptr %dma_oct_tc, align 8
  %last_stats342 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 7
  %stats343 = getelementptr inbounds %struct.hw_atl_utils_mbox, ptr %mbox, i32 0, i32 1
  %118 = call ptr @memcpy(ptr %last_stats342, ptr %stats343, i32 60)
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %mbox) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %curr_stats1.sroa.0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %curr_stats1.sroa.35)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hw_atl_stats_rx_dma_good_pkt_counter_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hw_atl_stats_tx_dma_good_pkt_counter_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hw_atl_stats_rx_dma_good_octet_counter_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hw_atl_stats_tx_dma_good_octet_counter_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @hw_atl_utils_get_hw_stats(ptr noundef readnone %self) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_stats = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8
  ret ptr %curr_stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_utils_hw_get_regs(ptr noundef %self, ptr nocapture noundef readonly %aq_hw_caps, ptr nocapture noundef writeonly %regs_buff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs_count = getelementptr inbounds %struct.aq_hw_caps_s, ptr %aq_hw_caps, i32 0, i32 12
  %0 = ptrtoint ptr %mac_regs_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_regs_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [88 x i32], ptr @hw_atl_utils_hw_mac_regs, i32 0, i32 %i.06
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef %3) #6
  %arrayidx1 = getelementptr i32, ptr %regs_buff, i32 %i.06
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %arrayidx1, align 4
  %inc = add nuw i32 %i.06, 1
  %5 = ptrtoint ptr %mac_regs_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac_regs_count, align 8
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_utils_mpi_create(ptr noundef %self) #0 align 64 {
entry:
  %rnd.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 880) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rnd.i) #6
  %0 = ptrtoint ptr %rnd.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rnd.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #6
  %1 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rnd.i, align 4
  %and.i = and i32 %2, -50529028
  %or.i = or i32 %and.i, 33686018
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 880, i32 noundef %or.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rnd.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @hw_atl_reg_glb_cpu_scratch_scp_set(ptr noundef %self, i32 noundef 0, i32 noundef 25) #6
  %call1.i = call i64 @ktime_get() #6
  %add.i.i = add i64 %call1.i, 10000000
  %call310.i = call i32 @hw_atl_scrpad25_get(ptr noundef %self) #6
  %mbox_addr.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 15
  %3 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call310.i, ptr %mbox_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310.i)
  %cmp.not11.i = icmp eq i32 %call310.i, 0
  br i1 %cmp.not11.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %call8.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call8.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call8.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call i32 @hw_atl_scrpad25_get(ptr noundef %self) #6
  %4 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call12.i, ptr %mbox_addr.i, align 4
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #6
  %call3.i = call i32 @hw_atl_scrpad25_get(ptr noundef %self) #6
  %6 = ptrtoint ptr %mbox_addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3.i, ptr %mbox_addr.i, align 4
  %cmp.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.for.end.i_crit_edge

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then11.i, %if.end.i.for.end.i_crit_edge
  %call27.i = call i64 @ktime_get() #6
  %add.i1.i = add i64 %call27.i, 100000000
  %call.i13.i = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 820) #6
  %rpc_addr.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 16
  %7 = ptrtoint ptr %rpc_addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i13.i, ptr %rpc_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp32.not14.i = icmp eq i32 %call.i13.i, 0
  br i1 %cmp32.not14.i, label %for.end.i.land.lhs.true36.i_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.end.i.land.lhs.true36.i_crit_edge:            ; preds = %for.end.i
  br label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %cond.false49.i.land.lhs.true36.i_crit_edge, %for.end.i.land.lhs.true36.i_crit_edge
  %call37.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call37.i, i64 %add.i1.i)
  %cmp3.i3.i = icmp sgt i64 %call37.i, %add.i1.i
  br i1 %cmp3.i3.i, label %hw_atl_utils_init_ucp.exit, label %cond.false49.i

cond.false49.i:                                   ; preds = %land.lhs.true36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #6
  %call.i.i = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 820) #6
  %9 = ptrtoint ptr %rpc_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i.i, ptr %rpc_addr.i, align 8
  %cmp32.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp32.not.i, label %cond.false49.i.land.lhs.true36.i_crit_edge, label %cond.false49.i.if.end_crit_edge

cond.false49.i.if.end_crit_edge:                  ; preds = %cond.false49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.false49.i.land.lhs.true36.i_crit_edge:       ; preds = %cond.false49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true36.i

hw_atl_utils_init_ucp.exit:                       ; preds = %land.lhs.true36.i
  %call.i6.i = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 820) #6
  %10 = ptrtoint ptr %rpc_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i6.i, ptr %rpc_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %cmp58.not.i = icmp eq i32 %call.i6.i, 0
  br i1 %cmp58.not.i, label %hw_atl_utils_init_ucp.exit.err_exit_crit_edge, label %hw_atl_utils_init_ucp.exit.if.end_crit_edge

hw_atl_utils_init_ucp.exit.if.end_crit_edge:      ; preds = %hw_atl_utils_init_ucp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

hw_atl_utils_init_ucp.exit.err_exit_crit_edge:    ; preds = %hw_atl_utils_init_ucp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end:                                           ; preds = %hw_atl_utils_init_ucp.exit.if.end_crit_edge, %cond.false49.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  %call1 = call i32 @hw_atl_utils_fw_rpc_wait(ptr noundef %self, ptr noundef null)
  br label %err_exit

err_exit:                                         ; preds = %if.end, %hw_atl_utils_init_ucp.exit.err_exit_crit_edge
  %err.0 = phi i32 [ -110, %hw_atl_utils_init_ucp.exit.err_exit_crit_edge ], [ %call1, %if.end ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_fw1x_deinit(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 872) #6
  %and.i = and i32 %call.i, -16711681
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef %and.i) #6
  %call.i3 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 872) #6
  %or.i = and i32 %call.i3, -33554688
  %and34.i = or i32 %or.i, 33554432
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef %and34.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_utils_mpi_set_speed(ptr noundef %self, i32 noundef %speed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 872) #6
  %and = and i32 %call, -16711681
  %shl = shl i32 %speed, 16
  %or = or i32 %and, %shl
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef %or) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_fw1x_set_power(ptr noundef %self, i32 noundef %power_state, ptr nocapture noundef readonly %mac) #0 align 64 {
entry:
  %prpc.i = alloca ptr, align 4
  %prpc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prpc) #6
  %0 = ptrtoint ptr %prpc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %prpc, align 4
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %1 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aq_nic_cfg, align 8
  %wol = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wol, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prpc.i) #6
  %5 = ptrtoint ptr %prpc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %prpc.i, align 4
  %call.i = call i32 @hw_atl_utils_fw_rpc_wait(ptr noundef %self, ptr noundef nonnull %prpc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.aq_fw1x_set_wake_magic.exit.thread_crit_edge, label %if.end.i

if.then.aq_fw1x_set_wake_magic.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_fw1x_set_wake_magic.exit.thread

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %prpc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prpc.i, align 4
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 4, ptr %7, align 1
  %11 = load ptr, ptr %prpc.i, align 4
  %12 = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 268435456, ptr %12, align 1
  %pattern_id.i = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, ptr %11, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pattern_id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1, ptr %pattern_id.i, align 1
  %packet_type.i = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, ptr %11, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %packet_type.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 2, ptr %packet_type.i, align 1
  %magic_packet_pattern.i = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, ptr %11, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac, align 4
  %18 = ptrtoint ptr %magic_packet_pattern.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %magic_packet_pattern.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.hw_atl_utils_fw_rpc, ptr %11, i32 0, i32 1, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i.i, align 2
  %chip_features.i.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %22 = ptrtoint ptr %chip_features.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_features.i.i, align 8
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.aq_fw1x_set_wake_magic.exit.thread_crit_edge, label %if.end.i.i

if.end.i.aq_fw1x_set_wake_magic.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_fw1x_set_wake_magic.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %rpc.i.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 19
  %rpc_addr.i.i.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 16
  %24 = ptrtoint ptr %rpc_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rpc_addr.i.i.i, align 8
  %call.i.i.i = call fastcc i32 @hw_atl_utils_fw_upload_dwords(ptr noundef %self, i32 noundef %25, ptr noundef %rpc.i.i, i32 noundef 7, i32 noundef -2147483648) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.aq_fw1x_set_wake_magic.exit.thread_crit_edge, label %if.end

if.end.i.i.aq_fw1x_set_wake_magic.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_fw1x_set_wake_magic.exit.thread

aq_fw1x_set_wake_magic.exit.thread:               ; preds = %if.end.i.i.aq_fw1x_set_wake_magic.exit.thread_crit_edge, %if.end.i.aq_fw1x_set_wake_magic.exit.thread_crit_edge, %if.then.aq_fw1x_set_wake_magic.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ -1, %if.end.i.aq_fw1x_set_wake_magic.exit.thread_crit_edge ], [ %call.i.i.i, %if.end.i.i.aq_fw1x_set_wake_magic.exit.thread_crit_edge ], [ %call.i, %if.then.aq_fw1x_set_wake_magic.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prpc.i) #6
  br label %err_exit

if.end:                                           ; preds = %if.end.i.i
  %rpc_tid.i.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 18
  %26 = ptrtoint ptr %rpc_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rpc_tid.i.i, align 8
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %rpc_tid.i.i, align 8
  %sw.sroa.0.0.insert.shift.i.i = shl i32 %inc.i.i, 16
  %sw.sroa.0.0.insert.insert.i.i = or i32 %sw.sroa.0.0.insert.shift.i.i, 26
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 824, i32 noundef %sw.sroa.0.0.insert.insert.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prpc.i) #6
  %call2 = call i32 @hw_atl_utils_fw_rpc_wait(ptr noundef %self, ptr noundef nonnull %prpc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.err_exit_crit_edge, label %if.end5

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end5:                                          ; preds = %if.end
  %28 = ptrtoint ptr %prpc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prpc, align 4
  %30 = getelementptr inbounds i8, ptr %29, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %30, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 6, ptr %29, align 1
  %33 = load ptr, ptr %prpc, align 4
  %34 = getelementptr inbounds %struct.hw_atl_utils_fw_rpc, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 2, ptr %34, align 1
  %36 = ptrtoint ptr %chip_features.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip_features.i.i, align 8
  %and.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.err_exit_crit_edge, label %if.end.i23

if.end5.err_exit_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end.i23:                                       ; preds = %if.end5
  %38 = ptrtoint ptr %rpc_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rpc_addr.i.i.i, align 8
  %call.i.i = call fastcc i32 @hw_atl_utils_fw_upload_dwords(ptr noundef %self, i32 noundef %39, ptr noundef %rpc.i.i, i32 noundef 3, i32 noundef -2147483648) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i22 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i22, label %if.end.i23.err_exit_crit_edge, label %hw_atl_utils_fw_rpc_call.exit

if.end.i23.err_exit_crit_edge:                    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

hw_atl_utils_fw_rpc_call.exit:                    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %rpc_tid.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rpc_tid.i.i, align 8
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %rpc_tid.i.i, align 8
  %sw.sroa.0.0.insert.shift.i = shl i32 %inc.i, 16
  %sw.sroa.0.0.insert.insert.i = or i32 %sw.sroa.0.0.insert.shift.i, 12
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 824, i32 noundef %sw.sroa.0.0.insert.insert.i) #6
  br label %if.end10

if.end10:                                         ; preds = %hw_atl_utils_fw_rpc_call.exit, %entry.if.end10_crit_edge
  %err.0 = phi i32 [ %call.i.i, %hw_atl_utils_fw_rpc_call.exit ], [ 0, %entry.if.end10_crit_edge ]
  %call.i25 = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 872) #6
  %and.i26 = and i32 %call.i25, -16711681
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef %and.i26) #6
  %call.i27 = call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 872) #6
  %or.i = and i32 %call.i27, -33554688
  %or36.i = or i32 %or.i, 33554436
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 872, i32 noundef %or36.i) #6
  br label %err_exit

err_exit:                                         ; preds = %if.end10, %if.end.i23.err_exit_crit_edge, %if.end5.err_exit_crit_edge, %if.end.err_exit_crit_edge, %aq_fw1x_set_wake_magic.exit.thread
  %err.1 = phi i32 [ %call2, %if.end.err_exit_crit_edge ], [ %err.0, %if.end10 ], [ %err.0.i.ph, %aq_fw1x_set_wake_magic.exit.thread ], [ -1, %if.end5.err_exit_crit_edge ], [ %call.i.i, %if.end.i23.err_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prpc) #6
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rx_rx_reg_res_dis_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tx_tx_reg_res_dis_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_mcp_up_force_intr_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_scrpad12_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_glb_cpu_scratch_scp_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_scrpad25_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 85, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hw_atl_utils_initfw._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hw_atl_utils_initfw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 257, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hw_atl_utils_soft_reset._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @hw_atl_utils_soft_reset._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 291, i32 5}
!13 = !{ptr @hw_atl_utils_soft_reset._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @hw_atl_utils_soft_reset._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 296, i32 5}
!17 = !{ptr @hw_atl_utils_soft_reset._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @hw_atl_utils_soft_reset._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 563, i32 5}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hw_atl_utils_fw_rpc_wait._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @hw_atl_utils_fw_rpc_wait._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 576, i32 5}
!26 = !{ptr @hw_atl_utils_fw_rpc_wait._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hw_atl_utils_fw_rpc_wait._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @aq_fw_1x_ops, !29, !"aq_fw_1x_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 1081, i32 24}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 210, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hw_atl_utils_soft_reset_rbl._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hw_atl_utils_soft_reset_rbl._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 219, i32 3}
!37 = !{ptr @hw_atl_utils_soft_reset_rbl._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @hw_atl_utils_soft_reset_rbl._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 231, i32 3}
!41 = !{ptr @hw_atl_utils_soft_reset_rbl._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @hw_atl_utils_soft_reset_rbl._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 134, i32 3}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hw_atl_utils_soft_reset_flb._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hw_atl_utils_soft_reset_flb._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @hw_atl_utils_soft_reset_flb._entry.26, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 162, i32 3}
!50 = !{ptr @hw_atl_utils_soft_reset_flb._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @hw_atl_utils_hw_mac_regs, !52, !"hw_atl_utils_hw_mac_regs", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_utils.c", i32 924, i32 18}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
