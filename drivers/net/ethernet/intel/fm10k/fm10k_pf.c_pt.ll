; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_pf.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_pf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fm10k_tlv_attr = type { i32, i32, i16 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_info = type { i32, ptr, ptr, ptr }
%struct.fm10k_msg_data = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.fm10k_vf_info = type { %struct.fm10k_mbx_info, [16 x %struct.fm10k_hw_stats_q], i32, i16, i16, i16, [6 x i8], i8, i8, i8 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_swapi_error = type { i32, %struct.fm10k_global_table_data, %struct.fm10k_global_table_data, %struct.fm10k_global_table_data }
%struct.fm10k_global_table_data = type { i32, i32 }
%struct.fm10k_hw_stats = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, [128 x %struct.fm10k_hw_stats_q] }
%struct.fm10k_dglort_cfg = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.fm10k_fault = type { i64, i32, i8, i8 }
%struct.fm10k_mac_update = type { i32, i16, i16, i16, i8, i8 }

@fm10k_lport_map_msg_attr = dso_local constant { [3 x %struct.fm10k_tlv_attr], [60 x i8] } { [3 x %struct.fm10k_tlv_attr] [%struct.fm10k_tlv_attr { i32 0, i32 5, i16 28 }, %struct.fm10k_tlv_attr { i32 1, i32 3, i16 4 }, %struct.fm10k_tlv_attr { i32 -1, i32 0, i16 0 }], [60 x i8] zeroinitializer }, align 32
@fm10k_update_pvid_msg_attr = dso_local constant { [2 x %struct.fm10k_tlv_attr], [40 x i8] } { [2 x %struct.fm10k_tlv_attr] [%struct.fm10k_tlv_attr { i32 13, i32 3, i16 4 }, %struct.fm10k_tlv_attr { i32 -1, i32 0, i16 0 }], [40 x i8] zeroinitializer }, align 32
@fm10k_err_msg_attr = dso_local constant { [2 x %struct.fm10k_tlv_attr], [40 x i8] } { [2 x %struct.fm10k_tlv_attr] [%struct.fm10k_tlv_attr { i32 0, i32 5, i16 28 }, %struct.fm10k_tlv_attr { i32 -1, i32 0, i16 0 }], [40 x i8] zeroinitializer }, align 32
@mac_ops_pf = internal constant { %struct.fm10k_mac_ops, [52 x i8] } { %struct.fm10k_mac_ops { ptr @fm10k_reset_hw_pf, ptr @fm10k_init_hw_pf, ptr @fm10k_start_hw_generic, ptr @fm10k_stop_hw_generic, ptr @fm10k_get_bus_info_generic, ptr @fm10k_get_host_state_pf, ptr @fm10k_request_lport_map_pf, ptr @fm10k_update_vlan_pf, ptr @fm10k_read_mac_addr_pf, ptr @fm10k_update_uc_addr_pf, ptr @fm10k_update_mc_addr_pf, ptr @fm10k_update_xcast_mode_pf, ptr @fm10k_update_int_moderator_pf, ptr @fm10k_update_lport_state_pf, ptr @fm10k_update_hw_stats_pf, ptr @fm10k_rebind_hw_stats_pf, ptr @fm10k_configure_dglort_map_pf, ptr @fm10k_set_dma_mask_pf, ptr @fm10k_get_fault_pf }, [52 x i8] zeroinitializer }, align 32
@iov_ops_pf = internal constant { %struct.fm10k_iov_ops, [32 x i8] } { %struct.fm10k_iov_ops { ptr @fm10k_iov_assign_resources_pf, ptr @fm10k_iov_configure_tc_pf, ptr @fm10k_iov_assign_int_moderator_pf, ptr @fm10k_iov_assign_default_mac_vlan_pf, ptr @fm10k_iov_reset_resources_pf, ptr @fm10k_iov_set_lport_pf, ptr @fm10k_iov_reset_lport_pf, ptr @fm10k_iov_update_stats_pf }, [32 x i8] zeroinitializer }, align 32
@fm10k_pf_info = dso_local constant { %struct.fm10k_info, [16 x i8] } { %struct.fm10k_info { i32 1, ptr @fm10k_get_invariants_pf, ptr @mac_ops_pf, ptr @iov_ops_pf }, [16 x i8] zeroinitializer }, align 32
@fm10k_msg_data_pf = internal constant { [7 x %struct.fm10k_msg_data], [44 x i8] } { [7 x %struct.fm10k_msg_data] [%struct.fm10k_msg_data { i32 1, ptr @fm10k_err_msg_attr, ptr @fm10k_msg_err_pf }, %struct.fm10k_msg_data { i32 2, ptr @fm10k_err_msg_attr, ptr @fm10k_msg_err_pf }, %struct.fm10k_msg_data { i32 256, ptr @fm10k_lport_map_msg_attr, ptr @fm10k_msg_lport_map_pf }, %struct.fm10k_msg_data { i32 512, ptr @fm10k_err_msg_attr, ptr @fm10k_msg_err_pf }, %struct.fm10k_msg_data { i32 513, ptr @fm10k_err_msg_attr, ptr @fm10k_msg_err_pf }, %struct.fm10k_msg_data { i32 1024, ptr @fm10k_update_pvid_msg_attr, ptr @fm10k_msg_update_pvid_pf }, %struct.fm10k_msg_data { i32 -1, ptr null, ptr @fm10k_tlv_msg_error }], [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 2500, i64 5000, i64 8000]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 28]
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"fm10k_lport_map_msg_attr\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1627, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"fm10k_update_pvid_msg_attr\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1673, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"fm10k_err_msg_attr\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1732, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"mac_ops_pf\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1780, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"iov_ops_pf\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1802, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"fm10k_pf_info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1820, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"fm10k_msg_data_pf\00", align 1
@___asan_gen_.23 = private constant [47 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_pf.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 1770, i32 36 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @fm10k_lport_map_msg_attr, ptr @fm10k_update_pvid_msg_attr, ptr @fm10k_err_msg_attr, ptr @mac_ops_pf, ptr @iov_ops_pf, ptr @fm10k_pf_info, ptr @fm10k_msg_data_pf], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_lport_map_msg_attr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_update_pvid_msg_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_err_msg_attr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_pf to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iov_ops_pf to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_pf_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_msg_data_pf to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @fm10k_glort_valid_pf(ptr nocapture noundef readonly %hw, i16 noundef zeroext %glort) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dglort_map = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %dglort_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dglort_map, align 8
  %shr = lshr i32 %1, 16
  %2 = trunc i32 %shr to i16
  %conv1 = and i16 %2, %glort
  %3 = trunc i32 %1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1, i16 %3)
  %cmp = icmp eq i16 %conv1, %3
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fm10k_queues_per_pool(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pools1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %num_pools1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pools1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %1)
  %cmp = icmp ugt i16 %1, 32
  br i1 %cmp, label %entry.cond.end12_crit_edge, label %cond.false

entry.cond.end12_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end12

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %1)
  %cmp4 = icmp ugt i16 %1, 16
  br i1 %cmp4, label %cond.false.cond.end12_crit_edge, label %cond.false7

cond.false.cond.end12_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end12

cond.false7:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp9 = icmp ugt i16 %1, 8
  %phi.cast = select i1 %cmp9, i16 8, i16 16
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false7, %cond.false.cond.end12_crit_edge, %entry.cond.end12_crit_edge
  %cond13 = phi i16 [ 2, %entry.cond.end12_crit_edge ], [ %phi.cast, %cond.false7 ], [ 4, %cond.false.cond.end12_crit_edge ]
  ret i16 %cond13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fm10k_vf_queue_index(ptr nocapture noundef readonly %hw, i16 noundef zeroext %vf_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vfs1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %num_vfs1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vfs1, align 2
  %num_pools1.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %num_pools1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pools1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %cmp.i = icmp ugt i16 %3, 32
  br i1 %cmp.i, label %entry.fm10k_queues_per_pool.exit_crit_edge, label %cond.false.i

entry.fm10k_queues_per_pool.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_queues_per_pool.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp4.i = icmp ugt i16 %3, 16
  br i1 %cmp4.i, label %cond.false.i.fm10k_queues_per_pool.exit_crit_edge, label %cond.false7.i

cond.false.i.fm10k_queues_per_pool.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_queues_per_pool.exit

cond.false7.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp9.i = icmp ugt i16 %3, 8
  %phi.cast.i = select i1 %cmp9.i, i16 8, i16 16
  br label %fm10k_queues_per_pool.exit

fm10k_queues_per_pool.exit:                       ; preds = %cond.false7.i, %cond.false.i.fm10k_queues_per_pool.exit_crit_edge, %entry.fm10k_queues_per_pool.exit_crit_edge
  %cond13.i = phi i16 [ 2, %entry.fm10k_queues_per_pool.exit_crit_edge ], [ %phi.cast.i, %cond.false7.i ], [ 4, %cond.false.i.fm10k_queues_per_pool.exit_crit_edge ]
  %sub.neg = sub i16 %vf_idx, %1
  %mul.neg = mul i16 %cond13.i, %sub.neg
  %sub5 = add i16 %mul.neg, 256
  ret i16 %sub5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_iov_msg_msix_pf(ptr noundef %hw, ptr nocapture noundef readnone %results, ptr nocapture noundef readonly %mbx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_idx1 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 8
  %0 = ptrtoint ptr %vf_idx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vf_idx1, align 1
  %assign_int_moderator = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %2 = ptrtoint ptr %assign_int_moderator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %assign_int_moderator, align 8
  %conv = zext i8 %1 to i16
  %call = tail call i32 %3(ptr noundef %hw, i16 noundef zeroext %conv) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_iov_select_vid(ptr nocapture noundef readonly %vf_info, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %tobool.not = icmp eq i16 %vid, 0
  %pf_vid = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 5
  %0 = ptrtoint ptr %pf_vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pf_vid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sw_vid = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 4
  %2 = ptrtoint ptr %sw_vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sw_vid, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond.in = phi i16 [ %3, %cond.false ], [ %1, %if.then.cond.end_crit_edge ]
  %cond = zext i16 %cond.in to i32
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %vid)
  %cmp.not = icmp eq i16 %1, %vid
  %or.cond = or i1 %tobool1.not, %cmp.not
  %conv14 = zext i16 %vid to i32
  %spec.select = select i1 %or.cond, i32 %conv14, i32 -2
  br label %return

return:                                           ; preds = %if.else, %cond.end
  %retval.0 = phi i32 [ %cond, %cond.end ], [ %spec.select, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_iov_msg_mac_vlan_pf(ptr noundef %hw, ptr nocapture noundef readonly %results, ptr nocapture noundef readonly %mbx) local_unnamed_addr #2 align 64 {
entry:
  %mac = alloca [6 x i8], align 4
  %vlan = alloca i16, align 2
  %vid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #6
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %1 = call ptr @memset(ptr %mac, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan) #6
  %2 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %vlan, align 2, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vid) #6
  %3 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %vid, align 4, !annotation !23
  %vf_flags = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 9
  %4 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vf_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %5)
  %tobool.not = icmp ult i8 %5, 16
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %results, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.land.lhs.true27_crit_edge, label %if.then3

land.lhs.true.land.lhs.true27_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true27

if.then3:                                         ; preds = %land.lhs.true
  %call = call i32 @fm10k_tlv_attr_get_value(ptr noundef nonnull %7, ptr noundef nonnull %vid, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %8 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vid, align 4
  %and = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %and9 = and i32 %9, -32769
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and9, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool11.not = icmp ult i32 %9, 65536
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  %pf_vid = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 5
  %11 = ptrtoint ptr %pf_vid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pf_vid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool13.not = icmp eq i16 %12, 0
  br i1 %tobool13.not, label %if.then12.if.end25_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else:                                          ; preds = %if.end7
  %conv16 = trunc i32 %and9 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16)
  %tobool.not.i = icmp eq i16 %conv16, 0
  %pf_vid.i = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 5
  %13 = ptrtoint ptr %pf_vid.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pf_vid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  br i1 %tobool1.not.i, label %cond.false.i, label %if.then.i.cond.end.i_crit_edge

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sw_vid.i = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 4
  %15 = ptrtoint ptr %sw_vid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sw_vid.i, align 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge
  %cond.in.i = phi i16 [ %16, %cond.false.i ], [ %14, %if.then.i.cond.end.i_crit_edge ]
  %cond.i = zext i16 %cond.in.i to i32
  br label %if.end20

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %conv16)
  %cmp.not.i = icmp eq i16 %14, %conv16
  %or.cond.i = or i1 %tobool1.not.i, %cmp.not.i
  %conv14.i = and i32 %9, 32767
  br i1 %or.cond.i, label %if.else.i.if.end20_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i.if.end20_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end20:                                         ; preds = %if.else.i.if.end20_crit_edge, %cond.end.i
  %retval.0.i.ph = phi i32 [ %cond.i, %cond.end.i ], [ %conv14.i, %if.else.i.if.end20_crit_edge ]
  %17 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i.ph, ptr %vid, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end20, %if.then12.if.end25_crit_edge
  %update_vlan = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 0, i32 7
  %18 = ptrtoint ptr %update_vlan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update_vlan, align 4
  %20 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vid, align 4
  %vsi = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 7
  %22 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vsi, align 8
  %call24 = call i32 %19(ptr noundef %hw, i32 noundef %21, i8 noundef zeroext %23, i1 noundef zeroext %tobool8.not) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end25.land.lhs.true27_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25.land.lhs.true27_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25.land.lhs.true27_crit_edge, %land.lhs.true.land.lhs.true27_crit_edge
  %arrayidx28 = getelementptr ptr, ptr %results, i32 2
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %land.lhs.true27.land.lhs.true68_crit_edge, label %if.then30

land.lhs.true27.land.lhs.true68_crit_edge:        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true68

if.then30:                                        ; preds = %land.lhs.true27
  %call32 = call i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef nonnull %25, ptr noundef nonnull %mac, ptr noundef nonnull %vlan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.then30
  %mac36 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 6
  %26 = ptrtoint ptr %mac36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac36, align 4
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

is_valid_ether_addr.exit:                         ; preds = %if.end35
  %add.ptr.i.i = getelementptr %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 6, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %30 to i32
  %or.i.i = or i32 %27, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end46_crit_edge, label %land.lhs.true40

is_valid_ether_addr.exit.if.end46_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true40:                                  ; preds = %is_valid_ether_addr.exit
  %31 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %32, %27
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %0, align 4
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i = xor i16 %36, %34
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true40.if.end46_crit_edge, label %land.lhs.true40.cleanup_crit_edge

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true40.if.end46_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true40.if.end46_crit_edge, %is_valid_ether_addr.exit.if.end46_crit_edge, %if.end35.if.end46_crit_edge
  %37 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vlan, align 2
  %and53 = and i16 %38, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and53)
  %tobool.not.i155 = icmp eq i16 %and53, 0
  %pf_vid.i156 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 5
  %39 = ptrtoint ptr %pf_vid.i156 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pf_vid.i156, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool1.not.i157 = icmp eq i16 %40, 0
  br i1 %tobool.not.i155, label %if.then.i158, label %if.else.i168

if.then.i158:                                     ; preds = %if.end46
  br i1 %tobool1.not.i157, label %cond.false.i160, label %if.then.i158.if.end66_crit_edge

if.then.i158.if.end66_crit_edge:                  ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

cond.false.i160:                                  ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #8
  %sw_vid.i159 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 4
  %41 = ptrtoint ptr %sw_vid.i159 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sw_vid.i159, align 2
  br label %if.end66

if.else.i168:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %and53)
  %cmp.not.i164 = icmp eq i16 %40, %and53
  %or.cond.i165 = or i1 %tobool1.not.i157, %cmp.not.i164
  br i1 %or.cond.i165, label %if.else.i168.if.end66_crit_edge, label %if.else.i168.cleanup_crit_edge

if.else.i168.cleanup_crit_edge:                   ; preds = %if.else.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i168.if.end66_crit_edge:                  ; preds = %if.else.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end66:                                         ; preds = %if.else.i168.if.end66_crit_edge, %cond.false.i160, %if.then.i158.if.end66_crit_edge
  %retval.0.i169.ph.in = phi i16 [ %and53, %if.else.i168.if.end66_crit_edge ], [ %42, %cond.false.i160 ], [ %40, %if.then.i158.if.end66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %38)
  %tobool49.not = icmp sgt i16 %38, -1
  %43 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %retval.0.i169.ph.in, ptr %vlan, align 2
  %update_uc_addr = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 0, i32 9
  %44 = ptrtoint ptr %update_uc_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %update_uc_addr, align 4
  %glort = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 3
  %46 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %glort, align 4
  %call65 = call i32 %45(ptr noundef %hw, i16 noundef zeroext %47, ptr noundef nonnull %mac, i16 noundef zeroext %retval.0.i169.ph.in, i1 noundef zeroext %tobool49.not, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool67.not = icmp eq i32 %call65, 0
  br i1 %tobool67.not, label %if.end66.land.lhs.true68_crit_edge, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66.land.lhs.true68_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end66.land.lhs.true68_crit_edge, %land.lhs.true27.land.lhs.true68_crit_edge
  %arrayidx69 = getelementptr ptr, ptr %results, i32 4
  %48 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx69, align 4
  %tobool70.not = icmp eq ptr %49, null
  br i1 %tobool70.not, label %land.lhs.true68.cleanup_crit_edge, label %if.then71

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then71:                                        ; preds = %land.lhs.true68
  %call74 = call i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef nonnull %49, ptr noundef nonnull %mac, ptr noundef nonnull %vlan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end77:                                         ; preds = %if.then71
  %50 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %vf_flags, align 2
  %52 = and i8 %51, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool81.not = icmp eq i8 %52, 0
  br i1 %tobool81.not, label %if.end77.cleanup_crit_edge, label %if.end83

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %53 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vlan, align 2
  %and90 = and i16 %54, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and90)
  %tobool.not.i171 = icmp eq i16 %and90, 0
  %pf_vid.i172 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 5
  %55 = ptrtoint ptr %pf_vid.i172 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pf_vid.i172, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool1.not.i173 = icmp eq i16 %56, 0
  br i1 %tobool.not.i171, label %if.then.i174, label %if.else.i184

if.then.i174:                                     ; preds = %if.end83
  br i1 %tobool1.not.i173, label %cond.false.i176, label %if.then.i174.if.end96_crit_edge

if.then.i174.if.end96_crit_edge:                  ; preds = %if.then.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

cond.false.i176:                                  ; preds = %if.then.i174
  call void @__sanitizer_cov_trace_pc() #8
  %sw_vid.i175 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 4
  %57 = ptrtoint ptr %sw_vid.i175 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sw_vid.i175, align 2
  br label %if.end96

if.else.i184:                                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %and90)
  %cmp.not.i180 = icmp eq i16 %56, %and90
  %or.cond.i181 = or i1 %tobool1.not.i173, %cmp.not.i180
  br i1 %or.cond.i181, label %if.else.i184.if.end96_crit_edge, label %if.else.i184.cleanup_crit_edge

if.else.i184.cleanup_crit_edge:                   ; preds = %if.else.i184
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i184.if.end96_crit_edge:                  ; preds = %if.else.i184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.end96:                                         ; preds = %if.else.i184.if.end96_crit_edge, %cond.false.i176, %if.then.i174.if.end96_crit_edge
  %retval.0.i185.ph.in = phi i16 [ %and90, %if.else.i184.if.end96_crit_edge ], [ %58, %cond.false.i176 ], [ %56, %if.then.i174.if.end96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %54)
  %tobool86.not = icmp sgt i16 %54, -1
  %59 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %retval.0.i185.ph.in, ptr %vlan, align 2
  %update_mc_addr = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 0, i32 10
  %60 = ptrtoint ptr %update_mc_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %update_mc_addr, align 8
  %glort100 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 3
  %62 = ptrtoint ptr %glort100 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %glort100, align 4
  %call103 = call i32 %61(ptr noundef %hw, i16 noundef zeroext %63, ptr noundef nonnull %mac, i16 noundef zeroext %retval.0.i185.ph.in, i1 noundef zeroext %tobool86.not) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.else.i184.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %land.lhs.true68.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.else.i168.cleanup_crit_edge, %land.lhs.true40.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3.cleanup_crit_edge ], [ -2, %if.then12.cleanup_crit_edge ], [ %call32, %if.then30.cleanup_crit_edge ], [ -2, %land.lhs.true40.cleanup_crit_edge ], [ %call74, %if.then71.cleanup_crit_edge ], [ -2, %if.end77.cleanup_crit_edge ], [ %call65, %if.end66.cleanup_crit_edge ], [ %call103, %if.end96 ], [ 0, %land.lhs.true68.cleanup_crit_edge ], [ -2, %if.else.i.cleanup_crit_edge ], [ -2, %if.else.i168.cleanup_crit_edge ], [ -2, %if.else.i184.cleanup_crit_edge ], [ %call24, %if.end25.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vid) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_get_value(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_iov_msg_lport_state_pf(ptr noundef %hw, ptr nocapture noundef readonly %results, ptr noundef %mbx) local_unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca [3 x i32], align 4
  %msg = alloca [2 x i32], align 4
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !23
  %1 = getelementptr inbounds [2 x i32], ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #6
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %mode, align 1
  %vf_flags = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 9
  %4 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vf_flags, align 2
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %results, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call i32 @fm10k_tlv_attr_get_value(ptr noundef nonnull %8, ptr noundef nonnull %mode, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.cleanup75_crit_edge

if.then2.cleanup75_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

if.end6:                                          ; preds = %if.then2
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode, align 1
  %11 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vf_flags, align 2
  %13 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.end6.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 0, label %if.end6.sw.bb3.i_crit_edge
    i8 1, label %if.end6.sw.bb9.i_crit_edge
    i8 3, label %if.end6.sw.bb15.i_crit_edge
  ]

if.end6.sw.bb15.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15.i

if.end6.sw.bb9.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9.i

if.end6.sw.bb3.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end6.sw.epilog.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end6
  %14 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.bb3.i_crit_edge, label %sw.bb.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge

sw.bb.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_iov_supported_xcast_mode_pf.exit

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb.i.sw.bb3.i_crit_edge, %if.end6.sw.bb3.i_crit_edge
  %15 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.i = icmp eq i8 %15, 0
  br i1 %tobool6.not.i, label %sw.bb3.i.sw.bb9.i_crit_edge, label %sw.bb3.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge

sw.bb3.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_iov_supported_xcast_mode_pf.exit

sw.bb3.i.sw.bb9.i_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9.i

sw.bb9.i:                                         ; preds = %sw.bb3.i.sw.bb9.i_crit_edge, %if.end6.sw.bb9.i_crit_edge
  %16 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %sw.bb9.i.sw.bb15.i_crit_edge, label %sw.bb9.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge

sw.bb9.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_iov_supported_xcast_mode_pf.exit

sw.bb9.i.sw.bb15.i_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15.i

sw.bb15.i:                                        ; preds = %sw.bb9.i.sw.bb15.i_crit_edge, %if.end6.sw.bb15.i_crit_edge
  %17 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not.i = icmp eq i8 %17, 0
  br i1 %tobool18.not.i, label %sw.bb15.i.sw.epilog.i_crit_edge, label %sw.bb15.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge

sw.bb15.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge: ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_iov_supported_xcast_mode_pf.exit

sw.bb15.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb15.i.sw.epilog.i_crit_edge, %if.end6.sw.epilog.i_crit_edge
  br label %fm10k_iov_supported_xcast_mode_pf.exit

fm10k_iov_supported_xcast_mode_pf.exit:           ; preds = %sw.epilog.i, %sw.bb15.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge, %sw.bb9.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge, %sw.bb3.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge, %sw.bb.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge
  %cmp.i = phi i1 [ false, %sw.bb.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge ], [ false, %sw.bb3.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge ], [ false, %sw.bb9.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge ], [ false, %sw.bb15.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge ], [ true, %sw.epilog.i ]
  %retval.0.i = phi i8 [ 2, %sw.bb.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge ], [ 0, %sw.bb3.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge ], [ 1, %sw.bb9.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge ], [ 3, %sw.bb15.i.fm10k_iov_supported_xcast_mode_pf.exit_crit_edge ], [ 4, %sw.epilog.i ]
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %retval.0.i, ptr %mode, align 1
  %19 = lshr i8 %12, 4
  %20 = zext i8 %19 to i32
  %conv10 = zext i8 %retval.0.i to i32
  %shl = shl nuw nsw i32 1, %conv10
  %and11 = and i32 %shl, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %fm10k_iov_supported_xcast_mode_pf.exit.if.end15_crit_edge

fm10k_iov_supported_xcast_mode_pf.exit.if.end15_crit_edge: ; preds = %fm10k_iov_supported_xcast_mode_pf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %fm10k_iov_supported_xcast_mode_pf.exit
  %glort = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 3
  %21 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %glort, align 4
  %mbx1.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %msg.i, align 4, !annotation !23
  %24 = getelementptr inbounds [3 x i32], ptr %msg.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4, !annotation !23
  %26 = getelementptr inbounds [3 x i32], ptr %msg.i, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4, !annotation !23
  br i1 %cmp.i, label %if.then13.fm10k_update_xcast_mode_pf.exit_crit_edge, label %if.end.i

if.then13.fm10k_update_xcast_mode_pf.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_update_xcast_mode_pf.exit

if.end.i:                                         ; preds = %if.then13
  %dglort_map.i.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %dglort_map.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dglort_map.i.i, align 8
  %shr.i.i = lshr i32 %29, 16
  %30 = trunc i32 %shr.i.i to i16
  %conv1.i.i = and i16 %22, %30
  %31 = trunc i32 %29 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i.i, i16 %31)
  %cmp.i.i = icmp eq i16 %conv1.i.i, %31
  br i1 %cmp.i.i, label %if.end4.i, label %if.end.i.fm10k_update_xcast_mode_pf.exit_crit_edge

