; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.aq_ring_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union.aq_ring_stats_s, i32, i32 }
%union.aq_ring_stats_s = type { %struct.aq_ring_stats_rx_s }
%struct.aq_ring_stats_rx_s = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.aq_ring_buff_s = type <{ %union.anon.3, %union.anon.108 }>
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i16, i8, i8, %struct.aq_rxpage, i16 }
%struct.aq_rxpage = type { ptr, i32, i32, i32 }
%union.anon.108 = type { i64 }
%struct.hw_atl_txd_s = type { i64, i32, i32 }
%struct.anon.107 = type { i32, i8, i8, i8, i8, i32, i16 }
%struct.aq_ring_param_s = type { i32, i32, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.hw_atl_rxd_s = type { i64, i64 }
%struct.hw_atl_rxd_wb_s = type { i32, i32, i16, i16, i16, i16 }
%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aq_rx_filter_l3l4 = type { i32, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.aq_rx_filter_l2 = type { i8, i8, i8, i8, i16 }
%struct.aq_rx_filter_vlan = type { i8, i8, i16, i8 }
%struct.hw_atl_rxd_hwts_wb_s = type { i32, i32, i32, i32 }
%struct.hw_fw_request_iface = type <{ i32, %union.anon }>
%union.anon = type { %struct.hw_fw_request_ptp_gpio_ctrl, [8 x i8] }
%struct.hw_fw_request_ptp_gpio_ctrl = type { i32, i32, i64 }
%struct.hw_fw_request_ptp_adj_freq = type { i32, i32, i32, i32, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@hw_atl_b0_caps_aqc100 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 31, i32 4096, i32 2, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 88, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_b0_caps_aqc107 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 31, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 88, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_b0_caps_aqc108 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 30, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 88, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_b0_caps_aqc109 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 28, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 88, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_b0_caps_aqc111 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 30, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 88, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_b0_caps_aqc112 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 28, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 88, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hw_atl_ops_b0 = dso_local constant { %struct.aq_hw_ops, [52 x i8] } { %struct.aq_hw_ops { ptr @hw_atl_b0_hw_ring_tx_xmit, ptr @hw_atl_b0_hw_ring_rx_receive, ptr @hw_atl_b0_hw_ring_rx_fill, ptr @hw_atl_b0_hw_ring_tx_head_update, ptr @hw_atl_b0_hw_mac_addr_set, ptr @hw_atl_utils_soft_reset, ptr @hw_atl_utils_initfw, ptr @hw_atl_b0_hw_reset, ptr @hw_atl_b0_hw_init, ptr @hw_atl_b0_hw_start, ptr @hw_atl_b0_hw_stop, ptr @hw_atl_b0_hw_ring_tx_init, ptr @hw_atl_b0_hw_ring_tx_start, ptr @hw_atl_b0_hw_ring_tx_stop, ptr @hw_atl_b0_hw_ring_rx_init, ptr @hw_atl_b0_hw_ring_rx_start, ptr @hw_atl_b0_hw_ring_rx_stop, ptr @hw_atl_b0_hw_irq_enable, ptr @hw_atl_b0_hw_irq_disable, ptr @hw_atl_b0_hw_irq_read, ptr @hw_atl_b0_hw_packet_filter_set, ptr @hw_atl_b0_hw_fl3l4_set, ptr null, ptr @hw_atl_b0_hw_fl2_set, ptr @hw_atl_b0_hw_fl2_clear, ptr @hw_atl_b0_hw_vlan_set, ptr @hw_atl_b0_hw_vlan_ctrl, ptr @hw_atl_b0_hw_multicast_list_set, ptr @hw_atl_b0_hw_interrupt_moderation_set, ptr @hw_atl_b0_hw_rss_set, ptr @hw_atl_b0_hw_rss_hash_set, ptr @hw_atl_b0_hw_init_tx_tc_rate_limit, ptr @hw_atl_utils_hw_get_regs, ptr @hw_atl_utils_get_hw_stats, ptr @hw_atl_utils_get_fw_version, ptr @hw_atl_b0_hw_offload_set, ptr @hw_atl_b0_hw_ring_hwts_rx_fill, ptr @hw_atl_b0_hw_ring_hwts_rx_receive, ptr @hw_atl_b0_get_ptp_ts, ptr @hw_atl_b0_adj_clock_freq, ptr @hw_atl_b0_adj_sys_clock, ptr @hw_atl_b0_set_sys_clock, ptr @hw_atl_b0_ts_to_sys_clock, ptr @hw_atl_b0_gpio_pulse, ptr @hw_atl_b0_extts_gpio_enable, ptr @hw_atl_b0_get_sync_ts, ptr @hw_atl_b0_rx_extract_ts, ptr @hw_atl_b0_extract_hwts, ptr @hw_atl_b0_set_fc, ptr @hw_atl_b0_set_loopback, ptr @hw_atl_b0_get_mac_temp }, [52 x i8] zeroinitializer }, align 32
@hw_atl_b0_hw_init.aq_hw_atl_igcr_table_ = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 536870912, i32 536870912], [2 x i32] [i32 536871040, i32 536871040], [2 x i32] [i32 536870945, i32 536870949], [2 x i32] [i32 536870946, i32 536870950]], [32 x i8] zeroinitializer }, align 32
@hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_ = internal constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 15, i32 255], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511]], [48 x i8] zeroinitializer }, align 32
@hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_ = internal constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 6, i32 56], [2 x i32] [i32 12, i32 112], [2 x i32] [i32 12, i32 112], [2 x i32] [i32 24, i32 224], [2 x i32] [i32 48, i32 128], [2 x i32] [i32 4, i32 80]], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 65535]
@___asan_gen_.3 = private unnamed_addr constant [22 x i8] c"hw_atl_b0_caps_aqc100\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 59, i32 27 }
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"hw_atl_b0_caps_aqc107\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 69, i32 27 }
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"hw_atl_b0_caps_aqc108\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 79, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"hw_atl_b0_caps_aqc109\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 88, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"hw_atl_b0_caps_aqc111\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 96, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"hw_atl_b0_caps_aqc112\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 106, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"hw_atl_ops_b0\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1650, i32 24 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"aq_hw_atl_igcr_table_\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 563, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [27 x i8] c"hw_atl_b0_timers_table_tx_\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1135, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"hw_atl_b0_timers_table_rx_\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1144, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [61 x i8] c"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1634, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @hw_atl_b0_caps_aqc100, ptr @hw_atl_b0_caps_aqc107, ptr @hw_atl_b0_caps_aqc108, ptr @hw_atl_b0_caps_aqc109, ptr @hw_atl_b0_caps_aqc111, ptr @hw_atl_b0_caps_aqc112, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_hw_init.aq_hw_atl_igcr_table_, ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_, ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_, ptr @.str], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_caps_aqc100 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_caps_aqc107 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_caps_aqc108 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_caps_aqc109 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_caps_aqc111 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_caps_aqc112 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_ops_b0 to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_hw_init.aq_hw_atl_igcr_table_ to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_ to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_ to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_set_fc(ptr noundef %self, i32 noundef %fc, i32 noundef %tc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %fc, 1
  %and.lobit = and i32 %and, 1
  tail call void @hw_atl_rpb_rx_xoff_en_per_tc_set(ptr noundef %self, i32 noundef %and.lobit, i32 noundef %tc) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_xoff_en_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_rss_hash_set(ptr noundef %self, ptr nocapture noundef readonly %rss_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %is_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %dec57 = phi i32 [ 9, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %addr.056 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %is_rss to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_rss, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.aq_rss_parameters, ptr %rss_params, i32 0, i32 3, i32 %dec57
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  tail call void @hw_atl_rpf_rss_key_wr_data_set(ptr noundef %self, i32 noundef %cond) #6
  tail call void @hw_atl_rpf_rss_key_addr_set(ptr noundef %self, i32 noundef %addr.056) #6
  tail call void @hw_atl_rpf_rss_key_wr_en_set(ptr noundef %self, i32 noundef 1) #6
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  %call454 = tail call i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call454)
  %cmp55 = icmp eq i32 %call454, 0
  br i1 %cmp55, label %cond.end.for.inc_crit_edge, label %cond.end.land.lhs.true_crit_edge

cond.end.land.lhs.true_crit_edge:                 ; preds = %cond.end
  br label %land.lhs.true

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %cond.false17.land.lhs.true_crit_edge, %cond.end.land.lhs.true_crit_edge
  %call6 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call6, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call6, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false17

cond.false17:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  %call4 = tail call i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef %self) #6
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %cond.false17.for.inc_crit_edge, label %cond.false17.land.lhs.true_crit_edge

cond.false17.land.lhs.true_crit_edge:             ; preds = %cond.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cond.false17.for.inc_crit_edge:                   ; preds = %cond.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.end:                                          ; preds = %land.lhs.true
  %call10 = tail call i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp22 = icmp eq i32 %call10, 0
  br i1 %cmp22, label %for.end.for.inc_crit_edge, label %for.end.cleanup29_crit_edge

for.end.cleanup29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

for.end.for.inc_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %for.end.for.inc_crit_edge, %cond.false17.for.inc_crit_edge, %cond.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %addr.056, 1
  %dec = add nsw i32 %dec57, -1
  %tobool.not = icmp eq i32 %dec57, 0
  br i1 %tobool.not, label %for.end27, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end27:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  br label %cleanup29

