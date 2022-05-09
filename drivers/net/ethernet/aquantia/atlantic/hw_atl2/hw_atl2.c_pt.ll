; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hw_atl2_priv = type { %struct.statistics_s, i32 }
%struct.statistics_s = type { %union.anon.134 }
%union.anon.134 = type <{ %struct.statistics_a0_s, [4 x i8] }>
%struct.statistics_a0_s = type { %struct.anon.135, %struct.anon.136, i32, i32 }
%struct.anon.135 = type { i32, i32 }
%struct.anon.136 = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.aq_rx_filter_vlan = type { i8, i8, i16, i8 }

@hw_atl2_caps_aqc113 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 63, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 72, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 1, i32 0, i32 120 }, [40 x i8] zeroinitializer }, align 32
@hw_atl2_caps_aqc115c = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 60, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 72, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 1, i32 0, i32 120 }, [40 x i8] zeroinitializer }, align 32
@hw_atl2_caps_aqc116c = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 564882958287753, i64 56, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 16352, i32 72, i32 16, i8 8, i8 8, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 1, i32 0, i32 120 }, [40 x i8] zeroinitializer }, align 32
@hw_atl2_ops = dso_local constant { %struct.aq_hw_ops, [52 x i8] } { %struct.aq_hw_ops { ptr @hw_atl_b0_hw_ring_tx_xmit, ptr @hw_atl_b0_hw_ring_rx_receive, ptr @hw_atl_b0_hw_ring_rx_fill, ptr @hw_atl_b0_hw_ring_tx_head_update, ptr @hw_atl_b0_hw_mac_addr_set, ptr @hw_atl2_utils_soft_reset, ptr @hw_atl2_utils_initfw, ptr @hw_atl2_hw_reset, ptr @hw_atl2_hw_init, ptr @hw_atl_b0_hw_start, ptr @hw_atl2_hw_stop, ptr @hw_atl2_hw_ring_tx_init, ptr @hw_atl_b0_hw_ring_tx_start, ptr @hw_atl_b0_hw_ring_tx_stop, ptr @hw_atl2_hw_ring_rx_init, ptr @hw_atl_b0_hw_ring_rx_start, ptr @hw_atl_b0_hw_ring_rx_stop, ptr @hw_atl_b0_hw_irq_enable, ptr @hw_atl_b0_hw_irq_disable, ptr @hw_atl_b0_hw_irq_read, ptr @hw_atl2_hw_packet_filter_set, ptr null, ptr null, ptr null, ptr null, ptr @hw_atl2_hw_vlan_set, ptr @hw_atl2_hw_vlan_ctrl, ptr @hw_atl2_hw_multicast_list_set, ptr @hw_atl2_hw_interrupt_moderation_set, ptr @hw_atl2_hw_rss_set, ptr @hw_atl_b0_hw_rss_hash_set, ptr @hw_atl2_hw_init_tx_tc_rate_limit, ptr null, ptr @hw_atl2_utils_get_hw_stats, ptr @hw_atl2_utils_get_fw_version, ptr @hw_atl_b0_hw_offload_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hw_atl_b0_set_fc, ptr @hw_atl_b0_set_loopback, ptr null }, [52 x i8] zeroinitializer }, align 32
@hw_atl2_hw_init.aq_hw_atl2_igcr_table_ = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 536870912, i32 536870912], [2 x i32] [i32 536871040, i32 536871040], [2 x i32] [i32 536870945, i32 536870949], [2 x i32] [i32 536870946, i32 536870950]], [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_tx_ = internal constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 15, i32 255], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511]], [48 x i8] zeroinitializer }, align 32
@hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_rx_ = internal constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 6, i32 56], [2 x i32] [i32 12, i32 112], [2 x i32] [i32 12, i32 112], [2 x i32] [i32 24, i32 224], [2 x i32] [i32 48, i32 128], [2 x i32] [i32 4, i32 80]], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 65535]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"hw_atl2_caps_aqc113\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 61, i32 27 }
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"hw_atl2_caps_aqc115c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 72, i32 27 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"hw_atl2_caps_aqc116c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 81, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"hw_atl2_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 825, i32 24 }
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"aq_hw_atl2_igcr_table_\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 535, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [25 x i8] c"hw_atl2_timers_table_tx_\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 702, i32 24 }
@___asan_gen_.20 = private unnamed_addr constant [25 x i8] c"hw_atl2_timers_table_rx_\00", align 1
@___asan_gen_.21 = private constant [60 x i8] c"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 710, i32 24 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @hw_atl2_caps_aqc113, ptr @hw_atl2_caps_aqc115c, ptr @hw_atl2_caps_aqc116c, ptr @hw_atl2_ops, ptr @hw_atl2_hw_init.aq_hw_atl2_igcr_table_, ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_tx_, ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_rx_], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_caps_aqc113 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_caps_aqc115c to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_caps_aqc116c to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_hw_init.aq_hw_atl2_igcr_table_ to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_tx_ to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_rx_ to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_tx_xmit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_rx_receive(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_rx_fill(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_tx_head_update(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_mac_addr_set(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl2_utils_soft_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl2_utils_initfw(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_reset(ptr noundef %self) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 22
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call i32 @hw_atl2_utils_soft_reset(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = call ptr @memset(ptr %1, i32 0, i32 120)
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %3 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aq_fw_ops, align 4
  %set_state = getelementptr inbounds %struct.aq_fw_ops, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %set_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_state, align 4
  %call2 = tail call i32 %6(ptr noundef %self, i32 noundef 1) #5
  %call3 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_init(ptr noundef %self, ptr noundef %mac_addr) #1 align 64 {
entry:
  %base_index = alloca i8, align 1
  %count = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 22
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %aq_nic_cfg2 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %2 = ptrtoint ptr %aq_nic_cfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_nic_cfg2, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %base_index) #5
  %4 = ptrtoint ptr %base_index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %base_index, align 1, !annotation !29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %count) #5
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %count, align 1, !annotation !29
  %call = call i32 @hw_atl2_utils_get_action_resolve_table_caps(ptr noundef %self, ptr noundef nonnull %base_index, ptr noundef nonnull %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %base_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %base_index, align 1
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %art_base_index = getelementptr inbounds %struct.hw_atl2_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %art_base_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %art_base_index, align 4
  call void @hw_atl2_init_launchtime(ptr noundef %self) #5
  %9 = ptrtoint ptr %aq_nic_cfg2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aq_nic_cfg2, align 8
  %tc_mode.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %10, i32 0, i32 29
  %11 = ptrtoint ptr %tc_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tc_mode.i, align 4
  call void @hw_atl_tpb_tps_tx_tc_mode_set(ptr noundef %self, i32 noundef %12) #5
  call void @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(ptr noundef %self, i32 noundef 4086) #5
  call void @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(ptr noundef %self, i32 noundef 4086) #5
  call void @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(ptr noundef %self, i32 noundef 3967) #5
  call void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #5
  call void @hw_atl_tdm_tx_dca_en_set(ptr noundef %self, i32 noundef 0) #5
  call void @hw_atl_tdm_tx_dca_mode_set(ptr noundef %self, i32 noundef 0) #5
  call void @hw_atl_tpb_tx_path_scp_ins_en_set(ptr noundef %self, i32 noundef 1) #5
  call void @hw_atl2_tpb_tx_buf_clk_gate_en_set(ptr noundef %self, i32 noundef 0) #5
  %call.i = call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %13 = ptrtoint ptr %aq_nic_cfg2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aq_nic_cfg2, align 8
  %tc_mode.i59 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %14, i32 0, i32 29
  %15 = ptrtoint ptr %tc_mode.i59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tc_mode.i59, align 4
  call void @hw_atl_rpb_rpf_rx_traf_class_mode_set(ptr noundef %self, i32 noundef %16) #5
  call void @hw_atl_rpb_rx_flow_ctl_mode_set(ptr noundef %self, i32 noundef 1) #5
  call void @hw_atl2_rpf_rss_hash_type_set(ptr noundef %self, i32 noundef 511) #5
  call void @hw_atl_b0_hw_init_rx_rss_ctrl1(ptr noundef %self) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.01.i = phi i32 [ 38, %if.end ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.01.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  %cond.i = zext i1 %cmp.i to i32
  call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef %cond.i, i32 noundef %dec.i) #5
  call void @hw_atl_rpfl2unicast_flr_act_set(ptr noundef %self, i32 noundef 1, i32 noundef %dec.i) #5
  br i1 %cmp.i, label %hw_atl2_hw_init_rx_path.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

hw_atl2_hw_init_rx_path.exit:                     ; preds = %for.body.i
  call void @hw_atl_reg_rx_flr_mcst_flr_msk_set(ptr noundef %self, i32 noundef 0) #5
  call void @hw_atl_reg_rx_flr_mcst_flr_set(ptr noundef %self, i32 noundef 69631, i32 noundef 0) #5
  call void @hw_atl_rpf_vlan_outer_etht_set(ptr noundef %self, i32 noundef 34984) #5
  call void @hw_atl_rpf_vlan_inner_etht_set(ptr noundef %self, i32 noundef 33024) #5
  call void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %self, i32 noundef 1) #5
  call void @hw_atl_rpf_vlan_accept_untagged_packets_set(ptr noundef %self, i32 noundef 1) #5
  call void @hw_atl_rpf_vlan_untagged_act_set(ptr noundef %self, i32 noundef 1) #5
  %17 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv1, align 4
  %19 = ptrtoint ptr %aq_nic_cfg2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aq_nic_cfg2, align 8
  %prio_tc_map2.i.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %20, i32 0, i32 32
  call void @hw_atl2_rpf_act_rslvr_section_en_set(ptr noundef %self, i32 noundef 65535) #5
  call void @hw_atl2_rpfl2_uc_flr_tag_set(ptr noundef %self, i32 noundef 1, i32 noundef 0) #5
  call void @hw_atl2_rpfl2_bc_flr_tag_set(ptr noundef %self, i32 noundef 1) #5
  %art_base_index.i.i = getelementptr inbounds %struct.hw_atl2_priv, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %art_base_index.i.i, align 4
  %conv.i.i = trunc i32 %22 to i8
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv.i.i, i32 noundef 0, i32 noundef 127, i32 noundef 1) #5
  %23 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %art_base_index.i.i, align 4
  %25 = trunc i32 %24 to i8
  %conv5.i.i = add i8 %25, 1
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv5.i.i, i32 noundef 0, i32 noundef 31744, i32 noundef 1) #5
  %26 = ptrtoint ptr %prio_tc_map2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %prio_tc_map2.i.i, align 1
  %28 = shl i8 %27, 2
  %shl.i.i = zext i8 %28 to i32
  %or9.i.i = or i32 %shl.i.i, 385
  %29 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %art_base_index.i.i, align 4
  %31 = trunc i32 %30 to i8
  %conv14.i.i = add i8 %31, 56
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv14.i.i, i32 noundef 0, i32 noundef -536870912, i32 noundef %or9.i.i) #5
  %arrayidx.1.i.i = getelementptr %struct.aq_nic_cfg_s, ptr %20, i32 0, i32 32, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.1.i.i, align 1
  %34 = shl i8 %33, 2
  %shl.1.i.i = zext i8 %34 to i32
  %or9.1.i.i = or i32 %shl.1.i.i, 385
  %35 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %art_base_index.i.i, align 4
  %37 = trunc i32 %36 to i8
  %conv14.1.i.i = add i8 %37, 57
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv14.1.i.i, i32 noundef 536870912, i32 noundef -536870912, i32 noundef %or9.1.i.i) #5
  %arrayidx.2.i.i = getelementptr %struct.aq_nic_cfg_s, ptr %20, i32 0, i32 32, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.2.i.i, align 1
  %40 = shl i8 %39, 2
  %shl.2.i.i = zext i8 %40 to i32
  %or9.2.i.i = or i32 %shl.2.i.i, 385
  %41 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %art_base_index.i.i, align 4
  %43 = trunc i32 %42 to i8
  %conv14.2.i.i = add i8 %43, 58
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv14.2.i.i, i32 noundef 1073741824, i32 noundef -536870912, i32 noundef %or9.2.i.i) #5
  %arrayidx.3.i.i = getelementptr %struct.aq_nic_cfg_s, ptr %20, i32 0, i32 32, i32 3
  %44 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.3.i.i, align 1
  %46 = shl i8 %45, 2
  %shl.3.i.i = zext i8 %46 to i32
  %or9.3.i.i = or i32 %shl.3.i.i, 385
  %47 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %art_base_index.i.i, align 4
  %49 = trunc i32 %48 to i8
  %conv14.3.i.i = add i8 %49, 59
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv14.3.i.i, i32 noundef 1610612736, i32 noundef -536870912, i32 noundef %or9.3.i.i) #5
  %arrayidx.4.i.i = getelementptr %struct.aq_nic_cfg_s, ptr %20, i32 0, i32 32, i32 4
  %50 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.4.i.i, align 1
  %52 = shl i8 %51, 2
  %shl.4.i.i = zext i8 %52 to i32
  %or9.4.i.i = or i32 %shl.4.i.i, 385
  %53 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %art_base_index.i.i, align 4
  %55 = trunc i32 %54 to i8
  %conv14.4.i.i = add i8 %55, 60
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv14.4.i.i, i32 noundef -2147483648, i32 noundef -536870912, i32 noundef %or9.4.i.i) #5
  %arrayidx.5.i.i = getelementptr %struct.aq_nic_cfg_s, ptr %20, i32 0, i32 32, i32 5
  %56 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.5.i.i, align 1
  %58 = shl i8 %57, 2
  %shl.5.i.i = zext i8 %58 to i32
  %or9.5.i.i = or i32 %shl.5.i.i, 385
  %59 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %art_base_index.i.i, align 4
  %61 = trunc i32 %60 to i8
  %conv14.5.i.i = add i8 %61, 61
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv14.5.i.i, i32 noundef -1610612736, i32 noundef -536870912, i32 noundef %or9.5.i.i) #5
  %arrayidx.6.i.i = getelementptr %struct.aq_nic_cfg_s, ptr %20, i32 0, i32 32, i32 6
  %62 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.6.i.i, align 1
  %64 = shl i8 %63, 2
  %shl.6.i.i = zext i8 %64 to i32
  %or9.6.i.i = or i32 %shl.6.i.i, 385
  %65 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %art_base_index.i.i, align 4
  %67 = trunc i32 %66 to i8
  %conv14.6.i.i = add i8 %67, 62
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv14.6.i.i, i32 noundef -1073741824, i32 noundef -536870912, i32 noundef %or9.6.i.i) #5
  %arrayidx.7.i.i = getelementptr %struct.aq_nic_cfg_s, ptr %20, i32 0, i32 32, i32 7
  %68 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.7.i.i, align 1
  %70 = shl i8 %69, 2
  %shl.7.i.i = zext i8 %70 to i32
  %or9.7.i.i = or i32 %shl.7.i.i, 385
  %71 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %art_base_index.i.i, align 4
  %73 = trunc i32 %72 to i8
  %conv14.7.i.i = add i8 %73, 63
  call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv14.7.i.i, i32 noundef -536870912, i32 noundef -536870912, i32 noundef %or9.7.i.i) #5
  call void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #5
  call void @hw_atl_rpfl2broadcast_flr_act_set(ptr noundef %self, i32 noundef 1) #5
  call void @hw_atl_rpfl2broadcast_count_threshold_set(ptr noundef %self, i32 noundef 65535) #5
  call void @hw_atl_rdm_rx_dca_en_set(ptr noundef %self, i32 noundef 0) #5
  call void @hw_atl_rdm_rx_dca_mode_set(ptr noundef %self, i32 noundef 0) #5
  %call.i60 = call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %call5 = call i32 @hw_atl_b0_hw_mac_addr_set(ptr noundef %self, ptr noundef %mac_addr) #5
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %74 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %aq_fw_ops, align 4
  %set_link_speed = getelementptr inbounds %struct.aq_fw_ops, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %set_link_speed to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_link_speed, align 4
  %link_speed_msk = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 14
  %78 = ptrtoint ptr %link_speed_msk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %link_speed_msk, align 8
  %call6 = call i32 %77(ptr noundef %self, i32 noundef %79) #5
  %80 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %aq_fw_ops, align 4
  %set_state = getelementptr inbounds %struct.aq_fw_ops, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %set_state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_state, align 4
  %call8 = call i32 %83(ptr noundef %self, i32 noundef 2) #5
  %84 = ptrtoint ptr %aq_nic_cfg2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %aq_nic_cfg2, align 8
  call void @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(ptr noundef %self, i32 noundef 0) #5
  call void @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(ptr noundef %self, i32 noundef 10) #5
  call void @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(ptr noundef %self, i32 noundef 0) #5
  %tcs.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 31
  %86 = ptrtoint ptr %tcs.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tcs.i, align 4
  %div1.i = udiv i8 -128, %87
  %div.zext.i = zext i8 %div1.i to i32
  %div32.i = udiv i8 -64, %87
  %div3.zext.i = zext i8 %div32.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp4.not.i = icmp eq i8 %87, 0
  br i1 %cmp4.not.i, label %hw_atl2_hw_init_rx_path.exit.for.cond19.preheader.i_crit_edge, label %for.body.lr.ph.i

