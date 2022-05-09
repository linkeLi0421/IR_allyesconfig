; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hw_atl_rxd_wb_s = type { i32, i32, i16, i16, i16, i16 }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.hw_atl_rxd_s = type { i64, i64 }
%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aq_ring_param_s = type { i32, i32, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.aq_rx_filter_l3l4 = type { i32, i8, [4 x i32], [4 x i32], i16, i16, i8 }

@hw_atl_a0_caps_aqc100 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 1924145414665, i64 30, i32 4096, i32 2, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 9014, i32 88, i32 16, i8 4, i8 1, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_a0_caps_aqc107 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 1924145414665, i64 31, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 9014, i32 88, i32 16, i8 4, i8 1, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_a0_caps_aqc108 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 1924145414665, i64 30, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 9014, i32 88, i32 16, i8 4, i8 1, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_a0_caps_aqc109 = dso_local constant { %struct.aq_hw_caps_s, [40 x i8] } { %struct.aq_hw_caps_s { i64 1924145414665, i64 28, i32 4096, i32 1, i32 8184, i32 8184, i32 40, i32 40, i32 4096, i32 -1, i32 8, i32 9014, i32 88, i32 16, i8 4, i8 1, i8 1, i8 16, i8 1, i8 16, i8 4, i8 4, i8 1, i8 1, i8 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hw_atl_ops_a0 = dso_local constant { %struct.aq_hw_ops, [52 x i8] } { %struct.aq_hw_ops { ptr @hw_atl_a0_hw_ring_tx_xmit, ptr @hw_atl_a0_hw_ring_rx_receive, ptr @hw_atl_a0_hw_ring_rx_fill, ptr @hw_atl_a0_hw_ring_tx_head_update, ptr @hw_atl_a0_hw_mac_addr_set, ptr @hw_atl_utils_soft_reset, ptr @hw_atl_utils_initfw, ptr @hw_atl_a0_hw_reset, ptr @hw_atl_a0_hw_init, ptr @hw_atl_a0_hw_start, ptr @hw_atl_a0_hw_stop, ptr @hw_atl_a0_hw_ring_tx_init, ptr @hw_atl_a0_hw_ring_tx_start, ptr @hw_atl_a0_hw_ring_tx_stop, ptr @hw_atl_a0_hw_ring_rx_init, ptr @hw_atl_a0_hw_ring_rx_start, ptr @hw_atl_a0_hw_ring_rx_stop, ptr @hw_atl_a0_hw_irq_enable, ptr @hw_atl_a0_hw_irq_disable, ptr @hw_atl_a0_hw_irq_read, ptr @hw_atl_a0_hw_packet_filter_set, ptr @hw_atl_a0_hw_fl3l4_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hw_atl_a0_hw_multicast_list_set, ptr @hw_atl_a0_hw_interrupt_moderation_set, ptr @hw_atl_a0_hw_rss_set, ptr @hw_atl_a0_hw_rss_hash_set, ptr null, ptr @hw_atl_utils_hw_get_regs, ptr @hw_atl_utils_get_hw_stats, ptr @hw_atl_utils_get_fw_version, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hw_atl_a0_hw_init.aq_hw_atl_igcr_table_ = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 536870912, i32 536870912], [2 x i32] [i32 536871040, i32 536871040], [2 x i32] [i32 536870945, i32 536870949], [2 x i32] [i32 536870946, i32 536870950]], [32 x i8] zeroinitializer }, align 32
@hw_atl_a0_hw_interrupt_moderation_set.hw_timers_tbl_ = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 28, i32 57, i32 57, i32 115, i32 288, i32 511], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@___asan_gen_.2 = private unnamed_addr constant [22 x i8] c"hw_atl_a0_caps_aqc100\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 50, i32 27 }
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"hw_atl_a0_caps_aqc107\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 59, i32 27 }
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"hw_atl_a0_caps_aqc108\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 69, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"hw_atl_a0_caps_aqc109\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 78, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"hw_atl_ops_a0\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 947, i32 24 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"aq_hw_atl_igcr_table_\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 353, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"hw_timers_tbl_\00", align 1
@___asan_gen_.21 = private constant [61 x i8] c"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 837, i32 25 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @hw_atl_a0_caps_aqc100, ptr @hw_atl_a0_caps_aqc107, ptr @hw_atl_a0_caps_aqc108, ptr @hw_atl_a0_caps_aqc109, ptr @hw_atl_ops_a0, ptr @hw_atl_a0_hw_init.aq_hw_atl_igcr_table_, ptr @hw_atl_a0_hw_interrupt_moderation_set.hw_timers_tbl_], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_a0_caps_aqc100 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_a0_caps_aqc107 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_a0_caps_aqc108 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_a0_caps_aqc109 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_ops_a0 to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_a0_hw_init.aq_hw_atl_igcr_table_ to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_a0_hw_interrupt_moderation_set.hw_timers_tbl_ to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_tx_xmit(ptr noundef %self, ptr nocapture noundef %ring, i32 noundef %frags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  %bf.lshr6 = lshr i32 %bf.load, 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %len_pkt = getelementptr %struct.aq_ring_buff_s, ptr %1, i32 %3, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %len_pkt to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %len_pkt, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %bf.lshr6, %cond.true ], [ %8, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frags)
  %cmp149.not = icmp eq i32 %frags, 0
  br i1 %cmp149.not, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end96.for.body_crit_edge, %for.body.lr.ph
  %is_gso.0.off0152 = phi i1 [ false, %for.body.lr.ph ], [ %is_gso.1.off0, %if.end96.for.body_crit_edge ]
  %pkt_len.0151 = phi i32 [ %cond, %for.body.lr.ph ], [ %pkt_len.1, %if.end96.for.body_crit_edge ]
  %frag_count.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end96.for.body_crit_edge ]
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
  %19 = and i32 %bf.load12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %len_l3 = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 2
  %20 = ptrtoint ptr %len_l3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %len_l3, align 1
  %conv = zext i8 %21 to i32
  %shl = shl i32 %conv, 31
  %len_l2 = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 1
  %22 = ptrtoint ptr %len_l2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %len_l2, align 1
  %conv16 = zext i8 %23 to i32
  %shl17 = shl nuw i32 %conv16, 24
  %or = or i32 %shl17, %shl
  %or19 = or i32 %or, 4194306
  %24 = ptrtoint ptr %ctl to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %or19, ptr %ctl, align 1
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx11, align 1
  %shl22 = shl i32 %26, 16
  %len_l4 = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 3
  %27 = ptrtoint ptr %len_l4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %len_l4, align 1
  %conv23 = zext i8 %28 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %or25 = or i32 %shl24, %shl22
  %29 = load i8, ptr %len_l3, align 1
  %30 = lshr i8 %29, 1
  %31 = zext i8 %30 to i32
  %or28 = or i32 %or25, %31
  %32 = ptrtoint ptr %ctl2 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %or28, ptr %ctl2, align 1
  %33 = load i8, ptr %len_l4, align 1
  %conv32 = zext i8 %33 to i32
  %34 = load i8, ptr %len_l3, align 1
  %conv34 = zext i8 %34 to i32
  %35 = load i8, ptr %len_l2, align 1
  %conv36 = zext i8 %35 to i32
  %36 = add nuw nsw i32 %conv32, %conv34
  %37 = add nuw nsw i32 %36, %conv36
  %sub = sub i32 %pkt_len.0151, %37
  %is_ipv6 = getelementptr inbounds %struct.anon.107, ptr %arrayidx11, i32 0, i32 4
  %38 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load38 = load i8, ptr %is_ipv6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load38)
  %tobool40.not = icmp sgt i8 %bf.load38, -1
  br i1 %tobool40.not, label %if.then.if.end96_crit_edge, label %if.then41