cleanup29:                                        ; preds = %for.end27, %for.end.cleanup29_crit_edge
  %retval.0 = phi i32 [ %call28, %for.end27 ], [ -110, %for.end.cleanup29_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_key_wr_data_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_key_addr_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_key_wr_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_err_from_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_offload_set(ptr noundef %self, ptr nocapture noundef readonly %aq_nic_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %aq_nic_cfg, i32 0, i32 1
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 8
  %and = lshr i64 %1, 40
  %2 = trunc i64 %and to i32
  %3 = and i32 %2, 1
  tail call void @hw_atl_tpo_ipv4header_crc_offload_en_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_tpo_tcp_udp_crc_offload_en_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rpo_ipv4header_crc_offload_en_set(ptr noundef %self, i32 noundef %3) #6
  tail call void @hw_atl_rpo_tcp_udp_crc_offload_en_set(ptr noundef %self, i32 noundef %3) #6
  tail call void @hw_atl_tdm_large_send_offload_en_set(ptr noundef %self, i32 noundef -1) #6
  tail call void @hw_atl_rpo_outer_vlan_tag_mode_set(ptr noundef %self, i32 noundef 1) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @hw_atl_rpo_lro_max_num_of_descriptors_set(ptr noundef %self, i32 noundef 3, i32 noundef %i.035) #6
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_rpo_lro_time_base_divider_set(ptr noundef %self, i32 noundef 1562) #6
  tail call void @hw_atl_rpo_lro_inactive_interval_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_rpo_lro_max_coalescing_interval_set(ptr noundef %self, i32 noundef 50) #6
  tail call void @hw_atl_rpo_lro_qsessions_lim_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rpo_lro_total_desc_lim_set(ptr noundef %self, i32 noundef 2) #6
  tail call void @hw_atl_rpo_lro_patch_optimization_en_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rpo_lro_min_pay_of_first_pkt_set(ptr noundef %self, i32 noundef 10) #6
  tail call void @hw_atl_rpo_lro_pkt_lim_set(ptr noundef %self, i32 noundef 1) #6
  %is_lro = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %aq_nic_cfg, i32 0, i32 24
  %4 = ptrtoint ptr %is_lro to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_lro, align 1, !range !37
  %sext = sub nsw i8 0, %5
  %cond = sext i8 %sext to i32
  tail call void @hw_atl_rpo_lro_en_set(ptr noundef %self, i32 noundef %cond) #6
  %6 = ptrtoint ptr %is_lro to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_lro, align 1, !range !37
  %sext34 = sub nsw i8 0, %7
  %cond10 = sext i8 %sext34 to i32
  tail call void @hw_atl_itr_rsc_en_set(ptr noundef %self, i32 noundef %cond10) #6
  tail call void @hw_atl_itr_rsc_delay_set(ptr noundef %self, i32 noundef 1) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpo_ipv4header_crc_offload_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpo_tcp_udp_crc_offload_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_ipv4header_crc_offload_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_tcp_udp_crc_offload_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_large_send_offload_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_outer_vlan_tag_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_max_num_of_descriptors_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_time_base_divider_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_inactive_interval_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_max_coalescing_interval_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_qsessions_lim_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_total_desc_lim_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_patch_optimization_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_min_pay_of_first_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_pkt_lim_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_lro_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_rsc_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_rsc_delay_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_atl_b0_hw_init_rx_rss_ctrl1(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %is_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %is_rss to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_rss, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tc_mode = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 -1574821342, i32 -2147470541
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rss_ctrl1.0 = phi i32 [ %cond, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @hw_atl_reg_rx_flr_rss_control1set(ptr noundef %self, i32 noundef %rss_ctrl1.0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_flr_rss_control1set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_mac_addr_set(ptr noundef %self, ptr noundef readonly %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac_addr, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_addr, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %mac_addr, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %arrayidx3 = getelementptr i8, ptr %mac_addr, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw i32 %conv4, 24
  %arrayidx6 = getelementptr i8, ptr %mac_addr, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %shl8, %shl5
  %arrayidx10 = getelementptr i8, ptr %mac_addr, i32 4
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %shl12 = shl nuw nsw i32 %conv11, 8
  %or13 = or i32 %or9, %shl12
  %arrayidx14 = getelementptr i8, ptr %mac_addr, i32 5
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %or16 = or i32 %or13, %conv15
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef 0, i32 noundef 0) #6
  tail call void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef %self, i32 noundef %or16, i32 noundef 0) #6
  tail call void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef %self, i32 noundef %or, i32 noundef 0) #6
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef 1, i32 noundef 0) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call, %if.end ], [ -22, %entry.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_tx_start(ptr noundef %self, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %1) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_desc_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_rx_start(ptr noundef %self, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %1) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_start(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hw_atl_tpb_tx_buff_en_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rpb_rx_buff_en_set(ptr noundef %self, i32 noundef 1) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_buff_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_buff_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_tx_xmit(ptr noundef %self, ptr nocapture noundef %ring, i32 noundef %frags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_tail, align 8
  %4 = getelementptr %struct.aq_ring_buff_s, ptr %1, i32 %3, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load = load i32, ptr %4, align 1
  %6 = and i32 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %6)
  %.not = icmp eq i32 %6, 3072
  br i1 %.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr6 = lshr i32 %bf.load, 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len_pkt = getelementptr %struct.aq_ring_buff_s, ptr %1, i32 %3, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %len_pkt to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %len_pkt, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %bf.lshr6, %cond.true ], [ %8, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frags)
  %cmp230.not = icmp eq i32 %frags, 0
  br i1 %cmp230.not, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end150.for.body_crit_edge, %for.body.lr.ph
  %is_gso.0.off0234 = phi i1 [ false, %for.body.lr.ph ], [ %is_gso.2.off0, %if.end150.for.body_crit_edge ]
  %is_vlan.0.off0233 = phi i1 [ false, %for.body.lr.ph ], [ %is_vlan.2.off0, %if.end150.for.body_crit_edge ]
  %pkt_len.0232 = phi i32 [ %cond, %for.body.lr.ph ], [ %pkt_len.1, %if.end150.for.body_crit_edge ]
  %frag_count.0231 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end150.for.body_crit_edge ]
  %9 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dx_ring, align 4
  %11 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sw_tail, align 8
  %mul = shl i32 %12, 4
  %arrayidx8 = getelementptr i8, ptr %10, i32 %mul
  %ctl = getelementptr inbounds %struct.hw_atl_txd_s, ptr %arrayidx8, i32 0, i32 1
  %ctl2 = getelementptr inbounds %struct.hw_atl_txd_s, ptr %arrayidx8, i32 0, i32 2
  %13 = call ptr @memset(ptr %arrayidx8, i32 0, i32 16)
  %14 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring, align 8
  %16 = load i32, ptr %sw_tail, align 8
  %arrayidx11 = getelementptr %struct.aq_ring_buff_s, ptr %15, i32 %16
  %17 = getelementptr %struct.aq_ring_buff_s, ptr %15, i32 %16, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load12 = load i32, ptr %17, align 1
  %19 = and i32 %bf.load12, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %for.body.if.end57_crit_edge, label %if.then

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then:                                          ; preds = %for.body
  %21 = and i32 %bf.load12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  br i1 %tobool15.not, label %if.then.if.end_crit_edge, label %if.then24

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ctl to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 4194304, ptr %ctl, align 1
  br label %if.end

if.end:                                           ; preds = %if.then24, %if.then.if.end_crit_edge
  %23 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %ctl, align 1
  %or27 = or i32 %24, 2
  store i32 %or27, ptr %ctl, align 1
  %len_l3 = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 2
  %25 = ptrtoint ptr %len_l3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %len_l3, align 1
  %conv = zext i8 %26 to i32
  %shl = shl i32 %conv, 31
  %len_l2 = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 1
  %27 = ptrtoint ptr %len_l2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %len_l2, align 1
  %conv28 = zext i8 %28 to i32
  %shl29 = shl nuw i32 %conv28, 24
  %or30 = or i32 %shl, %or27
  %or32 = or i32 %or30, %shl29
  store i32 %or32, ptr %ctl, align 1
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %arrayidx11, align 1
  %shl33 = shl i32 %30, 16
  %31 = ptrtoint ptr %ctl2 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %ctl2, align 1
  %or35 = or i32 %32, %shl33
  store i32 %or35, ptr %ctl2, align 1
  %len_l4 = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 3
  %33 = ptrtoint ptr %len_l4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %len_l4, align 1
  %conv36 = zext i8 %34 to i32
  %35 = load i8, ptr %len_l3, align 1
  %conv38 = zext i8 %35 to i32
  %36 = load i8, ptr %len_l2, align 1
  %conv40 = zext i8 %36 to i32
  %37 = add nuw nsw i32 %conv36, %conv38
  %38 = add nuw nsw i32 %37, %conv40
  %sub = sub i32 %pkt_len.0232, %38
  %is_ipv6 = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 4
  %39 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load42 = load i8, ptr %is_ipv6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42)
  %tobool44.not = icmp sgt i8 %bf.load42, -1
  br i1 %tobool44.not, label %if.end.if.end48_crit_edge, label %if.then45

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then45:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or47 = or i32 %or32, 2097152
  %40 = ptrtoint ptr %ctl to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %or47, ptr %ctl, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end.if.end48_crit_edge
  %41 = ptrtoint ptr %len_l4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %len_l4, align 1
  %conv50 = zext i8 %42 to i32
  %shl51 = shl nuw nsw i32 %conv50, 8
  %43 = ptrtoint ptr %len_l3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %len_l3, align 1
  %45 = lshr i8 %44, 1
  %46 = zext i8 %45 to i32
  %or54 = or i32 %shl51, %46
  %47 = ptrtoint ptr %ctl2 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %ctl2, align 1
  %or56 = or i32 %or54, %48
  store i32 %or56, ptr %ctl2, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.end48, %for.body.if.end57_crit_edge
  %pkt_len.1 = phi i32 [ %sub, %if.end48 ], [ %pkt_len.0232, %for.body.if.end57_crit_edge ]
  %is_gso.1.off0 = phi i1 [ true, %if.end48 ], [ %is_gso.0.off0234, %for.body.if.end57_crit_edge ]
  %49 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %bf.load58 = load i32, ptr %17, align 1
  %50 = and i32 %bf.load58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool61.not = icmp eq i32 %50, 0
  br i1 %tobool61.not, label %if.end57.if.end69_crit_edge, label %if.then62

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %ctl, align 1
  %or64 = or i32 %52, 2
  store i32 %or64, ptr %ctl, align 1
  %vlan_tx_tag = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 6
  %53 = ptrtoint ptr %vlan_tx_tag to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %vlan_tx_tag, align 1
  %conv65 = zext i16 %54 to i32
  %shl66 = shl nuw nsw i32 %conv65, 4
  %or68 = or i32 %shl66, %or64
  store i32 %or68, ptr %ctl, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end57.if.end69_crit_edge
  %is_vlan.1.off0 = phi i1 [ true, %if.then62 ], [ %is_vlan.0.off0233, %if.end57.if.end69_crit_edge ]
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load70 = load i32, ptr %17, align 1
  %56 = and i32 %bf.load70, 784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %if.then84, label %if.end69.if.end150_crit_edge

if.end69.if.end150_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then84:                                        ; preds = %if.end69
  %58 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %arrayidx11, align 1
  %conv87 = zext i32 %59 to i64
  %60 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %conv87, ptr %arrayidx8, align 1
  %61 = lshr i32 %bf.load70, 12
  %shl89 = and i32 %61, 1048560
  %62 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ctl, align 1
  %or91 = or i32 %shl89, %63
  %or93 = or i32 %or91, 1
  store i32 %or93, ptr %ctl, align 1
  %shl94 = shl i32 %pkt_len.1, 14
  %64 = ptrtoint ptr %ctl2 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %ctl2, align 1
  %or97 = or i32 %65, %shl94
  %brmerge = select i1 %is_gso.1.off0, i1 true, i1 %is_vlan.1.off0
  %or105 = or i32 %or97, 8192
  %spec.select = select i1 %brmerge, i32 %or105, i32 %or97
  store i32 %spec.select, ptr %ctl2, align 1
  br i1 %is_gso.1.off0, label %if.then108, label %if.then84.if.end111_crit_edge

if.then84.if.end111_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then108:                                       ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %ctl, align 1
  %or110 = or i32 %67, 67108864
  store i32 %or110, ptr %ctl, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.then84.if.end111_crit_edge
  %68 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load112 = load i32, ptr %17, align 1
  %69 = and i32 %bf.load112, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool115.not = icmp eq i32 %69, 0
  br i1 %tobool115.not, label %if.end111.if.end119_crit_edge, label %if.then116

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %ctl, align 1
  %or118 = or i32 %71, 16777216
  store i32 %or118, ptr %ctl, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.end111.if.end119_crit_edge
  %72 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %bf.load120 = load i32, ptr %17, align 1
  %73 = and i32 %bf.load120, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %if.end119.if.end132_crit_edge, label %if.then129

if.end119.if.end132_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

if.then129:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %ctl, align 1
  %or131 = or i32 %76, 33554432
  store i32 %or131, ptr %ctl, align 1
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end119.if.end132_crit_edge
  br i1 %is_vlan.1.off0, label %if.then134, label %if.end132.if.end137_crit_edge

if.end132.if.end137_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then134:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %ctl, align 1
  %or136 = or i32 %78, 4194304
  store i32 %or136, ptr %ctl, align 1
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %if.end132.if.end137_crit_edge
  %79 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %bf.load138 = load i32, ptr %17, align 1
  %80 = and i32 %bf.load138, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool141.not = icmp eq i32 %80, 0
  br i1 %tobool141.not, label %if.end137.if.end150_crit_edge, label %if.then144, !prof !38

if.end137.if.end150_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then144:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %ctl, align 1
  %or148 = or i32 %82, 136314880
  store i32 %or148, ptr %ctl, align 1
  br label %if.end150

if.end150:                                        ; preds = %if.then144, %if.end137.if.end150_crit_edge, %if.end69.if.end150_crit_edge
  %is_vlan.2.off0 = phi i1 [ %is_vlan.1.off0, %if.end69.if.end150_crit_edge ], [ false, %if.then144 ], [ %is_vlan.1.off0, %if.end137.if.end150_crit_edge ]
  %is_gso.2.off0 = phi i1 [ %is_gso.1.off0, %if.end69.if.end150_crit_edge ], [ false, %if.then144 ], [ %is_gso.1.off0, %if.end137.if.end150_crit_edge ]
  %83 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sw_tail, align 8
  %inc.i = add i32 %84, 1
  %85 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %86)
  %cmp.not.i = icmp ult i32 %inc.i, %86
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %87 = ptrtoint ptr %sw_tail to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select.i, ptr %sw_tail, align 8
  %inc = add nuw i32 %frag_count.0231, 1
  %exitcond.not = icmp eq i32 %inc, %frags
  br i1 %exitcond.not, label %if.end150.for.end_crit_edge, label %if.end150.for.body_crit_edge