hw_atl2_hw_init_rx_path.exit.for.cond19.preheader.i_crit_edge: ; preds = %hw_atl2_hw_init_rx_path.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader.i

for.body.lr.ph.i:                                 ; preds = %hw_atl2_hw_init_rx_path.exit
  %mul7.i = mul nuw nsw i32 %div.zext.i, 2112
  %div8.i = udiv i32 %mul7.i, 100
  %div11.i = shl nuw nsw i32 %div.zext.i, 4
  %mul13.i = mul nuw nsw i32 %div3.zext.i, 2112
  %div14.i = udiv i32 %mul13.i, 100
  %div17.i = shl nuw nsw i32 %div3.zext.i, 4
  br label %for.body.i64

for.cond19.preheader.i:                           ; preds = %for.body.i64.for.cond19.preheader.i_crit_edge, %hw_atl2_hw_init_rx_path.exit.for.cond19.preheader.i_crit_edge
  %arrayidx.i = getelementptr %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 32, i32 0
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i, align 1
  %conv23.i = zext i8 %89 to i32
  call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv23.i) #5
  %arrayidx.1.i = getelementptr %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 32, i32 1
  %90 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.1.i, align 1
  %conv23.1.i = zext i8 %91 to i32
  call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 1, i32 noundef %conv23.1.i) #5
  %arrayidx.2.i = getelementptr %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 32, i32 2
  %92 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.2.i, align 1
  %conv23.2.i = zext i8 %93 to i32
  call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 2, i32 noundef %conv23.2.i) #5
  %arrayidx.3.i = getelementptr %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 32, i32 3
  %94 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.3.i, align 1
  %conv23.3.i = zext i8 %95 to i32
  call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 3, i32 noundef %conv23.3.i) #5
  %arrayidx.4.i = getelementptr %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 32, i32 4
  %96 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.4.i, align 1
  %conv23.4.i = zext i8 %97 to i32
  call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 4, i32 noundef %conv23.4.i) #5
  %arrayidx.5.i = getelementptr %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 32, i32 5
  %98 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.5.i, align 1
  %conv23.5.i = zext i8 %99 to i32
  call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 5, i32 noundef %conv23.5.i) #5
  %arrayidx.6.i = getelementptr %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 32, i32 6
  %100 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.6.i, align 1
  %conv23.6.i = zext i8 %101 to i32
  call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 6, i32 noundef %conv23.6.i) #5
  %arrayidx.7.i = getelementptr %struct.aq_nic_cfg_s, ptr %85, i32 0, i32 32, i32 7
  %102 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.7.i, align 1
  %conv23.7.i = zext i8 %103 to i32
  call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 7, i32 noundef %conv23.7.i) #5
  %104 = ptrtoint ptr %aq_nic_cfg2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %aq_nic_cfg2, align 8
  call void @hw_atl2_tpb_tx_tc_q_rand_map_en_set(ptr noundef %self, i32 noundef 1) #5
  %tc_mode.i.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %105, i32 0, i32 29
  %106 = ptrtoint ptr %tc_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tc_mode.i.i, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values)
  switch i32 %107, label %for.cond19.preheader.i.hw_atl2_hw_qos_set.exit_crit_edge [
    i32 0, label %for.cond19.preheader.i.sw.epilog.i.i_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

for.cond19.preheader.i.sw.epilog.i.i_crit_edge:   ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

for.cond19.preheader.i.hw_atl2_hw_qos_set.exit_crit_edge: ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hw_atl2_hw_qos_set.exit

for.body.i64:                                     ; preds = %for.body.i64.for.body.i64_crit_edge, %for.body.lr.ph.i
  %tc.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i64.for.body.i64_crit_edge ]
  call void @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(ptr noundef %self, i32 noundef %div.zext.i, i32 noundef %tc.05.i) #5
  call void @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(ptr noundef %self, i32 noundef %div8.i, i32 noundef %tc.05.i) #5
  call void @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(ptr noundef %self, i32 noundef %div11.i, i32 noundef %tc.05.i) #5
  call void @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(ptr noundef %self, i32 noundef %div3.zext.i, i32 noundef %tc.05.i) #5
  call void @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(ptr noundef %self, i32 noundef %div14.i, i32 noundef %tc.05.i) #5
  call void @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(ptr noundef %self, i32 noundef %div17.i, i32 noundef %tc.05.i) #5
  %109 = ptrtoint ptr %aq_nic_cfg2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %aq_nic_cfg2, align 8
  %fc.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %110, i32 0, i32 13
  %111 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fc.i, align 8
  %call.i62 = call i32 @hw_atl_b0_set_fc(ptr noundef %self, i32 noundef %112, i32 noundef %tc.05.i) #5
  %inc.i = add nuw nsw i32 %tc.05.i, 1
  %113 = ptrtoint ptr %tcs.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %tcs.i, align 4
  %conv5.i = zext i8 %114 to i32
  %cmp.i63 = icmp ult i32 %inc.i, %conv5.i
  br i1 %cmp.i63, label %for.body.i64.for.body.i64_crit_edge, label %for.body.i64.for.cond19.preheader.i_crit_edge

