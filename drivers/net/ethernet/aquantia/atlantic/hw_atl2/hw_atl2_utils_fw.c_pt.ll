; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils_fw.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils_fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.version_s = type { %struct.bundle_version_t, %struct.mac_version_t, %struct.phy_version_t, i32 }
%struct.bundle_version_t = type { i8, i8, i16 }
%struct.mac_version_t = type { i8, i8, i16 }
%struct.phy_version_t = type { i8, i8, i16 }
%struct.transaction_counter_s = type { i16, i16 }
%struct.filter_caps_s = type <{ i8, i8, i8, i8, i8, i8, i32, i8, i8 }>
%struct.link_control_s = type { i16, i16 }
%struct.link_options_s = type { i32 }
%struct.mac_address_aligned_s = type { %struct.mac_address_s, i16 }
%struct.mac_address_s = type { [6 x i8] }
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
%struct.lkp_link_caps_s = type { i32 }
%struct.link_status_s = type { i16, i16 }
%struct.statistics_s = type { %union.anon.3 }
%union.anon.3 = type <{ %struct.statistics_a0_s, [4 x i8] }>
%struct.statistics_a0_s = type { %struct.anon.4, %struct.anon.5, i32, i32 }
%struct.anon.4 = type { i32, i32 }
%struct.anon.5 = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_b0_s = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }>
%struct.phy_health_monitor_s = type { i8, i8, i16, i16, i16 }
%struct.device_link_caps_s = type { i32 }

@aq_a2_fw_ops = dso_local constant { %struct.aq_fw_ops, [60 x i8] } { %struct.aq_fw_ops { ptr @aq_a2_fw_init, ptr @aq_a2_fw_deinit, ptr null, ptr @aq_a2_fw_renegotiate, ptr @aq_a2_fw_get_mac_permanent, ptr @aq_a2_fw_set_link_speed, ptr @aq_a2_fw_set_state, ptr @aq_a2_fw_update_link_status, ptr @aq_a2_fw_update_stats, ptr @aq_a2_fw_get_mac_temp, ptr @aq_a2_fw_get_phy_temp, ptr @aq_a2_fw_get_flow_control, ptr @aq_a2_fw_set_flow_control, ptr null, ptr @aq_a2_fw_set_phyloopback, ptr null, ptr null, ptr null, ptr null, ptr @aq_a2_fw_set_eee_rate, ptr @aq_a2_fw_get_eee_rate, ptr @aq_a2_fw_set_downshift, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils_fw.c\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hw_atl2_shared_buffer_finish_ack\00", [63 x i8] zeroinitializer }, align 32
@switch.table.aq_a2_fw_update_link_status = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 10, i32 100, i32 1000, i32 2500, i32 5000, i32 10000], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"aq_a2_fw_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 598, i32 24 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [69 x i8] c"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils_fw.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 136, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [41 x i8] c"switch.table.aq_a2_fw_update_link_status\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @aq_a2_fw_ops, ptr @.str, ptr @.str.1, ptr @switch.table.aq_a2_fw_update_link_status], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_a2_fw_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aq_a2_fw_update_link_status to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl2_utils_get_fw_version(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  %version = alloca %struct.version_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %version) #4
  %0 = getelementptr inbounds %struct.bundle_version_t, ptr %version, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bundle_version_t, ptr %version, i32 0, i32 2
  %2 = call ptr @memset(ptr %version, i32 255, i32 16)
  %call = call fastcc i32 @hw_atl2_shared_buffer_read_block(ptr noundef %self, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %version)
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %version, align 4
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 %conv, 24
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %0, align 1
  %conv5 = zext i8 %6 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %conv8 = zext i16 %8 to i32
  %or9 = or i32 %or, %conv8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %version) #4
  ret i32 %or9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_atl2_shared_buffer_read_block(ptr noundef %self, i32 noundef %offset, i32 noundef %dwords, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %tid1 = alloca %struct.transaction_counter_s, align 2
  %tid2 = alloca %struct.transaction_counter_s, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid1) #4
  %0 = ptrtoint ptr %tid1 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tid1, align 2, !annotation !14
  %1 = getelementptr inbounds %struct.transaction_counter_s, ptr %tid1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid2) #4
  %3 = ptrtoint ptr %tid2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %tid2, align 2, !annotation !14
  %4 = getelementptr inbounds %struct.transaction_counter_s, ptr %tid2, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !14
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %inc31, %do.body.backedge ]
  %smax = call i32 @llvm.smax.i32(i32 %cnt.0, i32 1000)
  br label %do.body1

do.body1:                                         ; preds = %do.cond14.do.body1_crit_edge, %do.body
  %cnt.1 = phi i32 [ %cnt.0, %do.body ], [ %inc, %do.cond14.do.body1_crit_edge ]
  call void @hw_atl2_mif_shared_buf_read(ptr noundef %self, i32 noundef 0, ptr noundef nonnull %tid1, i32 noundef 1) #4
  %inc = add i32 %cnt.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.1, i32 %smax)
  %exitcond = icmp eq i32 %cnt.1, %smax
  br i1 %exitcond, label %do.body1.cleanup_crit_edge, label %if.end

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %do.body1
  %6 = ptrtoint ptr %tid1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tid1, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp10.not = icmp eq i16 %7, %9
  br i1 %cmp10.not, label %if.end.do.cond14_crit_edge, label %if.then12

if.end.do.cond14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #4
  br label %do.cond14

do.cond14:                                        ; preds = %if.then12, %if.end.do.cond14_crit_edge
  %11 = ptrtoint ptr %tid1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tid1, align 2
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 2
  %cmp19.not = icmp eq i16 %12, %14
  br i1 %cmp19.not, label %do.end21, label %do.cond14.do.body1_crit_edge

do.cond14.do.body1_crit_edge:                     ; preds = %do.cond14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1

do.end21:                                         ; preds = %do.cond14
  call void @hw_atl2_mif_shared_buf_read(ptr noundef %self, i32 noundef %offset, ptr noundef %data, i32 noundef %dwords) #4
  call void @hw_atl2_mif_shared_buf_read(ptr noundef %self, i32 noundef 0, ptr noundef nonnull %tid2, i32 noundef 1) #4
  %inc31 = add i32 %cnt.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc31)
  %cmp32 = icmp sgt i32 %inc31, 1000
  br i1 %cmp32, label %do.end21.cleanup_crit_edge, label %do.cond36

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond36:                                        ; preds = %do.end21
  %15 = ptrtoint ptr %tid2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tid2, align 2
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp41.not = icmp eq i16 %16, %18
  br i1 %cmp41.not, label %lor.rhs, label %do.cond36.do.body.backedge_crit_edge

do.cond36.do.body.backedge_crit_edge:             ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.cond36
  %19 = ptrtoint ptr %tid1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tid1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %16)
  %cmp47.not = icmp eq i16 %20, %16
  br i1 %cmp47.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %do.cond36.do.body.backedge_crit_edge
  br label %do.body

cleanup:                                          ; preds = %lor.rhs.cleanup_crit_edge, %do.end21.cleanup_crit_edge, %do.body1.cleanup_crit_edge
  %retval.0 = phi i32 [ -62, %do.body1.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ], [ -62, %do.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid1) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_atl2_utils_get_action_resolve_table_caps(ptr noundef %self, ptr nocapture noundef writeonly %base_index, ptr nocapture noundef writeonly %count) local_unnamed_addr #0 align 64 {
entry:
  %filter_caps = alloca %struct.filter_caps_s, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %filter_caps) #4
  %0 = call ptr @memset(ptr %filter_caps, i32 255, i32 12)
  %call = call fastcc i32 @hw_atl2_shared_buffer_read_block(ptr noundef %self, i32 noundef 477, i32 noundef 3, ptr noundef nonnull %filter_caps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = getelementptr inbounds %struct.filter_caps_s, ptr %filter_caps, i32 0, i32 8
  %2 = getelementptr inbounds %struct.filter_caps_s, ptr %filter_caps, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = ptrtoint ptr %base_index to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %base_index, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %count, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %filter_caps) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_init(ptr noundef %self) #0 align 64 {