if.then.if.end96_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then41:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %or43 = or i32 %or, 6291458
  br label %if.end96.sink.split

if.else:                                          ; preds = %for.body
  %39 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %arrayidx11, align 1
  %conv46 = zext i32 %40 to i64
  %41 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %conv46, ptr %arrayidx8, align 1
  %42 = lshr i32 %bf.load12, 12
  %shl48 = and i32 %42, 1048560
  %or52 = or i32 %shl48, 1
  %43 = ptrtoint ptr %ctl to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %or52, ptr %ctl, align 1
  %shl53 = shl i32 %pkt_len.0151, 14
  %44 = ptrtoint ptr %ctl2 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %shl53, ptr %ctl2, align 1
  br i1 %is_gso.0.off0152, label %if.then58, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %or60 = or i32 %shl48, 67108865
  %45 = ptrtoint ptr %ctl to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %or60, ptr %ctl, align 1
  %or62 = or i32 %shl53, 8192
  %46 = ptrtoint ptr %ctl2 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %or62, ptr %ctl2, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.else.if.end63_crit_edge
  %47 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %bf.load64 = load i32, ptr %17, align 1
  %48 = and i32 %bf.load64, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool67.not = icmp eq i32 %48, 0
  br i1 %tobool67.not, label %if.end63.if.end71_crit_edge, label %if.then68

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ctl, align 1
  %or70 = or i32 %50, 16777216
  store i32 %or70, ptr %ctl, align 1
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end63.if.end71_crit_edge
  %51 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load72 = load i32, ptr %17, align 1
  %52 = and i32 %bf.load72, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %if.end71.if.end83_crit_edge, label %if.then80

if.end71.if.end83_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then80:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %ctl, align 1
  %or82 = or i32 %55, 33554432
  store i32 %or82, ptr %ctl, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end71.if.end83_crit_edge
  %56 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %bf.load84 = load i32, ptr %17, align 1
  %57 = and i32 %bf.load84, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool87.not = icmp eq i32 %57, 0
  br i1 %tobool87.not, label %if.end83.if.end96_crit_edge, label %if.then90, !prof !23

if.end83.if.end96_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %ctl, align 1
  %or94 = or i32 %59, 136314880
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.then90, %if.then41
  %or94.sink = phi i32 [ %or94, %if.then90 ], [ %or43, %if.then41 ]
  %pkt_len.1.ph = phi i32 [ %pkt_len.0151, %if.then90 ], [ %sub, %if.then41 ]
  %60 = xor i1 %tobool15.not, true
  %61 = ptrtoint ptr %ctl to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %or94.sink, ptr %ctl, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %if.end83.if.end96_crit_edge, %if.then.if.end96_crit_edge
  %pkt_len.1 = phi i32 [ %sub, %if.then.if.end96_crit_edge ], [ %pkt_len.0151, %if.end83.if.end96_crit_edge ], [ %pkt_len.1.ph, %if.end96.sink.split ]
  %is_gso.1.off0 = phi i1 [ true, %if.then.if.end96_crit_edge ], [ %is_gso.0.off0152, %if.end83.if.end96_crit_edge ], [ %60, %if.end96.sink.split ]
  %62 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sw_tail, align 8
  %inc.i = add i32 %63, 1
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %65)
  %cmp.not.i = icmp ult i32 %inc.i, %65
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %66 = ptrtoint ptr %sw_tail to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select.i, ptr %sw_tail, align 8
  %inc = add nuw i32 %frag_count.0150, 1
  %exitcond.not = icmp eq i32 %inc, %frags
  br i1 %exitcond.not, label %if.end96.for.end_crit_edge, label %if.end96.for.body_crit_edge

if.end96.for.body_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end96.for.end_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end96.for.end_crit_edge, %cond.end.for.end_crit_edge
  %67 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sw_tail, align 8
  %idx.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %69 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %idx.i, align 4
  tail call void @hw_atl_reg_tx_dma_desc_tail_ptr_set(ptr noundef %self, i32 noundef %68, i32 noundef %70) #5
  %call100 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call100
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_rx_receive(ptr noundef %self, ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_head = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 4
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_head, align 8
  %2 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not251 = icmp eq i32 %1, %3
  br i1 %cmp.not251, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dx_ring = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 1
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  %jumbo_packets = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 10, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %1, %for.body.lr.ph ], [ %spec.select.i247, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dx_ring, align 4
  %mul = shl i32 %4, 4
  %arrayidx = getelementptr i8, ptr %6, i32 %mul
  %status = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %status, align 1
  %9 = and i16 %8, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end33_crit_edge

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 4
  %call = tail call i32 @hw_atl_reg_rx_dma_desc_status_get(ptr noundef %self, i32 noundef %11) #5
  %and2 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %13) #5
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_res_set(ptr noundef %self, i32 noundef 1, i32 noundef %15) #5
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_res_set(ptr noundef %self, i32 noundef 0, i32 noundef %17) #5
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %19) #5
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_head, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  %call12 = tail call i32 @hw_atl_rdm_rx_desc_head_ptr_get(ptr noundef %self, i32 noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12)
  %cmp13 = icmp ult i32 %call12, 2
  br i1 %cmp13, label %lor.lhs.false.for.end_crit_edge, label %if.else

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.else:                                          ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %status, align 1
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool19.not = icmp eq i16 %26, 0
  br i1 %tobool19.not, label %if.then20, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then20:                                        ; preds = %if.else
  %27 = ptrtoint ptr %dx_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dx_ring, align 4
  %status23 = getelementptr i8, ptr %28, i32 24
  %29 = ptrtoint ptr %status23 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %status23, align 1
  %31 = and i16 %30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool26.not = icmp eq i16 %31, 0
  br i1 %tobool26.not, label %if.then20.for.end_crit_edge, label %cleanup

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %pkt_len = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 3
  %32 = ptrtoint ptr %pkt_len to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 1514, ptr %pkt_len, align 1
  %33 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 3, ptr %status, align 1
  br label %if.end33

if.end33:                                         ; preds = %cleanup, %if.else.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %34 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring, align 8
  %36 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_head, align 8
  %arrayidx35 = getelementptr %struct.aq_ring_buff_s, ptr %35, i32 %37
  %38 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %status, align 1
  %40 = and i16 %39, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %40)
  %cmp39.not = icmp eq i16 %40, 3
  br i1 %cmp39.not, label %if.end33.if.end45_crit_edge, label %if.then41

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then41:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i16 %39, 4
  %41 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %or, ptr %status, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end33.if.end45_crit_edge
  %42 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %status, align 1
  %44 = and i16 %43, 28
  %and48 = zext i16 %44 to i32
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %arrayidx, align 1
  %and49 = and i32 %46, 1572864
  %shr = lshr i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool52.not = icmp eq i32 %and49, 0
  br i1 %tobool52.not, label %if.end45.lor.lhs.false104_crit_edge, label %if.then53