if.end.i.fm10k_update_xcast_mode_pf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_update_xcast_mode_pf.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 %conv10, 16
  %conv6.i = zext i16 %22 to i32
  %or.i = or i32 %shl.i, %conv6.i
  %call7.i = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg.i, i16 noundef zeroext 1) #6
  %conv9.i = zext i32 %or.i to i64
  %call10.i = call i32 @fm10k_tlv_attr_put_value(ptr noundef nonnull %msg.i, i16 noundef zeroext 2, i64 noundef %conv9.i, i32 noundef 4) #6
  %enqueue_tx.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %32 = ptrtoint ptr %enqueue_tx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enqueue_tx.i, align 4
  %call12.i = call i32 %33(ptr noundef %hw, ptr noundef %mbx1.i, ptr noundef nonnull %msg.i) #6
  br label %fm10k_update_xcast_mode_pf.exit

fm10k_update_xcast_mode_pf.exit:                  ; preds = %if.end4.i, %if.end.i.fm10k_update_xcast_mode_pf.exit_crit_edge, %if.then13.fm10k_update_xcast_mode_pf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %if.end15

if.end15:                                         ; preds = %fm10k_update_xcast_mode_pf.exit, %fm10k_iov_supported_xcast_mode_pf.exit.if.end15_crit_edge
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mode, align 1
  %conv16 = zext i8 %35 to i32
  %shl17 = shl i32 16, %conv16
  %conv18 = trunc i32 %shl17 to i8
  store i8 %conv18, ptr %mode, align 1
  br label %land.lhs.true

if.else:                                          ; preds = %if.end
  %36 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %results, align 4
  %tobool20.not = icmp eq ptr %37, null
  br i1 %tobool20.not, label %if.then21, label %if.else.land.lhs.true_crit_edge

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %5)
  %tobool25.not = icmp ult i8 %5, 16
  br i1 %tobool25.not, label %if.then21.if.then31_crit_edge, label %if.end29

if.then21.if.then31_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

if.end29:                                         ; preds = %if.then21
  %glort27 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 3
  %38 = ptrtoint ptr %glort27 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %glort27, align 4
  %call28 = tail call i32 @fm10k_update_lport_state_pf(ptr noundef %hw, i16 noundef zeroext %39, i16 noundef zeroext 1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool30.not = icmp eq i32 %call28, 0
  br i1 %tobool30.not, label %if.end29.if.then31_crit_edge, label %if.end29.if.end47_crit_edge

if.end29.if.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %if.then21.if.then31_crit_edge
  %40 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vf_flags, align 2
  %42 = and i8 %41, 15
  store i8 %42, ptr %vf_flags, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then31, %if.end29.if.end47_crit_edge
  %err.0109 = phi i32 [ 0, %if.then31 ], [ %call28, %if.end29.if.end47_crit_edge ]
  %configure_tc = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %configure_tc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %configure_tc, align 4
  %vf_idx = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 8
  %45 = ptrtoint ptr %vf_idx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vf_idx, align 1
  %conv38 = zext i8 %46 to i16
  %rate = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 2
  %47 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rate, align 8
  %call39 = tail call i32 %44(ptr noundef %hw, i16 noundef zeroext %conv38, i32 noundef %48) #6
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -128, ptr %mode, align 1
  %call40 = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 3) #6
  %call42 = call i32 @fm10k_tlv_attr_put_bool(ptr noundef nonnull %msg, i16 noundef zeroext 2) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 5
  %50 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %enqueue_tx, align 4
  %call45 = call i32 %51(ptr noundef %hw, ptr noundef %mbx, ptr noundef nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0109)
  %tobool48.not = icmp eq i32 %err.0109, 0
  br i1 %tobool48.not, label %if.end47.land.lhs.true_crit_edge, label %if.end47.cleanup75_crit_edge

if.end47.cleanup75_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

if.end47.land.lhs.true_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end47.land.lhs.true_crit_edge, %if.else.land.lhs.true_crit_edge, %if.end15
  %52 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %vf_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %53)
  %tobool52.not = icmp ult i8 %53, 16
  %54 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool53 = icmp ne i8 %55, 0
  %cmp.not = xor i1 %tobool52.not, %tobool53
  br i1 %cmp.not, label %if.end65.thread, label %if.end65

if.end65.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %vf_flags, align 2
  %58 = and i8 %57, 15
  %59 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mode, align 1
  %or105114 = or i8 %60, %58
  br label %if.then72

if.end65:                                         ; preds = %land.lhs.true
  %glort58 = getelementptr inbounds %struct.fm10k_vf_info, ptr %mbx, i32 0, i32 3
  %61 = ptrtoint ptr %glort58 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %glort58, align 4
  %call64 = call i32 @fm10k_update_lport_state_pf(ptr noundef %hw, i16 noundef zeroext %62, i16 noundef zeroext 1, i1 noundef zeroext %tobool53)
  %63 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %vf_flags, align 2
  %65 = and i8 %64, 15
  %66 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mode, align 1
  %or105 = or i8 %67, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool71.not = icmp eq i32 %call64, 0
  br i1 %tobool71.not, label %if.end65.if.then72_crit_edge, label %if.end65.cleanup75_crit_edge

if.end65.cleanup75_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

if.end65.if.then72_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then72

if.then72:                                        ; preds = %if.end65.if.then72_crit_edge, %if.end65.thread
  %or105117 = phi i8 [ %or105114, %if.end65.thread ], [ %or105, %if.end65.if.then72_crit_edge ]
  %68 = ptrtoint ptr %vf_flags to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %or105117, ptr %vf_flags, align 2
  br label %cleanup75

cleanup75:                                        ; preds = %if.then72, %if.end65.cleanup75_crit_edge, %if.end47.cleanup75_crit_edge, %if.then2.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.1 = phi i32 [ -2, %entry.cleanup75_crit_edge ], [ 0, %if.then72 ], [ %call64, %if.end65.cleanup75_crit_edge ], [ -2, %if.then2.cleanup75_crit_edge ], [ %err.0109, %if.end47.cleanup75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_xcast_mode_pf(ptr noundef %hw, i16 noundef zeroext %glort, i8 noundef zeroext %mode) #2 align 64 {
entry:
  %msg = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !23
  %1 = getelementptr inbounds [3 x i32], ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !23
  %3 = getelementptr inbounds [3 x i32], ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !23
  %conv = zext i8 %mode to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %mode)
  %cmp = icmp ugt i8 %mode, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dglort_map.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %5 = ptrtoint ptr %dglort_map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dglort_map.i, align 8
  %shr.i = lshr i32 %6, 16
  %7 = trunc i32 %shr.i to i16
  %conv1.i = and i16 %7, %glort
  %8 = trunc i32 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i, i16 %8)
  %cmp.i = icmp eq i16 %conv1.i, %8
  br i1 %cmp.i, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %conv, 16
  %conv6 = zext i16 %glort to i32
  %or = or i32 %shl, %conv6
  %call7 = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 1) #6
  %conv9 = zext i32 %or to i64
  %call10 = call i32 @fm10k_tlv_attr_put_value(ptr noundef nonnull %msg, i16 noundef zeroext 2, i64 noundef %conv9, i32 noundef 4) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %9 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enqueue_tx, align 4
  %call12 = call i32 %10(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end4 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_lport_state_pf(ptr noundef %hw, i16 noundef zeroext %glort, i16 noundef zeroext %count, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %msg.i = alloca [3 x i32], align 4
  %msg = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !23
  %1 = getelementptr inbounds [3 x i32], ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !23
  %3 = getelementptr inbounds [3 x i32], ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count)
  %tobool.not = icmp eq i16 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dglort_map.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %5 = ptrtoint ptr %dglort_map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dglort_map.i, align 8
  %shr.i = lshr i32 %6, 16
  %7 = trunc i32 %shr.i to i16
  %conv1.i = and i16 %7, %glort
  %8 = trunc i32 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i, i16 %8)
  %cmp.i = icmp eq i16 %conv1.i, %8
  br i1 %cmp.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  br i1 %enable, label %if.end3.if.end7_crit_edge, label %fm10k_update_xcast_mode_pf.exit

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i16 %glort to i32
  br label %if.end7

fm10k_update_xcast_mode_pf.exit:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %msg.i, align 4, !annotation !23
  %10 = getelementptr inbounds [3 x i32], ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !23
  %12 = getelementptr inbounds [3 x i32], ptr %msg.i, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !23
  %conv6.i = zext i16 %glort to i32
  %or.i = or i32 %conv6.i, 196608
  %call7.i = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg.i, i16 noundef zeroext 1) #6
  %conv9.i = zext i32 %or.i to i64
  %call10.i = call i32 @fm10k_tlv_attr_put_value(ptr noundef nonnull %msg.i, i16 noundef zeroext 2, i64 noundef %conv9.i, i32 noundef 4) #6
  %enqueue_tx.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %14 = ptrtoint ptr %enqueue_tx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enqueue_tx.i, align 4
  %call12.i = call i32 %15(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %if.end7

if.end7:                                          ; preds = %fm10k_update_xcast_mode_pf.exit, %if.end3.if.end7_crit_edge
  %conv8.pre-phi = phi i32 [ %.pre, %if.end3.if.end7_crit_edge ], [ %conv6.i, %fm10k_update_xcast_mode_pf.exit ]
  %cond = phi i16 [ 512, %if.end3.if.end7_crit_edge ], [ 513, %fm10k_update_xcast_mode_pf.exit ]
  %conv = zext i16 %count to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, %conv8.pre-phi
  %call12 = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext %cond) #6
  %conv14 = zext i32 %or to i64
  %call15 = call i32 @fm10k_tlv_attr_put_value(ptr noundef nonnull %msg, i16 noundef zeroext 12, i64 noundef %conv14, i32 noundef 4) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %16 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enqueue_tx, align 4
  %call17 = call i32 %17(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_put_bool(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_msg_lport_map_pf(ptr nocapture noundef writeonly %hw, ptr nocapture noundef readonly %results, ptr nocapture readnone %mbx) #2 align 64 {
entry:
  %dglort_map = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dglort_map) #6
  %0 = ptrtoint ptr %dglort_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dglort_map, align 4, !annotation !23
  %arrayidx = getelementptr ptr, ptr %results, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @fm10k_tlv_attr_get_value(ptr noundef %2, ptr noundef nonnull %dglort_map, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dglort_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dglort_map, align 4
  %shr3 = lshr i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %4)
  %tobool8.not = icmp ult i32 %4, 65536
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %conv9 = and i32 %4, 65535
  %neg = xor i32 %shr3, -1
  %and11 = and i32 %conv9, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %neg16 = sub nsw i32 0, %shr3
  %and18 = and i32 %shr3, %neg16
  %add = add nuw nsw i32 %and18, %shr3
  %and20 = and i32 %add, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dglort_map24 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %5 = ptrtoint ptr %dglort_map24 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dglort_map24, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dglort_map) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_msg_err_pf(ptr nocapture noundef writeonly %hw, ptr nocapture noundef readonly %results, ptr nocapture readnone %mbx) #2 align 64 {
entry:
  %err_msg = alloca %struct.fm10k_swapi_error, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %err_msg) #6
  %0 = call ptr @memset(ptr %err_msg, i32 255, i32 28)
  %1 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %results, align 4
  %call = call i32 @fm10k_tlv_attr_get_le_struct(ptr noundef %2, ptr noundef nonnull %err_msg, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.fm10k_swapi_error, ptr %err_msg, i32 0, i32 3, i32 1
  %4 = getelementptr inbounds %struct.fm10k_swapi_error, ptr %err_msg, i32 0, i32 3
  %5 = getelementptr inbounds %struct.fm10k_swapi_error, ptr %err_msg, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.fm10k_swapi_error, ptr %err_msg, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fm10k_swapi_error, ptr %err_msg, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.fm10k_swapi_error, ptr %err_msg, i32 0, i32 1
  %swapi = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 7
  %mac1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = ptrtoint ptr %mac1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mac1, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %7, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #6
  %avail2.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 7, i32 1, i32 1
  %16 = ptrtoint ptr %avail2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %avail2.i, align 4
  %nexthop3 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %6, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #6
  %20 = ptrtoint ptr %nexthop3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nexthop3, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #6
  %avail2.i14 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 7, i32 2, i32 1
  %24 = ptrtoint ptr %avail2.i14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %avail2.i14, align 4
  %ffu5 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = ptrtoint ptr %ffu5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ffu5, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #6
  %avail2.i16 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 7, i32 3, i32 1
  %32 = ptrtoint ptr %avail2.i16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %avail2.i16, align 4
  %33 = ptrtoint ptr %err_msg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %err_msg, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %swapi to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %swapi, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %err_msg) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_get_le_struct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_get_invariants_pf(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_get_invariants_generic(ptr noundef %hw) #6
  %mbx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  %call1 = tail call i32 @fm10k_sm_mbx_init(ptr noundef %hw, ptr noundef %mbx, ptr noundef nonnull @fm10k_msg_data_pf) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_put_value(ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_get_invariants_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_sm_mbx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_msg_update_pvid_pf(ptr nocapture noundef %hw, ptr nocapture noundef readonly %results, ptr nocapture noundef readnone %mbx) #2 align 64 {
entry:
  %pvid_update = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pvid_update) #6
  %0 = ptrtoint ptr %pvid_update to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pvid_update, align 4, !annotation !23
  %arrayidx = getelementptr ptr, ptr %results, i32 13
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @fm10k_tlv_attr_get_value(ptr noundef %2, ptr noundef nonnull %pvid_update, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pvid_update to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pvid_update, align 4
  %dglort_map.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %5 = ptrtoint ptr %dglort_map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dglort_map.i, align 8
  %shr.i = lshr i32 %6, 16
  %conv1.i21 = and i32 %shr.i, %4
  %conv1.i = trunc i32 %conv1.i21 to i16
  %7 = trunc i32 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i, i16 %7)
  %cmp.i = icmp ne i16 %conv1.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %4)
  %cmp = icmp ugt i32 %4, 268435455
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %shr3 = lshr i32 %4, 16
  %conv7 = trunc i32 %shr3 to i16
  %default_vid = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %default_vid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv7, ptr %default_vid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pvid_update) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_error(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_reset_hw_pf(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !24

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr i32, ptr %1, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 1431655765) #6, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 8
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %if.end.if.end32_crit_edge, label %do.body28, !prof !24

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %arrayidx31 = getelementptr i32, ptr %3, i32 75776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx31, i32 0) #6, !srcloc !26
  br label %if.end32

if.end32:                                         ; preds = %do.body28, %if.end.if.end32_crit_edge
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 8
  %tobool42.not = icmp eq ptr %5, null
  br i1 %tobool42.not, label %if.end32.do.body60.preheader_crit_edge, label %do.body52, !prof !24

if.end32.do.body60.preheader_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body60.preheader

do.body52:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %arrayidx55 = getelementptr i32, ptr %5, i32 73728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx55, i32 0) #6, !srcloc !26
  br label %do.body60.preheader

do.body60.preheader:                              ; preds = %do.body52, %if.end32.do.body60.preheader_crit_edge
  br label %do.body60

do.body60:                                        ; preds = %if.end108.do.body60_crit_edge, %do.body60.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end108.do.body60_crit_edge ], [ 0, %do.body60.preheader ]
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 8
  %tobool67.not = icmp eq ptr %7, null
  br i1 %tobool67.not, label %do.body60.if.end82_crit_edge, label %do.body77, !prof !24

do.body60.if.end82_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

do.body77:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %add = add nuw nsw i32 %indvars.iv, 10240
  %arrayidx81 = getelementptr i32, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx81, i32 0) #6, !srcloc !26
  br label %if.end82

if.end82:                                         ; preds = %do.body77, %do.body60.if.end82_crit_edge
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 8
  %tobool92.not = icmp eq ptr %9, null
  br i1 %tobool92.not, label %if.end82.if.end108_crit_edge, label %do.body102, !prof !24

if.end82.if.end108_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

do.body102:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %add106 = add nuw nsw i32 %indvars.iv, 12288
  %arrayidx107 = getelementptr i32, ptr %9, i32 %add106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx107, i32 0) #6, !srcloc !26
  br label %if.end108

if.end108:                                        ; preds = %do.body102, %if.end82.if.end108_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 2048
  br i1 %exitcond.not, label %for.end, label %if.end108.do.body60_crit_edge

if.end108.do.body60_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body60

for.end:                                          ; preds = %if.end108
  %call = tail call i32 @fm10k_disable_queues_generic(ptr noundef %hw, i16 noundef zeroext 256) #6
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call, label %for.end.cleanup_crit_edge [
    i32 -4, label %if.then113
    i32 0, label %if.end118
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then113:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %reset_while_pending = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 12
  %11 = ptrtoint ptr %reset_while_pending to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %reset_while_pending, align 8
  %inc114 = add i64 %12, 1
  store i64 %inc114, ptr %reset_while_pending, align 8
  br label %force_reset

if.end118:                                        ; preds = %for.end
  %call119 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 8387) #6
  %and = and i32 %call119, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool120.not = icmp eq i32 %and, 0
  br i1 %tobool120.not, label %if.end118.force_reset_crit_edge, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end118.force_reset_crit_edge:                  ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %force_reset

force_reset:                                      ; preds = %if.end118.force_reset_crit_edge, %if.then113
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw, align 8
  %tobool130.not = icmp eq ptr %14, null
  br i1 %tobool130.not, label %force_reset.if.end144_crit_edge, label %do.body140, !prof !24

force_reset.if.end144_crit_edge:                  ; preds = %force_reset
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

do.body140:                                       ; preds = %force_reset
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %arrayidx143 = getelementptr i32, ptr %14, i32 8387
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx143, i32 32) #6, !srcloc !26
  br label %if.end144

if.end144:                                        ; preds = %do.body140, %force_reset.if.end144_crit_edge
  %call147 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 32212200) #6
  %call148 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 77824) #6
  %and149 = and i32 %call148, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  %. = select i1 %tobool150.not, i32 -7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end144, %if.end118.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.end.cleanup_crit_edge ], [ -6, %if.end118.cleanup_crit_edge ], [ %., %if.end144 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_init_hw_pf(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !24

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr i32, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #6, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 8
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %if.end.if.end32_crit_edge, label %do.body28, !prof !24

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %arrayidx31 = getelementptr i32, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx31, i32 0) #6, !srcloc !26
  br label %if.end32

if.end32:                                         ; preds = %do.body28, %if.end.if.end32_crit_edge
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hw, align 8
  %tobool43.not = icmp eq ptr %5, null
  br i1 %tobool43.not, label %if.end32.if.end58_crit_edge, label %do.body53, !prof !24

if.end32.if.end58_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

do.body53:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %arrayidx57 = getelementptr i32, ptr %5, i32 49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57, i32 -65536) #6, !srcloc !26
  br label %if.end58

if.end58:                                         ; preds = %do.body53, %if.end32.if.end58_crit_edge
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 8
  %tobool43.not.1 = icmp eq ptr %7, null
  br i1 %tobool43.not.1, label %if.end58.if.end58.1_crit_edge, label %do.body53.1, !prof !24

if.end58.if.end58.1_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.1

do.body53.1:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %arrayidx57.1 = getelementptr i32, ptr %7, i32 50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57.1, i32 -65536) #6, !srcloc !26
  br label %if.end58.1

if.end58.1:                                       ; preds = %do.body53.1, %if.end58.if.end58.1_crit_edge
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 8
  %tobool43.not.2 = icmp eq ptr %9, null
  br i1 %tobool43.not.2, label %if.end58.1.if.end58.2_crit_edge, label %do.body53.2, !prof !24

if.end58.1.if.end58.2_crit_edge:                  ; preds = %if.end58.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.2

do.body53.2:                                      ; preds = %if.end58.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %arrayidx57.2 = getelementptr i32, ptr %9, i32 51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57.2, i32 -65536) #6, !srcloc !26
  br label %if.end58.2

if.end58.2:                                       ; preds = %do.body53.2, %if.end58.1.if.end58.2_crit_edge
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 8
  %tobool43.not.3 = icmp eq ptr %11, null
  br i1 %tobool43.not.3, label %if.end58.2.if.end58.3_crit_edge, label %do.body53.3, !prof !24

if.end58.2.if.end58.3_crit_edge:                  ; preds = %if.end58.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.3

do.body53.3:                                      ; preds = %if.end58.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %arrayidx57.3 = getelementptr i32, ptr %11, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57.3, i32 -65536) #6, !srcloc !26
  br label %if.end58.3