if.end150.for.body_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end150.for.end_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end150.for.end_crit_edge, %cond.end.for.end_crit_edge
  %88 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sw_tail, align 8
  %idx.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %90 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %idx.i, align 4
  tail call void @hw_atl_reg_tx_dma_desc_tail_ptr_set(ptr noundef %self, i32 noundef %89, i32 noundef %91) #6
  %call154 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call154
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_rx_init(ptr noundef %self, ptr nocapture noundef readonly %aq_ring, ptr nocapture noundef readonly %aq_ring_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dx_ring_pa = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 11
  %0 = ptrtoint ptr %dx_ring_pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dx_ring_pa, align 8
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %2 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_nic_cfg, align 8
  %is_vlan_rx_strip = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %is_vlan_rx_strip to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vlan_rx_strip, align 8
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 3
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %7) #6
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_head_splitting_set(ptr noundef %self, i32 noundef 0, i32 noundef %9) #6
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_rx_dma_desc_base_addresslswset(ptr noundef %self, i32 noundef %1, i32 noundef %11) #6
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_rx_dma_desc_base_addressmswset(ptr noundef %self, i32 noundef 0, i32 noundef %13) #6
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 7
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %div53 = lshr i32 %15, 3
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_len_set(ptr noundef %self, i32 noundef %div53, i32 noundef %17) #6
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_data_buff_size_set(ptr noundef %self, i32 noundef 2, i32 noundef %19) #6
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_head_buff_size_set(ptr noundef %self, i32 noundef 0, i32 noundef %21) #6
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_head_splitting_set(ptr noundef %self, i32 noundef 0, i32 noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  %lnot.ext = zext i1 %tobool to i32
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rpo_rx_desc_vlan_stripping_set(ptr noundef %self, i32 noundef %lnot.ext, i32 noundef %25) #6
  %26 = ptrtoint ptr %aq_ring_param to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aq_ring_param, align 4
  %28 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx, align 4
  tail call void @hw_atl_itr_irq_map_rx_set(ptr noundef %self, i32 noundef %27, i32 noundef %29) #6
  %30 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idx, align 4
  tail call void @hw_atl_itr_irq_map_en_rx_set(ptr noundef %self, i32 noundef 1, i32 noundef %31) #6
  %cpu = getelementptr inbounds %struct.aq_ring_param_s, ptr %aq_ring_param, i32 0, i32 1
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu, align 4
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_cpu_id_set(ptr noundef %self, i32 noundef %33, i32 noundef %35) #6
  %36 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_dca_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %37) #6
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_head_dca_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %39) #6
  %40 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_pld_dca_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %41) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_head_splitting_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_dma_desc_base_addresslswset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_dma_desc_base_addressmswset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_len_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_data_buff_size_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_head_buff_size_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpo_rx_desc_vlan_stripping_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_map_rx_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_map_en_rx_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_cpu_id_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_dca_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_head_dca_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_pld_dca_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_tx_init(ptr noundef %self, ptr nocapture noundef readonly %aq_ring, ptr nocapture noundef readonly %aq_ring_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dx_ring_pa = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 11
  %0 = ptrtoint ptr %dx_ring_pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dx_ring_pa, align 8
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_tx_dma_desc_base_addresslswset(ptr noundef %self, i32 noundef %1, i32 noundef %3) #6
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_tx_dma_desc_base_addressmswset(ptr noundef %self, i32 noundef 0, i32 noundef %5) #6
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 7
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %div32 = lshr i32 %7, 3
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_len_set(ptr noundef %self, i32 noundef %div32, i32 noundef %9) #6
  %sw_tail.i = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 6
  %10 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sw_tail.i, align 8
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_tx_dma_desc_tail_ptr_set(ptr noundef %self, i32 noundef %11, i32 noundef %13) #6
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_wr_wb_threshold_set(ptr noundef %self, i32 noundef 0, i32 noundef %15) #6
  %16 = ptrtoint ptr %aq_ring_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aq_ring_param, align 4
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  tail call void @hw_atl_itr_irq_map_tx_set(ptr noundef %self, i32 noundef %17, i32 noundef %19) #6
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  tail call void @hw_atl_itr_irq_map_en_tx_set(ptr noundef %self, i32 noundef 1, i32 noundef %21) #6
  %cpu = getelementptr inbounds %struct.aq_ring_param_s, ptr %aq_ring_param, i32 0, i32 1
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_cpu_id_set(ptr noundef %self, i32 noundef %23, i32 noundef %25) #6
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_dca_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %27) #6
  %call10 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_tx_dma_desc_base_addresslswset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_tx_dma_desc_base_addressmswset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_desc_len_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_desc_wr_wb_threshold_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_map_tx_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_map_en_tx_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_cpu_id_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_desc_dca_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_rx_fill(ptr noundef %self, ptr nocapture noundef readonly %ring, i32 noundef %sw_tail_old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sw_tail_old)
  %cmp.not13 = icmp eq i32 %1, %sw_tail_old
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %sw_tail_old.addr.014 = phi i32 [ %sw_tail_old, %for.body.lr.ph ], [ %spec.select.i, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dx_ring, align 4
  %mul = shl i32 %sw_tail_old.addr.014, 4
  %arrayidx = getelementptr i8, ptr %3, i32 %mul
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 8
  %arrayidx1 = getelementptr %struct.aq_ring_buff_s, ptr %5, i32 %sw_tail_old.addr.014
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx1, align 1
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %conv, ptr %arrayidx, align 1
  %hdr_addr = getelementptr inbounds %struct.hw_atl_rxd_s, ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %hdr_addr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %hdr_addr, align 1
  %inc.i = add i32 %sw_tail_old.addr.014, 1
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %11)
  %cmp.not.i = icmp ult i32 %inc.i, %11
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %12 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sw_tail, align 8
  %cmp.not = icmp eq i32 %spec.select.i, %13
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sw_tail_old.addr.0.lcssa = phi i32 [ %sw_tail_old, %entry.for.end_crit_edge ], [ %spec.select.i, %for.body.for.end_crit_edge ]
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_rx_dma_desc_tail_ptr_set(ptr noundef %self, i32 noundef %sw_tail_old.addr.0.lcssa, i32 noundef %15) #6
  %call2 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_dma_desc_tail_ptr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_tx_head_update(ptr noundef %self, ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %call = tail call i32 @hw_atl_tdm_tx_desc_head_ptr_get(ptr noundef %self, i32 noundef %1) #6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %self, i32 noundef 4) #6
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %self, align 4
  %and.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.err_exit_crit_edge

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 4
  %4 = ptrtoint ptr %hw_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %hw_head, align 8
  %call2 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call2, %if.end ], [ -6, %entry.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_tdm_tx_desc_head_ptr_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_rx_receive(ptr noundef %self, ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 1
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 4
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_head, align 8
  %2 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not303 = icmp eq i32 %1, %3
  br i1 %cmp.not303, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  %jumbo_packets = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 10, i32 0, i32 5
  %lro_packets = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 10, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %spec.select.i298, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dx_ring, align 4
  %mul = shl i32 %4, 4
  %arrayidx = getelementptr i8, ptr %6, i32 %mul
  %status = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %status, align 1
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring, align 8
  %arrayidx3 = getelementptr %struct.aq_ring_buff_s, ptr %11, i32 %4
  %12 = getelementptr %struct.aq_ring_buff_s, ptr %11, i32 %4, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %12, align 1
  %is_hash_l4 = getelementptr inbounds %struct.anon.4, ptr %arrayidx3, i32 0, i32 2
  %14 = ptrtoint ptr %is_hash_l4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_hash_l4, align 1
  %15 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %status, align 1
  %17 = trunc i16 %16 to i8
  %18 = lshr i8 %17, 2
  %conv7 = and i8 %18, 15
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx, align 1
  %and11 = lshr i32 %20, 4
  %21 = and i32 %20, 524336
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %21)
  %22 = icmp eq i32 %21, 524288
  br i1 %22, label %if.then18, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = lshr i8 %17, 3
  %.lobit = and i8 %23, 1
  %24 = xor i8 %.lobit, 1
  %25 = zext i8 %24 to i32
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load = load i32, ptr %12, align 1
  %bf.shl = shl nuw nsw i32 %25, 15
  %bf.clear = and i32 %bf.load, -32769
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %12, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end.if.end22_crit_edge
  %27 = and i32 %20, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not = icmp eq i32 %27, 0
  br i1 %tobool24.not, label %if.end22.if.end68_crit_edge, label %if.then25

if.end22.if.end68_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then25:                                        ; preds = %if.end22
  %and26 = and i32 %and11, 28
  %28 = zext i32 %and26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and26, label %if.then25.if.end68_crit_edge [
    i32 4, label %if.then29
    i32 0, label %if.then46
  ]

if.then25.if.end68_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = zext i8 %conv7 to i32
  %and31 = and i32 %conv30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %bf.load38 = load i32, ptr %12, align 1
  %30 = shl nuw nsw i32 %conv30, 11
  %and34.lobit.op = and i32 %30, 16384
  %bf.value39 = select i1 %tobool32.not, i32 %and34.lobit.op, i32 0
  %bf.clear41 = and i32 %bf.load38, -16385
  %bf.set42 = or i32 %bf.clear41, %bf.value39
  br label %if.end68.sink.split

if.then46:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %conv47 = zext i8 %conv7 to i32
  %and48 = and i32 %conv47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %bf.load61 = load i32, ptr %12, align 1
  %32 = shl nuw nsw i32 %conv47, 10
  %and53.lobit.op = and i32 %32, 8192
  %bf.value62 = select i1 %tobool49.not, i32 %and53.lobit.op, i32 0
  %bf.clear64 = and i32 %bf.load61, -8193
  %bf.set65 = or i32 %bf.clear64, %bf.value62
  br label %if.end68.sink.split

if.end68.sink.split:                              ; preds = %if.then46, %if.then29
  %bf.set42.sink = phi i32 [ %bf.set42, %if.then29 ], [ %bf.set65, %if.then46 ]
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %bf.set42.sink, ptr %12, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.then25.if.end68_crit_edge, %if.end22.if.end68_crit_edge
  %conv69 = zext i8 %conv7 to i32
  %and70 = and i32 %conv69, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %bf.load76 = load i32, ptr %12, align 1
  %bf.shl78 = select i1 %tobool71.not, i32 0, i32 4096
  %bf.clear79 = and i32 %bf.load76, -4097
  %bf.set80 = or i32 %bf.clear79, %bf.shl78
  store i32 %bf.set80, ptr %12, align 1
  %pkt_len = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 3
  %35 = ptrtoint ptr %pkt_len to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %pkt_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %36)
  %cmp82 = icmp ult i16 %36, 61
  br i1 %cmp82, label %if.then89, label %if.end68.if.end96_crit_edge, !prof !39

if.end68.if.end96_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then89:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear94 = and i32 %bf.load76, -36865
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %bf.clear94, ptr %12, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %if.end68.if.end96_crit_edge
  %38 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %aq_nic_cfg, align 8
  %is_vlan_rx_strip = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %is_vlan_rx_strip to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_vlan_rx_strip, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool98.not = icmp eq i8 %41, 0
  %42 = and i32 %20, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %43 = icmp eq i32 %42, 0
  %or.cond = select i1 %tobool98.not, i1 true, i1 %43
  br i1 %or.cond, label %if.end96.if.end108_crit_edge, label %if.then104

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then104:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %bf.load105 = load i32, ptr %12, align 1
  %bf.set107 = or i32 %bf.load105, 16
  store i32 %bf.set107, ptr %12, align 1
  %vlan = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 5
  %45 = ptrtoint ptr %vlan to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %vlan, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %vlan_rx_tag = getelementptr inbounds %struct.anon.4, ptr %arrayidx3, i32 0, i32 5
  %48 = ptrtoint ptr %vlan_rx_tag to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %vlan_rx_tag, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.end96.if.end108_crit_edge
  %and110 = and i32 %conv69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %if.end108.if.then116_crit_edge

if.end108.if.then116_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then116

lor.lhs.false112:                                 ; preds = %if.end108
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %arrayidx, align 1
  %and114 = and i32 %50, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %lor.lhs.false112.if.end120_crit_edge, label %lor.lhs.false112.if.then116_crit_edge

lor.lhs.false112.if.then116_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then116

lor.lhs.false112.if.end120_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then116:                                       ; preds = %lor.lhs.false112.if.then116_crit_edge, %if.end108.if.then116_crit_edge
  %51 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load117 = load i32, ptr %12, align 1
  %bf.set119 = or i32 %bf.load117, 32
  store i32 %bf.set119, ptr %12, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %lor.lhs.false112.if.end120_crit_edge
  %52 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aq_nic_cfg, align 8
  %is_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %53, i32 0, i32 23
  %54 = ptrtoint ptr %is_rss to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_rss, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool122.not = icmp eq i8 %55, 0
  br i1 %tobool122.not, label %if.end120.if.end144_crit_edge, label %if.then123

if.end120.if.end144_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then123:                                       ; preds = %if.end120
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx, align 1
  %conv126 = and i32 %57, 15
  %58 = add nsw i32 %conv126, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %58)
  %59 = icmp ult i32 %58, 7
  br i1 %59, label %if.then133, label %if.then123.if.end144_crit_edge

if.then123.if.end144_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then133:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  %60 = and i32 %57, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %61 = icmp eq i32 %60, 4
  %conv140 = zext i1 %61 to i8
  %62 = ptrtoint ptr %is_hash_l4 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv140, ptr %is_hash_l4, align 1
  %rss_hash = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 1
  %63 = ptrtoint ptr %rss_hash to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %rss_hash, align 1
  %65 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %arrayidx3, align 1
  br label %if.end144

if.end144:                                        ; preds = %if.then133, %if.then123.if.end144_crit_edge, %if.end120.if.end144_crit_edge
  %66 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %67)
  %tobool148 = icmp ugt i16 %67, 4095
  %68 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load153 = load i32, ptr %12, align 1
  %bf.shl155 = select i1 %tobool148, i32 8, i32 0
  %bf.clear156 = and i32 %bf.load153, -9
  %bf.set157 = or i32 %bf.clear156, %bf.shl155
  store i32 %bf.set157, ptr %12, align 1
  %69 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %status, align 1
  %71 = and i16 %70, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool161.not = icmp eq i16 %71, 0
  %72 = ptrtoint ptr %pkt_len to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %pkt_len, align 1
  br i1 %tobool161.not, label %if.else186, label %if.then162

if.then162:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  %74 = and i16 %73, 2047
  %bf.clear168 = and i32 %bf.set157, 64511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool171.not = icmp eq i16 %74, 0
  %narrow = select i1 %tobool171.not, i16 2048, i16 %74
  %spec.select293 = zext i16 %narrow to i32
  %bf.shl180 = shl nuw nsw i32 %spec.select293, 16
  %bf.set182 = or i32 %bf.shl180, %bf.clear168
  %next = getelementptr inbounds %struct.anon.4, ptr %arrayidx3, i32 0, i32 1
  %75 = ptrtoint ptr %next to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 0, ptr %next, align 1
  %bf.set185 = or i32 %bf.set182, 1024
  %76 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %bf.set185, ptr %12, align 1
  br label %for.inc

if.else186:                                       ; preds = %if.end144
  %77 = tail call i16 @llvm.umin.i16(i16 %73, i16 2048)
  %spec.select294 = zext i16 %77 to i32
  %bf.shl199 = shl nuw nsw i32 %spec.select294, 16
  %bf.clear200 = and i32 %bf.set157, 65535
  %bf.set201 = or i32 %bf.shl199, %bf.clear200
  %78 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %bf.set201, ptr %12, align 1
  br i1 %tobool148, label %if.then206, label %if.else208

if.then206:                                       ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #8
  %next_desc_ptr = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 4
  %79 = ptrtoint ptr %next_desc_ptr to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %next_desc_ptr, align 1
  %next207 = getelementptr inbounds %struct.anon.4, ptr %arrayidx3, i32 0, i32 1
  %81 = ptrtoint ptr %next207 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %80, ptr %next207, align 1
  %82 = ptrtoint ptr %lro_packets to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %lro_packets, align 8
  %inc = add i64 %83, 1
  store i64 %inc, ptr %lro_packets, align 8
  br label %for.inc

if.else208:                                       ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hw_head, align 8
  %inc.i = add i32 %85, 1
  %86 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %87)
  %cmp.not.i = icmp ult i32 %inc.i, %87
  %88 = trunc i32 %inc.i to i16
  %conv210 = select i1 %cmp.not.i, i16 %88, i16 0
  %next211 = getelementptr inbounds %struct.anon.4, ptr %arrayidx3, i32 0, i32 1
  %89 = ptrtoint ptr %next211 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %conv210, ptr %next211, align 1
  %90 = ptrtoint ptr %jumbo_packets to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %jumbo_packets, align 8
  %inc213 = add i64 %91, 1
  store i64 %inc213, ptr %jumbo_packets, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else208, %if.then206, %if.then162
  %92 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hw_head, align 8
  %inc.i295 = add i32 %93, 1
  %94 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i295, i32 %95)
  %cmp.not.i297 = icmp ult i32 %inc.i295, %95
  %spec.select.i298 = select i1 %cmp.not.i297, i32 %inc.i295, i32 0
  %96 = ptrtoint ptr %hw_head to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %spec.select.i298, ptr %hw_head, align 8
  %97 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sw_tail, align 8
  %cmp.not = icmp eq i32 %spec.select.i298, %98
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call223 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call223
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_irq_enable(ptr noundef %self, i64 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %mask to i32
  tail call void @hw_atl_itr_irq_msk_setlsw_set(ptr noundef %self, i32 noundef %conv) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_msk_setlsw_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_irq_disable(ptr noundef %self, i64 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %mask to i32
  tail call void @hw_atl_itr_irq_msk_clearlsw_set(ptr noundef %self, i32 noundef %conv) #6
  tail call void @hw_atl_itr_irq_status_clearlsw_set(ptr noundef %self, i32 noundef %conv) #6
  %dpc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dpc, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %dpc, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dpc, ptr %dpc, i32 1, ptr elementtype(i32) %dpc) #6, !srcloc !40
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_msk_clearlsw_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_status_clearlsw_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_irq_read(ptr noundef %self, ptr nocapture noundef writeonly %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl_itr_irq_statuslsw_get(ptr noundef %self) #6
  %conv = zext i32 %call to i64
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %mask, align 8
  %call1 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_itr_irq_statuslsw_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_packet_filter_set(ptr noundef %self, i32 noundef %packet_filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %and = and i32 %packet_filter, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.end, label %entry.lor.end7_crit_edge

entry.lor.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end7

lor.end:                                          ; preds = %entry
  %priv_flags = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priv_flags, align 8
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %lor.rhs5, label %lor.end.lor.end7_crit_edge

lor.end.lor.end7_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end7

lor.rhs5:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  %is_vlan_force_promisc = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %is_vlan_force_promisc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_vlan_force_promisc, align 2, !range !37
  %6 = zext i8 %5 to i32
  br label %lor.end7

lor.end7:                                         ; preds = %lor.rhs5, %lor.end.lor.end7_crit_edge, %entry.lor.end7_crit_edge
  %lor.ext58 = phi i32 [ 1, %lor.end.lor.end7_crit_edge ], [ 0, %lor.rhs5 ], [ 1, %entry.lor.end7_crit_edge ]
  %7 = phi i32 [ 1, %lor.end.lor.end7_crit_edge ], [ %6, %lor.rhs5 ], [ 1, %entry.lor.end7_crit_edge ]
  tail call void @hw_atl_rpfl2promiscuous_mode_en_set(ptr noundef %self, i32 noundef %lor.ext58) #6
  tail call void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %self, i32 noundef %7) #6
  %and9 = and i32 %packet_filter, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and13 = lshr i32 %packet_filter, 12
  %and13.lobit = and i32 %and13, 1
  %8 = select i1 %tobool10.not, i32 0, i32 %and13.lobit
  tail call void @hw_atl_rpfl2multicast_flr_en_set(ptr noundef %self, i32 noundef %8, i32 noundef 0) #6
  tail call void @hw_atl_rpfl2_accept_all_mc_packets_set(ptr noundef %self, i32 noundef %8) #6
  %and27 = lshr i32 %packet_filter, 1
  %and27.lobit = and i32 %and27, 1
  tail call void @hw_atl_rpfl2broadcast_en_set(ptr noundef %self, i32 noundef %and27.lobit) #6
  %is_mc_list_enabled = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 19
  %mc_list_count = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %land.end35.for.body_crit_edge, %lor.end7
  %i.059 = phi i32 [ 1, %lor.end7 ], [ %inc, %land.end35.for.body_crit_edge ]
  %9 = ptrtoint ptr %is_mc_list_enabled to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %is_mc_list_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool30.not = icmp eq i16 %10, 0
  br i1 %tobool30.not, label %for.body.land.end35_crit_edge, label %land.rhs31

for.body.land.end35_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end35

land.rhs31:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mc_list_count, align 2
  %conv32 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.059, i32 %conv32)
  %cmp33 = icmp ule i32 %i.059, %conv32
  br label %land.end35

land.end35:                                       ; preds = %land.rhs31, %for.body.land.end35_crit_edge
  %13 = phi i1 [ false, %for.body.land.end35_crit_edge ], [ %cmp33, %land.rhs31 ]
  %cond37 = zext i1 %13 to i32
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef %cond37, i32 noundef %i.059) #6
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.end, label %land.end35.for.body_crit_edge