if.end45.lor.lhs.false104_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false104

if.then53:                                        ; preds = %if.end45
  %47 = and i32 %46, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp55 = icmp eq i32 %47, 0
  br i1 %cmp55, label %if.then57, label %if.then53.if.end60_crit_edge

if.then53.if.end60_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %48 = getelementptr %struct.aq_ring_buff_s, ptr %35, i32 %37, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %bf.load = load i32, ptr %48, align 1
  %50 = shl nuw nsw i32 %and48, 12
  %51 = and i32 %50, 32768
  %bf.clear = and i32 %bf.load, -32769
  %52 = or i32 %bf.clear, %51
  %bf.set = xor i32 %52, 32768
  store i32 %bf.set, ptr %48, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.then53.if.end60_crit_edge
  %and61 = and i32 %shr, 28
  %53 = zext i32 %and61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and61, label %if.end60.if.end87_crit_edge [
    i32 4, label %if.end60.if.end87.sink.split_crit_edge
    i32 0, label %if.then77
  ]

if.end60.if.end87.sink.split_crit_edge:           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.sink.split

if.end60.if.end87_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then77:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.sink.split

if.end87.sink.split:                              ; preds = %if.then77, %if.end60.if.end87.sink.split_crit_edge
  %.sink258 = phi i32 [ 9, %if.then77 ], [ 10, %if.end60.if.end87.sink.split_crit_edge ]
  %.sink257 = phi i32 [ 8192, %if.then77 ], [ 16384, %if.end60.if.end87.sink.split_crit_edge ]
  %.sink255 = phi i32 [ -8193, %if.then77 ], [ -16385, %if.end60.if.end87.sink.split_crit_edge ]
  %54 = getelementptr %struct.aq_ring_buff_s, ptr %35, i32 %37, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load81 = load i32, ptr %54, align 1
  %56 = shl nuw nsw i32 %and48, %.sink258
  %57 = and i32 %56, %.sink257
  %bf.clear84 = and i32 %bf.load81, %.sink255
  %58 = or i32 %bf.clear84, %57
  %bf.set85 = xor i32 %58, %.sink257
  store i32 %bf.set85, ptr %54, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.end87.sink.split, %if.end60.if.end87_crit_edge
  %pkt_len88 = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 3
  %59 = ptrtoint ptr %pkt_len88 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %pkt_len88, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %60)
  %cmp90 = icmp ult i16 %60, 61
  br i1 %cmp90, label %if.then92, label %if.end87.lor.lhs.false104_crit_edge

if.end87.lor.lhs.false104_crit_edge:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false104

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  %61 = getelementptr %struct.aq_ring_buff_s, ptr %35, i32 %37, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %bf.load93 = load i32, ptr %61, align 1
  %bf.clear97 = and i32 %bf.load93, -36865
  store i32 %bf.clear97, ptr %61, align 1
  br label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.then92, %if.end87.lor.lhs.false104_crit_edge, %if.end45.lor.lhs.false104_crit_edge
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %arrayidx, align 1
  %and106 = and i32 %64, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.else112, label %if.then108

if.then108:                                       ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #7
  %65 = getelementptr %struct.aq_ring_buff_s, ptr %35, i32 %37, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %bf.load109 = load i32, ptr %65, align 1
  %bf.set111 = or i32 %bf.load109, 32
  store i32 %bf.set111, ptr %65, align 1
  br label %for.inc

if.else112:                                       ; preds = %lor.lhs.false104
  %67 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %aq_nic_cfg, align 8
  %is_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %68, i32 0, i32 23
  %69 = ptrtoint ptr %is_rss to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %is_rss, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool113.not = icmp eq i8 %70, 0
  br i1 %tobool113.not, label %if.else112.if.end133_crit_edge, label %if.then114

if.else112.if.end133_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.then114:                                       ; preds = %if.else112
  %conv117 = and i32 %64, 15
  %71 = add nsw i32 %conv117, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %71)
  %72 = icmp ult i32 %71, 7
  br i1 %72, label %if.then123, label %if.then114.if.end133_crit_edge

if.then114.if.end133_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.then123:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  %73 = and i32 %64, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %74 = icmp eq i32 %73, 4
  %conv130 = zext i1 %74 to i8
  %is_hash_l4 = getelementptr inbounds %struct.anon.4, ptr %arrayidx35, i32 0, i32 2
  %75 = ptrtoint ptr %is_hash_l4 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv130, ptr %is_hash_l4, align 1
  %rss_hash = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 1
  %76 = ptrtoint ptr %rss_hash to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %rss_hash, align 1
  %78 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %arrayidx35, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then123, %if.then114.if.end133_crit_edge, %if.else112.if.end133_crit_edge
  %79 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %status, align 1
  %81 = and i16 %80, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool137.not = icmp eq i16 %81, 0
  br i1 %tobool137.not, label %if.else159, label %if.then138

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %pkt_len139 = getelementptr inbounds %struct.hw_atl_rxd_wb_s, ptr %arrayidx, i32 0, i32 3
  %82 = ptrtoint ptr %pkt_len139 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %pkt_len139, align 1
  %84 = getelementptr %struct.aq_ring_buff_s, ptr %35, i32 %37, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %bf.load141 = load i32, ptr %84, align 1
  %86 = and i16 %83, 2047
  %bf.clear144 = and i32 %bf.load141, 64511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool147.not = icmp eq i16 %86, 0
  %narrow = select i1 %tobool147.not, i16 2048, i16 %86
  %spec.select243 = zext i16 %narrow to i32
  %bf.shl153 = shl nuw nsw i32 %spec.select243, 16
  %bf.set155 = or i32 %bf.shl153, %bf.clear144
  %next = getelementptr inbounds %struct.anon.4, ptr %arrayidx35, i32 0, i32 1
  %87 = ptrtoint ptr %next to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 0, ptr %next, align 1
  %bf.set158 = or i32 %bf.set155, 1024
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %bf.set158, ptr %84, align 1
  br label %for.inc