if.end58.3:                                       ; preds = %do.body53.3, %if.end58.2.if.end58.3_crit_edge
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw, align 8
  %tobool43.not.4 = icmp eq ptr %13, null
  br i1 %tobool43.not.4, label %if.end58.3.if.end58.4_crit_edge, label %do.body53.4, !prof !24

if.end58.3.if.end58.4_crit_edge:                  ; preds = %if.end58.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.4

do.body53.4:                                      ; preds = %if.end58.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %arrayidx57.4 = getelementptr i32, ptr %13, i32 53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57.4, i32 -65536) #6, !srcloc !26
  br label %if.end58.4

if.end58.4:                                       ; preds = %do.body53.4, %if.end58.3.if.end58.4_crit_edge
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 8
  %tobool43.not.5 = icmp eq ptr %15, null
  br i1 %tobool43.not.5, label %if.end58.4.if.end58.5_crit_edge, label %do.body53.5, !prof !24

if.end58.4.if.end58.5_crit_edge:                  ; preds = %if.end58.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.5

do.body53.5:                                      ; preds = %if.end58.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %arrayidx57.5 = getelementptr i32, ptr %15, i32 54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57.5, i32 -65536) #6, !srcloc !26
  br label %if.end58.5

if.end58.5:                                       ; preds = %do.body53.5, %if.end58.4.if.end58.5_crit_edge
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 8
  %tobool43.not.6 = icmp eq ptr %17, null
  br i1 %tobool43.not.6, label %if.end58.5.if.end58.6_crit_edge, label %do.body53.6, !prof !24

if.end58.5.if.end58.6_crit_edge:                  ; preds = %if.end58.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.6

do.body53.6:                                      ; preds = %if.end58.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %arrayidx57.6 = getelementptr i32, ptr %17, i32 55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57.6, i32 -65536) #6, !srcloc !26
  br label %if.end58.6

if.end58.6:                                       ; preds = %do.body53.6, %if.end58.5.if.end58.6_crit_edge
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 8
  %tobool68.not = icmp eq ptr %19, null
  br i1 %tobool68.not, label %if.end58.6.if.end82_crit_edge, label %do.body78, !prof !24

if.end58.6.if.end82_crit_edge:                    ; preds = %if.end58.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

do.body78:                                        ; preds = %if.end58.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %arrayidx81 = getelementptr i32, ptr %19, i32 75776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx81, i32 0) #6, !srcloc !26
  br label %if.end82

if.end82:                                         ; preds = %do.body78, %if.end58.6.if.end82_crit_edge
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 8
  %tobool92.not = icmp eq ptr %21, null
  br i1 %tobool92.not, label %if.end82.do.body114.preheader_crit_edge, label %do.body102, !prof !24

if.end82.do.body114.preheader_crit_edge:          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body114.preheader

do.body102:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %arrayidx105 = getelementptr i32, ptr %21, i32 76288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx105, i32 0) #6, !srcloc !26
  br label %do.body114.preheader

do.body114.preheader:                             ; preds = %do.body102, %if.end82.do.body114.preheader_crit_edge
  br label %do.body114

do.body114:                                       ; preds = %if.end138.do.body114_crit_edge, %do.body114.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end138.do.body114_crit_edge ], [ 1, %do.body114.preheader ]
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw, align 8
  %tobool121.not = icmp eq ptr %23, null
  br i1 %tobool121.not, label %do.body114.if.end138_crit_edge, label %do.body131, !prof !24

do.body114.if.end138_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

do.body131:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %sub = add nsw i32 %indvars.iv, -1
  %24 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %mul = shl nuw nsw i32 %indvars.iv, 1
  %add136 = add nuw nsw i32 %mul, 75776
  %arrayidx137 = getelementptr i32, ptr %23, i32 %add136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx137, i32 %24) #6, !srcloc !26
  br label %if.end138

if.end138:                                        ; preds = %do.body131, %do.body114.if.end138_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 256
  br i1 %exitcond.not, label %do.body144, label %if.end138.do.body114_crit_edge

if.end138.do.body114_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body114

do.body144:                                       ; preds = %if.end138
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw, align 8
  %tobool151.not = icmp eq ptr %26, null
  br i1 %tobool151.not, label %do.body144.if.end165_crit_edge, label %do.body161, !prof !24

do.body144.if.end165_crit_edge:                   ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

do.body161:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %arrayidx164 = getelementptr i32, ptr %26, i32 73728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx164, i32 262144) #6, !srcloc !26
  br label %if.end165

if.end165:                                        ; preds = %do.body161, %do.body144.if.end165_crit_edge
  %default_vid = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %default_vid, align 4
  %conv168 = zext i16 %28 to i32
  %shl = shl nuw i32 %conv168, 16
  %or = or i32 %shl, 268435519
  %29 = tail call i32 @llvm.bswap.i32(i32 %or)
  br label %do.body174

do.body174:                                       ; preds = %if.end282.do.body174_crit_edge, %if.end165
  %indvars.iv430 = phi i32 [ 0, %if.end165 ], [ %indvars.iv.next431, %if.end282.do.body174_crit_edge ]
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw, align 8
  %tobool181.not = icmp eq ptr %31, null
  br i1 %tobool181.not, label %do.body174.if.end201_crit_edge, label %do.body191, !prof !24

do.body174.if.end201_crit_edge:                   ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201

do.body191:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %mul195 = shl nuw nsw i32 %indvars.iv430, 3
  %or196 = or i32 %mul195, 327680
  %32 = tail call i32 @llvm.bswap.i32(i32 %or196)
  %mul198 = shl nuw nsw i32 %indvars.iv430, 6
  %add199 = add nuw nsw i32 %mul198, 32780
  %arrayidx200 = getelementptr i32, ptr %31, i32 %add199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx200, i32 %32) #6, !srcloc !26
  br label %if.end201

if.end201:                                        ; preds = %do.body191, %do.body174.if.end201_crit_edge
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw, align 8
  %tobool211.not = icmp eq ptr %34, null
  br i1 %tobool211.not, label %if.end201.if.end228_crit_edge, label %do.body221, !prof !24

if.end201.if.end228_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end228

do.body221:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %mul225 = shl nuw nsw i32 %indvars.iv430, 6
  %add226 = add nuw nsw i32 %mul225, 32775
  %arrayidx227 = getelementptr i32, ptr %34, i32 %add226
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx227, i32 %29) #6, !srcloc !26
  br label %if.end228

if.end228:                                        ; preds = %do.body221, %if.end201.if.end228_crit_edge
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw, align 8
  %tobool238.not = icmp eq ptr %36, null
  br i1 %tobool238.not, label %if.end228.if.end255_crit_edge, label %do.body248, !prof !24

if.end228.if.end255_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end255

do.body248:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %mul252 = shl nuw nsw i32 %indvars.iv430, 6
  %add253 = add nuw nsw i32 %mul252, 32771
  %arrayidx254 = getelementptr i32, ptr %36, i32 %add253
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx254, i32 539623424) #6, !srcloc !26
  br label %if.end255

if.end255:                                        ; preds = %do.body248, %if.end228.if.end255_crit_edge
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %hw, align 8
  %tobool265.not = icmp eq ptr %38, null
  br i1 %tobool265.not, label %if.end255.if.end282_crit_edge, label %do.body275, !prof !24

if.end255.if.end282_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end282

do.body275:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %mul279 = shl nuw nsw i32 %indvars.iv430, 6
  %add280 = add nuw nsw i32 %mul279, 16387
  %arrayidx281 = getelementptr i32, ptr %38, i32 %add280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx281, i32 547487744) #6, !srcloc !26
  br label %if.end282

if.end282:                                        ; preds = %do.body275, %if.end255.if.end282_crit_edge
  %indvars.iv.next431 = add nuw nsw i32 %indvars.iv430, 1
  %exitcond432.not = icmp eq i32 %indvars.iv.next431, 256
  br i1 %exitcond432.not, label %for.end287, label %if.end282.do.body174_crit_edge

if.end282.do.body174_crit_edge:                   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body174

for.end287:                                       ; preds = %if.end282
  %bus = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 3
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bus, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %40, label %sw.default [
    i32 2500, label %for.end287.do.body297_crit_edge
    i32 5000, label %sw.bb289
    i32 8000, label %sw.bb292
  ]

for.end287.do.body297_crit_edge:                  ; preds = %for.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body297

sw.bb289:                                         ; preds = %for.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body297

sw.bb292:                                         ; preds = %for.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body297

sw.default:                                       ; preds = %for.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body297

do.body297:                                       ; preds = %sw.default, %sw.bb292, %sw.bb289, %for.end287.do.body297_crit_edge
  %.sink = phi i8 [ 1, %sw.bb289 ], [ 0, %sw.bb292 ], [ 0, %sw.default ], [ 2, %for.end287.do.body297_crit_edge ]
  %dma_ctrl.0 = phi i32 [ 67141905, %sw.bb289 ], [ 75530513, %sw.bb292 ], [ 33041, %sw.default ], [ 58753297, %for.end287.do.body297_crit_edge ]
  %itr_scale = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 11
  %42 = ptrtoint ptr %itr_scale to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.sink, ptr %itr_scale, align 4
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hw, align 8
  %tobool304.not = icmp eq ptr %44, null
  br i1 %tobool304.not, label %do.body297.if.end318_crit_edge, label %do.body314, !prof !24

do.body297.if.end318_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end318

do.body314:                                       ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %arrayidx317 = getelementptr i32, ptr %44, i32 8389
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx317, i32 -166776832) #6, !srcloc !26
  br label %if.end318

if.end318:                                        ; preds = %do.body314, %do.body297.if.end318_crit_edge
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %hw, align 8
  %tobool328.not = icmp eq ptr %46, null
  br i1 %tobool328.not, label %if.end318.if.end342_crit_edge, label %do.body338, !prof !24

if.end318.if.end342_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end342

do.body338:                                       ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %arrayidx341 = getelementptr i32, ptr %46, i32 8390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx341, i32 956301312) #6, !srcloc !26
  br label %if.end342

if.end342:                                        ; preds = %do.body338, %if.end318.if.end342_crit_edge
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %hw, align 8
  %tobool353.not = icmp eq ptr %48, null
  br i1 %tobool353.not, label %if.end342.if.end367_crit_edge, label %do.body363, !prof !24

if.end342.if.end367_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end367

do.body363:                                       ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %dma_ctrl.0)
  %arrayidx366 = getelementptr i32, ptr %48, i32 8387
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx366, i32 %49) #6, !srcloc !26
  br label %if.end367

if.end367:                                        ; preds = %do.body363, %if.end342.if.end367_crit_edge
  %max_queues = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %50 = ptrtoint ptr %max_queues to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 128, ptr %max_queues, align 8
  %call.i = tail call zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef %hw, i32 noundef 400) #6
  %51 = and i16 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.i.not = icmp eq i16 %51, 0
  %conv372 = select i1 %tobool.i.not, i16 7, i16 64
  %total_vfs = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %total_vfs to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv372, ptr %total_vfs, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_start_hw_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_stop_hw_generic(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_get_bus_info_generic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_get_host_state_pf(ptr noundef %hw, ptr noundef %switch_ready) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 8388) #6
  %and = and i32 %call, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @fm10k_get_host_state_generic(ptr noundef %hw, ptr noundef %switch_ready) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_request_lport_map_pf(ptr noundef %hw) #2 align 64 {
entry:
  %msg = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !23
  %call = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 256) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %1 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enqueue_tx, align 4
  %call3 = call i32 %2(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_vlan_pf(ptr noundef %hw, i32 noundef %vid, i8 noundef zeroext %vsi, i1 noundef zeroext %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %vsi to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %vsi)
  %cmp = icmp ugt i8 %vsi, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = and i32 %vid, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %vid)
  %cmp3 = icmp ugt i32 %vid, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %shl)
  %cmp5 = icmp ugt i32 %shl, 4095
  %or.cond = or i1 %cmp3, %cmp5
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %shr = lshr i32 %vid, 16
  %rem = and i32 %vid, 31
  %div62 = lshr i32 %shl, 5
  %add = or i32 %div62, 81920
  %mul = shl nuw nsw i32 %conv, 7
  %add10 = add nuw nsw i32 %add, %mul
  %neg = sext i1 %set to i32
  %call.peel = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add10) #6
  %0 = tail call i32 @llvm.usub.sat.i32(i32 31, i32 %shr)
  %shr15.peel = lshr i32 -1, %0
  %shl16.peel = shl i32 %shr15.peel, %rem
  %cond21.peel = xor i32 %call.peel, %neg
  %and.peel = and i32 %cond21.peel, %shl16.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.peel)
  %tobool22.not.peel = icmp eq i32 %and.peel, 0
  br i1 %tobool22.not.peel, label %for.body.lr.ph.for.inc.peel_crit_edge, label %do.body.peel

for.body.lr.ph.for.inc.peel_crit_edge:            ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.peel

do.body.peel:                                     ; preds = %for.body.lr.ph
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %hw, align 8
  %tobool26.not.peel = icmp eq ptr %2, null
  br i1 %tobool26.not.peel, label %do.body.peel.for.inc.peel_crit_edge, label %do.body31.peel, !prof !24

do.body.peel.for.inc.peel_crit_edge:              ; preds = %do.body.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.peel

do.body31.peel:                                   ; preds = %do.body.peel
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %xor.peel = xor i32 %and.peel, %call.peel
  %3 = tail call i32 @llvm.bswap.i32(i32 %xor.peel)
  %arrayidx.peel = getelementptr i32, ptr %2, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.peel, i32 %3) #6, !srcloc !26
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %do.body31.peel, %do.body.peel.for.inc.peel_crit_edge, %for.body.lr.ph.for.inc.peel_crit_edge
  %sub38.neg.peel = or i32 %vid, -32
  %sub39.peel = add nsw i32 %sub38.neg.peel, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub39.peel)
  %cmp11.peel = icmp ult i32 %sub39.peel, 4096
  br i1 %cmp11.peel, label %for.inc.peel.for.body_crit_edge, label %for.inc.peel.cleanup_crit_edge

for.inc.peel.cleanup_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.peel.for.body_crit_edge:                  ; preds = %for.inc.peel
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.inc.peel.for.body_crit_edge
  %len.067 = phi i32 [ %sub39, %for.inc.for.body_crit_edge ], [ %sub39.peel, %for.inc.peel.for.body_crit_edge ]
  %reg.064.in = phi i32 [ %reg.064, %for.inc.for.body_crit_edge ], [ %add10, %for.inc.peel.for.body_crit_edge ]
  %reg.064 = add i32 %reg.064.in, 1
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %reg.064) #6
  %4 = tail call i32 @llvm.usub.sat.i32(i32 31, i32 %len.067)
  %shr15 = lshr i32 -1, %4
  %cond21 = xor i32 %call, %neg
  %and = and i32 %cond21, %shr15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %for.body
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 8
  %tobool26.not = icmp eq ptr %6, null
  br i1 %tobool26.not, label %do.body.for.inc_crit_edge, label %do.body31, !prof !24

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %xor = xor i32 %and, %call
  %7 = tail call i32 @llvm.bswap.i32(i32 %xor)
  %arrayidx = getelementptr i32, ptr %6, i32 %reg.064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #6, !srcloc !26
  br label %for.inc

for.inc:                                          ; preds = %do.body31, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %sub39 = add nsw i32 %len.067, -32
  %cmp11 = icmp ult i32 %sub39, 4096
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge, !llvm.loop !47

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.inc.peel.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %for.inc.peel.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_read_mac_addr_pf(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 41) #6
  %neg = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %neg)
  %tobool.not = icmp eq i32 %neg, 255
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %call7)
  %tobool10.not = icmp ugt i32 %call7, -16777217
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %shr13 = lshr i32 %call7, 16
  %0 = trunc i32 %call7 to i16
  %perm_addr21 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3
  %perm_addr.sroa.0.sroa.10.0.insert.ext = and i32 %shr13, 255
  %perm_addr.sroa.0.sroa.6.0.insert.insert = and i32 %call, -256
  %perm_addr.sroa.0.sroa.0.0.insert.insert = or i32 %perm_addr.sroa.0.sroa.6.0.insert.insert, %perm_addr.sroa.0.sroa.10.0.insert.ext
  %1 = ptrtoint ptr %perm_addr21 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %perm_addr.sroa.0.sroa.0.0.insert.insert, ptr %perm_addr21, align 4
  %add.ptr1.i = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 4
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %0, ptr %add.ptr1.i, align 2
  %addr = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %perm_addr.sroa.0.sroa.0.0.insert.insert, ptr %addr, align 4
  %add.ptr1.i38 = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %4 = ptrtoint ptr %add.ptr1.i38 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %0, ptr %add.ptr1.i38, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -8, %entry.cleanup_crit_edge ], [ -8, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_uc_addr_pf(ptr noundef %hw, i16 noundef zeroext %glort, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid, i1 noundef zeroext %add, i8 noundef zeroext %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.return_crit_edge, label %if.end

is_valid_ether_addr.exit.return_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @fm10k_update_xc_addr_pf(ptr noundef %hw, i16 noundef zeroext %glort, ptr noundef %mac, i16 noundef zeroext %vid, i1 noundef zeroext %add, i8 noundef zeroext %flags)
  br label %return

return:                                           ; preds = %if.end, %is_valid_ether_addr.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %is_valid_ether_addr.exit.return_crit_edge ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_mc_addr_pf(ptr noundef %hw, i16 noundef zeroext %glort, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid, i1 noundef zeroext %add) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @fm10k_update_xc_addr_pf(ptr noundef %hw, i16 noundef zeroext %glort, ptr noundef %mac, i16 noundef zeroext %vid, i1 noundef zeroext %add, i8 noundef zeroext 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_update_int_moderator_pf(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %do.body6, !prof !24

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr i32, ptr %1, i32 73728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #6, !srcloc !26
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body6, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0103 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 255, %for.body.preheader ]
  %mul = shl i32 %i.0103, 2
  %add = add nuw nsw i32 %mul, 69635
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %for.body.do.body15_crit_edge, label %for.inc

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0103, -1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %for.inc.do.body15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.body15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

do.body15:                                        ; preds = %for.inc.do.body15_crit_edge, %for.body.do.body15_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.inc.do.body15_crit_edge ], [ %i.0103, %for.body.do.body15_crit_edge ]
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw, align 8
  %tobool22.not = icmp eq ptr %3, null
  br i1 %tobool22.not, label %do.body15.if.end36_crit_edge, label %do.body32, !prof !24

do.body15.if.end36_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.body32:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.0.lcssa)
  %arrayidx35 = getelementptr i32, ptr %3, i32 76288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx35, i32 %4) #6, !srcloc !26
  br label %if.end36

if.end36:                                         ; preds = %do.body32, %do.body15.if.end36_crit_edge
  %num_vfs = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool39.not = icmp eq i16 %6, 0
  br i1 %tobool39.not, label %do.body41, label %if.end36.do.body66_crit_edge

if.end36.do.body66_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

do.body41:                                        ; preds = %if.end36
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 8
  %tobool48.not = icmp eq ptr %8, null
  br i1 %tobool48.not, label %do.body41.do.body66_crit_edge, label %do.body58, !prof !24

do.body41.do.body66_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body66

do.body58:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %i.0.lcssa)
  %arrayidx61 = getelementptr i32, ptr %8, i32 75776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx61, i32 %9) #6, !srcloc !26
  br label %do.body66

do.body66:                                        ; preds = %do.body58, %do.body41.do.body66_crit_edge, %if.end36.do.body66_crit_edge
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 8
  %tobool73.not = icmp eq ptr %11, null
  br i1 %tobool73.not, label %do.body66.if.end87_crit_edge, label %do.body83, !prof !24

do.body66.if.end87_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

do.body83:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %arrayidx86 = getelementptr i32, ptr %11, i32 73728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx86, i32 262144) #6, !srcloc !26
  br label %if.end87