land.end35.for.body_crit_edge:                    ; preds = %land.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %land.end35
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2promiscuous_mode_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2multicast_flr_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2_accept_all_mc_packets_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2broadcast_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_tx_stop(ptr noundef %self, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %1) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_hw_ring_rx_stop(ptr noundef %self, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %1) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl_b0_set_loopback(ptr noundef %self, i32 noundef %mode, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %mode, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i1 %enable to i32
  tail call void @hw_atl_tpb_tx_dma_sys_lbk_en_set(ptr noundef %self, i32 noundef %conv) #6
  tail call void @hw_atl_rpb_dma_sys_lbk_set(ptr noundef %self, i32 noundef %conv) #6
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = zext i1 %enable to i32
  tail call void @hw_atl_tpo_tx_pkt_sys_lbk_en_set(ptr noundef %self, i32 noundef %conv5) #6
  tail call void @hw_atl_rpf_tpo_to_rpf_sys_lbk_set(ptr noundef %self, i32 noundef %conv5) #6
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = zext i1 %enable to i32
  tail call void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %self, i32 noundef %conv10) #6
  tail call void @hw_atl_rpfl2promiscuous_mode_en_set(ptr noundef %self, i32 noundef %conv10) #6
  %lnot = xor i1 %enable, true
  %lnot.ext = zext i1 %lnot to i32
  tail call void @hw_atl_tpb_tx_tx_clk_gate_en_set(ptr noundef %self, i32 noundef %lnot.ext) #6
  tail call void @hw_atl_tpb_tx_dma_net_lbk_en_set(ptr noundef %self, i32 noundef %conv10) #6
  tail call void @hw_atl_rpb_dma_net_lbk_set(ptr noundef %self, i32 noundef %conv10) #6
  br label %return

return:                                           ; preds = %sw.bb8, %sw.bb3, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_dma_sys_lbk_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_dma_sys_lbk_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpo_tx_pkt_sys_lbk_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_tpo_to_rpf_sys_lbk_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_tx_clk_gate_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_dma_net_lbk_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_dma_net_lbk_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_soft_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_initfw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_reset(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl_utils_soft_reset(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %0 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_fw_ops, align 4
  %set_state = getelementptr inbounds %struct.aq_fw_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %set_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_state, align 4
  %call1 = tail call i32 %3(ptr noundef %self, i32 noundef 1) #6
  %call2 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_init(ptr noundef %self, ptr noundef %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg1 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg1, align 8
  %tc_mode.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %tc_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_mode.i, align 4
  tail call void @hw_atl_tpb_tps_tx_tc_mode_set(ptr noundef %self, i32 noundef %3) #6
  tail call void @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(ptr noundef %self, i32 noundef 4086) #6
  tail call void @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(ptr noundef %self, i32 noundef 4086) #6
  tail call void @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(ptr noundef %self, i32 noundef 3967) #6
  tail call void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #6
  %chip_features.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 12
  %4 = ptrtoint ptr %chip_features.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_features.i, align 8
  %and.i = shl i32 %5, 15
  %6 = and i32 %and.i, 65536
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 28736, i32 noundef %6) #6
  tail call void @hw_atl_tdm_tx_dca_en_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_tdm_tx_dca_mode_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_tpb_tx_path_scp_ins_en_set(ptr noundef %self, i32 noundef 1) #6
  %call.i = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  %7 = ptrtoint ptr %aq_nic_cfg1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_nic_cfg1, align 8
  %tc_mode.i54 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %tc_mode.i54 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tc_mode.i54, align 4
  tail call void @hw_atl_rpb_rpf_rx_traf_class_mode_set(ptr noundef %self, i32 noundef %10) #6
  tail call void @hw_atl_rpb_rx_flow_ctl_mode_set(ptr noundef %self, i32 noundef 1) #6
  %11 = ptrtoint ptr %aq_nic_cfg1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_nic_cfg1, align 8
  %is_rss.i.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %is_rss.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_rss.i.i, align 2, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %entry.hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i_crit_edge, label %if.then.i.i

entry.hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tc_mode.i.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %12, i32 0, i32 29
  %15 = ptrtoint ptr %tc_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  %cond.i.i = select i1 %cmp.i.i, i32 -1574821342, i32 -2147470541
  br label %hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i

hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i:            ; preds = %if.then.i.i, %entry.hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i_crit_edge
  %rss_ctrl1.0.i.i = phi i32 [ %cond.i.i, %if.then.i.i ], [ 0, %entry.hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i_crit_edge ]
  tail call void @hw_atl_reg_rx_flr_rss_control1set(ptr noundef %self, i32 noundef %rss_ctrl1.0.i.i) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i
  %i.01.i = phi i32 [ 33, %hw_atl_b0_hw_init_rx_rss_ctrl1.exit.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.01.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  %cond.i = zext i1 %cmp.i to i32
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef %cond.i, i32 noundef %dec.i) #6
  tail call void @hw_atl_rpfl2unicast_flr_act_set(ptr noundef %self, i32 noundef 1, i32 noundef %dec.i) #6
  br i1 %cmp.i, label %hw_atl_b0_hw_init_rx_path.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hw_atl_b0_hw_init_rx_path.exit:                   ; preds = %for.body.i
  tail call void @hw_atl_reg_rx_flr_mcst_flr_msk_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_reg_rx_flr_mcst_flr_set(ptr noundef %self, i32 noundef 69631, i32 noundef 0) #6
  tail call void @hw_atl_rpf_vlan_outer_etht_set(ptr noundef %self, i32 noundef 34984) #6
  tail call void @hw_atl_rpf_vlan_inner_etht_set(ptr noundef %self, i32 noundef 33024) #6
  tail call void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rpf_vlan_accept_untagged_packets_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rpf_vlan_untagged_act_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #6
  %17 = ptrtoint ptr %chip_features.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chip_features.i, align 8
  %and.i56 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool1.not.i = icmp eq i32 %and.i56, 0
  %cond3.i = select i1 %tobool1.not.i, i32 0, i32 983040
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 20544, i32 noundef %cond3.i) #6
  tail call void @hw_atl_rpfl2broadcast_flr_act_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rpfl2broadcast_count_threshold_set(ptr noundef %self, i32 noundef 65535) #6
  tail call void @hw_atl_rdm_rx_dca_en_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_rdm_rx_dca_mode_set(ptr noundef %self, i32 noundef 0) #6
  %call.i57 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  %call3 = tail call i32 @hw_atl_b0_hw_mac_addr_set(ptr noundef %self, ptr noundef %mac_addr)
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %19 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aq_fw_ops, align 4
  %set_link_speed = getelementptr inbounds %struct.aq_fw_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %set_link_speed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_link_speed, align 4
  %link_speed_msk = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %link_speed_msk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_speed_msk, align 8
  %call4 = tail call i32 %22(ptr noundef %self, i32 noundef %24) #6
  %25 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aq_fw_ops, align 4
  %set_state = getelementptr inbounds %struct.aq_fw_ops, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %set_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_state, align 4
  %call6 = tail call i32 %28(ptr noundef %self, i32 noundef 2) #6
  %29 = ptrtoint ptr %aq_nic_cfg1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aq_nic_cfg1, align 8
  %is_ptp.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 26
  %31 = ptrtoint ptr %is_ptp.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_ptp.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  tail call void @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(ptr noundef %self, i32 noundef 10) #6
  tail call void @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(ptr noundef %self, i32 noundef 0) #6
  %tcs.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 31
  %33 = ptrtoint ptr %tcs.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tcs.i, align 4
  %div.lhs.trunc.i = select i1 %tobool.not.i, i8 -96, i8 -104
  %div2.i = udiv i8 %div.lhs.trunc.i, %34
  %div.zext.i = zext i8 %div2.i to i32
  %div4.lhs.trunc.i = select i1 %tobool.not.i, i16 320, i16 304
  %div4.rhs.trunc.i = zext i8 %34 to i16
  %div43.i = udiv i16 %div4.lhs.trunc.i, %div4.rhs.trunc.i
  %div4.zext.i = zext i16 %div43.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp5.not.i = icmp eq i8 %34, 0
  br i1 %cmp5.not.i, label %hw_atl_b0_hw_init_rx_path.exit.for.end.i_crit_edge, label %for.body.lr.ph.i

hw_atl_b0_hw_init_rx_path.exit.for.end.i_crit_edge: ; preds = %hw_atl_b0_hw_init_rx_path.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %hw_atl_b0_hw_init_rx_path.exit
  %mul8.i = mul nuw nsw i32 %div.zext.i, 2112
  %div9.i = udiv i32 %mul8.i, 100
  %div12.i = shl nuw nsw i32 %div.zext.i, 4
  %mul14.i = mul nuw nsw i32 %div4.zext.i, 2112
  %div15.i = udiv i32 %mul14.i, 100
  %div18.i = shl nuw nsw i32 %div4.zext.i, 4
  br label %for.body.i60

for.body.i60:                                     ; preds = %for.body.i60.for.body.i60_crit_edge, %for.body.lr.ph.i
  %tc.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i60.for.body.i60_crit_edge ]
  tail call void @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(ptr noundef %self, i32 noundef %div.zext.i, i32 noundef %tc.06.i) #6
  tail call void @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(ptr noundef %self, i32 noundef %div9.i, i32 noundef %tc.06.i) #6
  tail call void @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(ptr noundef %self, i32 noundef %div12.i, i32 noundef %tc.06.i) #6
  tail call void @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(ptr noundef %self, i32 noundef %div4.zext.i, i32 noundef %tc.06.i) #6
  tail call void @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(ptr noundef %self, i32 noundef %div15.i, i32 noundef %tc.06.i) #6
  tail call void @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(ptr noundef %self, i32 noundef %div18.i, i32 noundef %tc.06.i) #6
  %35 = ptrtoint ptr %aq_nic_cfg1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aq_nic_cfg1, align 8
  %fc.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fc.i, align 8
  %and.i.i = lshr i32 %38, 1
  %and.lobit.i.i = and i32 %and.i.i, 1
  tail call void @hw_atl_rpb_rx_xoff_en_per_tc_set(ptr noundef %self, i32 noundef %and.lobit.i.i, i32 noundef %tc.06.i) #6
  %inc.i = add nuw nsw i32 %tc.06.i, 1
  %39 = ptrtoint ptr %tcs.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tcs.i, align 4
  %conv6.i = zext i8 %40 to i32
  %cmp.i59 = icmp ult i32 %inc.i, %conv6.i
  br i1 %cmp.i59, label %for.body.i60.for.body.i60_crit_edge, label %for.body.i60.for.end.i_crit_edge

for.body.i60.for.end.i_crit_edge:                 ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i60.for.body.i60_crit_edge:              ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i60

for.end.i:                                        ; preds = %for.body.i60.for.end.i_crit_edge, %hw_atl_b0_hw_init_rx_path.exit.for.end.i_crit_edge
  %41 = ptrtoint ptr %is_ptp.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_ptp.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool21.not.i = icmp eq i8 %42, 0
  br i1 %tobool21.not.i, label %for.end.i.hw_atl_b0_hw_qos_set.exit_crit_edge, label %if.then22.i

for.end.i.hw_atl_b0_hw_qos_set.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_b0_hw_qos_set.exit

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(ptr noundef %self, i32 noundef 8, i32 noundef 2) #6
  tail call void @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(ptr noundef %self, i32 noundef 16, i32 noundef 2) #6
  tail call void @hw_atl_rpb_rx_xoff_en_per_tc_set(ptr noundef %self, i32 noundef 0, i32 noundef 2) #6
  %call.i.i = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  br label %hw_atl_b0_hw_qos_set.exit