if.else159:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hw_head, align 8
  %inc.i = add i32 %90, 1
  %91 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %92)
  %cmp.not.i = icmp ult i32 %inc.i, %92
  %93 = trunc i32 %inc.i to i16
  %conv162 = select i1 %cmp.not.i, i16 %93, i16 0
  %next163 = getelementptr inbounds %struct.anon.4, ptr %arrayidx35, i32 0, i32 1
  %94 = ptrtoint ptr %next163 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %conv162, ptr %next163, align 1
  %95 = ptrtoint ptr %jumbo_packets to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %jumbo_packets, align 8
  %inc = add i64 %96, 1
  store i64 %inc, ptr %jumbo_packets, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else159, %if.then138, %if.then108
  %97 = ptrtoint ptr %hw_head to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hw_head, align 8
  %inc.i244 = add i32 %98, 1
  %99 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i244, i32 %100)
  %cmp.not.i246 = icmp ult i32 %inc.i244, %100
  %spec.select.i247 = select i1 %cmp.not.i246, i32 %inc.i244, i32 0
  %101 = ptrtoint ptr %hw_head to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %spec.select.i247, ptr %hw_head, align 8
  %102 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sw_tail, align 8
  %cmp.not = icmp eq i32 %spec.select.i247, %103
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then20.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call176 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call176
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_rx_fill(ptr noundef %self, ptr nocapture noundef readonly %ring, i32 noundef %sw_tail_old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sw_tail_old)
  %cmp.not13 = icmp eq i32 %1, %sw_tail_old
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sw_tail_old.addr.0.lcssa = phi i32 [ %sw_tail_old, %entry.for.end_crit_edge ], [ %spec.select.i, %for.body.for.end_crit_edge ]
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_rx_dma_desc_tail_ptr_set(ptr noundef %self, i32 noundef %sw_tail_old.addr.0.lcssa, i32 noundef %15) #5
  %call2 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_tx_head_update(ptr noundef %self, ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %call = tail call i32 @hw_atl_tdm_tx_desc_head_ptr_get(ptr noundef %self, i32 noundef %1) #5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %self, i32 noundef 4) #5
  %2 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %self, align 4
  %and.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.err_exit_crit_edge

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hw_head2 = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 4
  %4 = ptrtoint ptr %hw_head2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %hw_head2, align 8
  %call3 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call3, %if.end ], [ -6, %entry.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_mac_addr_set(ptr noundef %self, ptr noundef readonly %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac_addr, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef 0, i32 noundef 0) #5
  tail call void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef %self, i32 noundef %or16, i32 noundef 0) #5
  tail call void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef %self, i32 noundef %or, i32 noundef 0) #5
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef 1, i32 noundef 0) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call, %if.end ], [ -22, %entry.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_soft_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_initfw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_reset(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hw_atl_glb_glb_reg_res_dis_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_pci_pci_reg_res_dis_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_rx_rx_reg_res_dis_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_tx_tx_reg_res_dis_set(ptr noundef %self, i32 noundef 0) #5
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 16) #5
  tail call void @hw_atl_glb_soft_res_set(ptr noundef %self, i32 noundef 1) #5
  %call1 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call1, 10000000
  %call3100 = tail call i32 @hw_atl_glb_soft_res_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3100)
  %cmp101 = icmp eq i32 %call3100, 0
  br i1 %cmp101, label %entry.if.end20_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call4 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call4, %add.i
  br i1 %cmp3.i, label %if.then7, label %cond.false

if.then7:                                         ; preds = %land.lhs.true
  %call8 = tail call i32 @hw_atl_glb_soft_res_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %phi.cmp = icmp eq i32 %call8, 0
  br i1 %phi.cmp, label %if.then7.if.end20_crit_edge, label %if.then7.err_exit_crit_edge

if.then7.err_exit_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.then7.if.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #5
  %call3 = tail call i32 @hw_atl_glb_soft_res_get(ptr noundef %self) #5
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %cond.false.if.end20_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.false.if.end20_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %cond.false.if.end20_crit_edge, %if.then7.if.end20_crit_edge, %entry.if.end20_crit_edge
  tail call void @hw_atl_itr_irq_reg_res_dis_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_itr_res_irq_set(ptr noundef %self, i32 noundef 1) #5
  %call24 = tail call i64 @ktime_get() #5
  %add.i90 = add i64 %call24, 10000000
  %call27102 = tail call i32 @hw_atl_itr_res_irq_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27102)
  %cmp28103 = icmp eq i32 %call27102, 0
  br i1 %cmp28103, label %if.end20.if.end56_crit_edge, label %if.end20.land.lhs.true32_crit_edge

if.end20.land.lhs.true32_crit_edge:               ; preds = %if.end20
  br label %land.lhs.true32

if.end20.if.end56_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

land.lhs.true32:                                  ; preds = %cond.false44.land.lhs.true32_crit_edge, %if.end20.land.lhs.true32_crit_edge
  %call33 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i90)
  %cmp3.i92 = icmp sgt i64 %call33, %add.i90
  br i1 %cmp3.i92, label %if.then36, label %cond.false44

if.then36:                                        ; preds = %land.lhs.true32
  %call37 = tail call i32 @hw_atl_itr_res_irq_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %phi.cmp88 = icmp eq i32 %call37, 0
  br i1 %phi.cmp88, label %if.then36.if.end56_crit_edge, label %if.then36.err_exit_crit_edge

if.then36.err_exit_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.then36.if.end56_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

cond.false44:                                     ; preds = %land.lhs.true32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #5
  %call27 = tail call i32 @hw_atl_itr_res_irq_get(ptr noundef %self) #5
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %cond.false44.if.end56_crit_edge, label %cond.false44.land.lhs.true32_crit_edge

cond.false44.land.lhs.true32_crit_edge:           ; preds = %cond.false44
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true32

cond.false44.if.end56_crit_edge:                  ; preds = %cond.false44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.end56:                                         ; preds = %cond.false44.if.end56_crit_edge, %if.then36.if.end56_crit_edge, %if.end20.if.end56_crit_edge
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %2 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_fw_ops, align 4
  %set_state = getelementptr inbounds %struct.aq_fw_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %set_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_state, align 4
  %call57 = tail call i32 %5(ptr noundef %self, i32 noundef 1) #5
  %call58 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %err_exit

err_exit:                                         ; preds = %if.end56, %if.then36.err_exit_crit_edge, %if.then7.err_exit_crit_edge
  %err.0 = phi i32 [ %call58, %if.end56 ], [ -110, %if.then7.err_exit_crit_edge ], [ -110, %if.then36.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_init(ptr noundef %self, ptr noundef %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg1 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg1, align 8
  tail call void @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(ptr noundef %self, i32 noundef 4086) #5
  tail call void @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(ptr noundef %self, i32 noundef 4086) #5
  tail call void @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(ptr noundef %self, i32 noundef 3967) #5
  tail call void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 28736, i32 noundef 0) #5
  tail call void @hw_atl_tdm_tx_dca_en_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_tdm_tx_dca_mode_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_tpb_tx_path_scp_ins_en_set(ptr noundef %self, i32 noundef 1) #5
  %call.i = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %2 = ptrtoint ptr %aq_nic_cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_nic_cfg1, align 8
  tail call void @hw_atl_rpb_rpf_rx_traf_class_mode_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rpb_rx_flow_ctl_mode_set(ptr noundef %self, i32 noundef 1) #5
  %is_rss.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %is_rss.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_rss.i, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -1288490189
  tail call void @hw_atl_reg_rx_flr_rss_control1set(ptr noundef %self, i32 noundef %cond.i) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 33, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.01.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  %cond2.i = zext i1 %cmp.i to i32
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef %cond2.i, i32 noundef %dec.i) #5
  tail call void @hw_atl_rpfl2unicast_flr_act_set(ptr noundef %self, i32 noundef 1, i32 noundef %dec.i) #5
  br i1 %cmp.i, label %hw_atl_a0_hw_init_rx_path.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