if.end87:                                         ; preds = %do.body83, %do.body66.if.end87_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_update_hw_stats_pf(ptr noundef %hw, ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32775) #6
  %ur3 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 1
  %ca5 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 2
  %um7 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 3
  %xec9 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 4
  %vlan_drop11 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 5
  %loopback_drop13 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 6
  %nodesc_drop15 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %id.0 = phi i32 [ %call, %entry ], [ %call17, %do.body.do.body_crit_edge ]
  %call2 = tail call i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef 14336, ptr noundef %stats) #6
  %call4 = tail call i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef 14337, ptr noundef %ur3) #6
  %call6 = tail call i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef 14338, ptr noundef %ca5) #6
  %call8 = tail call i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef 14339, ptr noundef %um7) #6
  %call10 = tail call i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef 14340, ptr noundef %xec9) #6
  %call12 = tail call i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef 14341, ptr noundef %vlan_drop11) #6
  %call14 = tail call i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef 14342, ptr noundef %loopback_drop13) #6
  %call16 = tail call i32 @fm10k_read_hw_stats_32b(ptr noundef %hw, i32 noundef 14343, ptr noundef %nodesc_drop15) #6
  %call17 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32775) #6
  %xor = xor i32 %call17, %id.0
  %and = and i32 %xor, 127
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  %and18 = and i32 %call17, 127
  %or = or i32 %and18, -2147483648
  %base_h = getelementptr inbounds %struct.fm10k_hw_stat, ptr %stats, i32 0, i32 2
  %0 = ptrtoint ptr %base_h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %or)
  %cmp = icmp eq i32 %1, %or
  br i1 %cmp, label %if.then, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %call2 to i64
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stats, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %stats, align 8
  %conv21 = zext i32 %call4 to i64
  %4 = ptrtoint ptr %ur3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ur3, align 8
  %add24 = add i64 %5, %conv21
  store i64 %add24, ptr %ur3, align 8
  %conv25 = zext i32 %call6 to i64
  %6 = ptrtoint ptr %ca5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ca5, align 8
  %add28 = add i64 %7, %conv25
  store i64 %add28, ptr %ca5, align 8
  %conv29 = zext i32 %call8 to i64
  %8 = ptrtoint ptr %um7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %um7, align 8
  %add32 = add i64 %9, %conv29
  store i64 %add32, ptr %um7, align 8
  %conv33 = zext i32 %call10 to i64
  %10 = ptrtoint ptr %xec9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %xec9, align 8
  %add36 = add i64 %11, %conv33
  store i64 %add36, ptr %xec9, align 8
  %conv37 = zext i32 %call12 to i64
  %12 = ptrtoint ptr %vlan_drop11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vlan_drop11, align 8
  %add40 = add i64 %13, %conv37
  store i64 %add40, ptr %vlan_drop11, align 8
  %conv41 = zext i32 %call14 to i64
  %14 = ptrtoint ptr %loopback_drop13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %loopback_drop13, align 8
  %add44 = add i64 %15, %conv41
  store i64 %add44, ptr %loopback_drop13, align 8
  %conv45 = zext i32 %call16 to i64
  %16 = ptrtoint ptr %nodesc_drop15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %nodesc_drop15, align 8
  %add48 = add i64 %17, %conv45
  store i64 %add48, ptr %nodesc_drop15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  %base_l = getelementptr inbounds %struct.fm10k_hw_stat, ptr %stats, i32 0, i32 1
  %18 = ptrtoint ptr %base_l to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_l, align 8
  %add50 = add i32 %19, %call2
  store i32 %add50, ptr %base_l, align 8
  %base_l52 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %base_l52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_l52, align 8
  %add53 = add i32 %21, %call4
  store i32 %add53, ptr %base_l52, align 8
  %base_l55 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %base_l55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_l55, align 8
  %add56 = add i32 %23, %call6
  store i32 %add56, ptr %base_l55, align 8
  %base_l58 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %base_l58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_l58, align 8
  %add59 = add i32 %25, %call8
  store i32 %add59, ptr %base_l58, align 8
  %base_l61 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %base_l61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_l61, align 8
  %add62 = add i32 %27, %call10
  store i32 %add62, ptr %base_l61, align 8
  %base_l64 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %base_l64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_l64, align 8
  %add65 = add i32 %29, %call12
  store i32 %add65, ptr %base_l64, align 8
  %base_l67 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %base_l67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_l67, align 8
  %add68 = add i32 %31, %call14
  store i32 %add68, ptr %base_l67, align 8
  %base_l70 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %base_l70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base_l70, align 8
  %add71 = add i32 %33, %call16
  store i32 %add71, ptr %base_l70, align 8
  %34 = ptrtoint ptr %base_h to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %base_h, align 4
  %q = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 8
  %max_queues = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %35 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_queues, align 8
  %conv74 = zext i16 %36 to i32
  tail call void @fm10k_update_hw_stats_q(ptr noundef %hw, ptr noundef %q, i32 noundef 0, i32 noundef %conv74) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_rebind_hw_stats_pf(ptr noundef %hw, ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_h = getelementptr inbounds %struct.fm10k_hw_stat, ptr %stats, i32 0, i32 2
  %0 = ptrtoint ptr %base_h to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %base_h, align 4
  %base_h1 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %base_h1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %base_h1, align 4
  %base_h2 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %base_h2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %base_h2, align 4
  %base_h3 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %base_h3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %base_h3, align 4
  %base_h4 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %base_h4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %base_h4, align 4
  %base_h5 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %base_h5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %base_h5, align 4
  %base_h6 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %base_h6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %base_h6, align 4
  %base_h7 = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %base_h7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %base_h7, align 4
  %q = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 8
  %max_queues = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_queues, align 8
  %conv = zext i16 %9 to i32
  tail call void @fm10k_unbind_hw_stats_q(ptr noundef %q, i32 noundef 0, i32 noundef %conv) #6
  tail call void @fm10k_update_hw_stats_pf(ptr noundef %hw, ptr noundef %stats)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_configure_dglort_map_pf(ptr noundef %hw, ptr noundef readonly %dglort) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dglort, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %idx = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp ugt i8 %1, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rss_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 4
  %2 = ptrtoint ptr %rss_l to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rss_l, align 2
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp3 = icmp ugt i8 %3, 7
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %pc_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 5
  %4 = ptrtoint ptr %pc_l to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pc_l, align 1
  %conv6 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp7 = icmp ugt i8 %5, 3
  br i1 %cmp7, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %vsi_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 6
  %6 = ptrtoint ptr %vsi_l to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vsi_l, align 2
  %conv10 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp11 = icmp ugt i8 %7, 6
  br i1 %cmp11, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false13

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %vsi_b = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 2
  %8 = ptrtoint ptr %vsi_b to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vsi_b, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %cmp15 = icmp ugt i8 %9, 64
  br i1 %cmp15, label %lor.lhs.false13.cleanup_crit_edge, label %lor.lhs.false17

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %queue_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 7
  %10 = ptrtoint ptr %queue_l to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %queue_l, align 1
  %conv18 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp19 = icmp ugt i8 %11, 8
  br i1 %cmp19, label %lor.lhs.false17.cleanup_crit_edge, label %lor.lhs.false21

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %queue_b = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 1
  %12 = ptrtoint ptr %queue_b to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %queue_b, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %13)
  %cmp23 = icmp ugt i16 %13, 255
  br i1 %cmp23, label %lor.lhs.false21.cleanup_crit_edge, label %if.end26

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false21
  %add36 = add nuw nsw i32 %conv18, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add36)
  %cmp43357.not = icmp ugt i32 %add36, 15
  br i1 %cmp43357.not, label %if.end26.for.end104_crit_edge, label %for.cond45.preheader.lr.ph

if.end26.for.end104_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end104

for.cond45.preheader.lr.ph:                       ; preds = %if.end26
  %shl37 = shl nuw nsw i32 1, %add36
  %14 = ptrtoint ptr %dglort to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dglort, align 2
  %add = add nuw nsw i32 %conv6, %conv2
  %shl = shl nuw i32 1, %add
  %conv47 = and i32 %shl, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp48353.not = icmp ugt i32 %add, 15
  %umax372 = call i32 @llvm.umax.i32(i32 %conv47, i32 1)
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.inc101.for.cond45.preheader_crit_edge, %for.cond45.preheader.lr.ph
  %indvars.iv374 = phi i32 [ 0, %for.cond45.preheader.lr.ph ], [ %indvars.iv.next375, %for.inc101.for.cond45.preheader_crit_edge ]
  %glort.0360 = phi i16 [ %15, %for.cond45.preheader.lr.ph ], [ %inc103, %for.inc101.for.cond45.preheader_crit_edge ]
  %q_idx.0359 = phi i16 [ %13, %for.cond45.preheader.lr.ph ], [ %q_idx.1.lcssa, %for.inc101.for.cond45.preheader_crit_edge ]
  br i1 %cmp48353.not, label %for.cond45.preheader.for.inc101_crit_edge, label %for.body50.lr.ph

for.cond45.preheader.for.inc101_crit_edge:        ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101

for.body50.lr.ph:                                 ; preds = %for.cond45.preheader
  %conv66 = zext i16 %glort.0360 to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv66)
  %17 = zext i16 %q_idx.0359 to i32
  %18 = call i16 @llvm.usub.sat.i16(i16 256, i16 %q_idx.0359)
  %wide.trip.count = zext i16 %18 to i32
  br label %for.body50

for.body50:                                       ; preds = %if.end97.for.body50_crit_edge, %for.body50.lr.ph
  %indvars.iv370 = phi i32 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next371, %if.end97.for.body50_crit_edge ]
  %indvars.iv = phi i32 [ %17, %for.body50.lr.ph ], [ %indvars.iv.next, %if.end97.for.body50_crit_edge ]
  %q_idx.1355 = phi i16 [ %q_idx.0359, %for.body50.lr.ph ], [ %inc100, %if.end97.for.body50_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv370, i32 %wide.trip.count)
  %exitcond = icmp eq i32 %indvars.iv370, %wide.trip.count
  br i1 %exitcond, label %for.inc101.loopexit.split.loop.exit384, label %do.body

do.body:                                          ; preds = %for.body50
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 8
  %tobool58.not = icmp eq ptr %20, null
  br i1 %tobool58.not, label %do.body.if.end69_crit_edge, label %do.body63, !prof !24

do.body.if.end69_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.body63:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %mul = shl nuw nsw i32 %indvars.iv, 6
  %add68 = add nuw nsw i32 %mul, 32781
  %arrayidx = getelementptr i32, ptr %20, i32 %add68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %16) #6, !srcloc !26
  br label %if.end69

if.end69:                                         ; preds = %do.body63, %do.body.if.end69_crit_edge
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw, align 8
  %tobool79.not = icmp eq ptr %22, null
  br i1 %tobool79.not, label %if.end69.if.end97_crit_edge, label %do.body89, !prof !24

if.end69.if.end97_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.body89:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %mul94 = shl nuw nsw i32 %indvars.iv, 6
  %add95 = add nuw nsw i32 %mul94, 16398
  %arrayidx96 = getelementptr i32, ptr %22, i32 %add95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx96, i32 %16) #6, !srcloc !26
  br label %if.end97

if.end97:                                         ; preds = %do.body89, %if.end69.if.end97_crit_edge
  %indvars.iv.next371 = add nuw nsw i32 %indvars.iv370, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc100 = add nuw nsw i16 %q_idx.1355, 1
  %exitcond373.not = icmp eq i32 %indvars.iv.next371, %umax372
  br i1 %exitcond373.not, label %if.end97.for.inc101_crit_edge, label %if.end97.for.body50_crit_edge

if.end97.for.body50_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body50

if.end97.for.inc101_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101

for.inc101.loopexit.split.loop.exit384:           ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #8
  %23 = trunc i32 %indvars.iv to i16
  br label %for.inc101

for.inc101:                                       ; preds = %for.inc101.loopexit.split.loop.exit384, %if.end97.for.inc101_crit_edge, %for.cond45.preheader.for.inc101_crit_edge
  %q_idx.1.lcssa = phi i16 [ %q_idx.0359, %for.cond45.preheader.for.inc101_crit_edge ], [ %23, %for.inc101.loopexit.split.loop.exit384 ], [ %inc100, %if.end97.for.inc101_crit_edge ]
  %inc103 = add i16 %glort.0360, 1
  %indvars.iv.next375 = add nuw nsw i32 %indvars.iv374, 1
  %exitcond377.not = icmp eq i32 %indvars.iv.next375, %shl37
  br i1 %exitcond377.not, label %for.inc101.for.end104_crit_edge, label %for.inc101.for.cond45.preheader_crit_edge

for.inc101.for.cond45.preheader_crit_edge:        ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond45.preheader

for.inc101.for.end104_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end104

for.end104:                                       ; preds = %for.inc101.for.end104_crit_edge, %if.end26.for.end104_crit_edge
  %24 = ptrtoint ptr %pc_l to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pc_l, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %25)
  %cmp122367.not = icmp ugt i8 %25, 15
  br i1 %cmp122367.not, label %for.end104.for.end182_crit_edge, label %for.body124.lr.ph

for.end104.for.end182_crit_edge:                  ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end182

for.body124.lr.ph:                                ; preds = %for.end104
  %conv116 = zext i8 %25 to i32
  %shl117 = shl nuw nsw i32 1, %conv116
  %26 = ptrtoint ptr %rss_l to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rss_l, align 2
  %conv108 = zext i8 %27 to i32
  %28 = ptrtoint ptr %queue_l to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %queue_l, align 1
  %conv106 = zext i8 %29 to i32
  %add109 = add nuw nsw i32 %conv108, %conv106
  %30 = ptrtoint ptr %vsi_l to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vsi_l, align 2
  %conv111 = zext i8 %31 to i32
  %add112 = add nuw nsw i32 %add109, %conv111
  %shl113 = shl nuw i32 1, %add112
  %conv132 = and i32 %shl113, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add112)
  %cmp133362 = icmp ugt i32 %add112, 15
  %32 = trunc i32 %shl117 to i16
  br label %for.body124

for.body124:                                      ; preds = %for.inc180.for.body124_crit_edge, %for.body124.lr.ph
  %indvars.iv380 = phi i32 [ 0, %for.body124.lr.ph ], [ %indvars.iv.next381, %for.inc180.for.body124_crit_edge ]
  %33 = ptrtoint ptr %queue_b to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %queue_b, align 2
  %35 = trunc i32 %indvars.iv380 to i16
  %add128 = add i16 %34, %35
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %add128)
  %cmp137363 = icmp ugt i16 %add128, 255
  %or.cond364 = select i1 %cmp133362, i1 true, i1 %cmp137363
  br i1 %or.cond364, label %for.body124.for.inc180_crit_edge, label %if.end140.lr.ph

for.body124.for.inc180_crit_edge:                 ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc180

if.end140.lr.ph:                                  ; preds = %for.body124
  %shl145 = shl nuw nsw i32 %indvars.iv380, 7
  br label %if.end140

if.end140:                                        ; preds = %if.end170.if.end140_crit_edge, %if.end140.lr.ph
  %indvars.iv378 = phi i32 [ 0, %if.end140.lr.ph ], [ %indvars.iv.next379, %if.end170.if.end140_crit_edge ]
  %q_idx.2366 = phi i16 [ %add128, %if.end140.lr.ph ], [ %conv176, %if.end170.if.end140_crit_edge ]
  %conv136 = zext i16 %q_idx.2366 to i32
  %mul142 = shl nuw nsw i32 %conv136, 6
  %add143 = add nuw nsw i32 %mul142, 32775
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add143) #6
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %hw, align 8
  %tobool153.not = icmp eq ptr %37, null
  br i1 %tobool153.not, label %if.end140.if.end170_crit_edge, label %do.body163, !prof !24

if.end140.if.end170_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

do.body163:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %call, -897
  %or = or i32 %and, %shl145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx169 = getelementptr i32, ptr %37, i32 %add143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx169, i32 %38) #6, !srcloc !26
  br label %if.end170

if.end170:                                        ; preds = %do.body163, %if.end140.if.end170_crit_edge
  %conv176 = add i16 %q_idx.2366, %32
  %inc178 = add nuw i32 %indvars.iv378, 1
  %conv131 = and i32 %inc178, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv132, i32 %conv131)
  %cmp133 = icmp ule i32 %conv132, %conv131
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv176)
  %cmp137 = icmp ugt i16 %conv176, 255
  %or.cond = select i1 %cmp133, i1 true, i1 %cmp137
  %indvars.iv.next379 = add nuw nsw i32 %indvars.iv378, 1
  br i1 %or.cond, label %if.end170.for.inc180_crit_edge, label %if.end170.if.end140_crit_edge

if.end170.if.end140_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.end170.for.inc180_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc180

for.inc180:                                       ; preds = %if.end170.for.inc180_crit_edge, %for.body124.for.inc180_crit_edge
  %indvars.iv.next381 = add nuw nsw i32 %indvars.iv380, 1
  %exitcond383.not = icmp eq i32 %indvars.iv.next381, %shl117
  br i1 %exitcond383.not, label %for.inc180.for.end182_crit_edge, label %for.inc180.for.body124_crit_edge

for.inc180.for.body124_crit_edge:                 ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body124

for.inc180.for.end182_crit_edge:                  ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end182

for.end182:                                       ; preds = %for.inc180.for.end182_crit_edge, %for.end104.for.end182_crit_edge
  %39 = ptrtoint ptr %rss_l to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rss_l, align 2
  %41 = ptrtoint ptr %queue_b to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %queue_b, align 2
  %43 = ptrtoint ptr %pc_l to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pc_l, align 1
  %45 = ptrtoint ptr %vsi_b to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vsi_b, align 2
  %47 = ptrtoint ptr %vsi_l to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vsi_l, align 2
  %conv199 = zext i8 %48 to i32
  %49 = ptrtoint ptr %queue_l to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %queue_l, align 1
  %conv203 = zext i8 %50 to i32
  %inner_rss = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 9
  %51 = ptrtoint ptr %inner_rss to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %inner_rss, align 1
  %53 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp211 = icmp eq i8 %54, 0
  %cond = select i1 %cmp211, i32 0, i32 -65536
  %add217 = add nuw nsw i32 %conv203, %conv199
  %shared_l = getelementptr inbounds %struct.fm10k_dglort_cfg, ptr %dglort, i32 0, i32 8
  %55 = ptrtoint ptr %shared_l to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %shared_l, align 2
  %conv218 = zext i8 %56 to i32
  %add219 = add nuw nsw i32 %add217, %conv218
  %shl220 = shl i32 %cond, %add219
  %57 = ptrtoint ptr %dglort to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dglort, align 2
  %conv222 = zext i16 %58 to i32
  %or223 = or i32 %shl220, %conv222
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %hw, align 8
  %tobool231.not = icmp eq ptr %60, null
  br i1 %tobool231.not, label %for.end182.if.end248_crit_edge, label %do.body241, !prof !24

for.end182.if.end248_crit_edge:                   ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end248

do.body241:                                       ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool205.not = icmp eq i8 %52, 0
  %conv184 = zext i8 %40 to i32
  %shl185 = shl nuw i32 %conv184, 24
  %conv187 = zext i16 %42 to i32
  %shl188 = shl nuw i32 %conv187, 16
  %or189 = or i32 %shl188, %shl185
  %conv191 = zext i8 %44 to i32
  %shl192 = shl nuw nsw i32 %conv191, 14
  %or193 = or i32 %or189, %shl192
  %conv195 = zext i8 %46 to i32
  %shl196 = shl nuw nsw i32 %conv195, 7
  %or197 = or i32 %or193, %shl196
  %shl200 = shl nuw nsw i32 %conv199, 4
  %or201 = or i32 %or197, %shl200
  %or204 = or i32 %or201, %conv203
  %or207 = or i32 %or204, 134217728
  %spec.select = select i1 %tobool205.not, i32 %or204, i32 %or207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %62 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %idx, align 1
  %conv245 = zext i8 %63 to i32
  %add246 = add nuw nsw i32 %conv245, 56
  %arrayidx247 = getelementptr i32, ptr %60, i32 %add246
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx247, i32 %61) #6, !srcloc !26
  br label %if.end248

if.end248:                                        ; preds = %do.body241, %for.end182.if.end248_crit_edge
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %hw, align 8
  %tobool258.not = icmp eq ptr %65, null
  br i1 %tobool258.not, label %if.end248.cleanup_crit_edge, label %do.body268, !prof !24

if.end248.cleanup_crit_edge:                      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body268:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %or223)
  %67 = ptrtoint ptr %idx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %idx, align 1
  %conv272 = zext i8 %68 to i32
  %add273 = add nuw nsw i32 %conv272, 48
  %arrayidx274 = getelementptr i32, ptr %65, i32 %add273
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx274, i32 %66) #6, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %do.body268, %if.end248.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false21.cleanup_crit_edge ], [ -2, %lor.lhs.false17.cleanup_crit_edge ], [ -2, %lor.lhs.false13.cleanup_crit_edge ], [ -2, %lor.lhs.false9.cleanup_crit_edge ], [ -2, %lor.lhs.false5.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %do.body268 ], [ 0, %if.end248.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_set_dma_mask_pf(ptr noundef %hw, i64 noundef %dma_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6, !prof !24

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i64 %dma_mask, 32
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %arrayidx = getelementptr i32, ptr %1, i32 14364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #6, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_get_fault_pf(ptr noundef %hw, i32 noundef %type, ptr nocapture noundef %fault) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 16, label %entry.sw.epilog_crit_edge55
    i32 28, label %entry.sw.epilog_crit_edge56
  ]

entry.sw.epilog_crit_edge56:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge55:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge55, %entry.sw.epilog_crit_edge56
  %add = add nuw nsw i32 %type, 3
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add) #6
  %and = and i32 %call, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %add1 = add nuw nsw i32 %type, 1
  %call2 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add1) #6
  %conv = zext i32 %call2 to i64
  %shl = shl nuw i64 %conv, 32
  %1 = ptrtoint ptr %fault to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %shl, ptr %fault, align 8
  %call5 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %type) #6
  %conv6 = zext i32 %call5 to i64
  %2 = ptrtoint ptr %fault to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fault, align 8
  %or = or i64 %3, %conv6
  store i64 %or, ptr %fault, align 8
  %add8 = add nuw nsw i32 %type, 2
  %call9 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add8) #6
  %specinfo = getelementptr inbounds %struct.fm10k_fault, ptr %fault, i32 0, i32 1
  %4 = ptrtoint ptr %specinfo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call9, ptr %specinfo, align 8
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 8
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.end.if.end21_crit_edge, label %do.body17, !prof !24

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr i32, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 8388608) #6, !srcloc !26
  br label %if.end21

if.end21:                                         ; preds = %do.body17, %if.end.if.end21_crit_edge
  %and24 = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %and28 = lshr i32 %call, 8
  %7 = trunc i32 %and28 to i8
  %8 = and i8 %7, 63
  %conv30 = add nuw nsw i8 %8, 1
  %.sink = select i1 %tobool25.not, i8 %conv30, i8 0
  %9 = getelementptr inbounds %struct.fm10k_fault, ptr %fault, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %9, align 1
  %conv34 = trunc i32 %call to i8
  %type35 = getelementptr inbounds %struct.fm10k_fault, ptr %fault, i32 0, i32 2
  %11 = ptrtoint ptr %type35 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv34, ptr %type35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_disable_queues_generic(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fm10k_read_pci_cfg_word(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_get_host_state_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm10k_update_xc_addr_pf(ptr noundef %hw, i16 noundef zeroext %glort, ptr nocapture noundef readonly %mac, i16 noundef zeroext %vid, i1 noundef zeroext %add, i8 noundef zeroext %flags) unnamed_addr #2 align 64 {
entry:
  %mac_update = alloca %struct.fm10k_mac_update, align 4
  %msg = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mac_update) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %msg) #6
  %0 = and i16 %vid, 32767
  %dglort_map.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %1 = call ptr @memset(ptr %msg, i32 255, i32 20)
  %2 = ptrtoint ptr %dglort_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dglort_map.i, align 8
  %shr.i = lshr i32 %3, 16
  %4 = trunc i32 %shr.i to i16
  %conv1.i = and i16 %4, %glort
  %5 = trunc i32 %3 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i, i16 %5)
  %cmp.i = icmp ne i16 %conv1.i, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %0)
  %cmp = icmp ugt i16 %0, 4095
  %or.cond = or i1 %cmp, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds %struct.fm10k_mac_update, ptr %mac_update, i32 0, i32 5
  %7 = getelementptr inbounds %struct.fm10k_mac_update, ptr %mac_update, i32 0, i32 4
  %8 = getelementptr inbounds %struct.fm10k_mac_update, ptr %mac_update, i32 0, i32 3
  %9 = getelementptr inbounds %struct.fm10k_mac_update, ptr %mac_update, i32 0, i32 2
  %10 = getelementptr inbounds %struct.fm10k_mac_update, ptr %mac_update, i32 0, i32 1
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  %arrayidx = getelementptr i8, ptr %mac, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %12 to i32
  %shl = shl nuw i32 %conv5, 24
  %arrayidx6 = getelementptr i8, ptr %mac, i32 3
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %14 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or = or i32 %shl8, %shl
  %arrayidx9 = getelementptr i8, ptr %mac, i32 4
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %16 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %or12 = or i32 %or, %shl11
  %arrayidx13 = getelementptr i8, ptr %mac, i32 5
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %or15 = or i32 %or12, %conv14
  %19 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %20 = ptrtoint ptr %mac_update to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mac_update, align 4
  %21 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mac, align 1
  %conv18 = zext i8 %22 to i16
  %shl19 = shl nuw i16 %conv18, 8
  %arrayidx20 = getelementptr i8, ptr %mac, i32 1
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx20, align 1
  %conv22 = zext i8 %24 to i16
  %or23 = or i16 %shl19, %conv22
  %25 = tail call i16 @llvm.bswap.i16(i16 %or23)
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %10, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %0)
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %9, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %glort)
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %8, align 4
  %not.add = xor i1 %add, true
  %conv27 = zext i1 %not.add to i8
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv27, ptr %6, align 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %flags, ptr %7, align 2
  %call29 = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 2) #6
  %call31 = call i32 @fm10k_tlv_attr_put_le_struct(ptr noundef nonnull %msg, i16 noundef zeroext 3, ptr noundef nonnull %mac_update, i32 noundef 12) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %33 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enqueue_tx, align 4
  %call33 = call i32 %34(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mac_update) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_put_le_struct(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_read_hw_stats_32b(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_update_hw_stats_q(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_unbind_hw_stats_q(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_iov_assign_resources_pf(ptr noundef %hw, i16 noundef zeroext %num_vfs, i16 noundef zeroext %num_pools) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %default_vid = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %default_vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %default_vid, align 4
  %conv = zext i16 %1 to i32
  %shl = shl nuw i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %num_pools)
  %cmp = icmp ugt i16 %num_pools, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = zext i16 %num_vfs to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %num_vfs, i16 %num_pools)
  %cmp5 = icmp ugt i16 %num_vfs, %num_pools
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %total_vfs = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %total_vfs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %total_vfs, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %num_vfs)
  %cmp9 = icmp ult i16 %3, %num_vfs
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %num_vfs14 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %num_vfs14 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %num_vfs, ptr %num_vfs14, align 2
  %num_pools16 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %num_pools16 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %num_pools, ptr %num_pools16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %num_vfs)
  %cmp18 = icmp ugt i16 %num_vfs, 8
  %conv20 = select i1 %cmp18, i32 32, i32 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %num_pools)
  %cmp.i = icmp ugt i16 %num_pools, 32
  br i1 %cmp.i, label %if.end12.fm10k_vf_queue_index.exit_crit_edge, label %cond.false.i