entry:
  %link_control = alloca %struct.link_control_s, align 2
  %mtu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_control) #4
  %0 = ptrtoint ptr %link_control to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %link_control, align 2, !annotation !14
  %1 = getelementptr inbounds %struct.link_control_s, ptr %link_control, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtu) #4
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mtu, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 4, ptr noundef nonnull %link_control, i32 noundef 1) #4
  %4 = ptrtoint ptr %link_control to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link_control, align 2
  %bf.clear = and i16 %bf.load, 4095
  %bf.set = or i16 %bf.clear, 4096
  store i16 %bf.set, ptr %link_control, align 2
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 4, ptr noundef nonnull %link_control, i32 noundef 1) #4
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 0, ptr noundef nonnull %mtu, i32 noundef 1) #4
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16352, ptr %mtu, align 4
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 0, ptr noundef nonnull %mtu, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call = call i64 @ktime_get() #4
  %add.i = add i64 %call, 5000000000
  %call2381 = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2381)
  %cmp82 = icmp eq i32 %call2381, 0
  br i1 %cmp82, label %entry.if.end56_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call24 = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then27, label %cond.false

if.then27:                                        ; preds = %land.lhs.true
  %call28 = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %phi.cmp = icmp eq i32 %call28, 0
  br i1 %phi.cmp, label %if.then27.if.end56_crit_edge, label %do.end50

if.then27.if.end56_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 21474800) #4
  %call23 = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp = icmp eq i32 %call23, 0
  br i1 %cmp, label %cond.false.if.end56_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

cond.false.if.end56_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

do.end50:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %cond.false.if.end56_crit_edge, %if.then27.if.end56_crit_edge, %entry.if.end56_crit_edge
  %val.080 = phi i32 [ -110, %do.end50 ], [ 0, %if.then27.if.end56_crit_edge ], [ 0, %entry.if.end56_crit_edge ], [ 0, %cond.false.if.end56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtu) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_control) #4
  ret i32 %val.080
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_deinit(ptr noundef %self) #0 align 64 {
entry:
  %link_control = alloca %struct.link_control_s, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_control) #4
  %0 = ptrtoint ptr %link_control to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %link_control, align 2, !annotation !14
  %1 = getelementptr inbounds %struct.link_control_s, ptr %link_control, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 4, ptr noundef nonnull %link_control, i32 noundef 1) #4
  %3 = ptrtoint ptr %link_control to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %link_control, align 2
  %bf.clear = and i16 %bf.load, 4095
  %bf.set = or i16 %bf.clear, 16384
  store i16 %bf.set, ptr %link_control, align 2
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 4, ptr noundef nonnull %link_control, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call.i = call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call253.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %cmp54.i = icmp eq i32 %call253.i, 0
  br i1 %cmp54.i, label %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 0
  br i1 %phi.cmp.i, label %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %do.end.i

if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 21474800) #4
  %call2.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %hw_atl2_shared_buffer_finish_ack.exit

hw_atl2_shared_buffer_finish_ack.exit:            ; preds = %do.end.i, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge
  %val.052.i = phi i32 [ -110, %do.end.i ], [ 0, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_control) #4
  ret i32 %val.052.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_renegotiate(ptr noundef %self) #0 align 64 {
entry:
  %link_options = alloca %struct.link_options_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_options) #4
  %0 = ptrtoint ptr %link_options to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_options, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  %1 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %link_options, align 4
  %bf.set = or i32 %bf.load, 1073741824
  store i32 %bf.set, ptr %link_options, align 4
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call.i = call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call253.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %cmp54.i = icmp eq i32 %call253.i, 0
  br i1 %cmp54.i, label %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 0
  br i1 %phi.cmp.i, label %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %do.end.i

if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %2(i32 noundef 21474800) #4
  %call2.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %hw_atl2_shared_buffer_finish_ack.exit

hw_atl2_shared_buffer_finish_ack.exit:            ; preds = %do.end.i, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge
  %val.052.i = phi i32 [ -110, %do.end.i ], [ 0, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ]
  %3 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load10 = load i32, ptr %link_options, align 4
  %bf.clear11 = and i32 %bf.load10, -1073741825
  store i32 %bf.clear11, ptr %link_options, align 4
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_options) #4
  ret i32 %val.052.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_get_mac_permanent(ptr noundef %self, ptr nocapture noundef writeonly %mac) #0 align 64 {
entry:
  %mac_address = alloca %struct.mac_address_aligned_s, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mac_address) #4
  %0 = getelementptr inbounds [6 x i8], ptr %mac_address, i32 0, i32 4
  %1 = ptrtoint ptr %mac_address to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %mac_address, align 8
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 2, ptr noundef nonnull %mac_address, i32 noundef 2) #4
  %2 = ptrtoint ptr %mac_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_address, align 8
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %0, align 4
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac_address) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_set_link_speed(ptr noundef %self, i32 noundef %speed) #0 align 64 {
entry:
  %link_options = alloca %struct.link_options_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_options) #4
  %0 = ptrtoint ptr %link_options to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_options, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  %1 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %link_options, align 4
  %2 = shl i32 %speed, 16
  %bf.shl.i = and i32 %2, 65536
  %bf.set = and i32 %bf.load, 2013331455
  %3 = shl i32 %speed, 17
  %bf.shl11.i = and i32 %3, 262144
  %bf.lshr.i = lshr exact i32 %bf.shl11.i, 1
  %4 = shl i32 %speed, 18
  %bf.shl32.i = and i32 %4, 1048576
  %5 = lshr exact i32 %4, 1
  %bf.shl42.i = and i32 %5, 524288
  %bf.clear108.masked.i = and i32 %4, 132120576
  %bf.clear.i = or i32 %bf.shl.i, %bf.shl11.i
  %bf.set.i = or i32 %bf.clear.i, %bf.shl32.i
  %bf.set13.i = or i32 %bf.set.i, %bf.clear108.masked.i
  %bf.set21.i = or i32 %bf.set13.i, %bf.lshr.i
  %bf.set34.i = or i32 %bf.set21.i, %bf.shl42.i
  %bf.clear121.i = or i32 %bf.set34.i, %bf.set
  %bf.set122.i = or i32 %bf.clear121.i, -2147483648
  store i32 %bf.set122.i, ptr %link_options, align 4
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call.i = call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call253.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %cmp54.i = icmp eq i32 %call253.i, 0
  br i1 %cmp54.i, label %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 0
  br i1 %phi.cmp.i, label %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %do.end.i

if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 21474800) #4
  %call2.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %hw_atl2_shared_buffer_finish_ack.exit

hw_atl2_shared_buffer_finish_ack.exit:            ; preds = %do.end.i, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge
  %val.052.i = phi i32 [ -110, %do.end.i ], [ 0, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_options) #4
  ret i32 %val.052.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_set_state(ptr noundef %self, i32 noundef %state) #0 align 64 {
entry:
  %link_options = alloca %struct.link_options_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_options) #4
  %0 = ptrtoint ptr %link_options to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_options, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  %1 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.do.end14_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb4
  ]

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %link_options, align 4
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %3 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aq_nic_cfg, align 8
  %eee_speeds = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %4, i32 0, i32 37
  %5 = ptrtoint ptr %eee_speeds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eee_speeds, align 4
  %7 = shl i32 %6, 2
  %bf.set = and i32 %bf.load, 2147419967
  %bf.clear.i = or i32 %bf.set, -2147483648
  %bf.set39.i = and i32 %7, 63488
  %bf.set52.i = or i32 %bf.set39.i, %bf.clear.i
  %fc.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %4, i32 0, i32 13
  %8 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fc.i, align 8
  %10 = shl i32 %9, 6
  %bf.shl.i = and i32 %10, 128
  %bf.set.i = or i32 %bf.set52.i, %bf.shl.i
  %bf.shl11.i = and i32 %10, 64
  %bf.set13.i = or i32 %bf.set.i, %bf.shl11.i
  store i32 %bf.set13.i, ptr %link_options, align 4
  br label %do.end14

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load5 = load i32, ptr %link_options, align 4
  %bf.clear6 = and i32 %bf.load5, 2147483647
  store i32 %bf.clear6, ptr %link_options, align 4
  br label %do.end14