hw_atl_a0_hw_init_rx_path.exit:                   ; preds = %for.body.i
  tail call void @hw_atl_reg_rx_flr_mcst_flr_msk_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_reg_rx_flr_mcst_flr_set(ptr noundef %self, i32 noundef 69631, i32 noundef 0) #5
  tail call void @hw_atl_rpf_vlan_outer_etht_set(ptr noundef %self, i32 noundef 34984) #5
  tail call void @hw_atl_rpf_vlan_inner_etht_set(ptr noundef %self, i32 noundef 33024) #5
  tail call void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rpfl2broadcast_flr_act_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rpfl2broadcast_count_threshold_set(ptr noundef %self, i32 noundef 65535) #5
  tail call void @hw_atl_rdm_rx_dca_en_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_rdm_rx_dca_mode_set(ptr noundef %self, i32 noundef 0) #5
  %call.i44 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %call3 = tail call i32 @hw_atl_a0_hw_mac_addr_set(ptr noundef %self, ptr noundef %mac_addr)
  %aq_fw_ops = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 3
  %6 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_fw_ops, align 4
  %set_link_speed = getelementptr inbounds %struct.aq_fw_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %set_link_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_link_speed, align 4
  %link_speed_msk = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %link_speed_msk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_speed_msk, align 8
  %call4 = tail call i32 %9(ptr noundef %self, i32 noundef %11) #5
  %12 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_fw_ops, align 4
  %set_state = getelementptr inbounds %struct.aq_fw_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %set_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_state, align 4
  %call6 = tail call i32 %15(ptr noundef %self, i32 noundef 2) #5
  tail call void @hw_atl_reg_tx_dma_debug_ctl_set(ptr noundef %self, i32 noundef -2147483464) #5
  tail call void @hw_atl_reg_tx_dma_debug_ctl_set(ptr noundef %self, i32 noundef 184) #5
  tail call void @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(ptr noundef %self, i32 noundef 10) #5
  tail call void @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_tps_tx_pkt_shed_data_arb_mode_set(ptr noundef %self, i32 noundef 0) #5
  tail call void @hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(ptr noundef %self, i32 noundef 0, i32 noundef 4095) #5
  tail call void @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(ptr noundef %self, i32 noundef 0, i32 noundef 100) #5
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(ptr noundef %self, i32 noundef 0, i32 noundef 80) #5
  tail call void @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(ptr noundef %self, i32 noundef 0, i32 noundef 30) #5
  tail call void @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(ptr noundef %self, i32 noundef 160, i32 noundef 0) #5
  tail call void @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(ptr noundef %self, i32 noundef 3379, i32 noundef 0) #5
  tail call void @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(ptr noundef %self, i32 noundef 2560, i32 noundef 0) #5
  %16 = ptrtoint ptr %aq_nic_cfg1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_nic_cfg1, align 8
  %fc.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fc.i, align 8
  tail call void @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(ptr noundef %self, i32 noundef 320, i32 noundef 0) #5
  tail call void @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(ptr noundef %self, i32 noundef 6758, i32 noundef 0) #5
  tail call void @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(ptr noundef %self, i32 noundef 5120, i32 noundef 0) #5
  %and.i = lshr i32 %19, 1
  %and.lobit.i = and i32 %and.i, 1
  tail call void @hw_atl_rpb_rx_xoff_en_per_tc_set(ptr noundef %self, i32 noundef %and.lobit.i, i32 noundef 0) #5
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 7, i32 noundef 0) #5
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 6, i32 noundef 0) #5
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 5, i32 noundef 0) #5
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 4, i32 noundef 0) #5
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 3, i32 noundef 0) #5
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 2, i32 noundef 0) #5
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 1, i32 noundef 0) #5
  tail call void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef %self, i32 noundef 0, i32 noundef 0) #5
  %call.i46 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %aq_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 36
  %call8 = tail call i32 @hw_atl_a0_hw_rss_set(ptr noundef %self, ptr noundef %aq_rss)
  %call10 = tail call i32 @hw_atl_a0_hw_rss_hash_set(ptr noundef %self, ptr noundef %aq_rss)
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %20 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %aq_link_status, align 4
  %21 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aq_fw_ops, align 4
  %update_stats = getelementptr inbounds %struct.aq_fw_ops, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %update_stats, align 4
  %call12 = tail call i32 %24(ptr noundef %self) #5
  %call13 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %hw_atl_a0_hw_init_rx_path.exit.err_exit_crit_edge, label %if.end

hw_atl_a0_hw_init_rx_path.exit.err_exit_crit_edge: ; preds = %hw_atl_a0_hw_init_rx_path.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.end:                                           ; preds = %hw_atl_a0_hw_init_rx_path.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq_type = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_type, align 8
  %vecs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp14 = icmp ugt i32 %28, 1
  %cond = zext i1 %cmp14 to i32
  %arrayidx15 = getelementptr [4 x [2 x i32]], ptr @hw_atl_a0_hw_init.aq_hw_atl_igcr_table_, i32 0, i32 %26, i32 %cond
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx15, align 4
  tail call void @hw_atl_reg_irq_glb_ctl_set(ptr noundef %self, i32 noundef %30) #5
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %irq_mask = getelementptr inbounds %struct.aq_hw_caps_s, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_mask, align 4
  tail call void @hw_atl_itr_irq_auto_masklsw_set(ptr noundef %self, i32 noundef %34) #5
  tail call void @hw_atl_reg_gen_irq_map_set(ptr noundef %self, i32 noundef -2004318072, i32 noundef 0) #5
  tail call void @hw_atl_tpo_ipv4header_crc_offload_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_tpo_tcp_udp_crc_offload_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rpo_ipv4header_crc_offload_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rpo_tcp_udp_crc_offload_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_tdm_large_send_offload_en_set(ptr noundef %self, i32 noundef -1) #5
  %call.i47 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %err_exit