hw_atl_b0_hw_qos_set.exit:                        ; preds = %if.then22.i, %for.end.i.hw_atl_b0_hw_qos_set.exit_crit_edge
  %arrayidx.i = getelementptr %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 32, i32 0
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %conv29.i = zext i8 %44 to i32
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv29.i) #6
  %arrayidx.1.i = getelementptr %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 32, i32 1
  %45 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.1.i, align 1
  %conv29.1.i = zext i8 %46 to i32
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 1, i32 noundef %conv29.1.i) #6
  %arrayidx.2.i = getelementptr %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 32, i32 2
  %47 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.2.i, align 1
  %conv29.2.i = zext i8 %48 to i32
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 2, i32 noundef %conv29.2.i) #6
  %arrayidx.3.i = getelementptr %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 32, i32 3
  %49 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.3.i, align 1
  %conv29.3.i = zext i8 %50 to i32
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 3, i32 noundef %conv29.3.i) #6
  %arrayidx.4.i = getelementptr %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 32, i32 4
  %51 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.4.i, align 1
  %conv29.4.i = zext i8 %52 to i32
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 4, i32 noundef %conv29.4.i) #6
  %arrayidx.5.i = getelementptr %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 32, i32 5
  %53 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.5.i, align 1
  %conv29.5.i = zext i8 %54 to i32
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 5, i32 noundef %conv29.5.i) #6
  %arrayidx.6.i = getelementptr %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 32, i32 6
  %55 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.6.i, align 1
  %conv29.6.i = zext i8 %56 to i32
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 6, i32 noundef %conv29.6.i) #6
  %arrayidx.7.i = getelementptr %struct.aq_nic_cfg_s, ptr %30, i32 0, i32 32, i32 7
  %57 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.7.i, align 1
  %conv29.7.i = zext i8 %58 to i32
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 7, i32 noundef %conv29.7.i) #6
  %call33.i = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  %aq_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 36
  %call8 = tail call i32 @hw_atl_b0_hw_rss_set(ptr noundef %self, ptr noundef %aq_rss)
  %call10 = tail call i32 @hw_atl_b0_hw_rss_hash_set(ptr noundef %self, ptr noundef %aq_rss)
  %call11 = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 4116) #6
  %and = and i32 %call11, -1800
  %or = or i32 %and, 1028
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 4116, i32 noundef %or) #6
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 31520, i32 noundef 24) #6
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %59 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %aq_link_status, align 4
  %60 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %aq_fw_ops, align 4
  %update_stats = getelementptr inbounds %struct.aq_fw_ops, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %update_stats, align 4
  %call13 = tail call i32 %63(ptr noundef %self) #6
  %call14 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %hw_atl_b0_hw_qos_set.exit.err_exit_crit_edge, label %if.end

hw_atl_b0_hw_qos_set.exit.err_exit_crit_edge:     ; preds = %hw_atl_b0_hw_qos_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end:                                           ; preds = %hw_atl_b0_hw_qos_set.exit
  %irq_type = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 6
  %64 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq_type, align 8
  %vecs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp15 = icmp ugt i32 %67, 1
  %cond = zext i1 %cmp15 to i32
  %arrayidx16 = getelementptr [4 x [2 x i32]], ptr @hw_atl_b0_hw_init.aq_hw_atl_igcr_table_, i32 0, i32 %65, i32 %cond
  %68 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx16, align 4
  tail call void @hw_atl_reg_irq_glb_ctl_set(ptr noundef %self, i32 noundef %69) #6
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %irq_mask = getelementptr inbounds %struct.aq_hw_caps_s, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq_mask, align 4
  tail call void @hw_atl_itr_irq_auto_masklsw_set(ptr noundef %self, i32 noundef %73) #6
  tail call void @hw_atl_reg_gen_irq_map_set(ptr noundef %self, i32 noundef -2004353024, i32 noundef 0) #6
  %link_irq_vec = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %link_irq_vec to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %link_irq_vec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not = icmp eq i32 %75, 0
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %if.then17

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or19 = or i32 %75, 128
  tail call void @hw_atl_reg_gen_irq_map_set(ptr noundef %self, i32 noundef %or19, i32 noundef 3) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %call21 = tail call i32 @hw_atl_b0_hw_offload_set(ptr noundef %self, ptr noundef %1)
  br label %err_exit

err_exit:                                         ; preds = %if.end20, %hw_atl_b0_hw_qos_set.exit.err_exit_crit_edge
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_stop(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hw_atl_itr_irq_msk_clearlsw_set(ptr noundef %self, i32 noundef -1) #6
  tail call void @hw_atl_itr_irq_status_clearlsw_set(ptr noundef %self, i32 noundef -1) #6
  %dpc.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dpc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %dpc.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dpc.i, ptr %dpc.i, i32 1, ptr elementtype(i32) %dpc.i) #6, !srcloc !40
  %call.i = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  tail call void @hw_atl_rdm_rx_dma_desc_cache_init_tgl(ptr noundef %self) #6
  %call1 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.err_exit_crit_edge

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call2, 10000000
  %call433 = tail call i32 @hw_atl_rdm_rx_dma_desc_cache_init_done_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call433)
  %cmp34 = icmp eq i32 %call433, 1
  br i1 %cmp34, label %if.end.err_exit_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call8 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call8, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call8, %add.i
  br i1 %cmp3.i, label %if.then11, label %cond.false

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @hw_atl_rdm_rx_dma_desc_cache_init_done_get(ptr noundef %self) #6
  br label %err_exit

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  %call4 = tail call i32 @hw_atl_rdm_rx_dma_desc_cache_init_done_get(ptr noundef %self) #6
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %cond.false.err_exit_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cond.false.err_exit_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

err_exit:                                         ; preds = %cond.false.err_exit_crit_edge, %if.then11, %if.end.err_exit_crit_edge, %entry.err_exit_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_fl3l4_set(ptr noundef %self, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %location1 = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %location1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %location1, align 4
  %is_ipv6.i = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_ipv6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i = zext i8 %1 to i32
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %1) #6
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv4.i) #6
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv4.i) #6
  %add.1.i = add nuw nsw i32 %conv4.i, 1
  %conv5.1.i = trunc i32 %add.1.i to i8
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %conv5.1.i) #6
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.1.i) #6
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.1.i) #6
  %add.2.i = add nuw nsw i32 %conv4.i, 2
  %conv5.2.i = trunc i32 %add.2.i to i8
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %conv5.2.i) #6
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.2.i) #6
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.2.i) #6
  %add.3.i = add nuw nsw i32 %conv4.i, 3
  %conv5.3.i = trunc i32 %add.3.i to i8
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %conv5.3.i) #6
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.3.i) #6
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.3.i) #6
  tail call void @hw_atl_rpfl3l4_ipv6_src_addr_clear(ptr noundef %self, i8 noundef zeroext %1) #6
  tail call void @hw_atl_rpfl3l4_ipv6_dest_addr_clear(ptr noundef %self, i8 noundef zeroext %1) #6
  br label %hw_atl_b0_hw_fl3l4_clear.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %1) #6
  %conv.i = zext i8 %1 to i32
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv.i) #6
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv.i) #6
  tail call void @hw_atl_rpfl3l4_ipv4_src_addr_clear(ptr noundef %self, i8 noundef zeroext %1) #6
  tail call void @hw_atl_rpfl3l4_ipv4_dest_addr_clear(ptr noundef %self, i8 noundef zeroext %1) #6
  br label %hw_atl_b0_hw_fl3l4_clear.exit

hw_atl_b0_hw_fl3l4_clear.exit:                    ; preds = %if.then.i, %for.cond.preheader.i
  %call.i = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %and = and i32 %5, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %hw_atl_b0_hw_fl3l4_clear.exit.if.end8_crit_edge, label %if.then

hw_atl_b0_hw_fl3l4_clear.exit.if.end8_crit_edge:  ; preds = %hw_atl_b0_hw_fl3l4_clear.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %hw_atl_b0_hw_fl3l4_clear.exit
  %6 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_ipv6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %ip_dst = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 2
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ip_dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip_dst, align 4
  tail call void @hw_atl_rpfl3l4_ipv4_dest_addr_set(ptr noundef %self, i8 noundef zeroext %1, i32 noundef %9) #6
  %ip_src = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %ip_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip_src, align 4
  tail call void @hw_atl_rpfl3l4_ipv4_src_addr_set(ptr noundef %self, i8 noundef zeroext %1, i32 noundef %11) #6
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_rpfl3l4_ipv6_dest_addr_set(ptr noundef %self, i8 noundef zeroext %1, ptr noundef %ip_dst) #6
  %ip_src6 = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 3
  tail call void @hw_atl_rpfl3l4_ipv6_src_addr_set(ptr noundef %self, i8 noundef zeroext %1, ptr noundef %ip_src6) #6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3, %hw_atl_b0_hw_fl3l4_clear.exit.if.end8_crit_edge
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %and10 = and i32 %13, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end16_crit_edge, label %if.then12

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %p_dst = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %p_dst to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %p_dst, align 4
  %conv = zext i16 %15 to i32
  %conv13 = zext i8 %1 to i32
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef %conv, i32 noundef %conv13) #6
  %p_src = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 5
  %16 = ptrtoint ptr %p_src to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %p_src, align 2
  %conv14 = zext i16 %17 to i32
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef %conv14, i32 noundef %conv13) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end8.if.end16_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  tail call void @hw_atl_rpfl3l4_cmd_set(ptr noundef %self, i8 noundef zeroext %1, i32 noundef %19) #6
  %call18 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_fl2_set(ptr noundef %self, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %location = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %location, align 1
  %conv = zext i8 %1 to i32
  tail call void @hw_atl_rpf_etht_flr_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %conv) #6
  %ethertype = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %ethertype to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethertype, align 2
  %conv1 = zext i16 %3 to i32
  %4 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %location, align 1
  %conv3 = zext i8 %5 to i32
  tail call void @hw_atl_rpf_etht_flr_set(ptr noundef %self, i32 noundef %conv1, i32 noundef %conv3) #6
  %user_priority_en = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %user_priority_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %user_priority_en, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  %lnot.ext = zext i1 %tobool to i32
  %8 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %location, align 1
  %conv6 = zext i8 %9 to i32
  tail call void @hw_atl_rpf_etht_user_priority_en_set(ptr noundef %self, i32 noundef %lnot.ext, i32 noundef %conv6) #6
  %10 = ptrtoint ptr %user_priority_en to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %user_priority_en, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %user_priority = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %user_priority to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %user_priority, align 1
  %conv9 = zext i8 %13 to i32
  %14 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %location, align 1
  %conv11 = zext i8 %15 to i32
  tail call void @hw_atl_rpf_etht_user_priority_set(ptr noundef %self, i32 noundef %conv9, i32 noundef %conv11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp slt i8 %17, 0
  %18 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %location, align 1
  %conv16 = zext i8 %19 to i32
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_rpf_etht_flr_act_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv16) #6
  %20 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %location, align 1
  %conv18 = zext i8 %21 to i32
  tail call void @hw_atl_rpf_etht_rx_queue_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv18) #6
  br label %if.end27

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_rpf_etht_flr_act_set(ptr noundef %self, i32 noundef 1, i32 noundef %conv16) #6
  %22 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %location, align 1
  %conv22 = zext i8 %23 to i32
  tail call void @hw_atl_rpf_etht_rx_queue_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %conv22) #6
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 2
  %conv24 = sext i8 %25 to i32
  %26 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %location, align 1
  %conv26 = zext i8 %27 to i32
  tail call void @hw_atl_rpf_etht_rx_queue_set(ptr noundef %self, i32 noundef %conv24, i32 noundef %conv26) #6
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then14
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_fl2_clear(ptr noundef %self, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %location = getelementptr inbounds %struct.aq_rx_filter_l2, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %location, align 1
  %conv = zext i8 %1 to i32
  tail call void @hw_atl_rpf_etht_flr_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv) #6
  %2 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %location, align 1
  %conv2 = zext i8 %3 to i32
  tail call void @hw_atl_rpf_etht_flr_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv2) #6
  %4 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %location, align 1
  %conv4 = zext i8 %5 to i32
  tail call void @hw_atl_rpf_etht_user_priority_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv4) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_vlan_set(ptr noundef %self, ptr nocapture noundef readonly %aq_vlans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @hw_atl_rpf_vlan_flr_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %i.033) #6
  tail call void @hw_atl_rpf_vlan_rxq_en_flr_set(ptr noundef %self, i32 noundef 0, i32 noundef %i.033) #6
  %arrayidx = getelementptr %struct.aq_rx_filter_vlan, ptr %aq_vlans, i32 %i.033
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %vlan_id = getelementptr %struct.aq_rx_filter_vlan, ptr %aq_vlans, i32 %i.033, i32 2
  %2 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan_id, align 2
  %conv = zext i16 %3 to i32
  tail call void @hw_atl_rpf_vlan_id_flr_set(ptr noundef %self, i32 noundef %conv, i32 noundef %i.033) #6
  tail call void @hw_atl_rpf_vlan_flr_act_set(ptr noundef %self, i32 noundef 1, i32 noundef %i.033) #6
  tail call void @hw_atl_rpf_vlan_flr_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %i.033) #6
  %queue = getelementptr %struct.aq_rx_filter_vlan, ptr %aq_vlans, i32 %i.033, i32 3
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %queue, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp4.not = icmp eq i8 %5, -1
  br i1 %cmp4.not, label %if.then.for.inc_crit_edge, label %if.then6

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv3 = zext i8 %5 to i32
  tail call void @hw_atl_rpf_vlan_rxq_flr_set(ptr noundef %self, i32 noundef %conv3, i32 noundef %i.033) #6
  tail call void @hw_atl_rpf_vlan_rxq_en_flr_set(ptr noundef %self, i32 noundef 1, i32 noundef %i.033) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_vlan_ctrl(ptr noundef %self, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lnot = xor i1 %enable, true
  %lnot.ext = zext i1 %lnot to i32
  tail call void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %self, i32 noundef %lnot.ext) #6
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_multicast_list_set(ptr noundef %self, ptr nocapture noundef readonly %ar_mac, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count)
  %cmp = icmp ugt i32 %count, 32
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end:                                           ; preds = %entry
  %mc_list_count = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %mc_list_count, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp258.not = icmp eq i32 %count, 0
  br i1 %cmp258.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %is_mc_list_enabled = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv59 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x i8], ptr %ar_mac, i32 %conv59
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %arrayidx9 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv59, i32 1
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %6 to i32
  %or = or i32 %shl, %conv10
  %arrayidx12 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv59, i32 2
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %8 to i32
  %shl14 = shl nuw i32 %conv13, 24
  %arrayidx16 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv59, i32 3
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %10 to i32
  %shl18 = shl nuw nsw i32 %conv17, 16
  %or19 = or i32 %shl18, %shl14
  %arrayidx21 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv59, i32 4
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %12 to i32
  %shl23 = shl nuw nsw i32 %conv22, 8
  %or24 = or i32 %or19, %shl23
  %arrayidx26 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv59, i32 5
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %14 to i32
  %or28 = or i32 %or24, %conv27
  %add = add nuw nsw i32 %conv59, 1
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %add) #6
  tail call void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef %self, i32 noundef %or28, i32 noundef %add) #6
  tail call void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef %self, i32 noundef %or, i32 noundef %add) #6
  %15 = ptrtoint ptr %is_mc_list_enabled to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %is_mc_list_enabled, align 4
  %conv31 = zext i16 %16 to i32
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef %conv31, i32 noundef %add) #6
  %17 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mc_list_count, align 2
  %inc = add i16 %18, 1
  store i16 %inc, ptr %mc_list_count, align 2
  %conv = zext i16 %inc to i32
  %cmp2 = icmp ult i32 %conv, %count
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  br label %err_exit