do.end14:                                         ; preds = %sw.bb4, %sw.bb, %entry.do.end14_crit_edge
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call.i = call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call253.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %cmp54.i = icmp eq i32 %call253.i, 0
  br i1 %cmp54.i, label %do.end14.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %do.end14.land.lhs.true.i_crit_edge

do.end14.land.lhs.true.i_crit_edge:               ; preds = %do.end14
  br label %land.lhs.true.i

do.end14.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %do.end14.land.lhs.true.i_crit_edge
  %call3.i = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 0
  br i1 %phi.cmp.i, label %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %do.end.i

if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 21474800) #4
  %call2.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %hw_atl2_shared_buffer_finish_ack.exit

hw_atl2_shared_buffer_finish_ack.exit:            ; preds = %do.end.i, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %do.end14.hw_atl2_shared_buffer_finish_ack.exit_crit_edge
  %val.052.i = phi i32 [ -110, %do.end.i ], [ 0, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %do.end14.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_options) #4
  ret i32 %val.052.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_update_link_status(ptr noundef %self) #0 align 64 {
entry:
  %lkp_link_caps = alloca %struct.lkp_link_caps_s, align 4
  %link_status = alloca %struct.link_status_s, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lkp_link_caps) #4
  %0 = ptrtoint ptr %lkp_link_caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lkp_link_caps, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_status) #4
  %1 = ptrtoint ptr %link_status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %link_status, align 2, !annotation !14
  %2 = getelementptr inbounds %struct.link_status_s, ptr %link_status, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !14
  call void @hw_atl2_mif_shared_buf_read(ptr noundef %self, i32 noundef 5, ptr noundef nonnull %link_status, i32 noundef 1) #4
  %4 = ptrtoint ptr %link_status to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link_status, align 2
  %bf.lshr = lshr i16 %bf.load, 8
  %5 = and i16 %bf.lshr, 15
  %bf.cast = zext i16 %5 to i32
  %switch.tableidx = add nsw i32 %bf.cast, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 6
  br i1 %6, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.aq_a2_fw_update_link_status, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %aq_link_status22 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %8 = ptrtoint ptr %aq_link_status22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %aq_link_status22, align 4
  %full_duplex = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5, i32 1
  %9 = trunc i16 %bf.load to i8
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %full_duplex, align 4
  call void @hw_atl2_mif_shared_buf_read(ptr noundef %self, i32 noundef 408, ptr noundef nonnull %lkp_link_caps, i32 noundef 1) #4
  %13 = ptrtoint ptr %lkp_link_caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %lkp_link_caps, align 4
  %14 = lshr i32 %bf.load.i, 16
  %.lobit.i = and i32 %14, 1
  %15 = lshr i32 %bf.load.i, 17
  %16 = and i32 %15, 2
  %17 = lshr i32 %bf.load.i, 18
  %18 = and i32 %17, 4
  %19 = and i32 %17, 8
  %20 = and i32 %17, 64
  %21 = and i32 %17, 16
  %22 = and i32 %17, 128
  %23 = and i32 %17, 32
  %24 = and i32 %17, 256
  %25 = shl i32 %bf.load.i, 1
  %26 = and i32 %25, 512
  %27 = and i32 %bf.load.i, 1024
  %28 = lshr i32 %bf.load.i, 1
  %29 = and i32 %28, 2048
  %30 = and i32 %28, 4096
  %31 = and i32 %28, 8192
  %32 = or i32 %.lobit.i, %27
  %33 = or i32 %32, %16
  %34 = or i32 %33, %18
  %35 = or i32 %34, %19
  %36 = or i32 %35, %20
  %37 = or i32 %36, %21
  %38 = or i32 %37, %22
  %39 = or i32 %38, %23
  %40 = or i32 %39, %24
  %41 = or i32 %40, %26
  %42 = or i32 %41, %29
  %43 = or i32 %42, %30
  %44 = or i32 %43, %31
  %lp_link_speed_msk = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %lp_link_speed_msk to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %lp_link_speed_msk, align 4
  %46 = lshr i32 %bf.load.i, 6
  %or = and i32 %46, 3
  %lp_flow_control = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5, i32 3
  %47 = ptrtoint ptr %lp_flow_control to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %lp_flow_control, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_status) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lkp_link_caps) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_update_stats(ptr noundef %self) #0 align 64 {