err_exit:                                         ; preds = %if.end, %hw_atl_a0_hw_init_rx_path.exit.err_exit_crit_edge
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_start(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hw_atl_tpb_tx_buff_en_set(ptr noundef %self, i32 noundef 1) #5
  tail call void @hw_atl_rpb_rx_buff_en_set(ptr noundef %self, i32 noundef 1) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_stop(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hw_atl_itr_irq_msk_clearlsw_set(ptr noundef %self, i32 noundef -1) #5
  tail call void @hw_atl_itr_irq_status_clearlsw_set(ptr noundef %self, i32 noundef -1) #5
  %call.i = tail call i32 @hw_atl_reg_gen_irq_status_get(ptr noundef %self) #5
  %and.i = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.hw_atl_a0_hw_irq_disable.exit_crit_edge, label %if.then.i

entry.hw_atl_a0_hw_irq_disable.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hw_atl_a0_hw_irq_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dpc.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dpc.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %dpc.i, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dpc.i, ptr %dpc.i, i32 1, ptr elementtype(i32) %dpc.i) #5, !srcloc !25
  br label %hw_atl_a0_hw_irq_disable.exit

hw_atl_a0_hw_irq_disable.exit:                    ; preds = %if.then.i, %entry.hw_atl_a0_hw_irq_disable.exit_crit_edge
  %call2.i = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %call1 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_tx_init(ptr noundef %self, ptr nocapture noundef readonly %aq_ring, ptr nocapture noundef readonly %aq_ring_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dx_ring_pa = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 11
  %0 = ptrtoint ptr %dx_ring_pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dx_ring_pa, align 8
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_tx_dma_desc_base_addresslswset(ptr noundef %self, i32 noundef %1, i32 noundef %3) #5
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_tx_dma_desc_base_addressmswset(ptr noundef %self, i32 noundef 0, i32 noundef %5) #5
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 7
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %div32 = lshr i32 %7, 3
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_len_set(ptr noundef %self, i32 noundef %div32, i32 noundef %9) #5
  %sw_tail.i = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 6
  %10 = ptrtoint ptr %sw_tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sw_tail.i, align 8
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_tx_dma_desc_tail_ptr_set(ptr noundef %self, i32 noundef %11, i32 noundef %13) #5
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_wr_wb_threshold_set(ptr noundef %self, i32 noundef 0, i32 noundef %15) #5
  %16 = ptrtoint ptr %aq_ring_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aq_ring_param, align 4
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  tail call void @hw_atl_itr_irq_map_tx_set(ptr noundef %self, i32 noundef %17, i32 noundef %19) #5
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  tail call void @hw_atl_itr_irq_map_en_tx_set(ptr noundef %self, i32 noundef 1, i32 noundef %21) #5
  %cpu = getelementptr inbounds %struct.aq_ring_param_s, ptr %aq_ring_param, i32 0, i32 1
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_cpu_id_set(ptr noundef %self, i32 noundef %23, i32 noundef %25) #5
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_dca_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %27) #5
  %call10 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_tx_start(ptr noundef %self, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %1) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_tx_stop(ptr noundef %self, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void @hw_atl_tdm_tx_desc_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %1) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_rx_init(ptr noundef %self, ptr nocapture noundef readonly %aq_ring, ptr nocapture noundef readonly %aq_ring_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dx_ring_pa = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 11
  %0 = ptrtoint ptr %dx_ring_pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dx_ring_pa, align 8
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %3) #5
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_head_splitting_set(ptr noundef %self, i32 noundef 0, i32 noundef %5) #5
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_rx_dma_desc_base_addresslswset(ptr noundef %self, i32 noundef %1, i32 noundef %7) #5
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  tail call void @hw_atl_reg_rx_dma_desc_base_addressmswset(ptr noundef %self, i32 noundef 0, i32 noundef %9) #5
  %size = getelementptr inbounds %struct.aq_ring_s, ptr %aq_ring, i32 0, i32 7
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %div50 = lshr i32 %11, 3
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_len_set(ptr noundef %self, i32 noundef %div50, i32 noundef %13) #5
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_data_buff_size_set(ptr noundef %self, i32 noundef 2, i32 noundef %15) #5
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_head_buff_size_set(ptr noundef %self, i32 noundef 0, i32 noundef %17) #5
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_head_splitting_set(ptr noundef %self, i32 noundef 0, i32 noundef %19) #5
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rpo_rx_desc_vlan_stripping_set(ptr noundef %self, i32 noundef 0, i32 noundef %21) #5
  %22 = ptrtoint ptr %aq_ring_param to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aq_ring_param, align 4
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 4
  tail call void @hw_atl_itr_irq_map_rx_set(ptr noundef %self, i32 noundef %23, i32 noundef %25) #5
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  tail call void @hw_atl_itr_irq_map_en_rx_set(ptr noundef %self, i32 noundef 1, i32 noundef %27) #5
  %cpu = getelementptr inbounds %struct.aq_ring_param_s, ptr %aq_ring_param, i32 0, i32 1
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %30 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_cpu_id_set(ptr noundef %self, i32 noundef %29, i32 noundef %31) #5
  %32 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_dca_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %33) #5
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_head_dca_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %35) #5
  %36 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_pld_dca_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %37) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_rx_start(ptr noundef %self, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_en_set(ptr noundef %self, i32 noundef 1, i32 noundef %1) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_ring_rx_stop(ptr noundef %self, ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void @hw_atl_rdm_rx_desc_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %1) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_irq_enable(ptr noundef %self, i64 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %mask to i32
  %or = or i32 %conv, 256
  tail call void @hw_atl_itr_irq_msk_setlsw_set(ptr noundef %self, i32 noundef %or) #5
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_irq_disable(ptr noundef %self, i64 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %mask to i32
  tail call void @hw_atl_itr_irq_msk_clearlsw_set(ptr noundef %self, i32 noundef %conv) #5
  tail call void @hw_atl_itr_irq_status_clearlsw_set(ptr noundef %self, i32 noundef %conv) #5
  %call = tail call i32 @hw_atl_reg_gen_irq_status_get(ptr noundef %self) #5
  %and = and i32 %call, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dpc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dpc, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %dpc, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dpc, ptr %dpc, i32 1, ptr elementtype(i32) %dpc) #5, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_irq_read(ptr noundef %self, ptr nocapture noundef writeonly %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hw_atl_itr_irq_statuslsw_get(ptr noundef %self) #5
  %conv = zext i32 %call to i64
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %mask, align 8
  %call1 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_packet_filter_set(ptr noundef %self, i32 noundef %packet_filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %and = lshr i32 %packet_filter, 8
  %and.lobit = and i32 %and, 1
  tail call void @hw_atl_rpfl2promiscuous_mode_en_set(ptr noundef %self, i32 noundef %and.lobit) #5
  %and1 = lshr i32 %packet_filter, 12
  %and1.lobit = and i32 %and1, 1
  tail call void @hw_atl_rpfl2multicast_flr_en_set(ptr noundef %self, i32 noundef %and1.lobit, i32 noundef 0) #5
  %and4 = lshr i32 %packet_filter, 1
  %and4.lobit = and i32 %and4, 1
  tail call void @hw_atl_rpfl2broadcast_en_set(ptr noundef %self, i32 noundef %and4.lobit) #5
  %conv = trunc i32 %and1.lobit to i16
  %is_mc_list_enabled = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %is_mc_list_enabled to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %is_mc_list_enabled, align 4
  %mc_list_count = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %1, i32 0, i32 20
  br label %for.body

for.bodythread-pre-split:                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %is_mc_list_enabled to i32
  call void @__asan_load2_noabort(i32 %3)
  %.pr = load i16, ptr %is_mc_list_enabled, align 4
  br label %for.body

for.body:                                         ; preds = %for.bodythread-pre-split, %entry
  %4 = phi i16 [ %.pr, %for.bodythread-pre-split ], [ %conv, %entry ]
  %i.031 = phi i32 [ %inc, %for.bodythread-pre-split ], [ 1, %entry ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool13.not = icmp eq i16 %4, 0
  br i1 %tobool13.not, label %for.body.land.end_crit_edge, label %land.rhs

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %mc_list_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mc_list_count, align 2
  %conv14 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.031, i32 %conv14)
  %cmp15 = icmp ule i32 %i.031, %conv14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.land.end_crit_edge
  %7 = phi i1 [ false, %for.body.land.end_crit_edge ], [ %cmp15, %land.rhs ]
  %cond17 = zext i1 %7 to i32
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef %cond17, i32 noundef %i.031) #5
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.end, label %for.bodythread-pre-split

for.end:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_fl3l4_set(ptr noundef %self, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i = zext i8 %1 to i32
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %1) #5
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv4.i) #5
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv4.i) #5
  %add.1.i = add nuw nsw i32 %conv4.i, 1
  %conv5.1.i = trunc i32 %add.1.i to i8
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %conv5.1.i) #5
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.1.i) #5
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.1.i) #5
  %add.2.i = add nuw nsw i32 %conv4.i, 2
  %conv5.2.i = trunc i32 %add.2.i to i8
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %conv5.2.i) #5
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.2.i) #5
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.2.i) #5
  %add.3.i = add nuw nsw i32 %conv4.i, 3
  %conv5.3.i = trunc i32 %add.3.i to i8
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %conv5.3.i) #5
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.3.i) #5
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %add.3.i) #5
  tail call void @hw_atl_rpfl3l4_ipv6_src_addr_clear(ptr noundef %self, i8 noundef zeroext %1) #5
  tail call void @hw_atl_rpfl3l4_ipv6_dest_addr_clear(ptr noundef %self, i8 noundef zeroext %1) #5
  br label %hw_atl_a0_hw_fl3l4_clear.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hw_atl_rpfl3l4_cmd_clear(ptr noundef %self, i8 noundef zeroext %1) #5
  %conv.i = zext i8 %1 to i32
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv.i) #5
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef 0, i32 noundef %conv.i) #5
  tail call void @hw_atl_rpfl3l4_ipv4_src_addr_clear(ptr noundef %self, i8 noundef zeroext %1) #5
  tail call void @hw_atl_rpfl3l4_ipv4_dest_addr_clear(ptr noundef %self, i8 noundef zeroext %1) #5
  br label %hw_atl_a0_hw_fl3l4_clear.exit