if.end12.fm10k_vf_queue_index.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_vf_queue_index.exit

cond.false.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %num_pools)
  %cmp4.i = icmp ugt i16 %num_pools, 16
  br i1 %cmp4.i, label %cond.false.i.fm10k_vf_queue_index.exit_crit_edge, label %cond.false7.i.i

cond.false.i.fm10k_vf_queue_index.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_vf_queue_index.exit

cond.false7.i.i:                                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %num_pools)
  %cmp9.i = icmp ugt i16 %num_pools, 8
  %phi.cast.i = select i1 %cmp9.i, i32 8, i32 16
  %phi.cast.i.i.neg = select i1 %cmp9.i, i16 -8, i16 -16
  br label %fm10k_vf_queue_index.exit

fm10k_vf_queue_index.exit:                        ; preds = %cond.false7.i.i, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge, %if.end12.fm10k_vf_queue_index.exit_crit_edge
  %cond6.i782 = phi i32 [ 32, %cond.false7.i.i ], [ 16, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge ], [ 8, %if.end12.fm10k_vf_queue_index.exit_crit_edge ]
  %cond13.i779 = phi i32 [ %phi.cast.i, %cond.false7.i.i ], [ 4, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge ], [ 2, %if.end12.fm10k_vf_queue_index.exit_crit_edge ]
  %cond13.i.i.neg = phi i16 [ %phi.cast.i.i.neg, %cond.false7.i.i ], [ -4, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge ], [ -2, %if.end12.fm10k_vf_queue_index.exit_crit_edge ]
  %.neg = mul i16 %cond13.i.i.neg, %num_vfs
  %sub5.i = add i16 %.neg, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_vfs)
  %cmp24787.not = icmp eq i16 %num_vfs, 0
  br i1 %cmp24787.not, label %fm10k_vf_queue_index.exit.do.body118_crit_edge, label %fm10k_vf_queue_index.exit.do.body_crit_edge

fm10k_vf_queue_index.exit.do.body_crit_edge:      ; preds = %fm10k_vf_queue_index.exit
  br label %do.body

fm10k_vf_queue_index.exit.do.body118_crit_edge:   ; preds = %fm10k_vf_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body118

do.body:                                          ; preds = %if.end85.do.body_crit_edge, %fm10k_vf_queue_index.exit.do.body_crit_edge
  %i.0788 = phi i32 [ %inc, %if.end85.do.body_crit_edge ], [ 0, %fm10k_vf_queue_index.exit.do.body_crit_edge ]
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body.if.end35_crit_edge, label %do.body32, !prof !24

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.body32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add = add nuw nsw i32 %i.0788, 8256
  %arrayidx = getelementptr i32, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #6, !srcloc !26
  br label %if.end35

if.end35:                                         ; preds = %do.body32, %do.body.if.end35_crit_edge
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw, align 8
  %tobool45.not = icmp eq ptr %9, null
  br i1 %tobool45.not, label %if.end35.if.end60_crit_edge, label %do.body55, !prof !24

if.end35.if.end60_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.body55:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %add58 = add nuw nsw i32 %i.0788, 8320
  %arrayidx59 = getelementptr i32, ptr %9, i32 %add58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx59, i32 0) #6, !srcloc !26
  br label %if.end60

if.end60:                                         ; preds = %do.body55, %if.end35.if.end60_crit_edge
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw, align 8
  %tobool70.not = icmp eq ptr %11, null
  br i1 %tobool70.not, label %if.end60.if.end85_crit_edge, label %do.body80, !prof !24

if.end60.if.end85_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.body80:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %add83 = add nuw nsw i32 %i.0788, 8192
  %arrayidx84 = getelementptr i32, ptr %11, i32 %add83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx84, i32 -57600) #6, !srcloc !26
  br label %if.end85

if.end85:                                         ; preds = %do.body80, %if.end60.if.end85_crit_edge
  %inc = add nuw nsw i32 %i.0788, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %for.end, label %if.end85.do.body_crit_edge

if.end85.do.body_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %if.end85
  br i1 %cmp24787.not, label %for.end.do.body118_crit_edge, label %do.body92.preheader

for.end.do.body118_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body118

do.body92.preheader:                              ; preds = %for.end
  %mul = shl nuw nsw i32 %conv3, 4
  br label %do.body92

do.body92:                                        ; preds = %if.end114.do.body92_crit_edge, %do.body92.preheader
  %i.1791 = phi i32 [ %dec792, %if.end114.do.body92_crit_edge ], [ %mul, %do.body92.preheader ]
  %dec792 = add nsw i32 %i.1791, -1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw, align 8
  %tobool99.not = icmp eq ptr %13, null
  br i1 %tobool99.not, label %do.body92.if.end114_crit_edge, label %do.body109, !prof !24

do.body92.if.end114_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

do.body109:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %add112 = add nsw i32 %i.1791, 98303
  %arrayidx113 = getelementptr i32, ptr %13, i32 %add112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx113, i32 0) #6, !srcloc !26
  br label %if.end114

if.end114:                                        ; preds = %do.body109, %do.body92.if.end114_crit_edge
  %tobool90.not = icmp eq i32 %dec792, 0
  br i1 %tobool90.not, label %if.end114.do.body118_crit_edge, label %if.end114.do.body92_crit_edge

if.end114.do.body92_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body92

if.end114.do.body118_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body118

do.body118:                                       ; preds = %if.end114.do.body118_crit_edge, %for.end.do.body118_crit_edge, %fm10k_vf_queue_index.exit.do.body118_crit_edge
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 8
  %tobool125.not = icmp eq ptr %15, null
  br i1 %tobool125.not, label %do.body118.if.end139_crit_edge, label %do.body135, !prof !24

do.body118.if.end139_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

do.body135:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %arrayidx138 = getelementptr i32, ptr %15, i32 100422
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx138, i32 -1) #6, !srcloc !26
  br label %if.end139

if.end139:                                        ; preds = %do.body135, %do.body118.if.end139_crit_edge
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 8
  %tobool149.not = icmp eq ptr %17, null
  br i1 %tobool149.not, label %if.end139.if.end163_crit_edge, label %do.body159, !prof !24

if.end139.if.end163_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

do.body159:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %arrayidx162 = getelementptr i32, ptr %17, i32 100423
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx162, i32 -1) #6, !srcloc !26
  br label %if.end163

if.end163:                                        ; preds = %do.body159, %if.end139.if.end163_crit_edge
  %conv167 = zext i16 %sub5.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %sub5.i)
  %cmp168793 = icmp ugt i16 %sub5.i, 128
  br i1 %cmp168793, label %do.body171.lr.ph, label %if.end163.for.cond252.preheader_crit_edge

if.end163.for.cond252.preheader_crit_edge:        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond252.preheader

do.body171.lr.ph:                                 ; preds = %if.end163
  %or = or i32 %shl, 268435519
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  br label %do.body171

for.cond252.preheader:                            ; preds = %if.end246.for.cond252.preheader_crit_edge, %if.end163.for.cond252.preheader_crit_edge
  %sub = add nsw i32 %cond6.i782, -1
  br label %for.body255

do.body171:                                       ; preds = %if.end246.do.body171_crit_edge, %do.body171.lr.ph
  %i.2794 = phi i32 [ 128, %do.body171.lr.ph ], [ %inc250, %if.end246.do.body171_crit_edge ]
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw, align 8
  %tobool178.not = icmp eq ptr %20, null
  br i1 %tobool178.not, label %do.body171.if.end194_crit_edge, label %do.body188, !prof !24

do.body171.if.end194_crit_edge:                   ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

do.body188:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %mul191 = shl i32 %i.2794, 6
  %add192 = add nuw nsw i32 %mul191, 32774
  %arrayidx193 = getelementptr i32, ptr %20, i32 %add192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx193, i32 0) #6, !srcloc !26
  br label %if.end194

if.end194:                                        ; preds = %do.body188, %do.body171.if.end194_crit_edge
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw, align 8
  %tobool204.not = icmp eq ptr %22, null
  br i1 %tobool204.not, label %if.end194.if.end220_crit_edge, label %do.body214, !prof !24

if.end194.if.end220_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

do.body214:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %mul217 = shl i32 %i.2794, 6
  %add218 = add nuw nsw i32 %mul217, 32775
  %arrayidx219 = getelementptr i32, ptr %22, i32 %add218
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx219, i32 %18) #6, !srcloc !26
  br label %if.end220

if.end220:                                        ; preds = %do.body214, %if.end194.if.end220_crit_edge
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw, align 8
  %tobool230.not = icmp eq ptr %24, null
  br i1 %tobool230.not, label %if.end220.if.end246_crit_edge, label %do.body240, !prof !24

if.end220.if.end246_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end246

do.body240:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %mul243 = shl i32 %i.2794, 6
  %add244 = add nuw nsw i32 %mul243, 16390
  %arrayidx245 = getelementptr i32, ptr %24, i32 %add244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx245, i32 -67108864) #6, !srcloc !26
  br label %if.end246

if.end246:                                        ; preds = %do.body240, %if.end220.if.end246_crit_edge
  %inc250 = add nuw nsw i32 %i.2794, 1
  %exitcond823.not = icmp eq i32 %inc250, %conv167
  br i1 %exitcond823.not, label %if.end246.for.cond252.preheader_crit_edge, label %if.end246.do.body171_crit_edge

if.end246.do.body171_crit_edge:                   ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body171

if.end246.for.cond252.preheader_crit_edge:        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond252.preheader

for.body255:                                      ; preds = %for.inc315.for.body255_crit_edge, %for.cond252.preheader
  %i.3796 = phi i32 [ 257, %for.cond252.preheader ], [ %inc316, %for.inc315.for.body255_crit_edge ]
  %and = and i32 %i.3796, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool257.not = icmp eq i32 %and, 0
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw, align 8
  %tobool266.not = icmp eq ptr %26, null
  br i1 %tobool257.not, label %do.body259, label %do.body287

do.body259:                                       ; preds = %for.body255
  br i1 %tobool266.not, label %do.body259.for.inc315_crit_edge, label %do.body276, !prof !24

do.body259.for.inc315_crit_edge:                  ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc315

do.body276:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %sub280 = sub nsw i32 %i.3796, %cond6.i782
  %27 = tail call i32 @llvm.bswap.i32(i32 %sub280)
  %mul281 = shl nuw i32 %i.3796, 1
  %add282 = add nuw nsw i32 %mul281, 75776
  %arrayidx283 = getelementptr i32, ptr %26, i32 %add282
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx283, i32 %27) #6, !srcloc !26
  br label %for.inc315

do.body287:                                       ; preds = %for.body255
  br i1 %tobool266.not, label %do.body287.for.inc315_crit_edge, label %do.body304, !prof !24

do.body287.for.inc315_crit_edge:                  ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc315

do.body304:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %sub307 = add nsw i32 %i.3796, -1
  %28 = tail call i32 @llvm.bswap.i32(i32 %sub307)
  %mul308 = shl nuw i32 %i.3796, 1
  %add309 = add nuw nsw i32 %mul308, 75776
  %arrayidx310 = getelementptr i32, ptr %26, i32 %add309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx310, i32 %28) #6, !srcloc !26
  br label %for.inc315

for.inc315:                                       ; preds = %do.body304, %do.body287.for.inc315_crit_edge, %do.body276, %do.body259.for.inc315_crit_edge
  %inc316 = add nuw nsw i32 %i.3796, 1
  %exitcond824.not = icmp eq i32 %inc316, 768
  br i1 %exitcond824.not, label %do.body318, label %for.inc315.for.body255_crit_edge

for.inc315.for.body255_crit_edge:                 ; preds = %for.inc315
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body255

do.body318:                                       ; preds = %for.inc315
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw, align 8
  %tobool325.not = icmp eq ptr %30, null
  br i1 %tobool325.not, label %do.body318.if.end344_crit_edge, label %do.body335, !prof !24

do.body318.if.end344_crit_edge:                   ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end344

do.body335:                                       ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %sub339 = add i16 %num_vfs, -1
  %31 = ptrtoint ptr %num_pools16 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_pools16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %32)
  %cmp.i.i771 = icmp ugt i16 %32, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %32)
  %cmp4.i.i772 = icmp ugt i16 %32, 16
  %phi.cast.i.i773 = select i1 %cmp4.i.i772, i16 16, i16 32
  %cond6.i.i = select i1 %cmp.i.i771, i16 8, i16 %phi.cast.i.i773
  %mul.i = mul i16 %cond6.i.i, %sub339
  %add.i = add i16 %mul.i, 256
  %conv342 = zext i16 %add.i to i32
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv342)
  %arrayidx343 = getelementptr i32, ptr %30, i32 75776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx343, i32 %33) #6, !srcloc !26
  br label %if.end344

if.end344:                                        ; preds = %do.body335, %do.body318.if.end344_crit_edge
  br i1 %cmp24787.not, label %if.end344.do.body599.preheader_crit_edge, label %if.end344.for.cond352.preheader_crit_edge

if.end344.for.cond352.preheader_crit_edge:        ; preds = %if.end344
  br label %for.cond352.preheader

if.end344.do.body599.preheader_crit_edge:         ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body599.preheader

for.cond352.preheader:                            ; preds = %for.inc593.for.cond352.preheader_crit_edge, %if.end344.for.cond352.preheader_crit_edge
  %vf_q_idx.0817 = phi i16 [ %inc528, %for.inc593.for.cond352.preheader_crit_edge ], [ %sub5.i, %if.end344.for.cond352.preheader_crit_edge ]
  %qmap_idx.0816 = phi i16 [ %inc591, %for.inc593.for.cond352.preheader_crit_edge ], [ 0, %if.end344.for.cond352.preheader_crit_edge ]
  %i.4815 = phi i32 [ %inc594, %for.inc593.for.cond352.preheader_crit_edge ], [ 0, %if.end344.for.cond352.preheader_crit_edge ]
  %shl404 = shl i32 %i.4815, 10
  %or405 = or i32 %shl, %i.4815
  %or406 = or i32 %or405, %shl404
  %or407 = or i32 %or406, 64
  %34 = tail call i32 @llvm.bswap.i32(i32 %or407)
  %shl462 = shl i32 %i.4815, 2
  %or463 = or i32 %shl462, 256
  %35 = tail call i32 @llvm.bswap.i32(i32 %or463)
  br label %do.body357

while.cond.preheader:                             ; preds = %for.inc593
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %inc591)
  %cmp597820 = icmp ult i16 %inc591, 2048
  br i1 %cmp597820, label %while.cond.preheader.do.body599.preheader_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader.do.body599.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body599.preheader

do.body599.preheader:                             ; preds = %while.cond.preheader.do.body599.preheader_crit_edge, %if.end344.do.body599.preheader_crit_edge
  %qmap_idx.0.lcssa831 = phi i16 [ %inc591, %while.cond.preheader.do.body599.preheader_crit_edge ], [ 0, %if.end344.do.body599.preheader_crit_edge ]
  %36 = zext i16 %qmap_idx.0.lcssa831 to i32
  br label %do.body599

do.body535.lr.ph:                                 ; preds = %if.end522
  %conv555 = zext i16 %vf_q_idx.0817 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv555)
  br label %do.body535

do.body357:                                       ; preds = %if.end522.do.body357_crit_edge, %for.cond352.preheader
  %vf_q_idx.1802 = phi i16 [ %vf_q_idx.0817, %for.cond352.preheader ], [ %inc528, %if.end522.do.body357_crit_edge ]
  %qmap_idx.1799 = phi i16 [ %qmap_idx.0816, %for.cond352.preheader ], [ %inc527, %if.end522.do.body357_crit_edge ]
  %j.0798 = phi i32 [ 0, %for.cond352.preheader ], [ %inc526, %if.end522.do.body357_crit_edge ]
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %hw, align 8
  %tobool364.not = icmp eq ptr %39, null
  br i1 %tobool364.not, label %do.body357.if.end381_crit_edge, label %do.body374, !prof !24

do.body357.if.end381_crit_edge:                   ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end381

do.body374:                                       ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %conv377 = zext i16 %vf_q_idx.1802 to i32
  %mul378 = shl nuw nsw i32 %conv377, 6
  %add379 = add nuw nsw i32 %mul378, 32774
  %arrayidx380 = getelementptr i32, ptr %39, i32 %add379
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx380, i32 0) #6, !srcloc !26
  br label %if.end381

if.end381:                                        ; preds = %do.body374, %do.body357.if.end381_crit_edge
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hw, align 8
  %tobool391.not = icmp eq ptr %41, null
  br i1 %tobool391.not, label %if.end381.if.end412_crit_edge, label %do.body401, !prof !24

if.end381.if.end412_crit_edge:                    ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end412

do.body401:                                       ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %conv408 = zext i16 %vf_q_idx.1802 to i32
  %mul409 = shl nuw nsw i32 %conv408, 6
  %add410 = add nuw nsw i32 %mul409, 32775
  %arrayidx411 = getelementptr i32, ptr %41, i32 %add410
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx411, i32 %34) #6, !srcloc !26
  br label %if.end412

if.end412:                                        ; preds = %do.body401, %if.end381.if.end412_crit_edge
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %hw, align 8
  %tobool422.not = icmp eq ptr %43, null
  br i1 %tobool422.not, label %if.end412.if.end439_crit_edge, label %do.body432, !prof !24

if.end412.if.end439_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end439

do.body432:                                       ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %conv435 = zext i16 %vf_q_idx.1802 to i32
  %mul436 = shl nuw nsw i32 %conv435, 6
  %add437 = add nuw nsw i32 %mul436, 16391
  %arrayidx438 = getelementptr i32, ptr %43, i32 %add437
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx438, i32 16908288) #6, !srcloc !26
  br label %if.end439

if.end439:                                        ; preds = %do.body432, %if.end412.if.end439_crit_edge
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %hw, align 8
  %tobool449.not = icmp eq ptr %45, null
  br i1 %tobool449.not, label %if.end439.if.end468_crit_edge, label %do.body459, !prof !24

if.end439.if.end468_crit_edge:                    ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end468

do.body459:                                       ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %conv464 = zext i16 %vf_q_idx.1802 to i32
  %mul465 = shl nuw nsw i32 %conv464, 6
  %add466 = add nuw nsw i32 %mul465, 16390
  %arrayidx467 = getelementptr i32, ptr %45, i32 %add466
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx467, i32 %35) #6, !srcloc !26
  br label %if.end468

if.end468:                                        ; preds = %do.body459, %if.end439.if.end468_crit_edge
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %hw, align 8
  %tobool478.not = icmp eq ptr %47, null
  br i1 %tobool478.not, label %if.end468.if.end495_crit_edge, label %do.body488, !prof !24

if.end468.if.end495_crit_edge:                    ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end495

do.body488:                                       ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %conv491 = zext i16 %vf_q_idx.1802 to i32
  %48 = tail call i32 @llvm.bswap.i32(i32 %conv491)
  %conv492 = zext i16 %qmap_idx.1799 to i32
  %add493 = add nuw nsw i32 %conv492, 10240
  %arrayidx494 = getelementptr i32, ptr %47, i32 %add493
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx494, i32 %48) #6, !srcloc !26
  br label %if.end495

if.end495:                                        ; preds = %do.body488, %if.end468.if.end495_crit_edge
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %hw, align 8
  %tobool505.not = icmp eq ptr %50, null
  br i1 %tobool505.not, label %if.end495.if.end522_crit_edge, label %do.body515, !prof !24

if.end495.if.end522_crit_edge:                    ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end522

do.body515:                                       ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %conv518 = zext i16 %vf_q_idx.1802 to i32
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv518)
  %conv519 = zext i16 %qmap_idx.1799 to i32
  %add520 = add nuw nsw i32 %conv519, 12288
  %arrayidx521 = getelementptr i32, ptr %50, i32 %add520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx521, i32 %51) #6, !srcloc !26
  br label %if.end522

if.end522:                                        ; preds = %do.body515, %if.end495.if.end522_crit_edge
  %inc526 = add nuw nsw i32 %j.0798, 1
  %inc527 = add i16 %qmap_idx.1799, 1
  %inc528 = add i16 %vf_q_idx.1802, 1
  %exitcond825.not = icmp eq i32 %inc526, %cond13.i779
  br i1 %exitcond825.not, label %do.body535.lr.ph, label %if.end522.do.body357_crit_edge

if.end522.do.body357_crit_edge:                   ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body357

do.body535:                                       ; preds = %if.end586.do.body535_crit_edge, %do.body535.lr.ph
  %qmap_idx.2811 = phi i16 [ %inc527, %do.body535.lr.ph ], [ %inc591, %if.end586.do.body535_crit_edge ]
  %j.1810 = phi i32 [ %cond13.i779, %do.body535.lr.ph ], [ %inc590, %if.end586.do.body535_crit_edge ]
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %hw, align 8
  %tobool542.not = icmp eq ptr %53, null
  br i1 %tobool542.not, label %do.body535.if.end559_crit_edge, label %do.body552, !prof !24

do.body535.if.end559_crit_edge:                   ; preds = %do.body535
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end559

do.body552:                                       ; preds = %do.body535
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %conv556 = zext i16 %qmap_idx.2811 to i32
  %add557 = add nuw nsw i32 %conv556, 10240
  %arrayidx558 = getelementptr i32, ptr %53, i32 %add557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx558, i32 %37) #6, !srcloc !26
  br label %if.end559

if.end559:                                        ; preds = %do.body552, %do.body535.if.end559_crit_edge
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %hw, align 8
  %tobool569.not = icmp eq ptr %55, null
  br i1 %tobool569.not, label %if.end559.if.end586_crit_edge, label %do.body579, !prof !24

if.end559.if.end586_crit_edge:                    ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end586

do.body579:                                       ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %conv583 = zext i16 %qmap_idx.2811 to i32
  %add584 = add nuw nsw i32 %conv583, 12288
  %arrayidx585 = getelementptr i32, ptr %55, i32 %add584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx585, i32 %37) #6, !srcloc !26
  br label %if.end586

if.end586:                                        ; preds = %do.body579, %if.end559.if.end586_crit_edge
  %inc590 = add nuw nsw i32 %j.1810, 1
  %inc591 = add i16 %qmap_idx.2811, 1
  %exitcond826.not = icmp eq i32 %inc590, %conv20
  br i1 %exitcond826.not, label %for.inc593, label %if.end586.do.body535_crit_edge