entry:
  %stats = alloca %struct.statistics_s, align 8
  %version = alloca %struct.version_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 22
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %stats) #4
  %2 = call ptr @memset(ptr %stats, i32 255, i32 116)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %version) #4
  %3 = getelementptr inbounds %struct.version_s, ptr %version, i32 0, i32 3
  %4 = call ptr @memset(ptr %version, i32 255, i32 16)
  %call = call fastcc i32 @hw_atl2_shared_buffer_read_block(ptr noundef %self, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end10, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end10:                                         ; preds = %entry
  %call12 = call fastcc i32 @hw_atl2_shared_buffer_read_block(ptr noundef %self, i32 noundef 448, i32 noundef 29, ptr noundef nonnull %stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %do.end10
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 268435456
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end15
  %curr_stats2.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 2
  %curr_stats2.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 3
  %curr_stats2.sroa.9.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 4
  %curr_stats2.sroa.11.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 5
  %curr_stats2.sroa.13.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 6
  %curr_stats2.sroa.15.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 7
  %curr_stats2.sroa.17.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 8
  %curr_stats2.sroa.19.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 9
  %curr_stats2.sroa.21.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 10
  %8 = ptrtoint ptr %curr_stats2.sroa.21.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %curr_stats2.sroa.21.0.copyload.i = load i64, ptr %curr_stats2.sroa.21.0..sroa_idx.i, align 8
  %curr_stats2.sroa.23.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 11
  %9 = ptrtoint ptr %curr_stats2.sroa.23.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %curr_stats2.sroa.23.0.copyload.i = load i64, ptr %curr_stats2.sroa.23.0..sroa_idx.i, align 8
  %curr_stats2.sroa.25.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 12
  %10 = ptrtoint ptr %curr_stats2.sroa.25.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %curr_stats2.sroa.25.0.copyload.i = load i64, ptr %curr_stats2.sroa.25.0..sroa_idx.i, align 8
  %curr_stats2.sroa.27.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 13
  %11 = ptrtoint ptr %curr_stats2.sroa.27.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %curr_stats2.sroa.27.0.copyload.i = load i64, ptr %curr_stats2.sroa.27.0..sroa_idx.i, align 8
  %curr_stats2.sroa.29.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 14
  %curr_stats2.sroa.31.0..sroa_idx.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 15
  %12 = ptrtoint ptr %curr_stats2.sroa.31.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %curr_stats2.sroa.31.0.copyload.i = load i64, ptr %curr_stats2.sroa.31.0..sroa_idx.i, align 8
  %aq_link_status.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %13 = ptrtoint ptr %aq_link_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aq_link_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then16.if.end17_crit_edge, label %if.then7.i

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then7.i:                                       ; preds = %if.then16
  %15 = ptrtoint ptr %curr_stats2.sroa.29.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %curr_stats2.sroa.29.0.copyload.i = load i64, ptr %curr_stats2.sroa.29.0..sroa_idx.i, align 8
  %16 = ptrtoint ptr %curr_stats2.sroa.19.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %curr_stats2.sroa.19.0.copyload.i = load i64, ptr %curr_stats2.sroa.19.0..sroa_idx.i, align 8
  %17 = ptrtoint ptr %curr_stats2.sroa.17.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %curr_stats2.sroa.17.0.copyload.i = load i64, ptr %curr_stats2.sroa.17.0..sroa_idx.i, align 8
  %18 = ptrtoint ptr %curr_stats2.sroa.15.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %curr_stats2.sroa.15.0.copyload.i = load i64, ptr %curr_stats2.sroa.15.0..sroa_idx.i, align 8
  %19 = ptrtoint ptr %curr_stats2.sroa.13.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %curr_stats2.sroa.13.0.copyload.i = load i64, ptr %curr_stats2.sroa.13.0..sroa_idx.i, align 8
  %20 = ptrtoint ptr %curr_stats2.sroa.11.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %curr_stats2.sroa.11.0.copyload.i = load i64, ptr %curr_stats2.sroa.11.0..sroa_idx.i, align 8
  %21 = ptrtoint ptr %curr_stats2.sroa.9.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %curr_stats2.sroa.9.0.copyload.i = load i64, ptr %curr_stats2.sroa.9.0..sroa_idx.i, align 8
  %22 = ptrtoint ptr %curr_stats2.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %curr_stats2.sroa.7.0.copyload.i = load i64, ptr %curr_stats2.sroa.7.0..sroa_idx.i, align 8
  %23 = ptrtoint ptr %curr_stats2.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %curr_stats2.sroa.5.0.copyload.i = load i64, ptr %curr_stats2.sroa.5.0..sroa_idx.i, align 8
  %rx_unicast_frames.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 10
  %24 = ptrtoint ptr %rx_unicast_frames.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_unicast_frames.i, align 8
  %rx_unicast_frames5.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 10
  %26 = ptrtoint ptr %rx_unicast_frames5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_unicast_frames5.i, align 4
  %sub.i = sub i32 %25, %27
  %conv.i = zext i32 %sub.i to i64
  %add.i = add i64 %curr_stats2.sroa.5.0.copyload.i, %conv.i
  %rx_multicast_frames.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 11
  %28 = ptrtoint ptr %rx_multicast_frames.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_multicast_frames.i, align 4
  %rx_multicast_frames21.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 11
  %30 = ptrtoint ptr %rx_multicast_frames21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_multicast_frames21.i, align 4
  %sub22.i = sub i32 %29, %31
  %conv23.i = zext i32 %sub22.i to i64
  %add34.i = add i64 %curr_stats2.sroa.7.0.copyload.i, %conv23.i
  %rx_broadcast_frames.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 12
  %32 = ptrtoint ptr %rx_broadcast_frames.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_broadcast_frames.i, align 8
  %rx_broadcast_frames45.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 12
  %34 = ptrtoint ptr %rx_broadcast_frames45.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_broadcast_frames45.i, align 4
  %sub46.i = sub i32 %33, %35
  %conv47.i = zext i32 %sub46.i to i64
  %add58.i = add i64 %curr_stats2.sroa.9.0.copyload.i, %conv47.i
  %rx_error_frames.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 14
  %36 = ptrtoint ptr %rx_error_frames.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_error_frames.i, align 8
  %rx_error_frames69.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 14
  %38 = ptrtoint ptr %rx_error_frames69.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_error_frames69.i, align 4
  %sub70.i = sub i32 %37, %39
  %conv71.i = zext i32 %sub70.i to i64
  %add82.i = add i64 %curr_stats2.sroa.19.0.copyload.i, %conv71.i
  %tx_unicast_frames.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %tx_unicast_frames.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_unicast_frames.i, align 8
  %tx_unicast_frames93.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 6
  %42 = ptrtoint ptr %tx_unicast_frames93.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_unicast_frames93.i, align 4
  %sub94.i = sub i32 %41, %43
  %conv95.i = zext i32 %sub94.i to i64
  %add106.i = add i64 %curr_stats2.sroa.13.0.copyload.i, %conv95.i
  %tx_multicast_frames.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 7
  %44 = ptrtoint ptr %tx_multicast_frames.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_multicast_frames.i, align 4
  %tx_multicast_frames117.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 7
  %46 = ptrtoint ptr %tx_multicast_frames117.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_multicast_frames117.i, align 4
  %sub118.i = sub i32 %45, %47
  %conv119.i = zext i32 %sub118.i to i64
  %add130.i = add i64 %curr_stats2.sroa.15.0.copyload.i, %conv119.i
  %tx_broadcast_frames.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 8
  %48 = ptrtoint ptr %tx_broadcast_frames.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_broadcast_frames.i, align 8
  %tx_broadcast_frames141.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 8
  %50 = ptrtoint ptr %tx_broadcast_frames141.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_broadcast_frames141.i, align 4
  %sub142.i = sub i32 %49, %51
  %conv143.i = zext i32 %sub142.i to i64
  %add154.i = add i64 %curr_stats2.sroa.17.0.copyload.i, %conv143.i
  %tx_errors.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 9
  %52 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_errors.i, align 4
  %tx_errors165.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 9
  %54 = ptrtoint ptr %tx_errors165.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_errors165.i, align 4
  %sub166.i = sub i32 %53, %55
  %conv167.i = zext i32 %sub166.i to i64
  %add178.i = add i64 %curr_stats2.sroa.11.0.copyload.i, %conv167.i
  %rx_unicast_octets.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %rx_unicast_octets.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %rx_unicast_octets.i, align 8
  %rx_unicast_octets189.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %rx_unicast_octets189.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %rx_unicast_octets189.i, align 4
  %sub190.i = sub i64 %57, %59
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub190.i)
  %cmp191.i = icmp sgt i64 %sub190.i, -1
  %add200.i = select i1 %cmp191.i, i64 %sub190.i, i64 0
  %curr_stats2.sroa.29.0.i = add i64 %add200.i, %curr_stats2.sroa.29.0.copyload.i
  br i1 %cmp191.i, label %do.body227.i, label %if.then7.i.if.end17_crit_edge

if.then7.i.if.end17_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body227.i:                                     ; preds = %if.then7.i
  %msm208.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1
  %60 = ptrtoint ptr %msm208.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %msm208.i, align 8
  %msm210.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1
  %62 = ptrtoint ptr %msm210.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %msm210.i, align 4
  %sub212.i = sub i64 %61, %63
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub212.i)
  %cmp213.i = icmp sgt i64 %sub212.i, -1
  %add222.i = select i1 %cmp213.i, i64 %sub212.i, i64 0
  %spec.select.i = add i64 %add222.i, %curr_stats2.sroa.31.0.copyload.i
  br i1 %cmp213.i, label %do.body249.i, label %do.body227.i.if.end17_crit_edge

do.body227.i.if.end17_crit_edge:                  ; preds = %do.body227.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body249.i:                                     ; preds = %do.body227.i
  %rx_multicast_octets.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %rx_multicast_octets.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rx_multicast_octets.i, align 8
  %rx_multicast_octets233.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %rx_multicast_octets233.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %rx_multicast_octets233.i, align 4
  %sub234.i = sub i64 %65, %67
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub234.i)
  %cmp235.i = icmp sgt i64 %sub234.i, -1
  %add244.i = select i1 %cmp235.i, i64 %sub234.i, i64 0
  %spec.select438.i = add i64 %add244.i, %curr_stats2.sroa.25.0.copyload.i
  br i1 %cmp235.i, label %do.body271.i, label %do.body249.i.if.end17_crit_edge

do.body249.i.if.end17_crit_edge:                  ; preds = %do.body249.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body271.i:                                     ; preds = %do.body249.i
  %tx_multicast_octets.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %tx_multicast_octets.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %tx_multicast_octets.i, align 8
  %tx_multicast_octets255.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %tx_multicast_octets255.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %tx_multicast_octets255.i, align 4
  %sub256.i = sub i64 %69, %71
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub256.i)
  %cmp257.i = icmp sgt i64 %sub256.i, -1
  %add266.i = select i1 %cmp257.i, i64 %sub256.i, i64 0
  %spec.select440.i = add i64 %add266.i, %curr_stats2.sroa.21.0.copyload.i
  br i1 %cmp257.i, label %do.body293.i, label %do.body271.i.if.end17_crit_edge

do.body271.i.if.end17_crit_edge:                  ; preds = %do.body271.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body293.i:                                     ; preds = %do.body271.i
  %rx_broadcast_octets.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 5
  %72 = ptrtoint ptr %rx_broadcast_octets.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rx_broadcast_octets.i, align 8
  %rx_broadcast_octets277.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 5
  %74 = ptrtoint ptr %rx_broadcast_octets277.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %rx_broadcast_octets277.i, align 4
  %sub278.i = sub i64 %73, %75
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub278.i)
  %cmp279.i = icmp sgt i64 %sub278.i, -1
  %add288.i = select i1 %cmp279.i, i64 %sub278.i, i64 0
  %spec.select442.i = add i64 %add288.i, %curr_stats2.sroa.27.0.copyload.i
  br i1 %cmp279.i, label %do.end314.i, label %do.body293.i.if.end17_crit_edge