hw_atl_a0_hw_fl3l4_clear.exit:                    ; preds = %if.then.i, %for.cond.preheader.i
  %call.i = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %hw_atl_a0_hw_fl3l4_clear.exit.if.end8_crit_edge, label %if.then

hw_atl_a0_hw_fl3l4_clear.exit.if.end8_crit_edge:  ; preds = %hw_atl_a0_hw_fl3l4_clear.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %hw_atl_a0_hw_fl3l4_clear.exit
  %6 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_ipv6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %ip_dst = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 2
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ip_dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip_dst, align 4
  tail call void @hw_atl_rpfl3l4_ipv4_dest_addr_set(ptr noundef %self, i8 noundef zeroext %1, i32 noundef %9) #5
  %ip_src = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %ip_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip_src, align 4
  tail call void @hw_atl_rpfl3l4_ipv4_src_addr_set(ptr noundef %self, i8 noundef zeroext %1, i32 noundef %11) #5
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hw_atl_rpfl3l4_ipv6_dest_addr_set(ptr noundef %self, i8 noundef zeroext %1, ptr noundef %ip_dst) #5
  %ip_src6 = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 3
  tail call void @hw_atl_rpfl3l4_ipv6_src_addr_set(ptr noundef %self, i8 noundef zeroext %1, ptr noundef %ip_src6) #5
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3, %hw_atl_a0_hw_fl3l4_clear.exit.if.end8_crit_edge
  %p_dst = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %p_dst to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %p_dst, align 4
  %conv = zext i16 %13 to i32
  %conv9 = zext i8 %1 to i32
  tail call void @hw_atl_rpf_l4_dpd_set(ptr noundef %self, i32 noundef %conv, i32 noundef %conv9) #5
  %p_src = getelementptr inbounds %struct.aq_rx_filter_l3l4, ptr %data, i32 0, i32 5
  %14 = ptrtoint ptr %p_src to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %p_src, align 2
  %conv10 = zext i16 %15 to i32
  tail call void @hw_atl_rpf_l4_spd_set(ptr noundef %self, i32 noundef %conv10, i32 noundef %conv9) #5
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  tail call void @hw_atl_rpfl3l4_cmd_set(ptr noundef %self, i8 noundef zeroext %1, i32 noundef %17) #5
  %call13 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_multicast_list_set(ptr noundef %self, ptr nocapture noundef readonly %ar_mac, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count)
  %cmp = icmp ugt i32 %count, 32
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
  %cmp258.not = icmp eq i32 %count, 0
  br i1 %cmp258.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef 0, i32 noundef %add) #5
  tail call void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef %self, i32 noundef %or28, i32 noundef %add) #5
  tail call void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef %self, i32 noundef %or, i32 noundef %add) #5
  %15 = ptrtoint ptr %is_mc_list_enabled to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %is_mc_list_enabled, align 4
  %conv31 = zext i16 %16 to i32
  tail call void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef %self, i32 noundef %conv31, i32 noundef %add) #5
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
define internal i32 @hw_atl_a0_hw_interrupt_moderation_set(ptr noundef %self) #0 align 64 {
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
  switch i32 %3, label %if.then3 [
    i32 0, label %entry.if.end17_crit_edge
    i32 65535, label %if.else
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %3)
  %cmp6 = icmp ugt i32 %3, 2047
  %5 = shl i32 %3, 15
  %phi.bo = and i32 %5, 2147418112
  %phi.bo34 = or i32 %phi.bo, -2147483648
  %cond = select i1 %cmp6, i32 -2080440320, i32 %phi.bo34
  br label %if.end17

if.else:                                          ; preds = %entry
  %call = tail call i32 @aq_hw_read_reg(ptr noundef %self, i32 noundef 10752) #5
  %and = and i32 %call, 65535
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %6 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aq_link_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp7 = icmp ult i32 %and, %7
  br i1 %cmp7, label %if.else.if.end_crit_edge, label %if.else9

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @hw_atl_utils_mbps_2_speed_index(i32 noundef %7) #5
  %arrayidx = getelementptr [6 x i32], ptr @hw_atl_a0_hw_interrupt_moderation_set.hw_timers_tbl_, i32 0, i32 %call12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %shl13 = shl i32 %9, 16
  %or14 = or i32 %shl13, -2147483648
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.else.if.end_crit_edge
  %itr_rx.0 = phi i32 [ %or14, %if.else9 ], [ 0, %if.else.if.end_crit_edge ]
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 10752, i32 noundef 1073741824) #5
  tail call void @aq_hw_write_reg(ptr noundef %self, i32 noundef 10752, i32 noundef -1929379840) #5
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then3, %entry.if.end17_crit_edge
  %itr_rx.1 = phi i32 [ %cond, %if.then3 ], [ %itr_rx.0, %if.end ], [ %3, %entry.if.end17_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17
  %i.035 = phi i32 [ 32, %if.end17 ], [ %dec, %for.body.for.body_crit_edge ]
  %dec = add nsw i32 %i.035, -1
  tail call void @hw_atl_reg_irq_thr_set(ptr noundef %self, i32 noundef %itr_rx.1, i32 noundef %dec) #5
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_rss_set(ptr noundef %self, ptr nocapture noundef readonly %rss_params) #0 align 64 {
entry:
  %bitary = alloca [13 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %bitary) #5
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
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @hw_atl_rpf_rss_redir_tbl_wr_data_set(ptr noundef %self, i32 noundef %conv11) #5
  tail call void @hw_atl_rpf_rss_redir_tbl_addr_set(ptr noundef %self, i32 noundef %dec7) #5
  tail call void @hw_atl_rpf_rss_redir_wr_en_set(ptr noundef %self, i32 noundef 1) #5
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 10000000
  %call1471 = tail call i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1471)
  %cmp1572 = icmp eq i32 %call1471, 0
  br i1 %cmp1572, label %for.body9.for.end37_crit_edge, label %for.body9.land.lhs.true_crit_edge