err_exit:                                         ; preds = %for.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call, %for.end ], [ -56, %entry.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_interrupt_moderation_set(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %itr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %itr, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 65535, label %entry.sw.bb_crit_edge121
    i32 0, label %sw.bb64
  ]

entry.sw.bb_crit_edge121:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge121
  tail call void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_tdm_tdm_intr_moder_en_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_rdm_rdm_intr_moder_en_set(ptr noundef %self, i32 noundef 1) #6
  %5 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_nic_cfg, align 8
  %itr2 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %itr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %itr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %tx_itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %tx_itr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_itr, align 2
  %11 = lshr i16 %10, 1
  %div = zext i16 %11 to i32
  %rx_itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %6, i32 0, i32 8
  %12 = ptrtoint ptr %rx_itr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rx_itr, align 8
  %14 = lshr i16 %13, 1
  %div7 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %10)
  %cmp9 = icmp ugt i16 %10, 1023
  %phi.bo116 = shl nuw nsw i32 %div, 16
  %15 = shl nuw nsw i32 %div, 7
  %phi.bo = and i32 %15, 4194048
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %13)
  %cmp19 = icmp ugt i16 %13, 1023
  %phi.bo119 = shl nuw nsw i32 %div7, 16
  %16 = shl nuw nsw i32 %div7, 7
  %phi.bo117 = and i32 %16, 4194048
  %phi.bo115 = or i32 %phi.bo116, %phi.bo
  %17 = or i32 %phi.bo115, 2
  %or33 = select i1 %cmp9, i32 33554178, i32 %17
  %phi.bo118 = or i32 %phi.bo119, %phi.bo117
  %18 = or i32 %phi.bo118, 2
  %or37 = select i1 %cmp19, i32 33554178, i32 %18
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %19 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aq_link_status, align 4
  %call = tail call i32 @hw_atl_utils_mbps_2_speed_index(i32 noundef %20) #6
  %arrayidx = getelementptr [6 x [2 x i32]], ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_, i32 0, i32 %call
  %arrayidx38 = getelementptr [6 x [2 x i32]], ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_, i32 0, i32 %call, i32 1
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx38, align 4
  %.tr = trunc i32 %22 to i16
  %conv39 = shl i16 %.tr, 1
  %23 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aq_nic_cfg, align 8
  %tx_itr41 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %tx_itr41 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv39, ptr %tx_itr41, align 2
  %arrayidx42 = getelementptr [6 x [2 x i32]], ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_, i32 0, i32 %call
  %arrayidx43 = getelementptr [6 x [2 x i32]], ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_, i32 0, i32 %call, i32 1
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx43, align 4
  %.tr112 = trunc i32 %27 to i16
  %conv45 = shl i16 %.tr112, 1
  %28 = load ptr, ptr %aq_nic_cfg, align 8
  %rx_itr47 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %rx_itr47 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv45, ptr %rx_itr47, align 8
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %shl50 = shl i32 %31, 8
  %shl54 = shl i32 %22, 16
  %or51 = or i32 %shl54, %shl50
  %or55 = or i32 %or51, 2
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx42, align 4
  %shl58 = shl i32 %33, 8
  %shl62 = shl i32 %27, 16
  %or59 = or i32 %shl62, %shl58
  %or63 = or i32 %or59, 2
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_tdm_tdm_intr_moder_en_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_rdm_rdm_intr_moder_en_set(ptr noundef %self, i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb64, %if.else, %if.then, %entry.sw.epilog_crit_edge
  %itr_rx.0 = phi i32 [ 2, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb64 ], [ %or37, %if.then ], [ %or63, %if.else ]
  %itr_tx.0 = phi i32 [ 2, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb64 ], [ %or33, %if.then ], [ %or55, %if.else ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog
  %i.0120 = phi i32 [ 32, %sw.epilog ], [ %dec, %for.body.for.body_crit_edge ]
  %dec = add nsw i32 %i.0120, -1
  tail call void @hw_atl_reg_tx_intr_moder_ctrl_set(ptr noundef %self, i32 noundef %itr_tx.0, i32 noundef %dec) #6
  tail call void @hw_atl_reg_rx_intr_moder_ctrl_set(ptr noundef %self, i32 noundef %itr_rx.0, i32 noundef %dec) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call65
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_rss_set(ptr noundef %self, ptr nocapture noundef readonly %rss_params) #0 align 64 {
entry:
  %bitary = alloca [13 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %num_rss_queues1 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %num_rss_queues1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rss_queues1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %. = select i1 %cmp, i32 1, i32 %3
  %indirection_table2 = getelementptr inbounds %struct.aq_rss_parameters, ptr %rss_params, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %bitary) #6
  %4 = call ptr @memset(ptr %bitary, i32 0, i32 26)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.070 = phi i32 [ 64, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %dec = add nsw i32 %i.070, -1
  %arrayidx = getelementptr i8, ptr %indirection_table2, i32 %dec
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %rem = urem i32 %conv, %.
  %mul = mul nuw nsw i32 %dec, 3
  %and = and i32 %mul, 15
  %shl = shl nuw nsw i32 %rem, %and
  %div69 = lshr i32 %mul, 4
  %add.ptr = getelementptr i16, ptr %bitary, i32 %div69
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %or = or i32 %8, %shl
  store i32 %or, ptr %add.ptr, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.for.cond6_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.cond6_crit_edge:                     ; preds = %for.body
  br label %for.cond6

for.cond6:                                        ; preds = %for.end37.for.cond6_crit_edge, %for.body.for.cond6_crit_edge
  %i.1 = phi i32 [ %dec7, %for.end37.for.cond6_crit_edge ], [ 13, %for.body.for.cond6_crit_edge ]
  %dec7 = add nsw i32 %i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %tobool8.not = icmp eq i32 %i.1, 0
  br i1 %tobool8.not, label %for.end46, label %for.body9

for.body9:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr [13 x i16], ptr %bitary, i32 0, i32 %dec7
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx10, align 2
  %conv11 = zext i16 %10 to i32
  tail call void @hw_atl_rpf_rss_redir_tbl_wr_data_set(ptr noundef %self, i32 noundef %conv11) #6
  tail call void @hw_atl_rpf_rss_redir_tbl_addr_set(ptr noundef %self, i32 noundef %dec7) #6
  tail call void @hw_atl_rpf_rss_redir_wr_en_set(ptr noundef %self, i32 noundef 1) #6
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  %call1471 = tail call i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1471)
  %cmp1572 = icmp eq i32 %call1471, 0
  br i1 %cmp1572, label %for.body9.for.end37_crit_edge, label %for.body9.land.lhs.true_crit_edge

for.body9.land.lhs.true_crit_edge:                ; preds = %for.body9
  br label %land.lhs.true

for.body9.for.end37_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37

land.lhs.true:                                    ; preds = %cond.false31.land.lhs.true_crit_edge, %for.body9.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then22, label %cond.false31

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef %self) #6
  br label %for.end37

cond.false31:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  %call14 = tail call i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef %self) #6
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %cond.false31.for.end37_crit_edge, label %cond.false31.land.lhs.true_crit_edge

cond.false31.land.lhs.true_crit_edge:             ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cond.false31.for.end37_crit_edge:                 ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37

for.end37:                                        ; preds = %cond.false31.for.end37_crit_edge, %if.then22, %for.body9.for.end37_crit_edge
  %val.0 = phi i32 [ %call23, %if.then22 ], [ 0, %for.body9.for.end37_crit_edge ], [ 0, %cond.false31.for.end37_crit_edge ]
  %cmp39 = icmp eq i32 %val.0, 0
  br i1 %cmp39, label %for.end37.for.cond6_crit_edge, label %for.end37.err_exit_crit_edge

for.end37.err_exit_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

for.end37.for.cond6_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6

for.end46:                                        ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  br label %err_exit

err_exit:                                         ; preds = %for.end46, %for.end37.err_exit_crit_edge
  %err.0 = phi i32 [ %call47, %for.end46 ], [ -110, %for.end37.err_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %bitary) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_init_tx_tc_rate_limit(ptr noundef %self) #0 align 64 {
entry:
  %tc_weight = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %0 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aq_link_status, align 4
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %2 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_nic_cfg, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tc_weight) #6
  %4 = call ptr @memset(ptr %tc_weight, i32 255, i32 32)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %mtu = getelementptr inbounds %struct.aq_hw_caps_s, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu, align 4
  %div249 = lshr i32 %8, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end87_crit_edge, label %if.then

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then:                                          ; preds = %entry
  %tcs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 31
  %tc_min_rate_msk = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 34
  %9 = ptrtoint ptr %tc_min_rate_msk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tc_min_rate_msk, align 8
  %11 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tcs, align 4
  %conv = zext i8 %12 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %and = and i32 %10, %sub
  %conv61 = and i32 %and, 255
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool62.not = icmp eq i32 %call.i, 0
  br i1 %tobool62.not, label %if.then.if.end87_crit_edge, label %for.cond.preheader

if.then.if.end87_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

for.cond.preheader:                               ; preds = %if.then
  %13 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tcs, align 4
  %conv65 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not256 = icmp eq i8 %14, 0
  br i1 %cmp.not256, label %for.cond.preheader.if.end87_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end87_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add71 = add i32 %1, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sum_weight.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %sum_weight.1, %for.inc.for.body_crit_edge ]
  %tc.0257 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 35, i32 %tc.0257
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool67.not = icmp eq i32 %16, 0
  br i1 %tobool67.not, label %for.body.for.inc_crit_edge, label %if.end70

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end70:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %16, 511
  %add74 = add i32 %add71, %mul
  %div75 = udiv i32 %add74, %1
  %17 = tail call i32 @llvm.umin.i32(i32 %div75, i32 511)
  %add86 = add i32 %17, %sum_weight.0259
  br label %for.inc

for.inc:                                          ; preds = %if.end70, %for.body.for.inc_crit_edge
  %.sink = phi i32 [ %17, %if.end70 ], [ 0, %for.body.for.inc_crit_edge ]
  %sum_weight.1 = phi i32 [ %add86, %if.end70 ], [ %sum_weight.0259, %for.body.for.inc_crit_edge ]
  %18 = getelementptr [8 x i32], ptr %tc_weight, i32 0, i32 %tc.0257
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %inc = add nuw nsw i32 %tc.0257, 1
  %cmp.not = icmp eq i32 %inc, %conv65
  br i1 %cmp.not, label %for.inc.if.end87_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end87_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.end87:                                         ; preds = %for.inc.if.end87_crit_edge, %for.cond.preheader.if.end87_crit_edge, %if.then.if.end87_crit_edge, %entry.if.end87_crit_edge
  %tobool62.not255 = phi i1 [ true, %if.then.if.end87_crit_edge ], [ true, %entry.if.end87_crit_edge ], [ false, %for.cond.preheader.if.end87_crit_edge ], [ false, %for.inc.if.end87_crit_edge ]
  %num_min_rated_tcs.0254 = phi i32 [ 0, %if.then.if.end87_crit_edge ], [ 0, %entry.if.end87_crit_edge ], [ %call.i, %for.cond.preheader.if.end87_crit_edge ], [ %call.i, %for.inc.if.end87_crit_edge ]
  %min_rate_msk.0253 = phi i32 [ %conv61, %if.then.if.end87_crit_edge ], [ 0, %entry.if.end87_crit_edge ], [ %conv61, %for.cond.preheader.if.end87_crit_edge ], [ %conv61, %for.inc.if.end87_crit_edge ]
  %sum_weight.2 = phi i32 [ 0, %if.then.if.end87_crit_edge ], [ 0, %entry.if.end87_crit_edge ], [ 0, %for.cond.preheader.if.end87_crit_edge ], [ %sum_weight.1, %for.inc.if.end87_crit_edge ]
  %is_ptp = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 26
  %20 = ptrtoint ptr %is_ptp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_ptp, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool88.not = icmp eq i8 %21, 0
  br i1 %tobool88.not, label %if.then89, label %if.end87.if.end93_crit_edge

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_rate_msk.0253)
  %tobool91.not = icmp ne i32 %min_rate_msk.0253, 0
  %cond92 = zext i1 %tobool91.not to i32
  tail call void @hw_atl_tps_tx_pkt_shed_data_arb_mode_set(ptr noundef %self, i32 noundef %cond92) #6
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end87.if.end93_crit_edge
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(ptr noundef %self, i32 noundef 0) #6
  %is_qos = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 25
  %22 = ptrtoint ptr %is_qos to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_qos, align 4, !range !37
  %24 = zext i8 %23 to i32
  tail call void @hw_atl_tps_tx_desc_rate_mode_set(ptr noundef %self, i32 noundef %24) #6
  %tcs98 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 31
  %25 = ptrtoint ptr %tcs98 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tcs98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp100.not261 = icmp eq i8 %26, 0
  br i1 %cmp100.not261, label %if.end93.for.body154.lr.ph_crit_edge, label %for.body102.lr.ph

if.end93.for.body154.lr.ph_crit_edge:             ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body154.lr.ph

for.body102.lr.ph:                                ; preds = %if.end93
  %tc_mode = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %sum_weight.2)
  %cmp116 = icmp ugt i32 %sum_weight.2, 510
  %sub119 = sub nuw nsw i32 511, %sum_weight.2
  br label %for.body102

for.cond151.preheader:                            ; preds = %if.end145
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %39)
  %cmp152.not265 = icmp eq i8 %39, 8
  br i1 %cmp152.not265, label %for.cond151.preheader.for.end164_crit_edge, label %for.cond151.preheader.for.body154.lr.ph_crit_edge

for.cond151.preheader.for.body154.lr.ph_crit_edge: ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body154.lr.ph

for.cond151.preheader.for.end164_crit_edge:       ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end164

for.body154.lr.ph:                                ; preds = %for.cond151.preheader.for.body154.lr.ph_crit_edge, %if.end93.for.body154.lr.ph_crit_edge
  %.lcssa270 = phi i8 [ %39, %for.cond151.preheader.for.body154.lr.ph_crit_edge ], [ 0, %if.end93.for.body154.lr.ph_crit_edge ]
  %conv99.le = zext i8 %.lcssa270 to i32
  %tc_mode156 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 29
  br label %for.body154