do.body293.i.if.end17_crit_edge:                  ; preds = %do.body293.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.end314.i:                                      ; preds = %do.body293.i
  %tx_broadcast_octets.i = getelementptr inbounds %struct.statistics_a0_s, ptr %stats, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %tx_broadcast_octets.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %tx_broadcast_octets.i, align 8
  %tx_broadcast_octets299.i = getelementptr inbounds %struct.statistics_a0_s, ptr %7, i32 0, i32 1, i32 2
  %78 = ptrtoint ptr %tx_broadcast_octets299.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %tx_broadcast_octets299.i, align 4
  %sub300.i = sub i64 %77, %79
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub300.i)
  %cmp301.i = icmp sgt i64 %sub300.i, -1
  br i1 %cmp301.i, label %if.then316.i, label %do.end314.i.if.end17_crit_edge

do.end314.i.if.end17_crit_edge:                   ; preds = %do.end314.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then316.i:                                     ; preds = %do.end314.i
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select444.i = add i64 %sub300.i, %curr_stats2.sroa.23.0.copyload.i
  %80 = ptrtoint ptr %curr_stats2.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %add.i, ptr %curr_stats2.sroa.5.0..sroa_idx.i, align 8
  %81 = ptrtoint ptr %curr_stats2.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add34.i, ptr %curr_stats2.sroa.7.0..sroa_idx.i, align 8
  %82 = ptrtoint ptr %curr_stats2.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %add58.i, ptr %curr_stats2.sroa.9.0..sroa_idx.i, align 8
  %83 = ptrtoint ptr %curr_stats2.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %add178.i, ptr %curr_stats2.sroa.11.0..sroa_idx.i, align 8
  %84 = ptrtoint ptr %curr_stats2.sroa.13.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %add106.i, ptr %curr_stats2.sroa.13.0..sroa_idx.i, align 8
  %85 = ptrtoint ptr %curr_stats2.sroa.15.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %add130.i, ptr %curr_stats2.sroa.15.0..sroa_idx.i, align 8
  %86 = ptrtoint ptr %curr_stats2.sroa.17.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %add154.i, ptr %curr_stats2.sroa.17.0..sroa_idx.i, align 8
  %87 = ptrtoint ptr %curr_stats2.sroa.19.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %add82.i, ptr %curr_stats2.sroa.19.0..sroa_idx.i, align 8
  %88 = ptrtoint ptr %curr_stats2.sroa.21.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %spec.select440.i, ptr %curr_stats2.sroa.21.0..sroa_idx.i, align 8
  %89 = ptrtoint ptr %curr_stats2.sroa.23.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %spec.select444.i, ptr %curr_stats2.sroa.23.0..sroa_idx.i, align 8
  %90 = ptrtoint ptr %curr_stats2.sroa.25.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %spec.select438.i, ptr %curr_stats2.sroa.25.0..sroa_idx.i, align 8
  %91 = ptrtoint ptr %curr_stats2.sroa.27.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %spec.select442.i, ptr %curr_stats2.sroa.27.0..sroa_idx.i, align 8
  %92 = ptrtoint ptr %curr_stats2.sroa.29.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %curr_stats2.sroa.29.0.i, ptr %curr_stats2.sroa.29.0..sroa_idx.i, align 8
  %93 = ptrtoint ptr %curr_stats2.sroa.31.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %spec.select.i, ptr %curr_stats2.sroa.31.0..sroa_idx.i, align 8
  br label %if.end17

if.else:                                          ; preds = %if.end15
  %curr_stats.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8
  %94 = ptrtoint ptr %curr_stats.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %curr_stats2.sroa.0.0.copyload.i = load i64, ptr %curr_stats.i, align 8
  %curr_stats2.sroa.7.0..sroa_idx.i45 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 1
  %95 = ptrtoint ptr %curr_stats2.sroa.7.0..sroa_idx.i45 to i32
  call void @__asan_load8_noabort(i32 %95)
  %curr_stats2.sroa.7.0.copyload.i46 = load i64, ptr %curr_stats2.sroa.7.0..sroa_idx.i45, align 8
  %curr_stats2.sroa.9.0..sroa_idx.i47 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 2
  %curr_stats2.sroa.11.0..sroa_idx.i48 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 3
  %96 = ptrtoint ptr %curr_stats2.sroa.11.0..sroa_idx.i48 to i32
  call void @__asan_load8_noabort(i32 %96)
  %curr_stats2.sroa.11.0.copyload.i49 = load i64, ptr %curr_stats2.sroa.11.0..sroa_idx.i48, align 8
  %curr_stats2.sroa.13.0..sroa_idx.i50 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 4
  %97 = ptrtoint ptr %curr_stats2.sroa.13.0..sroa_idx.i50 to i32
  call void @__asan_load8_noabort(i32 %97)
  %curr_stats2.sroa.13.0.copyload.i51 = load i64, ptr %curr_stats2.sroa.13.0..sroa_idx.i50, align 8
  %curr_stats2.sroa.15.0..sroa_idx.i52 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 5
  %98 = ptrtoint ptr %curr_stats2.sroa.15.0..sroa_idx.i52 to i32
  call void @__asan_load8_noabort(i32 %98)
  %curr_stats2.sroa.15.0.copyload.i53 = load i64, ptr %curr_stats2.sroa.15.0..sroa_idx.i52, align 8
  %curr_stats2.sroa.17.0..sroa_idx.i54 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 6
  %99 = ptrtoint ptr %curr_stats2.sroa.17.0..sroa_idx.i54 to i32
  call void @__asan_load8_noabort(i32 %99)
  %curr_stats2.sroa.17.0.copyload.i55 = load i64, ptr %curr_stats2.sroa.17.0..sroa_idx.i54, align 8
  %curr_stats2.sroa.19.0..sroa_idx.i56 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 7
  %100 = ptrtoint ptr %curr_stats2.sroa.19.0..sroa_idx.i56 to i32
  call void @__asan_load8_noabort(i32 %100)
  %curr_stats2.sroa.19.0.copyload.i57 = load i64, ptr %curr_stats2.sroa.19.0..sroa_idx.i56, align 8
  %curr_stats2.sroa.21.0..sroa_idx.i58 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 8
  %101 = ptrtoint ptr %curr_stats2.sroa.21.0..sroa_idx.i58 to i32
  call void @__asan_load8_noabort(i32 %101)
  %curr_stats2.sroa.21.0.copyload.i59 = load i64, ptr %curr_stats2.sroa.21.0..sroa_idx.i58, align 8
  %curr_stats2.sroa.23.0..sroa_idx.i60 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 9
  %102 = ptrtoint ptr %curr_stats2.sroa.23.0..sroa_idx.i60 to i32
  call void @__asan_load8_noabort(i32 %102)
  %curr_stats2.sroa.23.0.copyload.i61 = load i64, ptr %curr_stats2.sroa.23.0..sroa_idx.i60, align 8
  %aq_link_status.i62 = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 5
  %103 = ptrtoint ptr %aq_link_status.i62 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %aq_link_status.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i63 = icmp eq i32 %104, 0
  br i1 %tobool.not.i63, label %if.else.if.end17_crit_edge, label %land.lhs.true.i

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true.i:                                  ; preds = %if.else
  %105 = ptrtoint ptr %curr_stats2.sroa.9.0..sroa_idx.i47 to i32
  call void @__asan_load8_noabort(i32 %105)
  %curr_stats2.sroa.9.0.copyload.i64 = load i64, ptr %curr_stats2.sroa.9.0..sroa_idx.i47, align 8
  %rx_unicast_frames.i65 = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 4
  %106 = ptrtoint ptr %rx_unicast_frames.i65 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %rx_unicast_frames.i65, align 8
  %rx_unicast_frames4.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 4
  %108 = ptrtoint ptr %rx_unicast_frames4.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 8)
  %109 = load i64, ptr %rx_unicast_frames4.i, align 4
  %sub.i66 = sub i64 %107, %109
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i66)
  %cmp.i = icmp sgt i64 %sub.i66, -1
  %add.i67 = select i1 %cmp.i, i64 %sub.i66, i64 0
  %curr_stats2.sroa.9.0.i = add i64 %add.i67, %curr_stats2.sroa.9.0.copyload.i64
  br i1 %cmp.i, label %do.body27.i, label %land.lhs.true.i.if.end17_crit_edge

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body27.i:                                      ; preds = %land.lhs.true.i
  %rx_multicast_frames.i68 = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 5
  %110 = ptrtoint ptr %rx_multicast_frames.i68 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rx_multicast_frames.i68, align 8
  %rx_multicast_frames14.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 5
  %112 = ptrtoint ptr %rx_multicast_frames14.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %rx_multicast_frames14.i, align 4
  %sub15.i = sub i64 %111, %113
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub15.i)
  %cmp16.i = icmp sgt i64 %sub15.i, -1
  %add22.i = select i1 %cmp16.i, i64 %sub15.i, i64 0
  %spec.select.i69 = add i64 %add22.i, %curr_stats2.sroa.11.0.copyload.i49
  br i1 %cmp16.i, label %do.body44.i, label %do.body27.i.if.end17_crit_edge