if.end586.do.body535_crit_edge:                   ; preds = %if.end586
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body535

for.inc593:                                       ; preds = %if.end586
  %inc594 = add nuw nsw i32 %i.4815, 1
  %exitcond827.not = icmp eq i32 %inc594, %conv3
  br i1 %exitcond827.not, label %while.cond.preheader, label %for.inc593.for.cond352.preheader_crit_edge

for.inc593.for.cond352.preheader_crit_edge:       ; preds = %for.inc593
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond352.preheader

do.body599:                                       ; preds = %if.end648.do.body599_crit_edge, %do.body599.preheader
  %indvars.iv = phi i32 [ %36, %do.body599.preheader ], [ %indvars.iv.next, %if.end648.do.body599_crit_edge ]
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %hw, align 8
  %tobool606.not = icmp eq ptr %57, null
  br i1 %tobool606.not, label %do.body599.if.end622_crit_edge, label %do.body616, !prof !24

do.body599.if.end622_crit_edge:                   ; preds = %do.body599
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end622

do.body616:                                       ; preds = %do.body599
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %add620 = add nuw nsw i32 %indvars.iv, 10240
  %arrayidx621 = getelementptr i32, ptr %57, i32 %add620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx621, i32 0) #6, !srcloc !26
  br label %if.end622

if.end622:                                        ; preds = %do.body616, %do.body599.if.end622_crit_edge
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %hw, align 8
  %tobool632.not = icmp eq ptr %59, null
  br i1 %tobool632.not, label %if.end622.if.end648_crit_edge, label %do.body642, !prof !24

if.end622.if.end648_crit_edge:                    ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end648

do.body642:                                       ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %add646 = add nuw nsw i32 %indvars.iv, 12288
  %arrayidx647 = getelementptr i32, ptr %59, i32 %add646
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx647, i32 0) #6, !srcloc !26
  br label %if.end648

if.end648:                                        ; preds = %do.body642, %if.end622.if.end648_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next to i16
  %exitcond828.not = icmp eq i16 %lftr.wideiv, 2048
  br i1 %exitcond828.not, label %if.end648.cleanup_crit_edge, label %if.end648.do.body599_crit_edge

if.end648.do.body599_crit_edge:                   ; preds = %if.end648
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body599

if.end648.cleanup_crit_edge:                      ; preds = %if.end648
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end648.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end648.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_iov_configure_tc_pf(ptr noundef %hw, i16 noundef zeroext %vf_idx, i32 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vf_idx to i32
  %num_vfs = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %vf_idx)
  %cmp.not = icmp ugt i16 %1, %vf_idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 5000
  %switch.select = select i1 %switch.selectcmp, i32 262144, i32 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %3)
  %switch.selectcmp99 = icmp eq i32 %3, 2500
  %switch.select100 = select i1 %switch.selectcmp99, i32 131072, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then4:                                         ; preds = %if.end
  %4 = add i32 %rate, -100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100000, i32 %4)
  %5 = icmp ult i32 %4, -100000
  br i1 %5, label %if.then4.cleanup_crit_edge, label %if.end10

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.then4
  %mul = shl nuw nsw i32 %rate, 7
  %div101 = udiv i32 %mul, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %rate)
  %cmp11 = icmp ult i32 %rate, 4000
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %switch.select100, 1
  br label %do.body

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %div101, 1
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then13, %if.end.do.body_crit_edge
  %tc_rate.0 = phi i32 [ %div101, %if.then13 ], [ %shr, %if.else ], [ 65535, %if.end.do.body_crit_edge ]
  %interval.1 = phi i32 [ %shl, %if.then13 ], [ %switch.select100, %if.else ], [ %switch.select100, %if.end.do.body_crit_edge ]
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 8
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %do.body.if.end27_crit_edge, label %do.body23, !prof !24

do.body.if.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %or = or i32 %interval.1, %tc_rate.0
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add = add nuw nsw i32 %conv, 8320
  %arrayidx = getelementptr i32, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %8) #6, !srcloc !26
  br label %if.end27

if.end27:                                         ; preds = %do.body23, %do.body.if.end27_crit_edge
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw, align 8
  %tobool37.not = icmp eq ptr %10, null
  br i1 %tobool37.not, label %if.end27.if.end53_crit_edge, label %do.body47, !prof !24

if.end27.if.end53_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.body47:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %add51 = add nuw nsw i32 %conv, 8256
  %arrayidx52 = getelementptr i32, ptr %10, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx52, i32 256) #6, !srcloc !26
  br label %if.end53

if.end53:                                         ; preds = %do.body47, %if.end27.if.end53_crit_edge
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw, align 8
  %tobool63.not = icmp eq ptr %12, null
  br i1 %tobool63.not, label %if.end53.cleanup_crit_edge, label %do.body73, !prof !24

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body73:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %add77 = add nuw nsw i32 %conv, 8192
  %arrayidx78 = getelementptr i32, ptr %12, i32 %add77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx78, i32 256) #6, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %do.body73, %if.end53.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %if.then4.cleanup_crit_edge ], [ 0, %do.body73 ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_iov_assign_int_moderator_pf(ptr noundef %hw, i16 noundef zeroext %vf_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vf_idx to i32
  %num_vfs = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %vf_idx)
  %cmp.not = icmp ugt i16 %1, %vf_idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_pools1.i.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %num_pools1.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pools1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %cmp.i.i = icmp ugt i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %3)
  %cmp4.i.i = icmp ugt i16 %3, 16
  %phi.cast.i.i = select i1 %cmp4.i.i, i16 16, i16 32
  %cond6.i.i = select i1 %cmp.i.i, i16 8, i16 %phi.cast.i.i
  %mul.i = mul i16 %cond6.i.i, %vf_idx
  %add.i = add i16 %mul.i, 256
  %add = add i16 %add.i, %cond6.i.i
  %conv7 = zext i16 %add to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %i.0.in = phi i16 [ %add, %if.end ], [ %i.0, %for.body.for.cond_crit_edge ]
  %i.0 = add i16 %i.0.in, -1
  %conv9 = zext i16 %i.0 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %i.0, i16 %add.i)
  %cmp11 = icmp ugt i16 %i.0, %add.i
  br i1 %cmp11, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %mul = shl nuw nsw i32 %conv9, 2
  %add14 = add nuw nsw i32 %mul, 69635
  %call15 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add14) #6
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %4 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_vfs, align 2
  %conv21 = zext i16 %5 to i32
  %sub22 = add nsw i32 %conv21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %conv)
  %cmp23 = icmp eq i32 %sub22, %conv
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 8
  %tobool28.not = icmp eq ptr %7, null
  br i1 %cmp23, label %do.body, label %do.body40

do.body:                                          ; preds = %for.end
  br i1 %tobool28.not, label %do.body.cleanup_crit_edge, label %do.body33, !prof !24

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %arrayidx = getelementptr i32, ptr %7, i32 75776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %8) #6, !srcloc !26
  br label %cleanup

do.body40:                                        ; preds = %for.end
  br i1 %tobool28.not, label %do.body40.cleanup_crit_edge, label %do.body57, !prof !24

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body57:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %mul62 = shl nuw nsw i32 %conv7, 1
  %add63 = add nuw nsw i32 %mul62, 75776
  %arrayidx64 = getelementptr i32, ptr %7, i32 %add63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx64, i32 %9) #6, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %do.body57, %do.body40.cleanup_crit_edge, %do.body33, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %do.body40.cleanup_crit_edge ], [ 0, %do.body57 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_iov_assign_default_mac_vlan_pf(ptr noundef %hw, ptr noundef %vf_info) #2 align 64 {
entry:
  %msg = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #6
  %tobool.not = icmp eq ptr %vf_info, null
  %0 = call ptr @memset(ptr %msg, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vf_idx1 = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 8
  %1 = ptrtoint ptr %vf_idx1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vf_idx1, align 1
  %num_vfs = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_vfs, align 2
  %5 = zext i8 %2 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %5)
  %cmp.not = icmp ugt i16 %4, %5
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %4)
  %cmp7 = icmp ugt i16 %4, 8
  %conv9 = select i1 %cmp7, i32 32, i32 256
  %num_pools1.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %num_pools1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pools1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %7)
  %cmp.i = icmp ugt i16 %7, 32
  br i1 %cmp.i, label %if.end.fm10k_vf_queue_index.exit_crit_edge, label %cond.false.i

if.end.fm10k_vf_queue_index.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_vf_queue_index.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %7)
  %cmp4.i = icmp ugt i16 %7, 16
  br i1 %cmp4.i, label %cond.false.i.fm10k_vf_queue_index.exit_crit_edge, label %cond.false7.i.i

cond.false.i.fm10k_vf_queue_index.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_vf_queue_index.exit

cond.false7.i.i:                                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp9.i = icmp ugt i16 %7, 8
  %phi.cast.i = select i1 %cmp9.i, i16 8, i16 16
  br label %fm10k_vf_queue_index.exit

fm10k_vf_queue_index.exit:                        ; preds = %cond.false7.i.i, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge, %if.end.fm10k_vf_queue_index.exit_crit_edge
  %cond13.i356 = phi i16 [ %phi.cast.i, %cond.false7.i.i ], [ 2, %if.end.fm10k_vf_queue_index.exit_crit_edge ], [ 4, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge ]
  %sub.neg.i = sub i16 %5, %4
  %mul.neg.i = mul i16 %cond13.i356, %sub.neg.i
  %sub5.i = add i16 %mul.neg.i, 256
  %conv14 = zext i8 %2 to i32
  %mul = mul nuw nsw i32 %conv9, %conv14
  %pf_vid = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 5
  %8 = ptrtoint ptr %pf_vid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pf_vid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool16.not = icmp eq i16 %9, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %fm10k_vf_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = or i16 %9, -32768
  br label %if.end21

if.else:                                          ; preds = %fm10k_vf_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sw_vid = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 4
  %11 = ptrtoint ptr %sw_vid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sw_vid, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %vf_vid.0 = phi i16 [ %10, %if.then17 ], [ %12, %if.else ]
  %call22 = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 2) #6
  %mac = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6
  %call25 = call i32 @fm10k_tlv_attr_put_mac_vlan(ptr noundef nonnull %msg, i16 noundef zeroext 3, ptr noundef %mac, i16 noundef zeroext %vf_vid.0) #6
  %conv26 = zext i16 %vf_vid.0 to i32
  %shl = shl nuw i32 %conv26, 16
  %and = and i32 %shl, 268369920
  %shl28 = shl nuw nsw i32 %conv14, 10
  %or29 = or i32 %shl28, %conv14
  %or31 = or i32 %or29, 64
  %or32 = or i32 %and, %or31
  %13 = call i32 @llvm.bswap.i32(i32 %or32)
  %conv47 = zext i16 %sub5.i to i32
  %wide.trip.count = zext i16 %cond13.i356 to i32
  br label %do.body

do.body:                                          ; preds = %if.end51.do.body_crit_edge, %if.end21
  %indvars.iv = phi i32 [ 0, %if.end21 ], [ %indvars.iv.next, %if.end51.do.body_crit_edge ]
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw, align 8
  %tobool39.not = icmp eq ptr %15, null
  br i1 %tobool39.not, label %do.body.if.end51_crit_edge, label %do.body44, !prof !24

do.body.if.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.body44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %add = add nuw nsw i32 %indvars.iv, %conv47
  %mul49 = shl nuw nsw i32 %add, 6
  %add50 = add nuw nsw i32 %mul49, 32775
  %arrayidx = getelementptr i32, ptr %15, i32 %add50
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %13) #6, !srcloc !26
  br label %if.end51

if.end51:                                         ; preds = %do.body44, %do.body.if.end51_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %if.end51.do.body_crit_edge

if.end51.do.body_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %if.end51
  %enqueue_tx = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %vf_info, i32 0, i32 5
  %16 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enqueue_tx, align 4
  %tobool54.not = icmp eq ptr %17, null
  br i1 %tobool54.not, label %for.end.do.body67_crit_edge, label %if.then55

for.end.do.body67_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

if.then55:                                        ; preds = %for.end
  %call61 = call i32 %17(ptr noundef %hw, ptr noundef nonnull %vf_info, ptr noundef nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -511, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, -511
  br i1 %cmp62.not, label %if.then55.do.body67_crit_edge, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then55.do.body67_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

do.body67:                                        ; preds = %if.then55.do.body67_crit_edge, %for.end.do.body67_crit_edge
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw, align 8
  %tobool74.not = icmp eq ptr %19, null
  br i1 %tobool74.not, label %do.body67.if.end90_crit_edge, label %do.body84, !prof !24

do.body67.if.end90_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

do.body84:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @arm_heavy_mb() #6
  %conv87 = and i32 %mul, 65504
  %add88 = add nuw nsw i32 %conv87, 10240
  %arrayidx89 = getelementptr i32, ptr %19, i32 %add88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx89, i32 0) #6, !srcloc !26
  br label %if.end90

if.end90:                                         ; preds = %do.body84, %do.body67.if.end90_crit_edge
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 8
  %tobool100.not = icmp eq ptr %21, null
  br i1 %tobool100.not, label %if.end90.if.end117_crit_edge, label %do.body110, !prof !24

if.end90.if.end117_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = shl nuw nsw i32 %conv47, 6
  %.pre364 = add nuw nsw i32 %.pre, 32774
  br label %if.end117

do.body110:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @arm_heavy_mb() #6
  %mul114 = shl nuw nsw i32 %conv47, 6
  %add115 = add nuw nsw i32 %mul114, 32774
  %arrayidx116 = getelementptr i32, ptr %21, i32 %add115
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx116, i32 0) #6, !srcloc !26
  br label %if.end117

if.end117:                                        ; preds = %do.body110, %if.end90.if.end117_crit_edge
  %add122.pre-phi = phi i32 [ %.pre364, %if.end90.if.end117_crit_edge ], [ %add115, %do.body110 ]
  %mul121.pre-phi = phi i32 [ %.pre, %if.end90.if.end117_crit_edge ], [ %mul114, %do.body110 ]
  %call123 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125361 = and i32 %call123, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125361)
  %tobool126.not362 = icmp eq i32 %and125361, 0
  br i1 %tobool126.not362, label %if.end117.for.end139_crit_edge, label %for.body127.preheader

if.end117.for.end139_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.preheader:                            ; preds = %if.end117
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125 = and i32 %call136, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %for.body127.preheader.for.end139_crit_edge, label %for.body127.1

for.body127.preheader.for.end139_crit_edge:       ; preds = %for.body127.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.1:                                    ; preds = %for.body127.preheader
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.1 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.1 = and i32 %call136.1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.1)
  %tobool126.not.1 = icmp eq i32 %and125.1, 0
  br i1 %tobool126.not.1, label %for.body127.1.for.end139_crit_edge, label %for.body127.2

for.body127.1.for.end139_crit_edge:               ; preds = %for.body127.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.2:                                    ; preds = %for.body127.1
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.2 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.2 = and i32 %call136.2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.2)
  %tobool126.not.2 = icmp eq i32 %and125.2, 0
  br i1 %tobool126.not.2, label %for.body127.2.for.end139_crit_edge, label %for.body127.3

for.body127.2.for.end139_crit_edge:               ; preds = %for.body127.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.3:                                    ; preds = %for.body127.2
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.3 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.3 = and i32 %call136.3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.3)
  %tobool126.not.3 = icmp eq i32 %and125.3, 0
  br i1 %tobool126.not.3, label %for.body127.3.for.end139_crit_edge, label %for.body127.4

for.body127.3.for.end139_crit_edge:               ; preds = %for.body127.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.4:                                    ; preds = %for.body127.3
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.4 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.4 = and i32 %call136.4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.4)
  %tobool126.not.4 = icmp eq i32 %and125.4, 0
  br i1 %tobool126.not.4, label %for.body127.4.for.end139_crit_edge, label %for.body127.5

for.body127.4.for.end139_crit_edge:               ; preds = %for.body127.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.5:                                    ; preds = %for.body127.4
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.5 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.5 = and i32 %call136.5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.5)
  %tobool126.not.5 = icmp eq i32 %and125.5, 0
  br i1 %tobool126.not.5, label %for.body127.5.for.end139_crit_edge, label %for.body127.6

for.body127.5.for.end139_crit_edge:               ; preds = %for.body127.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.6:                                    ; preds = %for.body127.5
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.6 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.6 = and i32 %call136.6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.6)
  %tobool126.not.6 = icmp eq i32 %and125.6, 0
  br i1 %tobool126.not.6, label %for.body127.6.for.end139_crit_edge, label %for.body127.7

for.body127.6.for.end139_crit_edge:               ; preds = %for.body127.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.7:                                    ; preds = %for.body127.6
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.7 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.7 = and i32 %call136.7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.7)
  %tobool126.not.7 = icmp eq i32 %and125.7, 0
  br i1 %tobool126.not.7, label %for.body127.7.for.end139_crit_edge, label %for.body127.8

for.body127.7.for.end139_crit_edge:               ; preds = %for.body127.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.8:                                    ; preds = %for.body127.7
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.8 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.8 = and i32 %call136.8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.8)
  %tobool126.not.8 = icmp eq i32 %and125.8, 0
  br i1 %tobool126.not.8, label %for.body127.8.for.end139_crit_edge, label %for.body127.9

for.body127.8.for.end139_crit_edge:               ; preds = %for.body127.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.body127.9:                                    ; preds = %for.body127.8
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %call136.9 = call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122.pre-phi) #6
  %and125.9 = and i32 %call136.9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.9)
  %tobool126.not.9 = icmp eq i32 %and125.9, 0
  br i1 %tobool126.not.9, label %for.body127.9.for.end139_crit_edge, label %for.body127.9.do.body257_crit_edge

for.body127.9.do.body257_crit_edge:               ; preds = %for.body127.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body257

for.body127.9.for.end139_crit_edge:               ; preds = %for.body127.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139

for.end139:                                       ; preds = %for.body127.9.for.end139_crit_edge, %for.body127.8.for.end139_crit_edge, %for.body127.7.for.end139_crit_edge, %for.body127.6.for.end139_crit_edge, %for.body127.5.for.end139_crit_edge, %for.body127.4.for.end139_crit_edge, %for.body127.3.for.end139_crit_edge, %for.body127.2.for.end139_crit_edge, %for.body127.1.for.end139_crit_edge, %for.body127.preheader.for.end139_crit_edge, %if.end117.for.end139_crit_edge
  %22 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac, align 4
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %for.end139.do.body173_crit_edge

for.end139.do.body173_crit_edge:                  ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body173

is_valid_ether_addr.exit:                         ; preds = %for.end139
  %add.ptr.i.i = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %or.i.i = or i32 %23, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i353.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i353.not, label %is_valid_ether_addr.exit.do.body173_crit_edge, label %if.then143

is_valid_ether_addr.exit.do.body173_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body173

if.then143:                                       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx145 = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx145, align 1
  %conv146 = zext i8 %28 to i32
  %shl147 = shl nuw i32 %conv146, 24
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i, align 2
  %conv150 = zext i8 %30 to i32
  %shl151 = shl nuw nsw i32 %conv150, 16
  %or152 = or i32 %shl151, %shl147
  %arrayidx154 = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 5
  %31 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %32 to i32
  %shl156 = shl nuw nsw i32 %conv155, 8
  %or157 = or i32 %or152, %shl156
  %33 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mac, align 2
  %conv160 = zext i8 %34 to i32
  %shl161 = shl nuw nsw i32 %conv160, 16
  %arrayidx164 = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %36 to i32
  %shl166 = shl nuw nsw i32 %conv165, 8
  %arrayidx169 = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx169, align 2
  %conv170 = zext i8 %38 to i32
  %or162 = or i32 %shl161, %shl166
  %or167 = or i32 %or162, %conv170
  %or171 = or i32 %or167, -16777216
  br label %do.body173

do.body173:                                       ; preds = %if.then143, %is_valid_ether_addr.exit.do.body173_crit_edge, %for.end139.do.body173_crit_edge
  %tdbal.0 = phi i32 [ %or157, %if.then143 ], [ 0, %is_valid_ether_addr.exit.do.body173_crit_edge ], [ 0, %for.end139.do.body173_crit_edge ]
  %tdbah.0 = phi i32 [ %or171, %if.then143 ], [ 0, %is_valid_ether_addr.exit.do.body173_crit_edge ], [ 0, %for.end139.do.body173_crit_edge ]
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %hw, align 8
  %tobool180.not = icmp eq ptr %40, null
  br i1 %tobool180.not, label %do.body173.if.end197_crit_edge, label %do.body190, !prof !24

do.body173.if.end197_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

do.body190:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  call void @arm_heavy_mb() #6
  %41 = call i32 @llvm.bswap.i32(i32 %tdbal.0)
  %add195 = add nuw nsw i32 %mul121.pre-phi, 32768
  %arrayidx196 = getelementptr i32, ptr %40, i32 %add195
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx196, i32 %41) #6, !srcloc !26
  br label %if.end197

if.end197:                                        ; preds = %do.body190, %do.body173.if.end197_crit_edge
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %hw, align 8
  %tobool207.not = icmp eq ptr %43, null
  br i1 %tobool207.not, label %if.end197.if.end224_crit_edge, label %do.body217, !prof !24

if.end197.if.end224_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224

do.body217:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @arm_heavy_mb() #6
  %44 = call i32 @llvm.bswap.i32(i32 %tdbah.0)
  %add222 = add nuw nsw i32 %mul121.pre-phi, 32769
  %arrayidx223 = getelementptr i32, ptr %43, i32 %add222
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx223, i32 %44) #6, !srcloc !26
  br label %if.end224

if.end224:                                        ; preds = %do.body217, %if.end197.if.end224_crit_edge
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %hw, align 8
  %tobool234.not = icmp eq ptr %46, null
  br i1 %tobool234.not, label %if.end224.do.body257_crit_edge, label %do.body244, !prof !24

if.end224.do.body257_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body257

do.body244:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @arm_heavy_mb() #6
  %itr_scale = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 11
  %47 = ptrtoint ptr %itr_scale to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %itr_scale, align 4
  %conv248 = zext i8 %48 to i32
  %shl249 = shl nuw nsw i32 %conv248, 9
  %49 = call i32 @llvm.bswap.i32(i32 %shl249)
  %add252 = add nuw nsw i32 %mul121.pre-phi, 32770
  %arrayidx253 = getelementptr i32, ptr %46, i32 %add252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx253, i32 %49) #6, !srcloc !26
  br label %do.body257

do.body257:                                       ; preds = %do.body244, %if.end224.do.body257_crit_edge, %for.body127.9.do.body257_crit_edge
  %err.1 = phi i32 [ 0, %do.body244 ], [ 0, %if.end224.do.body257_crit_edge ], [ -6, %for.body127.9.do.body257_crit_edge ]
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %hw, align 8
  %tobool264.not = icmp eq ptr %51, null
  br i1 %tobool264.not, label %do.body257.cleanup_crit_edge, label %do.body274, !prof !24