for.body102:                                      ; preds = %if.end145.for.body102_crit_edge, %for.body102.lr.ph
  %tc.1262 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc147, %if.end145.for.body102_crit_edge ]
  %arrayidx103 = getelementptr %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 33, i32 %tc.1262
  %27 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp104.not = icmp eq i32 %28, 0
  %not.cmp104.not = xor i1 %cmp104.not, true
  %cond106 = zext i1 %not.cmp104.not to i32
  %29 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp107 = icmp eq i32 %30, 1
  %cond109 = select i1 %cmp107, i32 8, i32 4
  %mul110 = mul i32 %cond109, %tc.1262
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(ptr noundef %self, i32 noundef %tc.1262, i32 noundef %div249) #6
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(ptr noundef %self, i32 noundef %tc.1262, i32 noundef 30) #6
  br i1 %tobool62.not255, label %for.body102.if.end137_crit_edge, label %if.then113

for.body102.if.end137_crit_edge:                  ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then113:                                       ; preds = %for.body102
  %arrayidx114 = getelementptr [8 x i32], ptr %tc_weight, i32 0, i32 %tc.1262
  %31 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool115.not = icmp ne i32 %32, 0
  %brmerge = select i1 %tobool115.not, i1 true, i1 %cmp116
  %.mux = select i1 %tobool115.not, i32 %32, i32 100
  br i1 %brmerge, label %if.then113.if.end127_crit_edge, label %if.then118

if.then113.if.end127_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then118:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %tcs98 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tcs98, align 4
  %conv121 = zext i8 %34 to i32
  %sub122 = sub i32 %conv121, %num_min_rated_tcs.0254
  %div123 = udiv i32 %sub119, %sub122
  br label %if.end127

if.end127:                                        ; preds = %if.then118, %if.then113.if.end127_crit_edge
  %weight.0 = phi i32 [ %div123, %if.then118 ], [ %.mux, %if.then113.if.end127_crit_edge ]
  %mul128 = shl i32 %weight.0, 3
  %35 = tail call i32 @llvm.umax.i32(i32 %mul128, i32 %div249)
  br label %if.end137

if.end137:                                        ; preds = %if.end127, %for.body102.if.end137_crit_edge
  %weight.1 = phi i32 [ %weight.0, %if.end127 ], [ 100, %for.body102.if.end137_crit_edge ]
  %max_credit.0 = phi i32 [ %35, %if.end127 ], [ 4095, %for.body102.if.end137_crit_edge ]
  tail call void @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(ptr noundef %self, i32 noundef %tc.1262, i32 noundef %weight.1) #6
  tail call void @hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(ptr noundef %self, i32 noundef %tc.1262, i32 noundef %max_credit.0) #6
  tail call void @hw_atl_tps_tx_desc_rate_en_set(ptr noundef %self, i32 noundef %mul110, i32 noundef %cond106) #6
  br i1 %cmp104.not, label %if.end137.if.end145_crit_edge, label %if.then139

if.end137.if.end145_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then139:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx103, align 4
  %div142 = udiv i32 163840000, %37
  %shr = lshr i32 %div142, 14
  %and143 = and i32 %div142, 16383
  br label %if.end145

if.end145:                                        ; preds = %if.then139, %if.end137.if.end145_crit_edge
  %.sink272 = phi i32 [ %shr, %if.then139 ], [ 1, %if.end137.if.end145_crit_edge ]
  %.sink271 = phi i32 [ %and143, %if.then139 ], [ 0, %if.end137.if.end145_crit_edge ]
  tail call void @hw_atl_tps_tx_desc_rate_x_set(ptr noundef %self, i32 noundef %mul110, i32 noundef %.sink272) #6
  tail call void @hw_atl_tps_tx_desc_rate_y_set(ptr noundef %self, i32 noundef %mul110, i32 noundef %.sink271) #6
  %inc147 = add i32 %tc.1262, 1
  %38 = ptrtoint ptr %tcs98 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tcs98, align 4
  %conv99 = zext i8 %39 to i32
  %cmp100.not = icmp eq i32 %inc147, %conv99
  br i1 %cmp100.not, label %for.cond151.preheader, label %if.end145.for.body102_crit_edge

if.end145.for.body102_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body102

for.body154:                                      ; preds = %for.body154.for.body154_crit_edge, %for.body154.lr.ph
  %tc.2266 = phi i32 [ %conv99.le, %for.body154.lr.ph ], [ %inc163, %for.body154.for.body154_crit_edge ]
  %40 = ptrtoint ptr %tc_mode156 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tc_mode156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp157 = icmp eq i32 %41, 1
  %cond159 = select i1 %cmp157, i32 8, i32 4
  %mul160 = mul i32 %cond159, %tc.2266
  tail call void @hw_atl_tps_tx_desc_rate_en_set(ptr noundef %self, i32 noundef %mul160, i32 noundef 0) #6
  tail call void @hw_atl_tps_tx_desc_rate_x_set(ptr noundef %self, i32 noundef %mul160, i32 noundef 1) #6
  tail call void @hw_atl_tps_tx_desc_rate_y_set(ptr noundef %self, i32 noundef %mul160, i32 noundef 0) #6
  %inc163 = add i32 %tc.2266, 1
  %cmp152.not = icmp eq i32 %inc163, 8
  br i1 %cmp152.not, label %for.body154.for.end164_crit_edge, label %for.body154.for.body154_crit_edge

for.body154.for.body154_crit_edge:                ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body154

for.body154.for.end164_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end164

for.end164:                                       ; preds = %for.body154.for.end164_crit_edge, %for.cond151.preheader.for.end164_crit_edge
  %call165 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tc_weight) #6
  ret i32 %call165
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_hw_get_regs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hw_atl_utils_get_hw_stats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_get_fw_version(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_ring_hwts_rx_fill(ptr noundef %self, ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_tail.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_tail.i, align 8
  %sw_head.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %sw_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp ugt i32 %3, %1
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %6 = xor i32 %1, -1
  %sub2.i = add i32 %3, %6
  %add.i = add i32 %sub2.i, %5
  br label %aq_ring_avail_dx.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = xor i32 %1, -1
  %sub7.i = add i32 %3, %7
  br label %aq_ring_avail_dx.exit

aq_ring_avail_dx.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i, %cond.true.i ], [ %sub7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not21 = icmp eq i32 %cond.i, 0
  br i1 %tobool.not21, label %aq_ring_avail_dx.exit.do.body_crit_edge, label %for.body.lr.ph

aq_ring_avail_dx.exit.do.body_crit_edge:          ; preds = %aq_ring_avail_dx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.lr.ph:                                   ; preds = %aq_ring_avail_dx.exit
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 1
  %dx_ring_pa = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 11
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  %dx_size = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ %cond.i, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %dec = add i32 %i.022, -1
  %8 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dx_ring, align 4
  %10 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sw_tail.i, align 8
  %mul = shl i32 %11, 4
  %arrayidx = getelementptr i8, ptr %9, i32 %mul
  %12 = ptrtoint ptr %dx_ring_pa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dx_ring_pa, align 8
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %16 = ptrtoint ptr %dx_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dx_size, align 8
  %mul1 = mul i32 %17, %15
  %add = add i32 %mul1, %13
  %conv = zext i32 %add to i64
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %conv, ptr %arrayidx, align 1
  %hdr_addr = getelementptr inbounds %struct.hw_atl_rxd_s, ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %hdr_addr to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 0, ptr %hdr_addr, align 1
  %20 = load i32, ptr %sw_tail.i, align 8
  %inc.i = add i32 %20, 1
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %21)
  %cmp.not.i20 = icmp ult i32 %inc.i, %21
  %spec.select.i = select i1 %cmp.not.i20, i32 %inc.i, i32 0
  %22 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %sw_tail.i, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %aq_ring_avail_dx.exit.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sw_tail.i, align 8
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_rx_dma_desc_tail_ptr_set(ptr noundef %self, i32 noundef %24, i32 noundef %26) #6
  %call6 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_hw_ring_hwts_rx_receive(ptr noundef %self, ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 4
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_tail, align 8
  %2 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not13 = icmp eq i32 %3, %1
  br i1 %cmp.not13, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dx_ring, align 4
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %3, %while.body.lr.ph ], [ %spec.select.i, %cleanup.while.body_crit_edge ]
  %mul = shl i32 %6, 4
  %add.ptr = getelementptr i8, ptr %5, i32 %mul
  %sec_lw0 = getelementptr inbounds %struct.hw_atl_rxd_hwts_wb_s, ptr %add.ptr, i32 0, i32 2
  %7 = ptrtoint ptr %sec_lw0 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %sec_lw0, align 1
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %cleanup

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

cleanup:                                          ; preds = %while.body
  %inc.i = add i32 %6, 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %10)
  %cmp.not.i = icmp ult i32 %inc.i, %10
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %11 = ptrtoint ptr %hw_head to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select.i, ptr %hw_head, align 8
  %cmp.not = icmp eq i32 %spec.select.i, %1
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %call4 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hw_atl_b0_get_ptp_ts(ptr noundef %self, ptr nocapture noundef writeonly %stamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hw_atl_pcs_ptp_clock_read_enable(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_pcs_ptp_clock_read_enable(ptr noundef %self, i32 noundef 0) #6
  %call = tail call i32 @hw_atl_pcs_ptp_clock_get(ptr noundef %self, i32 noundef 0) #6
  %and = and i32 %call, 65535
  %call1 = tail call i32 @hw_atl_pcs_ptp_clock_get(ptr noundef %self, i32 noundef 1) #6
  %0 = shl i32 %call1, 16
  %add20 = or i32 %0, %and
  %add = zext i32 %add20 to i64
  %mul = mul nuw nsw i64 %add, 1000000000
  %call4 = tail call i32 @hw_atl_pcs_ptp_clock_get(ptr noundef %self, i32 noundef 3) #6
  %and5 = and i32 %call4, 65535
  %call7 = tail call i32 @hw_atl_pcs_ptp_clock_get(ptr noundef %self, i32 noundef 4) #6
  %1 = shl i32 %call7, 16
  %add1121 = or i32 %1, %and5
  %add11 = zext i32 %add1121 to i64
  %ptp_clk_offset = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 20
  %2 = ptrtoint ptr %ptp_clk_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ptp_clk_offset, align 8
  %add12 = add i64 %mul, %3
  %add13 = add i64 %add12, %add11
  %4 = ptrtoint ptr %stamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add13, ptr %stamp, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_adj_clock_freq(ptr noundef %self, i32 noundef %ppb) #0 align 64 {
entry:
  %fwreq = alloca %struct.hw_fw_request_iface, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fwreq) #6
  %0 = getelementptr inbounds %struct.hw_fw_request_iface, ptr %fwreq, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hw_fw_request_iface, ptr %fwreq, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %fwreq, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %4 = ptrtoint ptr %fwreq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 18, ptr %fwreq, align 4
  %conv = sext i32 %ppb to i64
  %5 = mul nsw i64 %conv, 1000000000
  %mul.i = add nsw i64 %5, 1000000000000000000
  %call.i = tail call i64 @div64_s64(i64 noundef %mul.i, i64 noundef 312500000) #6
  %call1.i = tail call i64 @div64_u64(i64 noundef %call.i, i64 noundef 1000000000) #6
  %mul2.i = mul i64 %call1.i, 1000000000
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %mul2.i)
  %cmp.not.i = icmp eq i64 %call.i, %mul2.i
  br i1 %cmp.not.i, label %entry.hw_atl_b0_adj_params_get.exit_crit_edge, label %if.then.i

entry.hw_atl_b0_adj_params_get.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_b0_adj_params_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i64 %call.i, %mul2.i
  %call4.i = tail call i64 @div64_s64(i64 noundef 1000000000000000000, i64 noundef %sub.i) #6
  %call5.i = tail call i64 @div64_s64(i64 noundef 4294967296000000000, i64 noundef %call4.i) #6
  %extract.t.i = trunc i64 %call5.i to i32
  br label %hw_atl_b0_adj_params_get.exit

hw_atl_b0_adj_params_get.exit:                    ; preds = %if.then.i, %entry.hw_atl_b0_adj_params_get.exit_crit_edge
  %nsi_frac.0.off0.i = phi i32 [ %extract.t.i, %if.then.i ], [ 0, %entry.hw_atl_b0_adj_params_get.exit_crit_edge ]
  %conv.i = trunc i64 %call1.i to i32
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nsi_frac.0.off0.i, ptr %1, align 4
  %call.i5 = tail call i64 @div64_s64(i64 noundef %mul.i, i64 noundef 160000000) #6
  %call1.i6 = tail call i64 @div64_u64(i64 noundef %call.i5, i64 noundef 1000000000) #6
  %mul2.i7 = mul i64 %call1.i6, 1000000000
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i5, i64 %mul2.i7)
  %cmp.not.i8 = icmp eq i64 %call.i5, %mul2.i7
  br i1 %cmp.not.i8, label %hw_atl_b0_adj_params_get.exit.hw_atl_b0_adj_params_get.exit16_crit_edge, label %if.then.i13

hw_atl_b0_adj_params_get.exit.hw_atl_b0_adj_params_get.exit16_crit_edge: ; preds = %hw_atl_b0_adj_params_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %hw_atl_b0_adj_params_get.exit16

if.then.i13:                                      ; preds = %hw_atl_b0_adj_params_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i9 = sub i64 %call.i5, %mul2.i7
  %call4.i10 = tail call i64 @div64_s64(i64 noundef 1000000000000000000, i64 noundef %sub.i9) #6
  %call5.i11 = tail call i64 @div64_s64(i64 noundef 4294967296000000000, i64 noundef %call4.i10) #6
  %extract.t.i12 = trunc i64 %call5.i11 to i32
  br label %hw_atl_b0_adj_params_get.exit16