do.body27.i.if.end17_crit_edge:                   ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body44.i:                                      ; preds = %do.body27.i
  %rx_broadcast_frames.i70 = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 6
  %114 = ptrtoint ptr %rx_broadcast_frames.i70 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %rx_broadcast_frames.i70, align 8
  %rx_broadcast_frames31.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 6
  %116 = ptrtoint ptr %rx_broadcast_frames31.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %117 = load i64, ptr %rx_broadcast_frames31.i, align 4
  %sub32.i = sub i64 %115, %117
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub32.i)
  %cmp33.i = icmp sgt i64 %sub32.i, -1
  %add39.i = select i1 %cmp33.i, i64 %sub32.i, i64 0
  %spec.select257.i = add i64 %add39.i, %curr_stats2.sroa.13.0.copyload.i51
  br i1 %cmp33.i, label %do.body61.i, label %do.body44.i.if.end17_crit_edge

do.body44.i.if.end17_crit_edge:                   ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body61.i:                                      ; preds = %do.body44.i
  %rx_errors.i = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 3
  %118 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %rx_errors.i, align 8
  %rx_errors48.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 3
  %120 = ptrtoint ptr %rx_errors48.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %121 = load i64, ptr %rx_errors48.i, align 4
  %sub49.i = sub i64 %119, %121
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub49.i)
  %cmp50.i = icmp sgt i64 %sub49.i, -1
  %add56.i = select i1 %cmp50.i, i64 %sub49.i, i64 0
  %spec.select259.i = add i64 %add56.i, %curr_stats2.sroa.23.0.copyload.i61
  br i1 %cmp50.i, label %do.body78.i, label %do.body61.i.if.end17_crit_edge

do.body61.i.if.end17_crit_edge:                   ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body78.i:                                      ; preds = %do.body61.i
  %122 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %stats, align 8
  %124 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %125 = load i64, ptr %7, align 4
  %sub66.i = sub i64 %123, %125
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub66.i)
  %cmp67.i = icmp sgt i64 %sub66.i, -1
  %add73.i = select i1 %cmp67.i, i64 %sub66.i, i64 0
  %spec.select261.i = add i64 %add73.i, %curr_stats2.sroa.0.0.copyload.i
  br i1 %cmp67.i, label %do.body95.i, label %do.body78.i.if.end17_crit_edge

do.body78.i.if.end17_crit_edge:                   ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body95.i:                                      ; preds = %do.body78.i
  %tx_unicast_frames.i71 = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 11
  %126 = ptrtoint ptr %tx_unicast_frames.i71 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %tx_unicast_frames.i71, align 8
  %tx_unicast_frames82.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 11
  %128 = ptrtoint ptr %tx_unicast_frames82.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 8)
  %129 = load i64, ptr %tx_unicast_frames82.i, align 4
  %sub83.i = sub i64 %127, %129
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub83.i)
  %cmp84.i = icmp sgt i64 %sub83.i, -1
  %add90.i = select i1 %cmp84.i, i64 %sub83.i, i64 0
  %spec.select263.i = add i64 %add90.i, %curr_stats2.sroa.17.0.copyload.i55
  br i1 %cmp84.i, label %do.body112.i, label %do.body95.i.if.end17_crit_edge

do.body95.i.if.end17_crit_edge:                   ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body112.i:                                     ; preds = %do.body95.i
  %tx_multicast_frames.i72 = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 12
  %130 = ptrtoint ptr %tx_multicast_frames.i72 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %tx_multicast_frames.i72, align 8
  %tx_multicast_frames99.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 12
  %132 = ptrtoint ptr %tx_multicast_frames99.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 8)
  %133 = load i64, ptr %tx_multicast_frames99.i, align 4
  %sub100.i = sub i64 %131, %133
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub100.i)
  %cmp101.i = icmp sgt i64 %sub100.i, -1
  %add107.i = select i1 %cmp101.i, i64 %sub100.i, i64 0
  %spec.select265.i = add i64 %add107.i, %curr_stats2.sroa.19.0.copyload.i57
  br i1 %cmp101.i, label %do.body129.i, label %do.body112.i.if.end17_crit_edge

do.body112.i.if.end17_crit_edge:                  ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body129.i:                                     ; preds = %do.body112.i
  %tx_broadcast_frames.i73 = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 13
  %134 = ptrtoint ptr %tx_broadcast_frames.i73 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %tx_broadcast_frames.i73, align 8
  %tx_broadcast_frames116.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 13
  %136 = ptrtoint ptr %tx_broadcast_frames116.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %tx_broadcast_frames116.i, align 4
  %sub117.i = sub i64 %135, %137
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub117.i)
  %cmp118.i = icmp sgt i64 %sub117.i, -1
  %add124.i = select i1 %cmp118.i, i64 %sub117.i, i64 0
  %spec.select267.i = add i64 %add124.i, %curr_stats2.sroa.21.0.copyload.i59
  br i1 %cmp118.i, label %do.body146.i, label %do.body129.i.if.end17_crit_edge

do.body129.i.if.end17_crit_edge:                  ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body146.i:                                     ; preds = %do.body129.i
  %tx_errors.i74 = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 10
  %138 = ptrtoint ptr %tx_errors.i74 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %tx_errors.i74, align 8
  %tx_errors133.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 10
  %140 = ptrtoint ptr %tx_errors133.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 8)
  %141 = load i64, ptr %tx_errors133.i, align 4
  %sub134.i = sub i64 %139, %141
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub134.i)
  %cmp135.i = icmp sgt i64 %sub134.i, -1
  %add141.i = select i1 %cmp135.i, i64 %sub134.i, i64 0
  %spec.select269.i = add i64 %add141.i, %curr_stats2.sroa.15.0.copyload.i53
  br i1 %cmp135.i, label %do.end162.i, label %do.body146.i.if.end17_crit_edge

do.body146.i.if.end17_crit_edge:                  ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.end162.i:                                      ; preds = %do.body146.i
  %tx_good_octets.i = getelementptr inbounds %struct.statistics_b0_s, ptr %stats, i32 0, i32 7
  %142 = ptrtoint ptr %tx_good_octets.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %tx_good_octets.i, align 8
  %tx_good_octets150.i = getelementptr inbounds %struct.statistics_b0_s, ptr %7, i32 0, i32 7
  %144 = ptrtoint ptr %tx_good_octets150.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 8)
  %145 = load i64, ptr %tx_good_octets150.i, align 4
  %sub151.i = sub i64 %143, %145
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub151.i)
  %cmp152.i = icmp sgt i64 %sub151.i, -1
  br i1 %cmp152.i, label %if.then164.i, label %do.end162.i.if.end17_crit_edge