for.body9.land.lhs.true_crit_edge:                ; preds = %for.body9
  br label %land.lhs.true

for.body9.for.end37_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37

land.lhs.true:                                    ; preds = %cond.false31.land.lhs.true_crit_edge, %for.body9.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then22, label %cond.false31

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef %self) #5
  br label %for.end37

cond.false31:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  %call14 = tail call i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef %self) #5
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %cond.false31.for.end37_crit_edge, label %cond.false31.land.lhs.true_crit_edge

cond.false31.land.lhs.true_crit_edge:             ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.false31.for.end37_crit_edge:                 ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37

for.end37:                                        ; preds = %cond.false31.for.end37_crit_edge, %if.then22, %for.body9.for.end37_crit_edge
  %val.0 = phi i32 [ %call23, %if.then22 ], [ 0, %for.body9.for.end37_crit_edge ], [ 0, %cond.false31.for.end37_crit_edge ]
  %cmp39 = icmp eq i32 %val.0, 0
  br i1 %cmp39, label %for.end37.for.cond6_crit_edge, label %for.end37.err_exit_crit_edge

for.end37.err_exit_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

for.end37.for.cond6_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6

for.end46:                                        ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %err_exit

err_exit:                                         ; preds = %for.end46, %for.end37.err_exit_crit_edge
  %err.0 = phi i32 [ %call47, %for.end46 ], [ -110, %for.end37.err_exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %bitary) #5
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_atl_a0_hw_rss_hash_set(ptr noundef %self, ptr nocapture noundef readonly %rss_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %3 = load i8, ptr %is_rss, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.aq_rss_parameters, ptr %rss_params, i32 0, i32 3, i32 %dec57
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  tail call void @hw_atl_rpf_rss_key_wr_data_set(ptr noundef %self, i32 noundef %cond) #5
  tail call void @hw_atl_rpf_rss_key_addr_set(ptr noundef %self, i32 noundef %addr.056) #5
  tail call void @hw_atl_rpf_rss_key_wr_en_set(ptr noundef %self, i32 noundef 1) #5
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 10000000
  %call454 = tail call i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call454)
  %cmp55 = icmp eq i32 %call454, 0
  br i1 %cmp55, label %cond.end.for.inc_crit_edge, label %cond.end.land.lhs.true_crit_edge

cond.end.land.lhs.true_crit_edge:                 ; preds = %cond.end
  br label %land.lhs.true

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %cond.false17.land.lhs.true_crit_edge, %cond.end.land.lhs.true_crit_edge
  %call6 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call6, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call6, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false17

cond.false17:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #5
  %call4 = tail call i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef %self) #5
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %cond.false17.for.inc_crit_edge, label %cond.false17.land.lhs.true_crit_edge

cond.false17.land.lhs.true_crit_edge:             ; preds = %cond.false17
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

cond.false17.for.inc_crit_edge:                   ; preds = %cond.false17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.end:                                          ; preds = %land.lhs.true
  %call10 = tail call i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef %self) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp22 = icmp eq i32 %call10, 0
  br i1 %cmp22, label %for.end.for.inc_crit_edge, label %for.end.cleanup29_crit_edge

for.end.cleanup29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

for.end.for.inc_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %for.end.for.inc_crit_edge, %cond.false17.for.inc_crit_edge, %cond.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %addr.056, 1
  %dec = add nsw i32 %dec57, -1
  %tobool.not = icmp eq i32 %dec57, 0
  br i1 %tobool.not, label %for.end27, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end27:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 @aq_hw_err_from_flags(ptr noundef %self) #5
  br label %cleanup29

cleanup29:                                        ; preds = %for.end27, %for.end.cleanup29_crit_edge
  %retval.0 = phi i32 [ %call28, %for.end27 ], [ -110, %for.end.cleanup29_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_hw_get_regs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hw_atl_utils_get_hw_stats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_utils_get_fw_version(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_err_from_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_tx_dma_desc_tail_ptr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_reg_rx_dma_desc_status_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rdm_rx_desc_res_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rdm_rx_desc_head_ptr_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_rx_dma_desc_tail_ptr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_tdm_tx_desc_head_ptr_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2_uc_flr_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2unicast_dest_addresslsw_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2unicast_dest_addressmsw_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_glb_glb_reg_res_dis_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_pci_pci_reg_res_dis_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rx_rx_reg_res_dis_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tx_tx_reg_res_dis_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_hw_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_glb_soft_res_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_glb_soft_res_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_reg_res_dis_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_res_irq_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_itr_res_irq_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_tx_dma_debug_ctl_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_irq_glb_ctl_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_auto_masklsw_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_gen_irq_map_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_hw_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @hw_atl_reg_rx_flr_rss_control1set(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @hw_atl_rpf_vlan_prom_mode_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_data_arb_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @hw_atl_rpb_rx_xoff_en_per_tc_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rpb_user_priority_tc_map_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @hw_atl_tpb_tx_buff_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpb_rx_buff_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_tdm_tx_desc_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_msk_setlsw_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_msk_clearlsw_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_itr_irq_status_clearlsw_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_reg_gen_irq_status_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_itr_irq_statuslsw_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2promiscuous_mode_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2multicast_flr_en_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpfl2broadcast_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @hw_atl_utils_mbps_2_speed_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_reg_irq_thr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_redir_tbl_wr_data_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_redir_tbl_addr_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_redir_wr_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rpf_rss_redir_wr_en_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_key_wr_data_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_key_addr_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl_rpf_rss_key_wr_en_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rpf_rss_key_wr_en_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @hw_atl_a0_caps_aqc100, !1, !"hw_atl_a0_caps_aqc100", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c", i32 50, i32 27}
!2 = !{ptr @hw_atl_a0_caps_aqc107, !3, !"hw_atl_a0_caps_aqc107", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c", i32 59, i32 27}
!4 = !{ptr @hw_atl_a0_caps_aqc108, !5, !"hw_atl_a0_caps_aqc108", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c", i32 69, i32 27}
!6 = !{ptr @hw_atl_a0_caps_aqc109, !7, !"hw_atl_a0_caps_aqc109", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c", i32 78, i32 27}
!8 = !{ptr @hw_atl_ops_a0, !9, !"hw_atl_ops_a0", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c", i32 947, i32 24}
!10 = !{ptr @hw_atl_a0_hw_init.aq_hw_atl_igcr_table_, !11, !"aq_hw_atl_igcr_table_", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c", i32 353, i32 13}
!12 = !{ptr @hw_atl_a0_hw_interrupt_moderation_set.hw_timers_tbl_, !13, !"hw_timers_tbl_", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_a0.c", i32 837, i32 25}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i8 0, i8 2}
!25 = !{i64 2148405498, i64 2148405524, i64 2148405553, i64 2148405587, i64 2148405618, i64 2148405641}