do.body257.cleanup_crit_edge:                     ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body274:                                       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  call void @arm_heavy_mb() #6
  %52 = call i32 @llvm.bswap.i32(i32 %conv47)
  %conv278 = and i32 %mul, 65504
  %add279 = add nuw nsw i32 %conv278, 10240
  %arrayidx280 = getelementptr i32, ptr %51, i32 %add279
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx280, i32 %52) #6, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %do.body274, %do.body257.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ %call61, %if.then55.cleanup_crit_edge ], [ %err.1, %do.body274 ], [ %err.1, %do.body257.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_iov_reset_resources_pf(ptr noundef %hw, ptr noundef %vf_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vf_idx1 = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 8
  %0 = ptrtoint ptr %vf_idx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vf_idx1, align 1
  %conv = zext i8 %1 to i32
  %num_vfs = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_vfs, align 2
  %4 = zext i8 %1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %4)
  %cmp.not = icmp ugt i16 %3, %4
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body.if.end15_crit_edge, label %do.body10, !prof !24

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %rem = and i32 %conv, 31
  %shl = shl nuw i32 1, %rem
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %div990 = lshr i32 %conv, 5
  %add = add nuw nsw i32 %div990, 100422
  %arrayidx = getelementptr i32, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #6, !srcloc !26
  br label %if.end15

if.end15:                                         ; preds = %do.body10, %do.body.if.end15_crit_edge
  %timeout = getelementptr inbounds %struct.fm10k_mbx_info, ptr %vf_info, i32 0, i32 4
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %timeout, align 4
  %disconnect = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %vf_info, i32 0, i32 1
  %9 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disconnect, align 4
  %tobool19.not = icmp eq ptr %10, null
  br i1 %tobool19.not, label %if.end15.if.end25_crit_edge, label %if.then20

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %10(ptr noundef %hw, ptr noundef %vf_info) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end15.if.end25_crit_edge
  %num_pools1.i.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %num_pools1.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pools1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %12)
  %cmp.i.i = icmp ugt i16 %12, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %12)
  %cmp4.i.i = icmp ugt i16 %12, 16
  %phi.cast.i.i = select i1 %cmp4.i.i, i16 16, i16 32
  %cond6.i.i = select i1 %cmp.i.i, i16 8, i16 %phi.cast.i.i
  %mul.i = mul nuw nsw i16 %cond6.i.i, %4
  %add.i = add nuw nsw i16 %mul.i, 256
  %conv27 = zext i16 %add.i to i32
  %13 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_vfs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %14)
  %cmp35 = icmp ugt i16 %14, 8
  %conv37 = select i1 %cmp35, i32 32, i32 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %12)
  %cmp9.i = icmp ugt i16 %12, 8
  %phi.cast.i994 = select i1 %cmp9.i, i32 8, i32 16
  %mul41 = mul nuw nsw i32 %conv37, %conv
  %conv43 = and i32 %mul41, 65504
  %add46 = add nuw nsw i32 %conv43, %conv37
  br label %do.body49

do.body49:                                        ; preds = %if.end96.do.body49_crit_edge, %if.end25
  %i.01000 = phi i32 [ %conv43, %if.end25 ], [ %inc, %if.end96.do.body49_crit_edge ]
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw, align 8
  %tobool56.not = icmp eq ptr %16, null
  br i1 %tobool56.not, label %do.body49.if.end71_crit_edge, label %do.body66, !prof !24

do.body49.if.end71_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

do.body66:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %add69 = add nuw nsw i32 %i.01000, 10240
  %arrayidx70 = getelementptr i32, ptr %16, i32 %add69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx70, i32 0) #6, !srcloc !26
  br label %if.end71

if.end71:                                         ; preds = %do.body66, %do.body49.if.end71_crit_edge
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 8
  %tobool81.not = icmp eq ptr %18, null
  br i1 %tobool81.not, label %if.end71.if.end96_crit_edge, label %do.body91, !prof !24

if.end71.if.end96_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

do.body91:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %add94 = add nuw nsw i32 %i.01000, 12288
  %arrayidx95 = getelementptr i32, ptr %18, i32 %add94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx95, i32 0) #6, !srcloc !26
  br label %if.end96

if.end96:                                         ; preds = %do.body91, %if.end71.if.end96_crit_edge
  %inc = add nuw nsw i32 %i.01000, 1
  %cmp47 = icmp ult i32 %inc, %add46
  br i1 %cmp47, label %if.end96.do.body49_crit_edge, label %for.end

if.end96.do.body49_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body49

for.end:                                          ; preds = %if.end96
  %add30 = add nuw i16 %add.i, %cond6.i.i
  %.mux = select i1 %cmp.i.i, i32 2, i32 4
  %cond13.i = select i1 %cmp4.i.i, i32 %.mux, i32 %phi.cast.i994
  %19 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_vfs, align 2
  %21 = ptrtoint ptr %num_pools1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_pools1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %22)
  %cmp.i.i996 = icmp ugt i16 %22, 32
  br i1 %cmp.i.i996, label %for.end.fm10k_vf_queue_index.exit_crit_edge, label %cond.false.i.i

for.end.fm10k_vf_queue_index.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_vf_queue_index.exit

cond.false.i.i:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %22)
  %cmp4.i.i997 = icmp ugt i16 %22, 16
  br i1 %cmp4.i.i997, label %cond.false.i.i.fm10k_vf_queue_index.exit_crit_edge, label %cond.false7.i.i

cond.false.i.i.fm10k_vf_queue_index.exit_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_vf_queue_index.exit

cond.false7.i.i:                                  ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %22)
  %cmp9.i.i = icmp ugt i16 %22, 8
  %phi.cast.i.i998 = select i1 %cmp9.i.i, i16 8, i16 16
  br label %fm10k_vf_queue_index.exit

fm10k_vf_queue_index.exit:                        ; preds = %cond.false7.i.i, %cond.false.i.i.fm10k_vf_queue_index.exit_crit_edge, %for.end.fm10k_vf_queue_index.exit_crit_edge
  %cond13.i.i = phi i16 [ 2, %for.end.fm10k_vf_queue_index.exit_crit_edge ], [ %phi.cast.i.i998, %cond.false7.i.i ], [ 4, %cond.false.i.i.fm10k_vf_queue_index.exit_crit_edge ]
  %sub.neg.i = sub i16 %4, %20
  %mul.neg.i = mul i16 %cond13.i.i, %sub.neg.i
  %sub5.i = add i16 %mul.neg.i, 256
  %pf_vid = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 5
  %23 = ptrtoint ptr %pf_vid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pf_vid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool101.not = icmp eq i16 %24, 0
  br i1 %tobool101.not, label %if.else, label %fm10k_vf_queue_index.exit.if.end104_crit_edge

fm10k_vf_queue_index.exit.if.end104_crit_edge:    ; preds = %fm10k_vf_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.else:                                          ; preds = %fm10k_vf_queue_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sw_vid = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 4
  %25 = ptrtoint ptr %sw_vid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sw_vid, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.else, %fm10k_vf_queue_index.exit.if.end104_crit_edge
  %vf_vid.0 = phi i16 [ %26, %if.else ], [ %24, %fm10k_vf_queue_index.exit.if.end104_crit_edge ]
  %conv105 = zext i16 %vf_vid.0 to i32
  %shl106 = shl nuw i32 %conv105, 16
  %shl108 = shl nuw nsw i32 %conv, 10
  %or = or i32 %shl108, %conv
  %or109 = or i32 %or, %shl106
  %or111 = or i32 %or109, 64
  %shl113 = shl nuw nsw i32 %conv, 2
  %or114 = or i32 %shl113, 256
  %conv115 = zext i16 %sub5.i to i32
  %add119 = add nuw nsw i32 %cond13.i, %conv115
  %27 = tail call i32 @llvm.bswap.i32(i32 %or111)
  %28 = tail call i32 @llvm.bswap.i32(i32 %or114)
  br label %do.body123

do.body123:                                       ; preds = %if.end224.do.body123_crit_edge, %if.end104
  %i.11001 = phi i32 [ %conv115, %if.end104 ], [ %inc228, %if.end224.do.body123_crit_edge ]
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw, align 8
  %tobool130.not = icmp eq ptr %30, null
  br i1 %tobool130.not, label %do.body123.if.end146_crit_edge, label %do.body140, !prof !24

do.body123.if.end146_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

do.body140:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %mul143 = shl i32 %i.11001, 6
  %add144 = add nuw nsw i32 %mul143, 32774
  %arrayidx145 = getelementptr i32, ptr %30, i32 %add144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx145, i32 0) #6, !srcloc !26
  br label %if.end146

if.end146:                                        ; preds = %do.body140, %do.body123.if.end146_crit_edge
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw, align 8
  %tobool156.not = icmp eq ptr %32, null
  br i1 %tobool156.not, label %if.end146.if.end172_crit_edge, label %do.body166, !prof !24

if.end146.if.end172_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

do.body166:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %mul169 = shl i32 %i.11001, 6
  %add170 = add nuw nsw i32 %mul169, 32775
  %arrayidx171 = getelementptr i32, ptr %32, i32 %add170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx171, i32 %27) #6, !srcloc !26
  br label %if.end172

if.end172:                                        ; preds = %do.body166, %if.end146.if.end172_crit_edge
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw, align 8
  %tobool182.not = icmp eq ptr %34, null
  br i1 %tobool182.not, label %if.end172.if.end198_crit_edge, label %do.body192, !prof !24

if.end172.if.end198_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

do.body192:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %mul195 = shl i32 %i.11001, 6
  %add196 = add nuw nsw i32 %mul195, 16391
  %arrayidx197 = getelementptr i32, ptr %34, i32 %add196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx197, i32 16908288) #6, !srcloc !26
  br label %if.end198

if.end198:                                        ; preds = %do.body192, %if.end172.if.end198_crit_edge
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw, align 8
  %tobool208.not = icmp eq ptr %36, null
  br i1 %tobool208.not, label %if.end198.if.end224_crit_edge, label %do.body218, !prof !24

if.end198.if.end224_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224

do.body218:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %mul221 = shl i32 %i.11001, 6
  %add222 = add nuw nsw i32 %mul221, 16390
  %arrayidx223 = getelementptr i32, ptr %36, i32 %add222
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx223, i32 %28) #6, !srcloc !26
  br label %if.end224

if.end224:                                        ; preds = %do.body218, %if.end198.if.end224_crit_edge
  %inc228 = add nuw nsw i32 %i.11001, 1
  %cmp120 = icmp ult i32 %inc228, %add119
  br i1 %cmp120, label %if.end224.do.body123_crit_edge, label %do.body230

if.end224.do.body123_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body123

do.body230:                                       ; preds = %if.end224
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %hw, align 8
  %tobool237.not = icmp eq ptr %38, null
  br i1 %tobool237.not, label %do.body230.if.end253_crit_edge, label %do.body247, !prof !24

do.body230.if.end253_crit_edge:                   ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

do.body247:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %add251 = add nuw nsw i32 %conv, 8256
  %arrayidx252 = getelementptr i32, ptr %38, i32 %add251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx252, i32 0) #6, !srcloc !26
  br label %if.end253

if.end253:                                        ; preds = %do.body247, %do.body230.if.end253_crit_edge
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %hw, align 8
  %tobool263.not = icmp eq ptr %40, null
  br i1 %tobool263.not, label %if.end253.if.end279_crit_edge, label %do.body273, !prof !24

if.end253.if.end279_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

do.body273:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %add277 = add nuw nsw i32 %conv, 8320
  %arrayidx278 = getelementptr i32, ptr %40, i32 %add277
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx278, i32 0) #6, !srcloc !26
  br label %if.end279

if.end279:                                        ; preds = %do.body273, %if.end253.if.end279_crit_edge
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %hw, align 8
  %tobool289.not = icmp eq ptr %42, null
  br i1 %tobool289.not, label %if.end279.if.end305_crit_edge, label %do.body299, !prof !24

if.end279.if.end305_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end305

do.body299:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %add303 = or i32 %conv, 8192
  %arrayidx304 = getelementptr i32, ptr %42, i32 %add303
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx304, i32 -57600) #6, !srcloc !26
  br label %if.end305

if.end305:                                        ; preds = %do.body299, %if.end279.if.end305_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool308.not = icmp eq i8 %1, 0
  br i1 %tobool308.not, label %if.then309, label %if.else311

if.then309:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #8
  %update_int_moderator = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 0, i32 12
  %43 = ptrtoint ptr %update_int_moderator to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %update_int_moderator, align 8
  tail call void %44(ptr noundef %hw) #6
  br label %if.end317

if.else311:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #8
  %assign_int_moderator = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 0, i32 2
  %45 = ptrtoint ptr %assign_int_moderator to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %assign_int_moderator, align 8
  %conv315 = add nsw i16 %4, -1
  %call316 = tail call i32 %46(ptr noundef %hw, i16 noundef zeroext %conv315) #6
  br label %if.end317

if.end317:                                        ; preds = %if.else311, %if.then309
  %47 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_vfs, align 2
  %conv321 = zext i16 %48 to i32
  %sub322 = add nsw i32 %conv321, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub322, i32 %conv)
  %cmp323 = icmp eq i32 %sub322, %conv
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %hw, align 8
  %tobool333.not = icmp eq ptr %50, null
  br i1 %cmp323, label %do.body326, label %do.body352

do.body326:                                       ; preds = %if.end317
  br i1 %tobool333.not, label %do.body326.if.end380_crit_edge, label %do.body343, !prof !24

do.body326.if.end380_crit_edge:                   ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end380

do.body343:                                       ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv27)
  %arrayidx347 = getelementptr i32, ptr %50, i32 75776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx347, i32 %51) #6, !srcloc !26
  br label %if.end380

do.body352:                                       ; preds = %if.end317
  br i1 %tobool333.not, label %do.body352.if.end380_crit_edge, label %do.body369, !prof !24

do.body352.if.end380_crit_edge:                   ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end380

do.body369:                                       ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv27)
  %53 = shl nuw i16 %add30, 1
  %mul374 = zext i16 %53 to i32
  %add375 = add nuw nsw i32 %mul374, 75776
  %arrayidx376 = getelementptr i32, ptr %50, i32 %add375
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx376, i32 %52) #6, !srcloc !26
  br label %if.end380

if.end380:                                        ; preds = %do.body369, %do.body352.if.end380_crit_edge, %do.body343, %do.body326.if.end380_crit_edge
  %vf_v_idx.01003 = add nuw nsw i16 %mul.i, 257
  call void @__sanitizer_cov_trace_cmp2(i16 %vf_v_idx.01003, i16 %add30)
  %cmp3851005 = icmp ult i16 %vf_v_idx.01003, %add30
  br i1 %cmp3851005, label %do.body388.preheader, label %if.end380.for.cond420.preheader_crit_edge

if.end380.for.cond420.preheader_crit_edge:        ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond420.preheader

do.body388.preheader:                             ; preds = %if.end380
  %narrow = add nuw nsw i16 %mul.i, 257
  %54 = zext i16 %narrow to i32
  %wide.trip.count = zext i16 %add30 to i32
  br label %do.body388

for.cond420.preheader:                            ; preds = %if.end414.for.cond420.preheader_crit_edge, %if.end380.for.cond420.preheader_crit_edge
  %mul444 = shl nuw nsw i32 %conv, 4
  %add445 = or i32 %mul444, 98304
  br label %do.body423

do.body388:                                       ; preds = %if.end414.do.body388_crit_edge, %do.body388.preheader
  %indvars.iv = phi i32 [ %54, %do.body388.preheader ], [ %indvars.iv.next, %if.end414.do.body388_crit_edge ]
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %hw, align 8
  %tobool395.not = icmp eq ptr %56, null
  br i1 %tobool395.not, label %do.body388.if.end414_crit_edge, label %do.body405, !prof !24

do.body388.if.end414_crit_edge:                   ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end414

do.body405:                                       ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %sub409 = add nsw i32 %indvars.iv, -1
  %57 = tail call i32 @llvm.bswap.i32(i32 %sub409)
  %mul411 = shl nuw nsw i32 %indvars.iv, 1
  %add412 = add nuw nsw i32 %mul411, 75776
  %arrayidx413 = getelementptr i32, ptr %56, i32 %add412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx413, i32 %57) #6, !srcloc !26
  br label %if.end414

if.end414:                                        ; preds = %do.body405, %do.body388.if.end414_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end414.for.cond420.preheader_crit_edge, label %if.end414.do.body388_crit_edge

if.end414.do.body388_crit_edge:                   ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body388

if.end414.for.cond420.preheader_crit_edge:        ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond420.preheader

for.cond452.preheader:                            ; preds = %if.end448
  %vsi = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 7
  br label %do.body456

do.body423:                                       ; preds = %if.end448.do.body423_crit_edge, %for.cond420.preheader
  %dec1008 = phi i32 [ 15, %for.cond420.preheader ], [ %dec, %if.end448.do.body423_crit_edge ]
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %hw, align 8
  %tobool430.not = icmp eq ptr %59, null
  br i1 %tobool430.not, label %do.body423.if.end448_crit_edge, label %do.body440, !prof !24

do.body423.if.end448_crit_edge:                   ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end448

do.body440:                                       ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %add446 = add nuw nsw i32 %add445, %dec1008
  %arrayidx447 = getelementptr i32, ptr %59, i32 %add446
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx447, i32 0) #6, !srcloc !26
  br label %if.end448

if.end448:                                        ; preds = %do.body440, %do.body423.if.end448_crit_edge
  %dec = add nsw i32 %dec1008, -1
  %tobool421.not = icmp eq i32 %dec1008, 0
  br i1 %tobool421.not, label %for.cond452.preheader, label %if.end448.do.body423_crit_edge

if.end448.do.body423_crit_edge:                   ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body423

do.body456:                                       ; preds = %if.end481.do.body456_crit_edge, %for.cond452.preheader
  %dec4531010 = phi i32 [ 127, %for.cond452.preheader ], [ %dec453, %if.end481.do.body456_crit_edge ]
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %hw, align 8
  %tobool463.not = icmp eq ptr %61, null
  br i1 %tobool463.not, label %do.body456.if.end481_crit_edge, label %do.body473, !prof !24

do.body456.if.end481_crit_edge:                   ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end481

do.body473:                                       ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vsi, align 8
  %conv476 = zext i8 %63 to i32
  %mul477 = shl nuw nsw i32 %conv476, 7
  %add478 = add nuw nsw i32 %dec4531010, 81920
  %add479 = add i32 %add478, %mul477
  %arrayidx480 = getelementptr i32, ptr %61, i32 %add479
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx480, i32 0) #6, !srcloc !26
  br label %if.end481

if.end481:                                        ; preds = %do.body473, %do.body456.if.end481_crit_edge
  %dec453 = add nsw i32 %dec4531010, -1
  %tobool454.not = icmp eq i32 %dec4531010, 0
  br i1 %tobool454.not, label %if.end481.do.body489_crit_edge, label %if.end481.do.body456_crit_edge

if.end481.do.body456_crit_edge:                   ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body456

if.end481.do.body489_crit_edge:                   ; preds = %if.end481
  br label %do.body489

for.cond519.preheader:                            ; preds = %if.end515
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %hw, align 8
  %tobool530.not = icmp eq ptr %65, null
  br i1 %tobool530.not, label %for.cond519.preheader.if.end549_crit_edge, label %do.body540, !prof !24

for.cond519.preheader.if.end549_crit_edge:        ; preds = %for.cond519.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549

do.body489:                                       ; preds = %if.end515.do.body489_crit_edge, %if.end481.do.body489_crit_edge
  %dec4861011 = phi i32 [ %dec486, %if.end515.do.body489_crit_edge ], [ 31, %if.end481.do.body489_crit_edge ]
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %hw, align 8
  %tobool496.not = icmp eq ptr %67, null
  br i1 %tobool496.not, label %do.body489.if.end515_crit_edge, label %do.body506, !prof !24

do.body489.if.end515_crit_edge:                   ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end515

do.body506:                                       ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vsi, align 8
  %conv510 = zext i8 %69 to i32
  %mul511 = shl nuw nsw i32 %conv510, 5
  %add512 = add nuw nsw i32 %dec4861011, 4096
  %add513 = add i32 %add512, %mul511
  %arrayidx514 = getelementptr i32, ptr %67, i32 %add513
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx514, i32 0) #6, !srcloc !26
  br label %if.end515

if.end515:                                        ; preds = %do.body506, %do.body489.if.end515_crit_edge
  %dec486 = add nsw i32 %dec4861011, -1
  %tobool487.not = icmp eq i32 %dec4861011, 0
  br i1 %tobool487.not, label %for.cond519.preheader, label %if.end515.do.body489_crit_edge

if.end515.do.body489_crit_edge:                   ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body489

do.body540:                                       ; preds = %for.cond519.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %vsi, align 8
  %conv544 = zext i8 %71 to i32
  %mul545 = shl nuw nsw i32 %conv544, 4
  %add547 = add nuw nsw i32 %mul545, 2057
  %arrayidx548 = getelementptr i32, ptr %65, i32 %add547
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548, i32 0) #6, !srcloc !26
  br label %if.end549

if.end549:                                        ; preds = %do.body540, %for.cond519.preheader.if.end549_crit_edge
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.1 = icmp eq ptr %73, null
  br i1 %tobool530.not.1, label %if.end549.if.end549.1_crit_edge, label %do.body540.1, !prof !24

if.end549.if.end549.1_crit_edge:                  ; preds = %if.end549
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.1

do.body540.1:                                     ; preds = %if.end549
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %vsi, align 8
  %conv544.1 = zext i8 %75 to i32
  %mul545.1 = shl nuw nsw i32 %conv544.1, 4
  %add547.1 = add nuw nsw i32 %mul545.1, 2056
  %arrayidx548.1 = getelementptr i32, ptr %73, i32 %add547.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.1, i32 0) #6, !srcloc !26
  br label %if.end549.1

if.end549.1:                                      ; preds = %do.body540.1, %if.end549.if.end549.1_crit_edge
  %76 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.2 = icmp eq ptr %77, null
  br i1 %tobool530.not.2, label %if.end549.1.if.end549.2_crit_edge, label %do.body540.2, !prof !24

if.end549.1.if.end549.2_crit_edge:                ; preds = %if.end549.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.2

do.body540.2:                                     ; preds = %if.end549.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %vsi, align 8
  %conv544.2 = zext i8 %79 to i32
  %mul545.2 = shl nuw nsw i32 %conv544.2, 4
  %add547.2 = add nuw nsw i32 %mul545.2, 2055
  %arrayidx548.2 = getelementptr i32, ptr %77, i32 %add547.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.2, i32 0) #6, !srcloc !26
  br label %if.end549.2

if.end549.2:                                      ; preds = %do.body540.2, %if.end549.1.if.end549.2_crit_edge
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.3 = icmp eq ptr %81, null
  br i1 %tobool530.not.3, label %if.end549.2.if.end549.3_crit_edge, label %do.body540.3, !prof !24

if.end549.2.if.end549.3_crit_edge:                ; preds = %if.end549.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.3

do.body540.3:                                     ; preds = %if.end549.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vsi, align 8
  %conv544.3 = zext i8 %83 to i32
  %mul545.3 = shl nuw nsw i32 %conv544.3, 4
  %add547.3 = add nuw nsw i32 %mul545.3, 2054
  %arrayidx548.3 = getelementptr i32, ptr %81, i32 %add547.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.3, i32 0) #6, !srcloc !26
  br label %if.end549.3