do.end162.i.if.end17_crit_edge:                   ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then164.i:                                     ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select271.i = add i64 %sub151.i, %curr_stats2.sroa.7.0.copyload.i46
  %146 = ptrtoint ptr %curr_stats.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %spec.select261.i, ptr %curr_stats.i, align 8
  %147 = ptrtoint ptr %curr_stats2.sroa.7.0..sroa_idx.i45 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %spec.select271.i, ptr %curr_stats2.sroa.7.0..sroa_idx.i45, align 8
  %148 = ptrtoint ptr %curr_stats2.sroa.9.0..sroa_idx.i47 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %curr_stats2.sroa.9.0.i, ptr %curr_stats2.sroa.9.0..sroa_idx.i47, align 8
  %149 = ptrtoint ptr %curr_stats2.sroa.11.0..sroa_idx.i48 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %spec.select.i69, ptr %curr_stats2.sroa.11.0..sroa_idx.i48, align 8
  %150 = ptrtoint ptr %curr_stats2.sroa.13.0..sroa_idx.i50 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %spec.select257.i, ptr %curr_stats2.sroa.13.0..sroa_idx.i50, align 8
  %151 = ptrtoint ptr %curr_stats2.sroa.15.0..sroa_idx.i52 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %spec.select269.i, ptr %curr_stats2.sroa.15.0..sroa_idx.i52, align 8
  %152 = ptrtoint ptr %curr_stats2.sroa.17.0..sroa_idx.i54 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %spec.select263.i, ptr %curr_stats2.sroa.17.0..sroa_idx.i54, align 8
  %153 = ptrtoint ptr %curr_stats2.sroa.19.0..sroa_idx.i56 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %spec.select265.i, ptr %curr_stats2.sroa.19.0..sroa_idx.i56, align 8
  %154 = ptrtoint ptr %curr_stats2.sroa.21.0..sroa_idx.i58 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %spec.select267.i, ptr %curr_stats2.sroa.21.0..sroa_idx.i58, align 8
  %155 = ptrtoint ptr %curr_stats2.sroa.23.0..sroa_idx.i60 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %spec.select259.i, ptr %curr_stats2.sroa.23.0..sroa_idx.i60, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then164.i, %do.end162.i.if.end17_crit_edge, %do.body146.i.if.end17_crit_edge, %do.body129.i.if.end17_crit_edge, %do.body112.i.if.end17_crit_edge, %do.body95.i.if.end17_crit_edge, %do.body78.i.if.end17_crit_edge, %do.body61.i.if.end17_crit_edge, %do.body44.i.if.end17_crit_edge, %do.body27.i.if.end17_crit_edge, %land.lhs.true.i.if.end17_crit_edge, %if.else.if.end17_crit_edge, %if.then316.i, %do.end314.i.if.end17_crit_edge, %do.body293.i.if.end17_crit_edge, %do.body271.i.if.end17_crit_edge, %do.body249.i.if.end17_crit_edge, %do.body227.i.if.end17_crit_edge, %if.then7.i.if.end17_crit_edge, %if.then16.if.end17_crit_edge
  %call18 = call i64 @hw_atl_stats_rx_dma_good_pkt_counter_get(ptr noundef %self) #4
  %dma_pkt_rc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 17
  %156 = ptrtoint ptr %dma_pkt_rc to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %call18, ptr %dma_pkt_rc, align 8
  %call19 = call i64 @hw_atl_stats_tx_dma_good_pkt_counter_get(ptr noundef %self) #4
  %dma_pkt_tc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 18
  %157 = ptrtoint ptr %dma_pkt_tc to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %call19, ptr %dma_pkt_tc, align 8
  %call20 = call i64 @hw_atl_stats_rx_dma_good_octet_counter_get(ptr noundef %self) #4
  %dma_oct_rc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 19
  %158 = ptrtoint ptr %dma_oct_rc to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %call20, ptr %dma_oct_rc, align 8
  %call21 = call i64 @hw_atl_stats_tx_dma_good_octet_counter_get(ptr noundef %self) #4
  %dma_oct_tc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 20
  %159 = ptrtoint ptr %dma_oct_tc to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %call21, ptr %dma_oct_tc, align 8
  %call22 = call i32 @hw_atl_rpb_rx_dma_drop_pkt_cnt_get(ptr noundef %self) #4
  %conv = zext i32 %call22 to i64
  %dpc = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 8, i32 16
  %160 = ptrtoint ptr %dpc to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %conv, ptr %dpc, align 8
  %161 = call ptr @memcpy(ptr %1, ptr %stats, i32 116)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ %call12, %do.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %version) #4
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %stats) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_get_mac_temp(ptr noundef %self, ptr nocapture noundef writeonly %temp) #0 align 64 {
entry:
  %phy_health_monitor.i = alloca %struct.phy_health_monitor_s, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phy_health_monitor.i) #4
  %0 = getelementptr inbounds %struct.phy_health_monitor_s, ptr %phy_health_monitor.i, i32 0, i32 1
  %1 = ptrtoint ptr %phy_health_monitor.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %phy_health_monitor.i, align 8
  %call.i = call fastcc i32 @hw_atl2_shared_buffer_read_block(ptr noundef %self, i32 noundef 392, i32 noundef 2, ptr noundef nonnull %phy_health_monitor.i) #4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %0, align 1
  %conv.i = sext i8 %3 to i32
  %mul.i = mul nsw i32 %conv.i, 1000
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul.i, ptr %temp, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phy_health_monitor.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_get_phy_temp(ptr noundef %self, ptr nocapture noundef writeonly %temp) #0 align 64 {
entry:
  %phy_health_monitor = alloca %struct.phy_health_monitor_s, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phy_health_monitor) #4
  %0 = getelementptr inbounds %struct.phy_health_monitor_s, ptr %phy_health_monitor, i32 0, i32 1
  %1 = ptrtoint ptr %phy_health_monitor to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %phy_health_monitor, align 8
  %call = call fastcc i32 @hw_atl2_shared_buffer_read_block(ptr noundef %self, i32 noundef 392, i32 noundef 2, ptr noundef nonnull %phy_health_monitor)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %0, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %temp, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phy_health_monitor) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_get_flow_control(ptr noundef %self, ptr nocapture noundef writeonly %fcmode) #0 align 64 {
entry:
  %link_status = alloca %struct.link_status_s, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_status) #4
  %0 = ptrtoint ptr %link_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %link_status, align 2, !annotation !14
  %1 = getelementptr inbounds %struct.link_status_s, ptr %link_status, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !14
  call void @hw_atl2_mif_shared_buf_read(ptr noundef %self, i32 noundef 5, ptr noundef nonnull %link_status, i32 noundef 1) #4
  %3 = ptrtoint ptr %link_status to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %link_status, align 2
  %4 = lshr i16 %bf.load, 5
  %5 = and i16 %4, 2
  %6 = lshr i16 %bf.load, 7
  %.lobit = and i16 %6, 1
  %or14 = or i16 %5, %.lobit
  %or = zext i16 %or14 to i32
  %7 = ptrtoint ptr %fcmode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %fcmode, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_status) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_set_flow_control(ptr noundef %self) #0 align 64 {
entry:
  %link_options = alloca %struct.link_options_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_options) #4
  %0 = ptrtoint ptr %link_options to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_options, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  %aq_nic_cfg.i = getelementptr inbounds %struct.aq_hw_s, ptr %self, i32 0, i32 2
  %1 = ptrtoint ptr %aq_nic_cfg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aq_nic_cfg.i, align 8
  %fc.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fc.i, align 8
  %5 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %link_options, align 4
  %6 = shl i32 %4, 6
  %bf.shl.i = and i32 %6, 128
  %bf.clear.i = and i32 %bf.load.i, -193
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  %bf.shl11.i = and i32 %6, 64
  %bf.set13.i = or i32 %bf.set.i, %bf.shl11.i
  store i32 %bf.set13.i, ptr %link_options, align 4
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call.i = call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call253.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %cmp54.i = icmp eq i32 %call253.i, 0
  br i1 %cmp54.i, label %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 0
  br i1 %phi.cmp.i, label %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %do.end.i

if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 21474800) #4
  %call2.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %hw_atl2_shared_buffer_finish_ack.exit

hw_atl2_shared_buffer_finish_ack.exit:            ; preds = %do.end.i, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge
  %val.052.i = phi i32 [ -110, %do.end.i ], [ 0, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_options) #4
  ret i32 %val.052.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_set_phyloopback(ptr noundef %self, i32 noundef %mode, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %link_options = alloca %struct.link_options_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_options) #4
  %0 = ptrtoint ptr %link_options to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_options, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  %1 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %link_options, align 4
  %bf.shl = select i1 %enable, i32 268435456, i32 0
  %bf.clear = and i32 %bf.load, -268435457
  %bf.set = or i32 %bf.clear, %bf.shl
  br label %do.end18

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load7 = load i32, ptr %link_options, align 4
  %bf.shl9 = select i1 %enable, i32 134217728, i32 0
  %bf.clear10 = and i32 %bf.load7, -134217729
  %bf.set11 = or i32 %bf.clear10, %bf.shl9
  br label %do.end18