for.body.i64.for.cond19.preheader.i_crit_edge:    ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond19.preheader.i

for.body.i64.for.body.i64_crit_edge:              ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i64

sw.bb1.i.i:                                       ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %for.cond19.preheader.i.sw.epilog.i.i_crit_edge
  %tcs.0.i.i = phi i32 [ 4, %sw.bb1.i.i ], [ 8, %for.cond19.preheader.i.sw.epilog.i.i_crit_edge ]
  %q_per_tc.0.i.i = phi i32 [ 8, %sw.bb1.i.i ], [ 4, %for.cond19.preheader.i.sw.epilog.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %sw.epilog.i.i
  %tx_map.012.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ %tx_map.2.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %rx_map.011.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ %rx_map.2.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %tc.010.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ %inc72.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %tc.010.i.i, %q_per_tc.0.i.i
  %add.i.i = add nuw nsw i32 %mul.i.i, %q_per_tc.0.i.i
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.inc.i.i.for.body4.i.i_crit_edge, %for.body.i.i
  %tx_map.19.i.i = phi i32 [ %tx_map.012.i.i, %for.body.i.i ], [ %tx_map.2.i.i, %for.inc.i.i.for.body4.i.i_crit_edge ]
  %rx_map.18.i.i = phi i32 [ %rx_map.011.i.i, %for.body.i.i ], [ %rx_map.2.i.i, %for.inc.i.i.for.body4.i.i_crit_edge ]
  %q.07.i.i = phi i32 [ %mul.i.i, %for.body.i.i ], [ %add14.i.i, %for.inc.i.i.for.body4.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %q.07.i.i)
  %cmp5.i.i = icmp ult i32 %q.07.i.i, 32
  %mul6.i.i = shl i32 %q.07.i.i, 2
  %rem.i.i = and i32 %mul6.i.i, 28
  %cond.i.i = select i1 %cmp5.i.i, i32 %rem.i.i, i32 0
  %shl.i.i65 = shl i32 %tc.010.i.i, %cond.i.i
  %or.i.i = or i32 %shl.i.i65, %rx_map.18.i.i
  %115 = lshr i32 %q.07.i.i, 1
  %mul9.i.i = and i32 %115, 1073741820
  %add10.i.i = add nuw nsw i32 %mul9.i.i, 22784
  %cond13.i.i = select i1 %cmp5.i.i, i32 %add10.i.i, i32 0
  %add14.i.i = add nuw nsw i32 %q.07.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %q.07.i.i)
  %cmp15.i.i = icmp ult i32 %q.07.i.i, 31
  %116 = lshr i32 %add14.i.i, 1
  %mul19.i.i = and i32 %116, 2147483644
  %add20.i.i = add nuw i32 %mul19.i.i, 22784
  %cond23.i.i = select i1 %cmp15.i.i, i32 %add20.i.i, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond13.i.i, i32 %cond23.i.i)
  %cmp24.not.i.i = icmp eq i32 %cond13.i.i, %cond23.i.i
  br i1 %cmp24.not.i.i, label %for.body4.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body4.i.i.if.end.i.i_crit_edge:               ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef %cond13.i.i, i32 noundef %or.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body4.i.i.if.end.i.i_crit_edge
  %rx_map.2.i.i = phi i32 [ 0, %if.then.i.i ], [ %or.i.i, %for.body4.i.i.if.end.i.i_crit_edge ]
  %mul35.i.i = shl i32 %q.07.i.i, 3
  %rem36.i.i = and i32 %mul35.i.i, 24
  %cond39.i.i = select i1 %cmp5.i.i, i32 %rem36.i.i, i32 0
  %shl40.i.i = shl i32 %tc.010.i.i, %cond39.i.i
  %or41.i.i = or i32 %shl40.i.i, %tx_map.19.i.i
  %117 = add nuw nsw i32 %q.07.i.i, 31132
  %add46.i.i = and i32 %117, 2147483644
  %cond49.i.i = select i1 %cmp5.i.i, i32 %add46.i.i, i32 0
  %118 = add nuw nsw i32 %q.07.i.i, 31133
  %add56.i.i = and i32 %118, 2147483644
  %cond59.i.i = select i1 %cmp15.i.i, i32 %add56.i.i, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond49.i.i, i32 %cond59.i.i)
  %cmp60.not.i.i = icmp eq i32 %cond49.i.i, %cond59.i.i
  br i1 %cmp60.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.then61.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.then61.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @aq_hw_write_reg(ptr noundef %self, i32 noundef %cond49.i.i, i32 noundef %or41.i.i) #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then61.i.i, %if.end.i.i.for.inc.i.i_crit_edge
  %tx_map.2.i.i = phi i32 [ 0, %if.then61.i.i ], [ %or41.i.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %cmp3.not.i.i = icmp eq i32 %add14.i.i, %add.i.i
  br i1 %cmp3.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body4.i.i_crit_edge

for.inc.i.i.for.body4.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %inc72.i.i = add nuw nsw i32 %tc.010.i.i, 1
  %cmp.not.i.i = icmp eq i32 %inc72.i.i, %tcs.0.i.i
  br i1 %cmp.not.i.i, label %for.end73.i.i, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end73.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %hw_atl2_hw_qos_set.exit

hw_atl2_hw_qos_set.exit:                          ; preds = %for.end73.i.i, %for.cond19.preheader.i.hw_atl2_hw_qos_set.exit_crit_edge
  %call28.i = call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %indirection_table1.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 36, i32 4
  %call.i66 = call i32 @aq_hw_num_tcs(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i66)
  %cmp.i67 = icmp ugt i32 %call.i66, 4
  %cond.i68 = zext i1 %cmp.i67 to i32
  call void @hw_atl2_rpf_redirection_table2_select_set(ptr noundef %self, i32 noundef %cond.i68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp3.not18.i = icmp eq i32 %call.i66, 0
  br label %for.cond2.preheader.i

for.cond.loopexit.i:                              ; preds = %for.body4.i.for.cond.loopexit.i_crit_edge, %for.cond2.preheader.i.for.cond.loopexit.i_crit_edge
  %dec.i69 = add nsw i32 %dec20.i, -1
  %tobool.not.i = icmp eq i32 %dec20.i, 0
  br i1 %tobool.not.i, label %hw_atl2_hw_rss_set.exit, label %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge

for.cond.loopexit.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge, %hw_atl2_hw_qos_set.exit
  %dec20.i = phi i32 [ 63, %hw_atl2_hw_qos_set.exit ], [ %dec.i69, %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge ]
  br i1 %cmp3.not18.i, label %for.cond2.preheader.i.for.cond.loopexit.i_crit_edge, label %for.body4.lr.ph.i

for.cond2.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %arrayidx.i70 = getelementptr i8, ptr %indirection_table1.i, i32 %dec20.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %tc.019.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i71, %for.body4.i.for.body4.i_crit_edge ]
  %call5.i = call i32 @aq_hw_q_per_tc(ptr noundef %self) #5
  %mul.i = mul i32 %call5.i, %tc.019.i
  %119 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i70, align 1
  %conv.i = zext i8 %120 to i32
  %add.i = add i32 %mul.i, %conv.i
  call void @hw_atl2_new_rpf_rss_redir_set(ptr noundef %self, i32 noundef %tc.019.i, i32 noundef %dec20.i, i32 noundef %add.i) #5
  %inc.i71 = add nuw i32 %tc.019.i, 1
  %cmp3.not.i = icmp eq i32 %inc.i71, %call.i66
  br i1 %cmp3.not.i, label %for.body4.i.for.cond.loopexit.i_crit_edge, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.i

for.body4.i.for.cond.loopexit.i_crit_edge:        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit.i

hw_atl2_hw_rss_set.exit:                          ; preds = %for.cond.loopexit.i
  %aq_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 36
  %call7.i = call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %call12 = call i32 @hw_atl_b0_hw_rss_hash_set(ptr noundef %self, ptr noundef %aq_rss) #5
  call void @hw_atl2_rpf_new_enable_set(ptr noundef %self, i32 noundef 1) #5
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %121 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %aq_link_status, align 4
  %122 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %aq_fw_ops, align 4
  %update_stats = getelementptr inbounds %struct.aq_fw_ops, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %update_stats, align 4
  %call14 = call i32 %125(ptr noundef %self) #5
  %call15 = call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %hw_atl2_hw_rss_set.exit.cleanup_crit_edge, label %if.end18

hw_atl2_hw_rss_set.exit.cleanup_crit_edge:        ; preds = %hw_atl2_hw_rss_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %hw_atl2_hw_rss_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq_type = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 6
  %126 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %irq_type, align 8
  %vecs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 4
  %128 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp19 = icmp ugt i32 %129, 1
  %cond = zext i1 %cmp19 to i32
  %arrayidx21 = getelementptr [4 x [2 x i32]], ptr @hw_atl2_hw_init.aq_hw_atl2_igcr_table_, i32 0, i32 %127, i32 %cond
  %130 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx21, align 4
  call void @hw_atl_reg_irq_glb_ctl_set(ptr noundef %self, i32 noundef %131) #5
  %132 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %3, align 8
  %irq_mask = getelementptr inbounds %struct.aq_hw_caps_s, ptr %133, i32 0, i32 9
  %134 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %irq_mask, align 4
  call void @hw_atl_itr_irq_auto_masklsw_set(ptr noundef %self, i32 noundef %135) #5
  call void @hw_atl_reg_gen_irq_map_set(ptr noundef %self, i32 noundef -2004353024, i32 noundef 0) #5
  %call22 = call i32 @hw_atl_b0_hw_offload_set(ptr noundef %self, ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %hw_atl2_hw_rss_set.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call15, %hw_atl2_hw_rss_set.exit.cleanup_crit_edge ], [ %call15, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %count) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %base_index) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_start(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_stop(ptr noundef %self) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl_b0_hw_irq_disable(ptr noundef %self, i64 noundef 4294967295) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_ring_tx_init(ptr noundef %self, ptr noundef %aq_ring, ptr noundef %aq_ring_param) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl_b0_hw_ring_tx_init(ptr noundef %self, ptr noundef %aq_ring, ptr noundef %aq_ring_param) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_tx_start(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_tx_stop(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_ring_rx_init(ptr noundef %self, ptr noundef %aq_ring, ptr noundef %aq_ring_param) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl_b0_hw_ring_rx_init(ptr noundef %self, ptr noundef %aq_ring, ptr noundef %aq_ring_param) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_rx_start(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_rx_stop(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_irq_enable(ptr noundef, i64 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_irq_disable(ptr noundef, i64 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_irq_read(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_packet_filter_set(ptr noundef %self, i32 noundef %packet_filter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %packet_filter, 256
  %priv1.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 22
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %art_base_index.i = getelementptr inbounds %struct.hw_atl2_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %art_base_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %art_base_index.i, align 4
  %conv2.i = trunc i32 %3 to i8
  %and.lobit = lshr exact i32 %and, 8
  %4 = xor i32 %and.lobit, 1
  tail call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv2.i, i32 noundef 0, i32 noundef 127, i32 noundef %4) #5
  %call4.i = tail call i32 @hw_atl_rpf_vlan_prom_mode_en_get(ptr noundef %self) #5
  %5 = or i32 %call4.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %land.rhs.i.i, label %entry.hw_atl2_hw_new_rx_filter_promisc.exit_crit_edge

entry.hw_atl2_hw_new_rx_filter_promisc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hw_atl2_hw_new_rx_filter_promisc.exit

land.rhs.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @hw_atl_rpfl2promiscuous_mode_en_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  %phi.cast.i.i = zext i1 %tobool1.not.i.i to i32
  br label %hw_atl2_hw_new_rx_filter_promisc.exit

hw_atl2_hw_new_rx_filter_promisc.exit:            ; preds = %land.rhs.i.i, %entry.hw_atl2_hw_new_rx_filter_promisc.exit_crit_edge
  %6 = phi i32 [ 0, %entry.hw_atl2_hw_new_rx_filter_promisc.exit_crit_edge ], [ %phi.cast.i.i, %land.rhs.i.i ]
  %7 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv1.i, align 4
  %art_base_index.i.i = getelementptr inbounds %struct.hw_atl2_priv, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %art_base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %art_base_index.i.i, align 4
  %11 = trunc i32 %10 to i8
  %conv3.i.i = add i8 %11, 1
  tail call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv3.i.i, i32 noundef 0, i32 noundef 31744, i32 noundef %6) #5
  %call = tail call i32 @hw_atl_b0_hw_packet_filter_set(ptr noundef %self, i32 noundef %packet_filter) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_vlan_set(ptr noundef %self, ptr nocapture noundef readonly %aq_vlans) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 22
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %self, i32 noundef 1) #5
  %art_base_index = getelementptr inbounds %struct.hw_atl2_priv, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.066 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aq_rx_filter_vlan, ptr %aq_vlans, i32 %i.066
  %queue2 = getelementptr %struct.aq_rx_filter_vlan, ptr %aq_vlans, i32 %i.066, i32 3
  %2 = ptrtoint ptr %queue2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %queue2, align 2
  %4 = shl i8 %3, 2
  %shl = zext i8 %4 to i32
  %or3 = or i32 %shl, 257
  tail call void @hw_atl_rpf_vlan_flr_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %i.066) #5
  tail call void @hw_atl_rpf_vlan_rxq_en_flr_set(ptr noundef %self, i32 noundef 0, i32 noundef %i.066) #5
  %5 = ptrtoint ptr %art_base_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %art_base_index, align 4
  %add = add nuw nsw i32 %i.066, 40
  %add4 = add i32 %add, %6
  %conv5 = trunc i32 %add4 to i8
  tail call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv5, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %vlan_id = getelementptr %struct.aq_rx_filter_vlan, ptr %aq_vlans, i32 %i.066, i32 2
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 2
  %conv8 = zext i16 %10 to i32
  tail call void @hw_atl_rpf_vlan_id_flr_set(ptr noundef %self, i32 noundef %conv8, i32 noundef %i.066) #5
  tail call void @hw_atl_rpf_vlan_flr_act_set(ptr noundef %self, i32 noundef 1, i32 noundef %i.066) #5
  tail call void @hw_atl_rpf_vlan_flr_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %i.066) #5
  %11 = ptrtoint ptr %queue2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %queue2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp12.not = icmp eq i8 %12, -1
  br i1 %cmp12.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv11 = zext i8 %12 to i32
  tail call void @hw_atl_rpf_vlan_rxq_flr_set(ptr noundef %self, i32 noundef %conv11, i32 noundef %i.066) #5
  tail call void @hw_atl_rpf_vlan_rxq_en_flr_set(ptr noundef %self, i32 noundef 1, i32 noundef %i.066) #5
  %add18 = add nuw nsw i32 %i.066, 2
  tail call void @hw_atl2_rpf_vlan_flr_tag_set(ptr noundef %self, i32 noundef %add18, i32 noundef %i.066) #5
  %13 = ptrtoint ptr %art_base_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %art_base_index, align 4
  %add21 = add i32 %add, %14
  %conv22 = trunc i32 %add21 to i8
  %shl24 = shl nuw nsw i32 %add18, 10
  tail call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv22, i32 noundef %shl24, i32 noundef 15360, i32 noundef %or3)
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hw_atl2_rpf_vlan_flr_tag_set(ptr noundef %self, i32 noundef 1, i32 noundef %i.066) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then14, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call27
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_vlan_ctrl(ptr noundef %self, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lnot = xor i1 %enable, true
  %lnot.ext = zext i1 %lnot to i32
  tail call void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %self, i32 noundef %lnot.ext) #5
  br i1 %enable, label %land.rhs.i, label %entry.hw_atl2_hw_new_rx_filter_vlan_promisc.exit_crit_edge

entry.hw_atl2_hw_new_rx_filter_vlan_promisc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hw_atl2_hw_new_rx_filter_vlan_promisc.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @hw_atl_rpfl2promiscuous_mode_en_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  %phi.cast.i = zext i1 %tobool1.not.i to i32
  br label %hw_atl2_hw_new_rx_filter_vlan_promisc.exit

hw_atl2_hw_new_rx_filter_vlan_promisc.exit:       ; preds = %land.rhs.i, %entry.hw_atl2_hw_new_rx_filter_vlan_promisc.exit_crit_edge
  %0 = phi i32 [ 0, %entry.hw_atl2_hw_new_rx_filter_vlan_promisc.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %priv2.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 22
  %1 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv2.i, align 4
  %art_base_index.i = getelementptr inbounds %struct.hw_atl2_priv, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %art_base_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %art_base_index.i, align 4
  %5 = trunc i32 %4 to i8
  %conv3.i = add i8 %5, 1
  tail call fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %conv3.i, i32 noundef 0, i32 noundef 31744, i32 noundef %0) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_multicast_list_set(ptr noundef %self, ptr nocapture noundef readonly %ar_mac, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %count)
  %cmp = icmp ugt i32 %count, 37
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.end:                                           ; preds = %entry
  %mc_list_count = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %mc_list_count, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp261.not = icmp eq i32 %count, 0
  br i1 %cmp261.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %is_mc_list_enabled = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv62 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x i8], ptr %ar_mac, i32 %conv62
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %arrayidx9 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv62, i32 1
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %6 to i32
  %or = or i32 %shl, %conv10
  %arrayidx12 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv62, i32 2
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %8 to i32
  %shl14 = shl nuw i32 %conv13, 24
  %arrayidx16 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv62, i32 3
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %10 to i32
  %shl18 = shl nuw nsw i32 %conv17, 16
  %or19 = or i32 %shl18, %shl14
  %arrayidx21 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv62, i32 4
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %12 to i32
  %shl23 = shl nuw nsw i32 %conv22, 8
  %or24 = or i32 %or19, %shl23
  %arrayidx26 = getelementptr [6 x i8], ptr %ar_mac, i32 %conv62, i32 5
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %14 to i32
  %or28 = or i32 %or24, %conv27
  %add = add nuw nsw i32 %conv62, 1
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %add) #5
  tail call void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef %self, i32 noundef %or28, i32 noundef %add) #5
  tail call void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef %self, i32 noundef %or, i32 noundef %add) #5
  tail call void @hw_atl2_rpfl2_uc_flr_tag_set(ptr noundef %self, i32 noundef 1, i32 noundef %add) #5
  %15 = ptrtoint ptr %is_mc_list_enabled to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %is_mc_list_enabled, align 4
  %conv32 = zext i16 %16 to i32
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef %conv32, i32 noundef %add) #5
  %17 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mc_list_count, align 2
  %inc = add i16 %18, 1
  store i16 %inc, ptr %mc_list_count, align 2
  %conv = zext i16 %inc to i32
  %cmp2 = icmp ult i32 %conv, %count
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %err_exit