if.end549.3:                                      ; preds = %do.body540.3, %if.end549.2.if.end549.3_crit_edge
  %84 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.4 = icmp eq ptr %85, null
  br i1 %tobool530.not.4, label %if.end549.3.if.end549.4_crit_edge, label %do.body540.4, !prof !24

if.end549.3.if.end549.4_crit_edge:                ; preds = %if.end549.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.4

do.body540.4:                                     ; preds = %if.end549.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %86 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %vsi, align 8
  %conv544.4 = zext i8 %87 to i32
  %mul545.4 = shl nuw nsw i32 %conv544.4, 4
  %add547.4 = add nuw nsw i32 %mul545.4, 2053
  %arrayidx548.4 = getelementptr i32, ptr %85, i32 %add547.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.4, i32 0) #6, !srcloc !26
  br label %if.end549.4

if.end549.4:                                      ; preds = %do.body540.4, %if.end549.3.if.end549.4_crit_edge
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.5 = icmp eq ptr %89, null
  br i1 %tobool530.not.5, label %if.end549.4.if.end549.5_crit_edge, label %do.body540.5, !prof !24

if.end549.4.if.end549.5_crit_edge:                ; preds = %if.end549.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.5

do.body540.5:                                     ; preds = %if.end549.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %vsi, align 8
  %conv544.5 = zext i8 %91 to i32
  %mul545.5 = shl nuw nsw i32 %conv544.5, 4
  %add547.5 = add nuw nsw i32 %mul545.5, 2052
  %arrayidx548.5 = getelementptr i32, ptr %89, i32 %add547.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.5, i32 0) #6, !srcloc !26
  br label %if.end549.5

if.end549.5:                                      ; preds = %do.body540.5, %if.end549.4.if.end549.5_crit_edge
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.6 = icmp eq ptr %93, null
  br i1 %tobool530.not.6, label %if.end549.5.if.end549.6_crit_edge, label %do.body540.6, !prof !24

if.end549.5.if.end549.6_crit_edge:                ; preds = %if.end549.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.6

do.body540.6:                                     ; preds = %if.end549.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %94 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %vsi, align 8
  %conv544.6 = zext i8 %95 to i32
  %mul545.6 = shl nuw nsw i32 %conv544.6, 4
  %add547.6 = add nuw nsw i32 %mul545.6, 2051
  %arrayidx548.6 = getelementptr i32, ptr %93, i32 %add547.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.6, i32 0) #6, !srcloc !26
  br label %if.end549.6

if.end549.6:                                      ; preds = %do.body540.6, %if.end549.5.if.end549.6_crit_edge
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.7 = icmp eq ptr %97, null
  br i1 %tobool530.not.7, label %if.end549.6.if.end549.7_crit_edge, label %do.body540.7, !prof !24

if.end549.6.if.end549.7_crit_edge:                ; preds = %if.end549.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.7

do.body540.7:                                     ; preds = %if.end549.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %vsi, align 8
  %conv544.7 = zext i8 %99 to i32
  %mul545.7 = shl nuw nsw i32 %conv544.7, 4
  %add547.7 = add nuw nsw i32 %mul545.7, 2050
  %arrayidx548.7 = getelementptr i32, ptr %97, i32 %add547.7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.7, i32 0) #6, !srcloc !26
  br label %if.end549.7

if.end549.7:                                      ; preds = %do.body540.7, %if.end549.6.if.end549.7_crit_edge
  %100 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.8 = icmp eq ptr %101, null
  br i1 %tobool530.not.8, label %if.end549.7.if.end549.8_crit_edge, label %do.body540.8, !prof !24

if.end549.7.if.end549.8_crit_edge:                ; preds = %if.end549.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.8

do.body540.8:                                     ; preds = %if.end549.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %vsi, align 8
  %conv544.8 = zext i8 %103 to i32
  %mul545.8 = shl nuw nsw i32 %conv544.8, 4
  %add547.8 = add nuw nsw i32 %mul545.8, 2049
  %arrayidx548.8 = getelementptr i32, ptr %101, i32 %add547.8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.8, i32 0) #6, !srcloc !26
  br label %if.end549.8

if.end549.8:                                      ; preds = %do.body540.8, %if.end549.7.if.end549.8_crit_edge
  %104 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %hw, align 8
  %tobool530.not.9 = icmp eq ptr %105, null
  br i1 %tobool530.not.9, label %if.end549.8.if.end549.9_crit_edge, label %do.body540.9, !prof !24

if.end549.8.if.end549.9_crit_edge:                ; preds = %if.end549.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end549.9

do.body540.9:                                     ; preds = %if.end549.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %vsi, align 8
  %conv544.9 = zext i8 %107 to i32
  %mul545.9 = shl nuw nsw i32 %conv544.9, 4
  %add547.9 = add nuw nsw i32 %mul545.9, 2048
  %arrayidx548.9 = getelementptr i32, ptr %105, i32 %add547.9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx548.9, i32 0) #6, !srcloc !26
  br label %if.end549.9

if.end549.9:                                      ; preds = %do.body540.9, %if.end549.8.if.end549.9_crit_edge
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %hw, align 8
  %tobool560.not = icmp eq ptr %109, null
  br i1 %tobool560.not, label %if.end549.9.if.end577_crit_edge, label %do.body570, !prof !24

if.end549.9.if.end577_crit_edge:                  ; preds = %if.end549.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end577

do.body570:                                       ; preds = %if.end549.9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %vsi to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %vsi, align 8
  %conv574 = zext i8 %111 to i32
  %add575 = or i32 %conv574, 8448
  %arrayidx576 = getelementptr i32, ptr %109, i32 %add575
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx576, i32 0) #6, !srcloc !26
  br label %if.end577

if.end577:                                        ; preds = %do.body570, %if.end549.9.if.end577_crit_edge
  %mac580 = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6
  %112 = ptrtoint ptr %mac580 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mac580, align 4
  %114 = and i32 %113, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.i.not.i = icmp eq i32 %114, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end577.if.end611_crit_edge

if.end577.if.end611_crit_edge:                    ; preds = %if.end577
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end611

is_valid_ether_addr.exit:                         ; preds = %if.end577
  %add.ptr.i.i = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 4
  %115 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %116 to i32
  %or.i.i = or i32 %113, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i999.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i999.not, label %is_valid_ether_addr.exit.if.end611_crit_edge, label %if.then582

is_valid_ether_addr.exit.if.end611_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end611

if.then582:                                       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx584 = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 3
  %117 = ptrtoint ptr %arrayidx584 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx584, align 1
  %conv585 = zext i8 %118 to i32
  %shl586 = shl nuw i32 %conv585, 24
  %119 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %add.ptr.i.i, align 2
  %conv589 = zext i8 %120 to i32
  %shl590 = shl nuw nsw i32 %conv589, 16
  %or591 = or i32 %shl590, %shl586
  %arrayidx593 = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 5
  %121 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx593, align 1
  %conv594 = zext i8 %122 to i32
  %shl595 = shl nuw nsw i32 %conv594, 8
  %or596 = or i32 %or591, %shl595
  %123 = ptrtoint ptr %mac580 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %mac580, align 2
  %conv599 = zext i8 %124 to i32
  %shl600 = shl nuw nsw i32 %conv599, 16
  %arrayidx603 = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 1
  %125 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx603, align 1
  %conv604 = zext i8 %126 to i32
  %shl605 = shl nuw nsw i32 %conv604, 8
  %arrayidx608 = getelementptr %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 6, i32 2
  %127 = ptrtoint ptr %arrayidx608 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx608, align 2
  %conv609 = zext i8 %128 to i32
  %or601 = or i32 %shl600, %shl605
  %or606 = or i32 %or601, %conv609
  %or610 = or i32 %or606, -16777216
  br label %if.end611

if.end611:                                        ; preds = %if.then582, %is_valid_ether_addr.exit.if.end611_crit_edge, %if.end577.if.end611_crit_edge
  %tdbah.0 = phi i32 [ %or610, %if.then582 ], [ 0, %is_valid_ether_addr.exit.if.end611_crit_edge ], [ 0, %if.end577.if.end611_crit_edge ]
  %tdbal.0 = phi i32 [ %or596, %if.then582 ], [ 0, %is_valid_ether_addr.exit.if.end611_crit_edge ], [ 0, %if.end577.if.end611_crit_edge ]
  %129 = tail call i32 @llvm.bswap.i32(i32 %tdbal.0)
  %130 = tail call i32 @llvm.bswap.i32(i32 %tdbah.0)
  %itr_scale = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 11
  %add727 = add nuw nsw i32 %conv43, 10240
  %add756 = add nuw nsw i32 %conv43, 12288
  br label %do.body617

for.cond764.preheader:                            ; preds = %if.end759
  %131 = tail call i32 @llvm.bswap.i32(i32 %conv115)
  br label %do.body769

do.body617:                                       ; preds = %if.end759.do.body617_crit_edge, %if.end611
  %dec6141014.in = phi i32 [ %cond13.i, %if.end611 ], [ %dec6141014, %if.end759.do.body617_crit_edge ]
  %dec6141014 = add i32 %dec6141014.in, -1
  %132 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile ptr, ptr %hw, align 8
  %tobool624.not = icmp eq ptr %133, null
  br i1 %tobool624.not, label %do.body617.if.end642_crit_edge, label %do.body634, !prof !24

do.body617.if.end642_crit_edge:                   ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end642

do.body634:                                       ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %add638 = add i32 %dec6141014, %conv115
  %mul639 = shl i32 %add638, 6
  %add640 = add i32 %mul639, 32768
  %arrayidx641 = getelementptr i32, ptr %133, i32 %add640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx641, i32 %129) #6, !srcloc !26
  br label %if.end642

if.end642:                                        ; preds = %do.body634, %do.body617.if.end642_crit_edge
  %134 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile ptr, ptr %hw, align 8
  %tobool652.not = icmp eq ptr %135, null
  br i1 %tobool652.not, label %if.end642.if.end670_crit_edge, label %do.body662, !prof !24

if.end642.if.end670_crit_edge:                    ; preds = %if.end642
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end670

do.body662:                                       ; preds = %if.end642
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %add666 = add i32 %dec6141014, %conv115
  %mul667 = shl i32 %add666, 6
  %add668 = add i32 %mul667, 32769
  %arrayidx669 = getelementptr i32, ptr %135, i32 %add668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx669, i32 %130) #6, !srcloc !26
  br label %if.end670

if.end670:                                        ; preds = %do.body662, %if.end642.if.end670_crit_edge
  %136 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile ptr, ptr %hw, align 8
  %tobool680.not = icmp eq ptr %137, null
  br i1 %tobool680.not, label %if.end670.if.end701_crit_edge, label %do.body690, !prof !24

if.end670.if.end701_crit_edge:                    ; preds = %if.end670
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end701

do.body690:                                       ; preds = %if.end670
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %138 = ptrtoint ptr %itr_scale to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %itr_scale, align 4
  %conv694 = zext i8 %139 to i32
  %shl695 = shl nuw nsw i32 %conv694, 9
  %140 = tail call i32 @llvm.bswap.i32(i32 %shl695)
  %add697 = add i32 %dec6141014, %conv115
  %mul698 = shl i32 %add697, 6
  %add699 = add i32 %mul698, 32770
  %arrayidx700 = getelementptr i32, ptr %137, i32 %add699
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx700, i32 %140) #6, !srcloc !26
  br label %if.end701

if.end701:                                        ; preds = %do.body690, %if.end670.if.end701_crit_edge
  %141 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile ptr, ptr %hw, align 8
  %tobool711.not = icmp eq ptr %142, null
  br i1 %tobool711.not, label %if.end701.if.end730_crit_edge, label %do.body721, !prof !24

if.end701.if.end730_crit_edge:                    ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end730

do.body721:                                       ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %add725 = add i32 %dec6141014, %conv115
  %143 = tail call i32 @llvm.bswap.i32(i32 %add725)
  %add728 = add i32 %add727, %dec6141014
  %arrayidx729 = getelementptr i32, ptr %142, i32 %add728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx729, i32 %143) #6, !srcloc !26
  br label %if.end730

if.end730:                                        ; preds = %do.body721, %if.end701.if.end730_crit_edge
  %144 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %hw, align 8
  %tobool740.not = icmp eq ptr %145, null
  br i1 %tobool740.not, label %if.end730.if.end759_crit_edge, label %do.body750, !prof !24

if.end730.if.end759_crit_edge:                    ; preds = %if.end730
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end759

do.body750:                                       ; preds = %if.end730
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %add754 = add i32 %dec6141014, %conv115
  %146 = tail call i32 @llvm.bswap.i32(i32 %add754)
  %add757 = add i32 %add756, %dec6141014
  %arrayidx758 = getelementptr i32, ptr %145, i32 %add757
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx758, i32 %146) #6, !srcloc !26
  br label %if.end759

if.end759:                                        ; preds = %do.body750, %if.end730.if.end759_crit_edge
  %tobool615.not = icmp eq i32 %dec6141014, 0
  br i1 %tobool615.not, label %for.cond764.preheader, label %if.end759.do.body617_crit_edge

if.end759.do.body617_crit_edge:                   ; preds = %if.end759
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body617

do.body769:                                       ; preds = %if.end822.do.body769_crit_edge, %for.cond764.preheader
  %i.71015 = phi i32 [ %cond13.i, %for.cond764.preheader ], [ %inc826, %if.end822.do.body769_crit_edge ]
  %147 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile ptr, ptr %hw, align 8
  %tobool776.not = icmp eq ptr %148, null
  br i1 %tobool776.not, label %do.body769.if.end794_crit_edge, label %do.body786, !prof !24

do.body769.if.end794_crit_edge:                   ; preds = %do.body769
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end794

do.body786:                                       ; preds = %do.body769
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %add792 = add nuw i32 %add727, %i.71015
  %arrayidx793 = getelementptr i32, ptr %148, i32 %add792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx793, i32 %131) #6, !srcloc !26
  br label %if.end794

if.end794:                                        ; preds = %do.body786, %do.body769.if.end794_crit_edge
  %149 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %hw, align 8
  %tobool804.not = icmp eq ptr %150, null
  br i1 %tobool804.not, label %if.end794.if.end822_crit_edge, label %do.body814, !prof !24

if.end794.if.end822_crit_edge:                    ; preds = %if.end794
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end822

do.body814:                                       ; preds = %if.end794
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %add820 = add nuw i32 %add756, %i.71015
  %arrayidx821 = getelementptr i32, ptr %150, i32 %add820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx821, i32 %131) #6, !srcloc !26
  br label %if.end822

if.end822:                                        ; preds = %do.body814, %if.end794.if.end822_crit_edge
  %inc826 = add nuw nsw i32 %i.71015, 1
  %cmp766 = icmp ult i32 %inc826, %conv37
  br i1 %cmp766, label %if.end822.do.body769_crit_edge, label %if.end822.cleanup_crit_edge

if.end822.cleanup_crit_edge:                      ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end822.do.body769_crit_edge:                   ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body769

cleanup:                                          ; preds = %if.end822.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end822.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_iov_set_lport_pf(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %vf_info, i16 noundef zeroext %lport_idx, i8 noundef zeroext %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dglort_map = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %dglort_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dglort_map, align 8
  %2 = trunc i32 %1 to i16
  %conv1 = add i16 %2, %lport_idx
  %shr.i = lshr i32 %1, 16
  %3 = trunc i32 %shr.i to i16
  %conv1.i = and i16 %conv1, %3
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i, i16 %2)
  %cmp.i = icmp eq i16 %conv1.i, %2
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = or i8 %flags, 8
  %vf_flags = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 9
  %5 = ptrtoint ptr %vf_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %vf_flags, align 2
  %glort4 = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 3
  %6 = ptrtoint ptr %glort4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv1, ptr %glort4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_iov_reset_lport_pf(ptr noundef %hw, ptr noundef %vf_info) #2 align 64 {
entry:
  %msg = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !23
  %vf_flags = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 9
  %1 = ptrtoint ptr %vf_flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vf_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %2)
  %tobool.not = icmp ult i8 %2, 16
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %glort = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 3
  %3 = ptrtoint ptr %glort to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %glort, align 4
  %call = tail call i32 @fm10k_update_lport_state_pf(ptr noundef %hw, i16 noundef zeroext %4, i16 noundef zeroext 1, i1 noundef zeroext false)
  %call1 = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 3) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %vf_info, i32 0, i32 5
  %5 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enqueue_tx, align 4
  %call4 = call i32 %6(ptr noundef %hw, ptr noundef %vf_info, ptr noundef nonnull %msg) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %vf_flags to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %vf_flags, align 2
  %glort6 = getelementptr inbounds %struct.fm10k_vf_info, ptr %vf_info, i32 0, i32 3
  %8 = ptrtoint ptr %glort6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %glort6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_iov_update_stats_pf(ptr noundef %hw, ptr noundef %q, i16 noundef zeroext %vf_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pools1.i = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %num_pools1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pools1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %1)
  %cmp.i = icmp ugt i16 %1, 32
  br i1 %cmp.i, label %entry.fm10k_vf_queue_index.exit_crit_edge, label %cond.false.i

entry.fm10k_vf_queue_index.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_vf_queue_index.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %1)
  %cmp4.i = icmp ugt i16 %1, 16
  br i1 %cmp4.i, label %cond.false.i.fm10k_vf_queue_index.exit_crit_edge, label %cond.false7.i.i

cond.false.i.fm10k_vf_queue_index.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fm10k_vf_queue_index.exit

cond.false7.i.i:                                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp9.i = icmp ugt i16 %1, 8
  %phi.cast.i = select i1 %cmp9.i, i32 8, i32 16
  %phi.cast.i.i = select i1 %cmp9.i, i16 8, i16 16
  br label %fm10k_vf_queue_index.exit

fm10k_vf_queue_index.exit:                        ; preds = %cond.false7.i.i, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge, %entry.fm10k_vf_queue_index.exit_crit_edge
  %conv9 = phi i32 [ %phi.cast.i, %cond.false7.i.i ], [ 4, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge ], [ 2, %entry.fm10k_vf_queue_index.exit_crit_edge ]
  %cond13.i.i = phi i16 [ %phi.cast.i.i, %cond.false7.i.i ], [ 4, %cond.false.i.fm10k_vf_queue_index.exit_crit_edge ], [ 2, %entry.fm10k_vf_queue_index.exit_crit_edge ]
  %.in = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %.in to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %.in, align 2
  %sub.neg.i = sub i16 %vf_idx, %3
  %mul.neg.i = mul i16 %sub.neg.i, %cond13.i.i
  %sub5.i = add i16 %mul.neg.i, 256
  %conv2 = zext i16 %sub5.i to i32
  tail call void @fm10k_update_hw_stats_q(ptr noundef %hw, ptr noundef %q, i32 noundef %conv2, i32 noundef %conv9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_put_mac_vlan(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @fm10k_lport_map_msg_attr, !1, !"fm10k_lport_map_msg_attr", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pf.c", i32 1627, i32 29}
!2 = !{ptr @fm10k_update_pvid_msg_attr, !3, !"fm10k_update_pvid_msg_attr", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pf.c", i32 1673, i32 29}
!4 = !{ptr @fm10k_err_msg_attr, !5, !"fm10k_err_msg_attr", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pf.c", i32 1732, i32 29}
!6 = !{ptr @fm10k_pf_info, !7, !"fm10k_pf_info", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pf.c", i32 1820, i32 25}
!8 = !{ptr @fm10k_msg_data_pf, !9, !"fm10k_msg_data_pf", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pf.c", i32 1770, i32 36}
!10 = !{ptr @mac_ops_pf, !11, !"mac_ops_pf", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pf.c", i32 1780, i32 35}
!12 = !{ptr @iov_ops_pf, !13, !"iov_ops_pf", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_pf.c", i32 1802, i32 35}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2156108859}
!26 = !{i64 6127378}
!27 = !{i64 2156112512}
!28 = !{i64 2156120130}
!29 = !{i64 2156123702}
!30 = !{i64 2156127278}
!31 = !{i64 2156130877}
!32 = !{i64 2156135134}
!33 = !{i64 2156138815}
!34 = !{i64 2156142468}
!35 = !{i64 2156146098}
!36 = !{i64 2156149720}
!37 = !{i64 2156153346}
!38 = !{i64 2156156944}
!39 = !{i64 2156160656}
!40 = !{i64 2156164347}
!41 = !{i64 2156168114}
!42 = !{i64 2156172010}
!43 = !{i64 2156175778}
!44 = !{i64 2156179369}
!45 = !{i64 2156183000}
!46 = !{i64 2156186649}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.peeled.count", i32 1}
!49 = !{i64 2156191138}
!50 = !{i64 2156194773}
!51 = !{i64 2156198387}
!52 = !{i64 2156201973}
!53 = !{i64 2156205917}
!54 = !{i64 2156209565}
!55 = !{i64 2156213470}
!56 = !{i64 2156217166}
!57 = !{i64 2156220822}
!58 = !{i64 2156448250}
!59 = !{i64 2156451891}
!60 = !{i64 2156224455}
!61 = !{i64 2156228031}
!62 = !{i64 2156231636}
!63 = !{i64 2156235245}
!64 = !{i64 2156238851}
!65 = !{i64 2156242468}
!66 = !{i64 2156246087}
!67 = !{i64 2156249777}
!68 = !{i64 2156253502}
!69 = !{i64 2156257161}
!70 = !{i64 2156260799}
!71 = !{i64 2156264497}
!72 = !{i64 2156268241}
!73 = !{i64 2156271959}
!74 = !{i64 2156275761}
!75 = !{i64 2156279522}
!76 = !{i64 2156283212}
!77 = !{i64 2156286851}
!78 = !{i64 2156290492}
!79 = !{i64 2156294136}
!80 = !{i64 2156297769}
!81 = !{i64 2156301373}
!82 = !{i64 2156305064}
!83 = !{i64 2156308740}
!84 = !{i64 2156312392}
!85 = !{i64 2156316057}
!86 = !{i64 2156319696}
!87 = !{i64 2156323492}
!88 = !{i64 2156327162}
!89 = !{i64 2156330793}
!90 = !{i64 2156334523}
!91 = !{i64 2156338183}
!92 = !{i64 2156341879}
!93 = !{i64 2156345569}
!94 = !{i64 2156349390}
!95 = !{i64 2156353093}
!96 = !{i64 2156356669}
!97 = !{i64 2156360302}
!98 = !{i64 2156363924}
!99 = !{i64 2156367617}
!100 = !{i64 2156371305}
!101 = !{i64 2156374920}
!102 = !{i64 2156382577}
!103 = !{i64 2156386202}
!104 = !{i64 2156389851}
!105 = !{i64 2156393525}
!106 = !{i64 2156397210}
!107 = !{i64 2156400908}
!108 = !{i64 2156404599}
!109 = !{i64 2156408292}
!110 = !{i64 2156411984}
!111 = !{i64 2156415621}
!112 = !{i64 2156419276}
!113 = !{i64 2156422952}
!114 = !{i64 2156426664}
!115 = !{i64 2156430378}
!116 = !{i64 2156434053}
!117 = !{i64 2156437720}
!118 = !{i64 2156441375}