do.end18:                                         ; preds = %sw.bb4, %sw.bb
  %storemerge = phi i32 [ %bf.set, %sw.bb ], [ %bf.set11, %sw.bb4 ]
  %4 = ptrtoint ptr %link_options to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %link_options, align 4
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call.i = call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call253.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %cmp54.i = icmp eq i32 %call253.i, 0
  br i1 %cmp54.i, label %do.end18.cleanup_crit_edge, label %do.end18.land.lhs.true.i_crit_edge

do.end18.land.lhs.true.i_crit_edge:               ; preds = %do.end18
  br label %land.lhs.true.i

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %do.end18.land.lhs.true.i_crit_edge
  %call3.i = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 0
  br i1 %phi.cmp.i, label %if.then6.i.cleanup_crit_edge, label %do.end.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 21474800) #4
  %call2.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.cleanup_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %cond.false.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %do.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %do.end.i ], [ 0, %if.then6.i.cleanup_crit_edge ], [ 0, %do.end18.cleanup_crit_edge ], [ 0, %cond.false.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_options) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_set_eee_rate(ptr noundef %self, i32 noundef %speed) #0 align 64 {
entry:
  %link_options = alloca %struct.link_options_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_options) #4
  %0 = ptrtoint ptr %link_options to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_options, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  %1 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load.i = load i32, ptr %link_options, align 4
  %2 = shl i32 %speed, 2
  %bf.clear.i = and i32 %bf.load.i, -63489
  %bf.set39.i = and i32 %2, 63488
  %bf.set52.i = or i32 %bf.clear.i, %bf.set39.i
  store i32 %bf.set52.i, ptr %link_options, align 4
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call.i = call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call253.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %cmp54.i = icmp eq i32 %call253.i, 0
  br i1 %cmp54.i, label %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 0
  br i1 %phi.cmp.i, label %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %do.end.i

if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %3(i32 noundef 21474800) #4
  %call2.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %hw_atl2_shared_buffer_finish_ack.exit

hw_atl2_shared_buffer_finish_ack.exit:            ; preds = %do.end.i, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge
  %val.052.i = phi i32 [ -110, %do.end.i ], [ 0, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_options) #4
  ret i32 %val.052.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_get_eee_rate(ptr noundef %self, ptr nocapture noundef writeonly %rate, ptr nocapture noundef writeonly %supported_rates) #0 align 64 {
entry:
  %device_link_caps = alloca %struct.device_link_caps_s, align 4
  %lkp_link_caps = alloca %struct.lkp_link_caps_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device_link_caps) #4
  %0 = ptrtoint ptr %device_link_caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %device_link_caps, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lkp_link_caps) #4
  %1 = ptrtoint ptr %lkp_link_caps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lkp_link_caps, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_read(ptr noundef %self, i32 noundef 402, ptr noundef nonnull %device_link_caps, i32 noundef 1) #4
  call void @hw_atl2_mif_shared_buf_read(ptr noundef %self, i32 noundef 408, ptr noundef nonnull %lkp_link_caps, i32 noundef 1) #4
  %2 = ptrtoint ptr %device_link_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %device_link_caps, align 4
  %3 = shl i32 %bf.load.i, 1
  %4 = and i32 %3, 512
  %5 = and i32 %bf.load.i, 1024
  %6 = or i32 %4, %5
  %7 = lshr i32 %bf.load.i, 1
  %8 = and i32 %7, 2048
  %9 = or i32 %6, %8
  %10 = and i32 %7, 4096
  %11 = or i32 %9, %10
  %12 = and i32 %7, 8192
  %13 = or i32 %11, %12
  %14 = ptrtoint ptr %supported_rates to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %supported_rates, align 4
  %15 = ptrtoint ptr %lkp_link_caps to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i18 = load i32, ptr %lkp_link_caps, align 4
  %16 = lshr i32 %bf.load.i18, 16
  %.lobit.i = and i32 %16, 1
  %17 = lshr i32 %bf.load.i18, 17
  %18 = and i32 %17, 2
  %19 = lshr i32 %bf.load.i18, 18
  %20 = and i32 %19, 4
  %21 = and i32 %19, 8
  %22 = and i32 %19, 64
  %23 = and i32 %19, 16
  %24 = and i32 %19, 128
  %25 = and i32 %19, 32
  %26 = and i32 %19, 256
  %27 = shl i32 %bf.load.i18, 1
  %28 = and i32 %27, 512
  %29 = and i32 %bf.load.i18, 1024
  %30 = lshr i32 %bf.load.i18, 1
  %31 = and i32 %30, 2048
  %32 = and i32 %30, 4096
  %33 = and i32 %30, 8192
  %34 = or i32 %.lobit.i, %29
  %35 = or i32 %34, %18
  %36 = or i32 %35, %20
  %37 = or i32 %36, %21
  %38 = or i32 %37, %22
  %39 = or i32 %38, %23
  %40 = or i32 %39, %24
  %41 = or i32 %40, %25
  %42 = or i32 %41, %26
  %43 = or i32 %42, %28
  %44 = or i32 %43, %31
  %45 = or i32 %44, %32
  %46 = or i32 %45, %33
  %47 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rate, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lkp_link_caps) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device_link_caps) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_a2_fw_set_downshift(ptr noundef %self, i32 noundef %counter) #0 align 64 {
entry:
  %link_options = alloca %struct.link_options_s, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_options) #4
  %0 = ptrtoint ptr %link_options to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_options, align 4, !annotation !14
  call void @hw_atl2_mif_shared_buf_get(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %counter)
  %tobool.not = icmp eq i32 %counter, 0
  %1 = ptrtoint ptr %link_options to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %link_options, align 4
  %bf.shl = select i1 %tobool.not, i32 0, i32 16
  %bf.clear = and i32 %bf.load, -32
  %bf.value7 = and i32 %counter, 15
  %bf.set = or i32 %bf.shl, %bf.value7
  %bf.set9 = or i32 %bf.set, %bf.clear
  store i32 %bf.set9, ptr %link_options, align 4
  call void @hw_atl2_mif_shared_buf_write(ptr noundef %self, i32 noundef 6, ptr noundef nonnull %link_options, i32 noundef 1) #4
  call void @hw_atl2_mif_host_finished_write_set(ptr noundef %self, i32 noundef 1) #4
  %call.i = call i64 @ktime_get() #4
  %add.i.i = add i64 %call.i, 100000000
  %call253.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253.i)
  %cmp54.i = icmp eq i32 %call253.i, 0
  br i1 %cmp54.i, label %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call3.i = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %cond.false.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %call7.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %phi.cmp.i = icmp eq i32 %call7.i, 0
  br i1 %phi.cmp.i, label %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %do.end.i

if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %2(i32 noundef 21474800) #4
  %call2.i = call i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef %self) #4
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hw_atl2_shared_buffer_finish_ack.exit

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %hw_atl2_shared_buffer_finish_ack.exit

hw_atl2_shared_buffer_finish_ack.exit:            ; preds = %do.end.i, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge
  %val.052.i = phi i32 [ -110, %do.end.i ], [ 0, %if.then6.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %entry.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ], [ 0, %cond.false.i.hw_atl2_shared_buffer_finish_ack.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_options) #4
  ret i32 %val.052.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_mif_shared_buf_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_mif_shared_buf_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_mif_shared_buf_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_atl2_mif_host_finished_write_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl2_mif_mcp_finished_read_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hw_atl_stats_rx_dma_good_pkt_counter_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hw_atl_stats_tx_dma_good_pkt_counter_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hw_atl_stats_rx_dma_good_octet_counter_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hw_atl_stats_tx_dma_good_octet_counter_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_atl_rpb_rx_dma_drop_pkt_cnt_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @aq_a2_fw_ops, !1, !"aq_a2_fw_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils_fw.c", i32 598, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/hw_atl2/hw_atl2_utils_fw.c", i32 136, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"auto-init"}