err_exit:                                         ; preds = %for.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call, %for.end ], [ -56, %entry.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_interrupt_moderation_set(ptr noundef %self) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 65535, label %entry.sw.bb_crit_edge122
    i32 0, label %sw.bb65
  ]

entry.sw.bb_crit_edge122:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge122
  tail call void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_tdm_tdm_intr_moder_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_rdm_rdm_intr_moder_en_set(ptr noundef %self, i32 noundef 1) #5
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
  call void @__sanitizer_cov_trace_pc() #7
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
  %phi.bo117 = shl nuw nsw i32 %div, 16
  %15 = shl nuw nsw i32 %div, 7
  %phi.bo = and i32 %15, 4194048
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %13)
  %cmp19 = icmp ugt i16 %13, 1023
  %phi.bo120 = shl nuw nsw i32 %div7, 16
  %16 = shl nuw nsw i32 %div7, 7
  %phi.bo118 = and i32 %16, 4194048
  %phi.bo116 = or i32 %phi.bo117, %phi.bo
  %17 = or i32 %phi.bo116, 2
  %or33 = select i1 %cmp9, i32 33554178, i32 %17
  %phi.bo119 = or i32 %phi.bo120, %phi.bo118
  %18 = or i32 %phi.bo119, 2
  %or37 = select i1 %cmp19, i32 33554178, i32 %18
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %19 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aq_link_status, align 4
  %call = tail call i32 @hw_atl_utils_mbps_2_speed_index(i32 noundef %20) #5
  %arrayidx = getelementptr [6 x [2 x i32]], ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_tx_, i32 0, i32 %call
  %arrayidx39 = getelementptr [6 x [2 x i32]], ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_tx_, i32 0, i32 %call, i32 1
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx39, align 4
  %.tr = trunc i32 %22 to i16
  %conv40 = shl i16 %.tr, 1
  %23 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aq_nic_cfg, align 8
  %tx_itr42 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %tx_itr42 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv40, ptr %tx_itr42, align 2
  %arrayidx43 = getelementptr [6 x [2 x i32]], ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_rx_, i32 0, i32 %call
  %arrayidx44 = getelementptr [6 x [2 x i32]], ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_rx_, i32 0, i32 %call, i32 1
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx44, align 4
  %.tr113 = trunc i32 %27 to i16
  %conv46 = shl i16 %.tr113, 1
  %28 = load ptr, ptr %aq_nic_cfg, align 8
  %rx_itr48 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %rx_itr48 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv46, ptr %rx_itr48, align 8
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %shl51 = shl i32 %31, 8
  %shl55 = shl i32 %22, 16
  %or52 = or i32 %shl55, %shl51
  %or56 = or i32 %or52, 2
  %32 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx43, align 4
  %shl59 = shl i32 %33, 8
  %shl63 = shl i32 %27, 16
  %or60 = or i32 %shl63, %shl59
  %or64 = or i32 %or60, 2
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_tdm_tdm_intr_moder_en_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rdm_rdm_intr_moder_en_set(ptr noundef %self, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb65, %if.else, %if.then, %entry.sw.epilog_crit_edge
  %itr_rx.0 = phi i32 [ 2, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb65 ], [ %or37, %if.then ], [ %or64, %if.else ]
  %itr_tx.0 = phi i32 [ 2, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb65 ], [ %or33, %if.then ], [ %or56, %if.else ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog
  %i.0121 = phi i32 [ 32, %sw.epilog ], [ %dec, %for.body.for.body_crit_edge ]
  %dec = add nsw i32 %i.0121, -1
  tail call void @hw_atl2_reg_tx_intr_moder_ctrl_set(ptr noundef %self, i32 noundef %itr_tx.0, i32 noundef %dec) #5
  tail call void @hw_atl_reg_rx_intr_moder_ctrl_set(ptr noundef %self, i32 noundef %itr_rx.0, i32 noundef %dec) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call66 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_rss_set(ptr noundef %self, ptr nocapture noundef readonly %rss_params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %indirection_table1 = getelementptr inbounds %struct.aq_rss_parameters, ptr %rss_params, i32 0, i32 4
  %call = tail call i32 @aq_hw_num_tcs(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp ugt i32 %call, 4
  %cond = zext i1 %cmp to i32
  tail call void @hw_atl2_rpf_redirection_table2_select_set(ptr noundef %self, i32 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not18 = icmp eq i32 %call, 0
  br label %for.cond2.preheader

for.cond.loopexit:                                ; preds = %for.body4.for.cond.loopexit_crit_edge, %for.cond2.preheader.for.cond.loopexit_crit_edge
  %dec = add nsw i32 %dec20, -1
  %tobool.not = icmp eq i32 %dec20, 0
  br i1 %tobool.not, label %for.end6, label %for.cond.loopexit.for.cond2.preheader_crit_edge

for.cond.loopexit.for.cond2.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond.loopexit.for.cond2.preheader_crit_edge, %entry
  %dec20 = phi i32 [ 63, %entry ], [ %dec, %for.cond.loopexit.for.cond2.preheader_crit_edge ]
  br i1 %cmp3.not18, label %for.cond2.preheader.for.cond.loopexit_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %arrayidx = getelementptr i8, ptr %indirection_table1, i32 %dec20
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %tc.019 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4.for.body4_crit_edge ]
  %call5 = tail call i32 @aq_hw_q_per_tc(ptr noundef %self) #5
  %mul = mul i32 %call5, %tc.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %add = add i32 %mul, %conv
  tail call void @hw_atl2_new_rpf_rss_redir_set(ptr noundef %self, i32 noundef %tc.019, i32 noundef %dec20, i32 noundef %add) #5
  %inc = add nuw i32 %tc.019, 1
  %cmp3.not = icmp eq i32 %inc, %call
  br i1 %cmp3.not, label %for.body4.for.cond.loopexit_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.body4.for.cond.loopexit_crit_edge:            ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit

for.end6:                                         ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_rss_hash_set(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl2_hw_init_tx_tc_rate_limit(ptr noundef %self) #1 align 64 {
entry:
  %tc_weight = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %0 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aq_link_status, align 4
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %2 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_nic_cfg, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tc_weight) #5
  %4 = call ptr @memset(ptr %tc_weight, i32 255, i32 32)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %mtu = getelementptr inbounds %struct.aq_hw_caps_s, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu, align 4
  %div248 = lshr i32 %8, 6
  %div3249 = lshr i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end90_crit_edge, label %if.then

entry.if.end90_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

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
  %conv64 = and i32 %and, 255
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool65.not = icmp eq i32 %call.i, 0
  br i1 %tobool65.not, label %if.then.if.end90_crit_edge, label %for.cond.preheader

if.then.if.end90_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

for.cond.preheader:                               ; preds = %if.then
  %13 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tcs, align 4
  %conv68 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not256 = icmp eq i8 %14, 0
  br i1 %cmp.not256, label %for.cond.preheader.if.end90_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end90_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add74 = add i32 %1, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sum_weight.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %sum_weight.1, %for.inc.for.body_crit_edge ]
  %tc.0257 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 35, i32 %tc.0257
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool70.not = icmp eq i32 %16, 0
  br i1 %tobool70.not, label %for.body.for.inc_crit_edge, label %if.end73

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end73:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul i32 %16, 32767
  %add77 = add i32 %add74, %mul
  %div78 = udiv i32 %add77, %1
  %17 = tail call i32 @llvm.umin.i32(i32 %div78, i32 32767)
  %add89 = add i32 %17, %sum_weight.0259
  br label %for.inc

for.inc:                                          ; preds = %if.end73, %for.body.for.inc_crit_edge
  %.sink = phi i32 [ %17, %if.end73 ], [ 0, %for.body.for.inc_crit_edge ]
  %sum_weight.1 = phi i32 [ %add89, %if.end73 ], [ %sum_weight.0259, %for.body.for.inc_crit_edge ]
  %18 = getelementptr [8 x i32], ptr %tc_weight, i32 0, i32 %tc.0257
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %inc = add nuw nsw i32 %tc.0257, 1
  %cmp.not = icmp eq i32 %inc, %conv68
  br i1 %cmp.not, label %for.inc.if.end90_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end90_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.end90:                                         ; preds = %for.inc.if.end90_crit_edge, %for.cond.preheader.if.end90_crit_edge, %if.then.if.end90_crit_edge, %entry.if.end90_crit_edge
  %tobool65.not255 = phi i1 [ true, %if.then.if.end90_crit_edge ], [ true, %entry.if.end90_crit_edge ], [ false, %for.cond.preheader.if.end90_crit_edge ], [ false, %for.inc.if.end90_crit_edge ]
  %num_min_rated_tcs.0254 = phi i32 [ 0, %if.then.if.end90_crit_edge ], [ 0, %entry.if.end90_crit_edge ], [ %call.i, %for.cond.preheader.if.end90_crit_edge ], [ %call.i, %for.inc.if.end90_crit_edge ]
  %min_rate_msk.0253 = phi i32 [ %conv64, %if.then.if.end90_crit_edge ], [ 0, %entry.if.end90_crit_edge ], [ %conv64, %for.cond.preheader.if.end90_crit_edge ], [ %conv64, %for.inc.if.end90_crit_edge ]
  %sum_weight.2 = phi i32 [ 0, %if.then.if.end90_crit_edge ], [ 0, %entry.if.end90_crit_edge ], [ 0, %for.cond.preheader.if.end90_crit_edge ], [ %sum_weight.1, %for.inc.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_rate_msk.0253)
  %tobool92.not = icmp ne i32 %min_rate_msk.0253, 0
  %cond93 = zext i1 %tobool92.not to i32
  tail call void @hw_atl2_tps_tx_pkt_shed_data_arb_mode_set(ptr noundef %self, i32 noundef %cond93) #5
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(ptr noundef %self, i32 noundef 0) #5
  %is_qos = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 25
  %20 = ptrtoint ptr %is_qos to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_qos, align 4, !range !30
  %22 = zext i8 %21 to i32
  tail call void @hw_atl_tps_tx_desc_rate_mode_set(ptr noundef %self, i32 noundef %22) #5
  %tcs98 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 31
  %23 = ptrtoint ptr %tcs98 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tcs98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp100.not261 = icmp eq i8 %24, 0
  br i1 %cmp100.not261, label %if.end90.for.body154.lr.ph_crit_edge, label %for.body102.lr.ph

if.end90.for.body154.lr.ph_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body154.lr.ph

for.body102.lr.ph:                                ; preds = %if.end90
  %tc_mode = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %sum_weight.2)
  %cmp116 = icmp ugt i32 %sum_weight.2, 32766
  %sub119 = sub nuw nsw i32 32767, %sum_weight.2
  br label %for.body102

for.cond151.preheader:                            ; preds = %if.end145
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %cmp152.not265 = icmp eq i8 %37, 8
  br i1 %cmp152.not265, label %for.cond151.preheader.for.end164_crit_edge, label %for.cond151.preheader.for.body154.lr.ph_crit_edge

for.cond151.preheader.for.body154.lr.ph_crit_edge: ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body154.lr.ph

for.cond151.preheader.for.end164_crit_edge:       ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end164

for.body154.lr.ph:                                ; preds = %for.cond151.preheader.for.body154.lr.ph_crit_edge, %if.end90.for.body154.lr.ph_crit_edge
  %.lcssa270 = phi i8 [ %37, %for.cond151.preheader.for.body154.lr.ph_crit_edge ], [ 0, %if.end90.for.body154.lr.ph_crit_edge ]
  %conv99.le = zext i8 %.lcssa270 to i32
  %tc_mode156 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 29
  br label %for.body154

for.body102:                                      ; preds = %if.end145.for.body102_crit_edge, %for.body102.lr.ph
  %tc.1262 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc147, %if.end145.for.body102_crit_edge ]
  %arrayidx103 = getelementptr %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 33, i32 %tc.1262
  %25 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp104.not = icmp eq i32 %26, 0
  %not.cmp104.not = xor i1 %cmp104.not, true
  %cond106 = zext i1 %not.cmp104.not to i32
  %27 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp107 = icmp eq i32 %28, 1
  %cond109 = select i1 %cmp107, i32 8, i32 4
  %mul110 = mul i32 %cond109, %tc.1262
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(ptr noundef %self, i32 noundef %tc.1262, i32 noundef %div248) #5
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(ptr noundef %self, i32 noundef %tc.1262, i32 noundef 30) #5
  br i1 %tobool65.not255, label %for.body102.if.end137_crit_edge, label %if.then113

for.body102.if.end137_crit_edge:                  ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137

if.then113:                                       ; preds = %for.body102
  %arrayidx114 = getelementptr [8 x i32], ptr %tc_weight, i32 0, i32 %tc.1262
  %29 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool115.not = icmp ne i32 %30, 0
  %brmerge = select i1 %tobool115.not, i1 true, i1 %cmp116
  %.mux = select i1 %tobool115.not, i32 %30, i32 1600
  br i1 %brmerge, label %if.then113.if.end127_crit_edge, label %if.then118

if.then113.if.end127_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

if.then118:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %tcs98 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tcs98, align 4
  %conv121 = zext i8 %32 to i32
  %sub122 = sub i32 %conv121, %num_min_rated_tcs.0254
  %div123 = udiv i32 %sub119, %sub122
  br label %if.end127

if.end127:                                        ; preds = %if.then118, %if.then113.if.end127_crit_edge
  %weight.0 = phi i32 [ %div123, %if.then118 ], [ %.mux, %if.then113.if.end127_crit_edge ]
  %mul128 = shl i32 %weight.0, 1
  %33 = tail call i32 @llvm.umax.i32(i32 %mul128, i32 %div3249)
  br label %if.end137

if.end137:                                        ; preds = %if.end127, %for.body102.if.end137_crit_edge
  %weight.1 = phi i32 [ %weight.0, %if.end127 ], [ 1600, %for.body102.if.end137_crit_edge ]
  %max_credit.0 = phi i32 [ %33, %if.end127 ], [ 65520, %for.body102.if.end137_crit_edge ]
  tail call void @hw_atl2_tps_tx_pkt_shed_tc_data_weight_set(ptr noundef %self, i32 noundef %tc.1262, i32 noundef %weight.1) #5
  tail call void @hw_atl2_tps_tx_pkt_shed_tc_data_max_credit_set(ptr noundef %self, i32 noundef %tc.1262, i32 noundef %max_credit.0) #5
  tail call void @hw_atl_tps_tx_desc_rate_en_set(ptr noundef %self, i32 noundef %mul110, i32 noundef %cond106) #5
  br i1 %cmp104.not, label %if.end137.if.end145_crit_edge, label %if.then139

if.end137.if.end145_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

if.then139:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx103, align 4
  %div142 = udiv i32 163840000, %35
  %shr = lshr i32 %div142, 14
  %and143 = and i32 %div142, 16383
  br label %if.end145

if.end145:                                        ; preds = %if.then139, %if.end137.if.end145_crit_edge
  %.sink272 = phi i32 [ %shr, %if.then139 ], [ 1, %if.end137.if.end145_crit_edge ]
  %.sink271 = phi i32 [ %and143, %if.then139 ], [ 0, %if.end137.if.end145_crit_edge ]
  tail call void @hw_atl_tps_tx_desc_rate_x_set(ptr noundef %self, i32 noundef %mul110, i32 noundef %.sink272) #5
  tail call void @hw_atl_tps_tx_desc_rate_y_set(ptr noundef %self, i32 noundef %mul110, i32 noundef %.sink271) #5
  %inc147 = add i32 %tc.1262, 1
  %36 = ptrtoint ptr %tcs98 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tcs98, align 4
  %conv99 = zext i8 %37 to i32
  %cmp100.not = icmp eq i32 %inc147, %conv99
  br i1 %cmp100.not, label %for.cond151.preheader, label %if.end145.for.body102_crit_edge

if.end145.for.body102_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body102

for.body154:                                      ; preds = %for.body154.for.body154_crit_edge, %for.body154.lr.ph
  %tc.2266 = phi i32 [ %conv99.le, %for.body154.lr.ph ], [ %inc163, %for.body154.for.body154_crit_edge ]
  %38 = ptrtoint ptr %tc_mode156 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tc_mode156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp157 = icmp eq i32 %39, 1
  %cond159 = select i1 %cmp157, i32 8, i32 4
  %mul160 = mul i32 %cond159, %tc.2266
  tail call void @hw_atl_tps_tx_desc_rate_en_set(ptr noundef %self, i32 noundef %mul160, i32 noundef 0) #5
  tail call void @hw_atl_tps_tx_desc_rate_x_set(ptr noundef %self, i32 noundef %mul160, i32 noundef 1) #5
  tail call void @hw_atl_tps_tx_desc_rate_y_set(ptr noundef %self, i32 noundef %mul160, i32 noundef 0) #5
  %inc163 = add i32 %tc.2266, 1
  %cmp152.not = icmp eq i32 %inc163, 8
  br i1 %cmp152.not, label %for.body154.for.end164_crit_edge, label %for.body154.for.body154_crit_edge

for.body154.for.body154_crit_edge:                ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body154

for.body154.for.end164_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end164

for.end164:                                       ; preds = %for.body154.for.end164_crit_edge, %for.cond151.preheader.for.end164_crit_edge
  %call165 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tc_weight) #5
  ret i32 %call165
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @hw_atl2_utils_get_hw_stats(ptr noundef readnone %self) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_stats = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8
  ret ptr %curr_stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl2_utils_get_fw_version(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_offload_set(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_set_fc(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_set_loopback(ptr noundef, i32 noundef, i1 noundef zeroext) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_err_from_flags(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl2_utils_get_action_resolve_table_caps(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_init_launchtime(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_rpf_new_enable_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_irq_glb_ctl_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_auto_masklsw_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_gen_irq_map_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tps_tx_tc_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_dca_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_dca_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_path_scp_ins_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_tpb_tx_buf_clk_gate_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rpf_rx_traf_class_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_flow_ctl_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_rpf_rss_hash_type_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_b0_hw_init_rx_rss_ctrl1(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2unicast_flr_act_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_flr_mcst_flr_msk_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_flr_mcst_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_outer_etht_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_inner_etht_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_accept_untagged_packets_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_untagged_act_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2broadcast_flr_act_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2broadcast_count_threshold_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_dca_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_dca_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_rpf_act_rslvr_section_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_rpfl2_uc_flr_tag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_rpfl2_bc_flr_tag_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hw_atl2_act_rslvr_table_set(ptr noundef %self, i8 noundef zeroext %location, i32 noundef %tag, i32 noundef %mask, i32 noundef %action) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 10000000
  %call.i3 = tail call i32 @hw_atl_reg_glb_cpu_sem_get(ptr noundef %self, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i3)
  %cmp4 = icmp eq i32 %call.i3, 1
  br i1 %cmp4, label %entry.if.end19_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call3 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call3, %add.i
  br i1 %cmp3.i, label %if.then6, label %cond.false

if.then6:                                         ; preds = %land.lhs.true
  %call.i2 = tail call i32 @hw_atl_reg_glb_cpu_sem_get(ptr noundef %self, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i2)
  %phi.cmp = icmp eq i32 %call.i2, 1
  br i1 %phi.cmp, label %if.then6.if.end19_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #5
  %call.i = tail call i32 @hw_atl_reg_glb_cpu_sem_get(ptr noundef %self, i32 noundef 3) #5
  %cmp = icmp eq i32 %call.i, 1
  br i1 %cmp, label %cond.false.if.end19_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.false.if.end19_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %cond.false.if.end19_crit_edge, %if.then6.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @hw_atl2_rpf_act_rslvr_record_set(ptr noundef %self, i8 noundef zeroext %location, i32 noundef %tag, i32 noundef %mask, i32 noundef %action) #5
  tail call void @hw_atl_reg_glb_cpu_sem_set(ptr noundef %self, i32 noundef 1, i32 noundef 3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then6.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_rpf_act_rslvr_record_set(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_glb_cpu_sem_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_reg_glb_cpu_sem_get(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_tpb_tx_tc_q_rand_map_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_tx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_ring_rx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_b0_hw_packet_filter_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rpf_vlan_prom_mode_en_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rpfl2promiscuous_mode_en_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_flr_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_rxq_en_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_id_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_flr_act_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_vlan_rxq_flr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_rpf_vlan_flr_tag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tdm_intr_moder_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rdm_intr_moder_en_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_mbps_2_speed_index(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_reg_tx_intr_moder_ctrl_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_intr_moder_ctrl_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_num_tcs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_rpf_redirection_table2_select_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_new_rpf_rss_redir_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_q_per_tc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_tps_tx_pkt_shed_data_arb_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_desc_rate_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_tps_tx_pkt_shed_tc_data_weight_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_tps_tx_pkt_shed_tc_data_max_credit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_desc_rate_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_desc_rate_x_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_desc_rate_y_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @hw_atl2_caps_aqc113, !1, !"hw_atl2_caps_aqc113", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 61, i32 27}
!2 = !{ptr @hw_atl2_caps_aqc115c, !3, !"hw_atl2_caps_aqc115c", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 72, i32 27}
!4 = !{ptr @hw_atl2_caps_aqc116c, !5, !"hw_atl2_caps_aqc116c", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 81, i32 27}
!6 = !{ptr @hw_atl2_ops, !7, !"hw_atl2_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 825, i32 24}
!8 = !{ptr @hw_atl2_hw_init.aq_hw_atl2_igcr_table_, !9, !"aq_hw_atl2_igcr_table_", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 535, i32 13}
!10 = !{ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_tx_, !11, !"hw_atl2_timers_table_tx_", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 702, i32 24}
!12 = !{ptr @hw_atl2_hw_interrupt_moderation_set.hw_atl2_timers_table_rx_, !13, !"hw_atl2_timers_table_rx_", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 710, i32 24}
!14 = distinct !{null, !15, !"max_weight", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 241, i32 19}
!16 = distinct !{null, !17, !"scale", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 243, i32 19}
!18 = distinct !{null, !19, !"frac_msk", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2.c", i32 244, i32 19}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i8 0, i8 2}