hw_atl_b0_adj_params_get.exit16:                  ; preds = %if.then.i13, %hw_atl_b0_adj_params_get.exit.hw_atl_b0_adj_params_get.exit16_crit_edge
  %nsi_frac.0.off0.i14 = phi i32 [ %extract.t.i12, %if.then.i13 ], [ 0, %hw_atl_b0_adj_params_get.exit.hw_atl_b0_adj_params_get.exit16_crit_edge ]
  %8 = getelementptr inbounds %struct.hw_fw_request_iface, ptr %fwreq, i32 0, i32 1, i32 1, i32 4
  %9 = getelementptr inbounds %struct.hw_fw_request_iface, ptr %fwreq, i32 0, i32 1, i32 1
  %10 = getelementptr inbounds %struct.hw_fw_request_iface, ptr %fwreq, i32 0, i32 1, i32 0, i32 2
  %fns_phy = getelementptr inbounds %struct.hw_fw_request_ptp_adj_freq, ptr %0, i32 0, i32 3
  %conv.i15 = trunc i64 %call1.i6 to i32
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i15, ptr %10, align 4
  %12 = ptrtoint ptr %fns_phy to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %nsi_frac.0.off0.i14, ptr %fns_phy, align 4
  %conv.i17 = zext i32 %nsi_frac.0.off0.i14 to i64
  %mul2.neg.neg.i = mul nuw nsw i64 %conv.i17, 160000000
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %conv3.i = zext i32 %14 to i64
  %mul7.neg.i = mul nuw nsw i64 %conv3.i, 761241824
  %sub9.i = add nuw nsw i64 %mul7.neg.i, %mul2.neg.neg.i
  %mul11.i = shl i64 %sub9.i, 34
  %call.i18 = tail call i64 @div64_s64(i64 noundef %mul11.i, i64 noundef 312500000) #6
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  %conv15.i = zext i32 %16 to i64
  %mul16.i = shl nuw i64 %conv15.i, 32
  %add17.i = or i64 %mul16.i, %conv3.i
  %add18.i = add i64 %add17.i, %call.i18
  %call19.i = tail call i64 @div64_s64(i64 noundef %add18.i, i64 noundef 4294967296) #6
  %conv20.i = trunc i64 %call19.i to i32
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv20.i, ptr %9, align 4
  %conv25.i = trunc i64 %add18.i to i32
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv25.i, ptr %8, align 4
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %19 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aq_fw_ops, align 4
  %send_fw_request = getelementptr inbounds %struct.aq_fw_ops, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %send_fw_request to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send_fw_request, align 4
  %call = call i32 %22(ptr noundef %self, ptr noundef nonnull %fwreq, i32 noundef 28) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fwreq) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_adj_sys_clock(ptr noundef %self, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clk_offset = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 20
  %0 = ptrtoint ptr %ptp_clk_offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ptp_clk_offset, align 8
  %add = add i64 %1, %delta
  store i64 %add, ptr %ptp_clk_offset, align 8
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %2 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_fw_ops, align 4
  %adjust_ptp = getelementptr inbounds %struct.aq_fw_ops, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %adjust_ptp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adjust_ptp, align 4
  tail call void %5(ptr noundef %self, i64 noundef %add) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_set_sys_clock(ptr noundef %self, i64 noundef %time, i64 noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clk_offset = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 20
  %add.i = sub i64 %time, %ts
  %0 = ptrtoint ptr %ptp_clk_offset to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %add.i, ptr %ptp_clk_offset, align 8
  %aq_fw_ops.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %1 = ptrtoint ptr %aq_fw_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aq_fw_ops.i, align 4
  %adjust_ptp.i = getelementptr inbounds %struct.aq_fw_ops, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %adjust_ptp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adjust_ptp.i, align 4
  tail call void %4(ptr noundef %self, i64 noundef %add.i) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_atl_b0_ts_to_sys_clock(ptr nocapture noundef readonly %self, i64 noundef %ts, ptr nocapture noundef writeonly %time) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clk_offset = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 20
  %0 = ptrtoint ptr %ptp_clk_offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ptp_clk_offset, align 8
  %add = add i64 %1, %ts
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %add, ptr %time, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_gpio_pulse(ptr noundef %self, i32 noundef %index, i64 noundef %start, i32 noundef %period) #0 align 64 {
entry:
  %fwreq = alloca %struct.hw_fw_request_iface, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fwreq) #6
  %0 = getelementptr inbounds %struct.hw_fw_request_iface, ptr %fwreq, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hw_fw_request_iface, ptr %fwreq, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.hw_fw_request_iface, ptr %fwreq, i32 0, i32 1, i32 0, i32 2
  %3 = getelementptr inbounds i8, ptr %fwreq, i32 20
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %5 = ptrtoint ptr %fwreq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 17, ptr %fwreq, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %period, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %start, ptr %2, align 4
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %9 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aq_fw_ops, align 4
  %send_fw_request = getelementptr inbounds %struct.aq_fw_ops, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %send_fw_request to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_fw_request, align 4
  %call = call i32 %12(ptr noundef %self, ptr noundef nonnull %fwreq, i32 noundef 20) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fwreq) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_extts_gpio_enable(ptr noundef %self, i32 noundef %index, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool.not, i16 0, i16 113
  tail call void @aq_phy_write_reg(ptr noundef %self, i16 noundef zeroext 3, i16 noundef zeroext -14831, i16 noundef zeroext %conv) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_get_sync_ts(ptr noundef %self, ptr noundef writeonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ts, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %self, i16 noundef zeroext 3, i16 noundef zeroext -14060) #6
  %conv = zext i16 %call to i64
  %call1 = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %self, i16 noundef zeroext 3, i16 noundef zeroext -14059) #6
  %conv2 = zext i16 %call1 to i64
  %call3 = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %self, i16 noundef zeroext 3, i16 noundef zeroext -14058) #6
  %conv4 = zext i16 %call3 to i64
  %call5 = tail call zeroext i16 @aq_phy_read_reg(ptr noundef %self, i16 noundef zeroext 3, i16 noundef zeroext -14057) #6
  %conv6 = zext i16 %call5 to i64
  %shl = shl nuw nsw i64 %conv6, 16
  %add = or i64 %shl, %conv4
  %shl7 = shl nuw nsw i64 %conv2, 16
  %add8 = or i64 %shl7, %conv
  %mul = mul nuw nsw i64 %add8, 1000000000
  %add9 = add nuw nsw i64 %add, %mul
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %add9, ptr %ts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @hw_atl_b0_rx_extract_ts(ptr nocapture noundef readonly %self, ptr nocapture noundef readonly %p, i32 noundef %len, ptr noundef writeonly %timestamp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp = icmp ult i32 %len, 15
  %tobool.not = icmp eq ptr %timestamp, null
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %len, -14
  %add.ptr = getelementptr i8, ptr %p, i32 %sub
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %sec.0.copyload = load i64, ptr %add.ptr, align 1
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 8
  %1 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %ns.0.copyload = load i32, ptr %add.ptr1, align 1
  %and = and i64 %sec.0.copyload, 281474976710655
  %mul = mul i64 %and, 1000000000
  %conv = zext i32 %ns.0.copyload to i64
  %add = add i64 %mul, %conv
  %ptp_clk_offset = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 20
  %2 = ptrtoint ptr %ptp_clk_offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ptp_clk_offset, align 8
  %add2 = add i64 %add, %3
  %4 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add2, ptr %timestamp, align 8
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %p, i32 0, i32 2
  %5 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30473, i16 %6)
  %cmp4 = icmp eq i16 %6, -30473
  %conv6 = select i1 %cmp4, i16 12, i16 14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_atl_b0_extract_hwts(ptr nocapture noundef readonly %self, ptr nocapture noundef readonly %p, i32 noundef %len, ptr noundef writeonly %timestamp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timestamp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %p to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %p, align 1
  %and5 = and i32 %1, 4095
  %conv6 = zext i32 %and5 to i64
  %shl7 = shl nuw nsw i64 %conv6, 26
  %sec_lw0 = getelementptr inbounds %struct.hw_atl_rxd_hwts_wb_s, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %sec_lw0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %sec_lw0, align 1
  %shr = lshr i32 %3, 2
  %and = and i32 %shr, 1023
  %sec_lw1 = getelementptr inbounds %struct.hw_atl_rxd_hwts_wb_s, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %sec_lw1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %sec_lw1, align 1
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 67107840
  %add431 = or i32 %7, %and
  %add4 = zext i32 %add431 to i64
  %add8 = or i64 %shl7, %add4
  %shr10 = lshr i32 %1, 22
  %conv12 = zext i32 %shr10 to i64
  %shl13 = shl nuw nsw i64 %conv12, 38
  %add14 = or i64 %add8, %shl13
  %mul = mul i64 %add14, 1000000000
  %ns15 = getelementptr inbounds %struct.hw_atl_rxd_hwts_wb_s, ptr %p, i32 0, i32 1
  %8 = ptrtoint ptr %ns15 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ns15, align 1
  %conv16 = zext i32 %9 to i64
  %ptp_clk_offset = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 20
  %10 = ptrtoint ptr %ptp_clk_offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptp_clk_offset, align 8
  %add17 = add i64 %11, %conv16
  %add18 = add i64 %add17, %mul
  %12 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add18, ptr %timestamp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_b0_get_mac_temp(ptr noundef %self, ptr nocapture noundef writeonly %temp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl_ts_power_down_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_ts_power_down_set(ptr noundef %self, i32 noundef 0) #6
  tail call void @hw_atl_ts_reset_set(ptr noundef %self, i32 noundef 1) #6
  tail call void @hw_atl_ts_reset_set(ptr noundef %self, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call1, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1635) #6
  br label %for.cond

for.cond:                                         ; preds = %if.then24, %if.end
  %call.i = tail call i32 @hw_atl_ts_ready_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.land.lhs.true_crit_edge, label %land.lhs.true.i

for.cond.land.lhs.true_crit_edge:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %for.cond
  %call1.i = tail call i32 @hw_atl_ts_ready_latch_high_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.land.lhs.true_crit_edge, label %land.lhs.true.i.if.end29_crit_edge

land.lhs.true.i.if.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %for.cond.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then20, label %if.then24

if.then20:                                        ; preds = %land.lhs.true
  %call.i57 = tail call i32 @hw_atl_ts_ready_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.then20.cleanup_crit_edge, label %land.lhs.true.i61

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i61:                                ; preds = %if.then20
  %call1.i59 = tail call i32 @hw_atl_ts_ready_latch_high_get(ptr noundef %self) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool2.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool2.not.i60, label %land.lhs.true.i61.cleanup_crit_edge, label %land.lhs.true.i61.if.end29_crit_edge

land.lhs.true.i61.if.end29_crit_edge:             ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true.i61.cleanup_crit_edge:              ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #6
  br label %for.cond

if.end29:                                         ; preds = %land.lhs.true.i61.if.end29_crit_edge, %land.lhs.true.i.if.end29_crit_edge
  %call30 = tail call i32 @hw_atl_ts_data_get(ptr noundef %self) #6
  %mul = shl i32 %call30, 4
  %mul31 = mul i32 %mul, %call30
  %div = udiv i32 %mul31, 100000
  %mul32 = mul i32 %call30, 60
  %add33 = add i32 %mul32, -83410
  %sub = add i32 %add33, %div
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sub, ptr %temp, align 4
  br i1 %cmp, label %if.then35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hw_atl_ts_power_down_set(ptr noundef %self, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end29.cleanup_crit_edge, %land.lhs.true.i61.cleanup_crit_edge, %if.then20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then35 ], [ 0, %if.end29.cleanup_crit_edge ], [ -110, %if.then20.cleanup_crit_edge ], [ -110, %land.lhs.true.i61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_tx_dma_desc_tail_ptr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_irq_glb_ctl_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_auto_masklsw_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_gen_irq_map_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tps_tx_tc_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_dca_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_dca_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_path_scp_ins_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rpf_rx_traf_class_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_flow_ctl_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2unicast_flr_act_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_flr_mcst_flr_msk_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_flr_mcst_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_outer_etht_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_inner_etht_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_accept_untagged_packets_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_untagged_act_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2broadcast_flr_act_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2broadcast_count_threshold_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_dca_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_dca_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_dma_desc_cache_init_tgl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rdm_rx_dma_desc_cache_init_done_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_ipv4_dest_addr_set(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_ipv4_src_addr_set(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_ipv6_dest_addr_set(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_ipv6_src_addr_set(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_l4_dpd_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_l4_spd_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_cmd_set(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_cmd_clear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_ipv4_src_addr_clear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_ipv4_dest_addr_clear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_ipv6_src_addr_clear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl3l4_ipv6_dest_addr_clear(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_etht_flr_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_etht_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_etht_user_priority_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_etht_user_priority_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_etht_flr_act_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_etht_rx_queue_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_etht_rx_queue_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_flr_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_rxq_en_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_id_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_flr_act_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_rxq_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tdm_intr_moder_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rdm_intr_moder_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_mbps_2_speed_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_tx_intr_moder_ctrl_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_intr_moder_ctrl_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_redir_tbl_wr_data_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_redir_tbl_addr_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_redir_wr_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_data_arb_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_desc_rate_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_desc_rate_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_desc_rate_x_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_desc_rate_y_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_pcs_ptp_clock_read_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_pcs_ptp_clock_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_phy_write_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @aq_phy_read_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_ts_power_down_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_ts_power_down_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_ts_reset_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_ts_data_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_ts_ready_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_ts_ready_latch_high_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @hw_atl_b0_caps_aqc100, !1, !"hw_atl_b0_caps_aqc100", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 59, i32 27}
!2 = !{ptr @hw_atl_b0_caps_aqc107, !3, !"hw_atl_b0_caps_aqc107", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 69, i32 27}
!4 = !{ptr @hw_atl_b0_caps_aqc108, !5, !"hw_atl_b0_caps_aqc108", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 79, i32 27}
!6 = !{ptr @hw_atl_b0_caps_aqc109, !7, !"hw_atl_b0_caps_aqc109", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 88, i32 27}
!8 = !{ptr @hw_atl_b0_caps_aqc111, !9, !"hw_atl_b0_caps_aqc111", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 96, i32 27}
!10 = !{ptr @hw_atl_b0_caps_aqc112, !11, !"hw_atl_b0_caps_aqc112", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 106, i32 27}
!12 = !{ptr @hw_atl_ops_b0, !13, !"hw_atl_ops_b0", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 1650, i32 24}
!14 = !{ptr @hw_atl_b0_hw_init.aq_hw_atl_igcr_table_, !15, !"aq_hw_atl_igcr_table_", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 563, i32 13}
!16 = !{ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_, !17, !"hw_atl_b0_timers_table_tx_", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 1135, i32 24}
!18 = !{ptr @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_, !19, !"hw_atl_b0_timers_table_rx_", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 1144, i32 24}
!20 = distinct !{null, !21, !"max_weight", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 334, i32 19}
!22 = distinct !{null, !23, !"scale", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 336, i32 19}
!24 = distinct !{null, !25, !"frac_msk", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 337, i32 19}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c", i32 1634, i32 8}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2148426602, i64 2148426628, i64 2148426657, i64 2148426691, i64 2148426722, i64 2148426745}
!41 = !{i64 2157014143}
