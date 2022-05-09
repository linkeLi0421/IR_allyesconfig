; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpni.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpni.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpkg_profile_cfg = type { i8, [10 x %struct.dpkg_extract] }
%struct.dpkg_extract = type { i32, %union.anon, i8, [4 x %struct.dpkg_mask] }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i8, i8, i8 }
%struct.dpkg_mask = type { i8, i8 }
%struct.dpni_ext_set_rx_tc_dist = type { i8, [7 x i8], [10 x %struct.dpni_dist_extract] }
%struct.dpni_dist_extract = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, [3 x i8], [4 x %struct.dpni_mask_cfg] }
%struct.dpni_mask_cfg = type { i8, i8 }
%struct.anon.0 = type { i8, i8 }
%struct.anon.1 = type { i8, i8 }
%struct.fsl_mc_command = type { i64, [7 x i64] }
%struct.mc_cmd_header = type { i8, i8, i8, i8, i16, i16 }
%struct.dpni_cmd_set_pools = type { i8, i8, i16, [8 x i32], [8 x i16] }
%struct.dpni_pools_cfg = type { i8, [8 x %struct.anon.48] }
%struct.anon.48 = type { i32, i16, i32 }
%struct.dpni_cmd_set_irq_enable = type { i8, [3 x i8], i8 }
%struct.dpni_cmd_get_irq_enable = type { i32, i8 }
%struct.dpni_cmd_set_irq_mask = type { i32, i8 }
%struct.dpni_cmd_get_irq_mask = type { i32, i8 }
%struct.dpni_cmd_get_irq_status = type { i32, i8 }
%struct.dpni_cmd_clear_irq_status = type { i32, i8 }
%struct.dpni_rsp_get_attr = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16 }
%struct.dpni_attr = type { i32, i8, i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.dpni_error_cfg = type { i32, i32, i32 }
%struct.dpni_cmd_set_errors_behavior = type { i32, i8 }
%struct.dpni_rsp_get_buffer_layout = type { [6 x i8], i8, i8, i16, i16, i16, i16 }
%struct.dpni_buffer_layout = type { i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.dpni_cmd_set_buffer_layout = type { i8, [3 x i8], i16, i8, i8, i16, i16, i16, i16 }
%struct.dpni_cmd_set_offload = type { [3 x i8], i8, i32 }
%struct.dpni_cmd_get_offload = type { [3 x i8], i8 }
%struct.dpni_rsp_get_offload = type { i32, i32 }
%struct.dpni_link_cfg = type { i32, i64 }
%struct.dpni_rsp_get_link_state = type { i32, i8, [3 x i8], i32, i32, i64 }
%struct.dpni_link_state = type { i32, i64, i32 }
%struct.dpni_cmd_set_primary_mac_addr = type { i16, [6 x i8] }
%struct.dpni_rsp_get_primary_mac_addr = type { i16, [6 x i8] }
%struct.dpni_rsp_get_port_mac_addr = type { i16, [6 x i8] }
%struct.dpni_cmd_vlan_id = type { i8, i8, i8, i8, i16 }
%struct.dpni_cmd_add_mac_addr = type { i16, [6 x i8] }
%struct.dpni_cmd_remove_mac_addr = type { i16, [6 x i8] }
%struct.dpni_cmd_set_rx_tc_dist = type { i16, i8, i8, i16, i16, [5 x i64], i64 }
%struct.dpni_rx_tc_dist_cfg = type { i16, i32, i64, %struct.dpni_fs_tbl_cfg }
%struct.dpni_fs_tbl_cfg = type { i32, i16 }
%struct.dpni_cmd_set_congestion_notification = type { i8, i8, [6 x i8], i32, i16, i8, i8, i64, i64, i32, i32 }
%struct.dpni_congestion_notification_cfg = type { i32, i32, i32, i64, i64, %struct.dpni_dest_cfg, i16 }
%struct.dpni_dest_cfg = type { i32, i32, i8 }
%struct.dpni_cmd_set_queue = type { i8, i8, i8, i8, i32, i32, i16, i8, i8, i64, i64 }
%struct.anon.49 = type { i16, i32, i8, i8 }
%struct.dpni_queue = type { %struct.anon.49, i64, %struct.anon.50 }
%struct.anon.50 = type { i64, i8 }
%struct.dpni_cmd_get_queue = type { i8, i8, i8 }
%struct.dpni_rsp_get_queue = type { i64, i32, i16, i8, i8, i64, i64, i32, i16 }
%struct.dpni_queue_id = type { i32, i16 }
%struct.dpni_cmd_set_taildrop = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.dpni_taildrop = type { i8, i32, i32 }
%struct.dpni_cmd_get_taildrop = type { i8, i8, i8, i8 }
%struct.dpni_rsp_get_taildrop = type { i64, i8, i8, i8, i8, i32 }
%struct.dpni_rsp_get_api_version = type { i16, i16 }
%struct.dpni_rx_dist_cfg = type { i16, i64, i8, i8, i16 }
%struct.dpni_cmd_set_rx_fs_dist = type { i16, i8, i8, i16, i16, i64 }
%struct.dpni_cmd_set_rx_hash_dist = type { i16, i8, i8, i32, i64 }
%struct.dpni_cmd_add_fs_entry = type { i16, i8, i8, i16, i16, i64, i64, i64 }
%struct.dpni_rule_cfg = type { i64, i64, i8 }
%struct.dpni_fs_action_cfg = type { i64, i16, i16 }
%struct.dpni_cmd_remove_fs_entry = type { i16, i8, i8, i32, i64, i64 }
%struct.dpni_qos_tbl_cfg = type { i64, i32, i8 }
%struct.dpni_cmd_set_qos_table = type { i32, i8, i8, [21 x i16], i64 }
%struct.dpni_cmd_add_qos_entry = type { i16, i8, i8, i16, i16, i64, i64 }
%struct.dpni_cmd_remove_qos_entry = type { [3 x i8], i8, i32, i64, i64 }
%struct.dpni_tx_shaping_cfg = type { i32, i16 }
%struct.dpni_cmd_set_tx_shaping = type { i16, i16, i32, i32, i32, i8 }
%struct.dpni_rsp_single_step_cfg = type { i16, i16, i32 }
%struct.dpni_single_step_cfg = type { i8, i8, i16, i32 }
%struct.dpni_cmd_single_step_cfg = type { i16, i16, i32 }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_prepare_key_cfg(ptr nocapture noundef readonly %cfg, ptr nocapture noundef %key_cfg_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp ugt i8 %1, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %key_cfg_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %key_cfg_buf, align 4
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp6148.not = icmp eq i8 %4, 0
  br i1 %cmp6148.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0149 = phi i32 [ %inc88, %sw.epilog.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx9 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx9, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %for.body.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
    i32 3, label %sw.bb47
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149
  %extract = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 1
  %8 = ptrtoint ptr %extract to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extract, align 4
  %conv12 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv12, ptr %arrayidx, align 4
  %type17 = getelementptr inbounds %struct.anon, ptr %extract, i32 0, i32 1
  %11 = ptrtoint ptr %type17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type17, align 4
  %efh_type = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 1
  %13 = ptrtoint ptr %efh_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %efh_type, align 1
  %15 = trunc i32 %12 to i8
  %16 = and i8 %15, 15
  %conv19 = or i8 %16, %14
  store i8 %conv19, ptr %efh_type, align 1
  %size = getelementptr inbounds %struct.anon, ptr %extract, i32 0, i32 3
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %size, align 4
  %size23 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 2
  %19 = ptrtoint ptr %size23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %size23, align 2
  %offset = getelementptr inbounds %struct.anon, ptr %extract, i32 0, i32 4
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %offset, align 1
  %offset27 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 3
  %22 = ptrtoint ptr %offset27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %offset27, align 1
  %field = getelementptr inbounds %struct.anon, ptr %extract, i32 0, i32 2
  %23 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %field31 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 4
  %26 = ptrtoint ptr %field31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %field31, align 4
  %hdr_index = getelementptr inbounds %struct.anon, ptr %extract, i32 0, i32 5
  %27 = ptrtoint ptr %hdr_index to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hdr_index, align 2
  %hdr_index35 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 5
  %29 = ptrtoint ptr %hdr_index35 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %hdr_index35, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %extract39 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 1
  %30 = ptrtoint ptr %extract39 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %extract39, align 4
  %size41 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 2
  %32 = ptrtoint ptr %size41 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %size41, align 2
  %offset45 = getelementptr inbounds %struct.anon.0, ptr %extract39, i32 0, i32 1
  %33 = ptrtoint ptr %offset45 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %offset45, align 1
  %offset46 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 3
  %35 = ptrtoint ptr %offset46 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %offset46, align 1
  br label %sw.epilog

sw.bb47:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %extract50 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 1
  %36 = ptrtoint ptr %extract50 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %extract50, align 4
  %size52 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 2
  %38 = ptrtoint ptr %size52 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %size52, align 2
  %offset56 = getelementptr inbounds %struct.anon.1, ptr %extract50, i32 0, i32 1
  %39 = ptrtoint ptr %offset56 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %offset56, align 1
  %offset57 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 3
  %41 = ptrtoint ptr %offset57 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %offset57, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb36, %sw.bb
  %num_of_byte_masks = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 2
  %42 = ptrtoint ptr %num_of_byte_masks to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_of_byte_masks, align 4
  %num_of_byte_masks60 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 8
  %44 = ptrtoint ptr %num_of_byte_masks60 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %num_of_byte_masks60, align 1
  %45 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx9, align 4
  %extract_type = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 9
  %47 = ptrtoint ptr %extract_type to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %extract_type, align 4
  %49 = trunc i32 %46 to i8
  %50 = and i8 %49, 15
  %conv68 = or i8 %50, %48
  store i8 %conv68, ptr %extract_type, align 4
  %arrayidx75 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 3, i32 0
  %51 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx75, align 1
  %arrayidx77 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 11, i32 0
  %53 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx77, align 2
  %offset83 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 3, i32 0, i32 1
  %54 = ptrtoint ptr %offset83 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %offset83, align 1
  %offset86 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 11, i32 0, i32 1
  %56 = ptrtoint ptr %offset86 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %offset86, align 1
  %arrayidx75.1 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 3, i32 1
  %57 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx75.1, align 1
  %arrayidx77.1 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 11, i32 1
  %59 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx77.1, align 2
  %offset83.1 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 3, i32 1, i32 1
  %60 = ptrtoint ptr %offset83.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %offset83.1, align 1
  %offset86.1 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 11, i32 1, i32 1
  %62 = ptrtoint ptr %offset86.1 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %offset86.1, align 1
  %arrayidx75.2 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 3, i32 2
  %63 = ptrtoint ptr %arrayidx75.2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx75.2, align 1
  %arrayidx77.2 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 11, i32 2
  %65 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx77.2, align 2
  %offset83.2 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 3, i32 2, i32 1
  %66 = ptrtoint ptr %offset83.2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %offset83.2, align 1
  %offset86.2 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 11, i32 2, i32 1
  %68 = ptrtoint ptr %offset86.2 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %offset86.2, align 1
  %arrayidx75.3 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 3, i32 3
  %69 = ptrtoint ptr %arrayidx75.3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx75.3, align 1
  %arrayidx77.3 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 11, i32 3
  %71 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx77.3, align 2
  %offset83.3 = getelementptr %struct.dpkg_profile_cfg, ptr %cfg, i32 0, i32 1, i32 %i.0149, i32 3, i32 3, i32 1
  %72 = ptrtoint ptr %offset83.3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %offset83.3, align 1
  %offset86.3 = getelementptr %struct.dpni_ext_set_rx_tc_dist, ptr %key_cfg_buf, i32 0, i32 2, i32 %i.0149, i32 11, i32 3, i32 1
  %74 = ptrtoint ptr %offset86.3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %offset86.3, align 1
  %inc88 = add nuw nsw i32 %i.0149, 1
  %75 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cfg, align 4
  %conv5 = zext i8 %76 to i32
  %cmp6 = icmp ult i32 %inc88, %conv5
  br i1 %cmp6, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_open(ptr noundef %mc_io, i32 noundef %cmd_flags, i32 noundef %dpni_id, ptr nocapture noundef writeonly %token) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.7.0.insert.shift.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632256
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %dpni_id)
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %token1.i = getelementptr inbounds %struct.mc_cmd_header, ptr %cmd, i32 0, i32 4
  %8 = ptrtoint ptr %token1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %token1.i, align 4
  %10 = call i16 @llvm.bswap.i16(i16 %9) #5
  %11 = ptrtoint ptr %token to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %token, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc_send_command(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_close(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628160
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_pools(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628064
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cfg, align 4
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %params, align 8
  %backup_pool_mask = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 1
  %arrayidx = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx3 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx3, align 4
  %buffer_size = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %buffer_size, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %arrayidx7 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 4, i32 0
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx7, align 4
  %backup_pool = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %backup_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %backup_pool, align 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %arrayidx.1 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %arrayidx3.1 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx3.1, align 8
  %buffer_size.1 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 1, i32 1
  %26 = ptrtoint ptr %buffer_size.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %buffer_size.1, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %arrayidx7.1 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx7.1, align 2
  %backup_pool.1 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 1, i32 2
  %30 = ptrtoint ptr %backup_pool.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %backup_pool.1, align 4
  %.tr = trunc i32 %31 to i8
  %32 = shl i8 %.tr, 1
  %33 = and i8 %32, 2
  %conv10.1 = or i8 %21, %33
  %arrayidx.2 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %arrayidx3.2 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx3.2, align 4
  %buffer_size.2 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 2, i32 1
  %38 = ptrtoint ptr %buffer_size.2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %buffer_size.2, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %arrayidx7.2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 5
  %41 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx7.2, align 8
  %backup_pool.2 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 2, i32 2
  %42 = ptrtoint ptr %backup_pool.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %backup_pool.2, align 4
  %.tr26 = trunc i32 %43 to i8
  %44 = shl i8 %.tr26, 2
  %45 = and i8 %44, 4
  %conv10.2 = or i8 %conv10.1, %45
  %arrayidx.3 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.3, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %arrayidx3.3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx3.3, align 8
  %buffer_size.3 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 3, i32 1
  %50 = ptrtoint ptr %buffer_size.3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %buffer_size.3, align 4
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %arrayidx7.3 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 4, i32 3
  %53 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx7.3, align 2
  %backup_pool.3 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 3, i32 2
  %54 = ptrtoint ptr %backup_pool.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %backup_pool.3, align 4
  %.tr27 = trunc i32 %55 to i8
  %56 = shl i8 %.tr27, 3
  %57 = and i8 %56, 8
  %conv10.3 = or i8 %conv10.2, %57
  %arrayidx.4 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.4, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %arrayidx3.4 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx3.4, align 4
  %buffer_size.4 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 4, i32 1
  %62 = ptrtoint ptr %buffer_size.4 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %buffer_size.4, align 4
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %arrayidx7.4 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 4, i32 4
  %65 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx7.4, align 4
  %backup_pool.4 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 4, i32 2
  %66 = ptrtoint ptr %backup_pool.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %backup_pool.4, align 4
  %.tr28 = trunc i32 %67 to i8
  %68 = shl i8 %.tr28, 4
  %69 = and i8 %68, 16
  %conv10.4 = or i8 %conv10.3, %69
  %arrayidx.5 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 5
  %70 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.5, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %arrayidx3.5 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx3.5, align 8
  %buffer_size.5 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 5, i32 1
  %74 = ptrtoint ptr %buffer_size.5 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %buffer_size.5, align 4
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %arrayidx7.5 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 4, i32 5
  %77 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx7.5, align 2
  %backup_pool.5 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 5, i32 2
  %78 = ptrtoint ptr %backup_pool.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %backup_pool.5, align 4
  %.tr29 = trunc i32 %79 to i8
  %80 = shl i8 %.tr29, 5
  %81 = and i8 %80, 32
  %conv10.5 = or i8 %conv10.4, %81
  %arrayidx.6 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 6
  %82 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.6, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %arrayidx3.6 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 3, i32 6
  %85 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx3.6, align 4
  %buffer_size.6 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 6, i32 1
  %86 = ptrtoint ptr %buffer_size.6 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %buffer_size.6, align 4
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %arrayidx7.6 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 6
  %89 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %arrayidx7.6, align 8
  %backup_pool.6 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 6, i32 2
  %90 = ptrtoint ptr %backup_pool.6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %backup_pool.6, align 4
  %.tr30 = trunc i32 %91 to i8
  %92 = shl i8 %.tr30, 6
  %93 = and i8 %92, 64
  %conv10.6 = or i8 %conv10.5, %93
  %arrayidx.7 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 7
  %94 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.7, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %arrayidx3.7 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 4
  %97 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx3.7, align 8
  %buffer_size.7 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 7, i32 1
  %98 = ptrtoint ptr %buffer_size.7 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %buffer_size.7, align 4
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %arrayidx7.7 = getelementptr inbounds %struct.dpni_cmd_set_pools, ptr %params, i32 0, i32 4, i32 7
  %101 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %arrayidx7.7, align 2
  %backup_pool.7 = getelementptr %struct.dpni_pools_cfg, ptr %cfg, i32 0, i32 1, i32 7, i32 2
  %102 = ptrtoint ptr %backup_pool.7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %backup_pool.7, align 4
  %.tr31 = trunc i32 %103 to i8
  %104 = shl i8 %.tr31, 7
  %conv10.7 = or i8 %conv10.6, %104
  %105 = ptrtoint ptr %backup_pool_mask to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv10.7, ptr %backup_pool_mask, align 1
  %call11 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call11
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636224
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_disable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640320
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_is_enabled(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %en) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652608
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %params, align 8
  %9 = and i8 %8, 1
  %and = zext i8 %9 to i32
  %10 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %en, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_reset(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648512
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_irq_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, i8 noundef zeroext %en) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636225
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = and i8 %en, 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %params, align 8
  %irq_index3 = getelementptr inbounds %struct.dpni_cmd_set_irq_enable, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %irq_index3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %irq_index, ptr %irq_index3, align 4
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_irq_enable(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, ptr nocapture noundef writeonly %en) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640321
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %irq_index1 = getelementptr inbounds %struct.dpni_cmd_get_irq_enable, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %irq_index1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %irq_index, ptr %irq_index1, align 4
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %params, align 8
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %en to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %en, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_irq_mask(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, i32 noundef %mask) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644417
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %params, align 8
  %irq_index2 = getelementptr inbounds %struct.dpni_cmd_set_irq_mask, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %irq_index2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %irq_index, ptr %irq_index2, align 4
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_irq_mask(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, ptr nocapture noundef writeonly %mask) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648513
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %irq_index1 = getelementptr inbounds %struct.dpni_cmd_get_irq_mask, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %irq_index1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %irq_index, ptr %irq_index1, align 4
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 8
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_irq_status(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, ptr nocapture noundef %status) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652609
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %params, align 8
  %irq_index2 = getelementptr inbounds %struct.dpni_cmd_get_irq_status, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %irq_index2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %irq_index, ptr %irq_index2, align 4
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 8
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_clear_irq_status(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %irq_index, i32 noundef %status) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656705
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %irq_index1 = getelementptr inbounds %struct.dpni_cmd_clear_irq_status, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %irq_index1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %irq_index, ptr %irq_index1, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %status)
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %params, align 8
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_attributes(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %attr) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644416
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 8
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %attr, align 4
  %num_queues = getelementptr inbounds %struct.dpni_rsp_get_attr, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_queues, align 4
  %num_queues3 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 1
  %13 = ptrtoint ptr %num_queues3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %num_queues3, align 4
  %num_tcs = getelementptr inbounds %struct.dpni_rsp_get_attr, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_tcs, align 1
  %num_tcs4 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 2
  %16 = ptrtoint ptr %num_tcs4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %num_tcs4, align 1
  %mac_filter_entries = getelementptr inbounds %struct.dpni_rsp_get_attr, ptr %params, i32 0, i32 3
  %17 = ptrtoint ptr %mac_filter_entries to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mac_filter_entries, align 2
  %mac_filter_entries5 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 3
  %19 = ptrtoint ptr %mac_filter_entries5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %mac_filter_entries5, align 2
  %vlan_filter_entries = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %vlan_filter_entries to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vlan_filter_entries, align 8
  %vlan_filter_entries6 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 4
  %22 = ptrtoint ptr %vlan_filter_entries6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %vlan_filter_entries6, align 1
  %qos_entries = getelementptr inbounds %struct.dpni_rsp_get_attr, ptr %params, i32 0, i32 7
  %23 = ptrtoint ptr %qos_entries to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %qos_entries, align 2
  %qos_entries7 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 5
  %25 = ptrtoint ptr %qos_entries7 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %qos_entries7, align 4
  %fs_entries = getelementptr inbounds %struct.dpni_rsp_get_attr, ptr %params, i32 0, i32 9
  %26 = ptrtoint ptr %fs_entries to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fs_entries, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %fs_entries8 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 6
  %29 = ptrtoint ptr %fs_entries8 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %fs_entries8, align 2
  %qos_key_size = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %qos_key_size to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %qos_key_size, align 8
  %qos_key_size9 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 7
  %32 = ptrtoint ptr %qos_key_size9 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %qos_key_size9, align 4
  %fs_key_size = getelementptr inbounds %struct.dpni_rsp_get_attr, ptr %params, i32 0, i32 12
  %33 = ptrtoint ptr %fs_key_size to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fs_key_size, align 1
  %fs_key_size10 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 8
  %35 = ptrtoint ptr %fs_key_size10 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %fs_key_size10, align 1
  %wriop_version = getelementptr inbounds %struct.dpni_rsp_get_attr, ptr %params, i32 0, i32 13
  %36 = ptrtoint ptr %wriop_version to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %wriop_version, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %wriop_version11 = getelementptr inbounds %struct.dpni_attr, ptr %attr, i32 0, i32 9
  %39 = ptrtoint ptr %wriop_version11 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %wriop_version11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_errors_behavior(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511673120
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %params, align 8
  %error_action = getelementptr inbounds %struct.dpni_error_cfg, ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %error_action to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error_action, align 4
  %flags = getelementptr inbounds %struct.dpni_cmd_set_errors_behavior, ptr %params, i32 0, i32 1
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 15
  %set_frame_annotation = getelementptr inbounds %struct.dpni_error_cfg, ptr %cfg, i32 0, i32 2
  %15 = ptrtoint ptr %set_frame_annotation to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %set_frame_annotation, align 4
  %.tr = trunc i32 %16 to i8
  %17 = shl i8 %.tr, 4
  %18 = and i8 %17, 16
  %conv8 = or i8 %18, %14
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8, ptr %flags, align 4
  %call9 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_buffer_layout(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %qtype, ptr nocapture noundef writeonly %layout) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644454
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %qtype to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 2
  %10 = and i8 %9, 1
  %and = zext i8 %10 to i32
  %pass_timestamp = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 1
  %11 = ptrtoint ptr %pass_timestamp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %pass_timestamp, align 4
  %12 = lshr i8 %9, 1
  %13 = and i8 %12, 1
  %shr9 = zext i8 %13 to i32
  %pass_parser_result = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 2
  %14 = ptrtoint ptr %pass_parser_result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr9, ptr %pass_parser_result, align 4
  %15 = lshr i8 %9, 2
  %16 = and i8 %15, 1
  %shr13 = zext i8 %16 to i32
  %pass_frame_status = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 3
  %17 = ptrtoint ptr %pass_frame_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr13, ptr %pass_frame_status, align 4
  %private_data_size = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %private_data_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %private_data_size, align 8
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %private_data_size14 = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 4
  %21 = ptrtoint ptr %private_data_size14 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %private_data_size14, align 4
  %data_align = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, ptr %params, i32 0, i32 4
  %22 = ptrtoint ptr %data_align to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %data_align, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %data_align15 = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 5
  %25 = ptrtoint ptr %data_align15 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %data_align15, align 2
  %head_room = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, ptr %params, i32 0, i32 5
  %26 = ptrtoint ptr %head_room to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_room, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %data_head_room = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 6
  %29 = ptrtoint ptr %data_head_room to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %data_head_room, align 4
  %tail_room = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, ptr %params, i32 0, i32 6
  %30 = ptrtoint ptr %tail_room to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tail_room, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %data_tail_room = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 7
  %33 = ptrtoint ptr %data_tail_room to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %data_tail_room, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_buffer_layout(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %qtype, ptr nocapture noundef readonly %layout) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648550
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %qtype to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %8 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %layout, align 4
  %conv2 = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %options3 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %options3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %options3, align 4
  %pass_timestamp = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 1
  %12 = ptrtoint ptr %pass_timestamp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pass_timestamp, align 4
  %flags = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, ptr %params, i32 0, i32 3
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %pass_parser_result = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 2
  %16 = ptrtoint ptr %pass_parser_result to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pass_parser_result, align 4
  %.tr = trunc i32 %17 to i8
  %18 = shl i8 %.tr, 1
  %19 = and i8 %18, 2
  %conv11 = or i8 %19, %15
  %pass_frame_status = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 3
  %20 = ptrtoint ptr %pass_frame_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pass_frame_status, align 4
  %.tr36 = trunc i32 %21 to i8
  %22 = shl i8 %.tr36, 2
  %23 = and i8 %22, 4
  %conv17 = or i8 %23, %conv11
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv17, ptr %flags, align 2
  %private_data_size = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 4
  %25 = ptrtoint ptr %private_data_size to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %private_data_size, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %private_data_size18 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %private_data_size18 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %private_data_size18, align 8
  %data_align = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 5
  %29 = ptrtoint ptr %data_align to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %data_align, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %data_align19 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, ptr %params, i32 0, i32 6
  %32 = ptrtoint ptr %data_align19 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %data_align19, align 2
  %data_head_room = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 6
  %33 = ptrtoint ptr %data_head_room to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data_head_room, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %head_room = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, ptr %params, i32 0, i32 7
  %36 = ptrtoint ptr %head_room to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %head_room, align 4
  %data_tail_room = getelementptr inbounds %struct.dpni_buffer_layout, ptr %layout, i32 0, i32 7
  %37 = ptrtoint ptr %data_tail_room to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %data_tail_room, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %tail_room = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, ptr %params, i32 0, i32 8
  %40 = ptrtoint ptr %tail_room to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %tail_room, align 2
  %call20 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_offload(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %type, i32 noundef %config) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511677222
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %type to i8
  %dpni_offload = getelementptr inbounds %struct.dpni_cmd_set_offload, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %dpni_offload to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %dpni_offload, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %config)
  %config1 = getelementptr inbounds %struct.dpni_cmd_set_offload, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %config1, align 4
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_offload(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %type, ptr nocapture noundef writeonly %config) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511673126
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %type to i8
  %dpni_offload = getelementptr inbounds %struct.dpni_cmd_get_offload, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %dpni_offload to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %dpni_offload, align 1
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %config4 = getelementptr inbounds %struct.dpni_rsp_get_offload, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %config4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config4, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_qdid(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %qtype, ptr nocapture noundef writeonly %qdid) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628065
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %qtype to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %params, align 8
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %qdid to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %qdid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_tx_data_offset(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %data_offset) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636257
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %params, align 8
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %data_offset, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_link_cfg(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511669025
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %rate1 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %rate1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rate1, align 8
  %options = getelementptr inbounds %struct.dpni_link_cfg, ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %options, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %options2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %options2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %options2, align 8
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_link_cfg(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511660839
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rate = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate, align 8
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cfg, align 8
  %options = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %options, align 8
  %13 = call i64 @llvm.bswap.i64(i64 %12)
  %options3 = getelementptr inbounds %struct.dpni_link_cfg, ptr %cfg, i32 0, i32 1
  %14 = ptrtoint ptr %options3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %options3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_link_state(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %state) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648545
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %flags = getelementptr inbounds %struct.dpni_rsp_get_link_state, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 4
  %9 = and i8 %8, 1
  %and = zext i8 %9 to i32
  %up = getelementptr inbounds %struct.dpni_link_state, ptr %state, i32 0, i32 2
  %10 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %up, align 8
  %rate = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate, align 8
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %state, align 8
  %options = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %options to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %options, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %options3 = getelementptr inbounds %struct.dpni_link_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %options3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %options3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_max_frame_length(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %max_frame_length) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652641
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %max_frame_length)
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_max_frame_length(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %max_frame_length) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656737
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %params, align 8
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %max_frame_length to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %max_frame_length, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_multicast_promisc(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %en) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628066
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = trunc i32 %en to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_multicast_promisc(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %en) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632162
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %params, align 8
  %9 = and i8 %8, 1
  %and = zext i8 %9 to i32
  %10 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %en, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_unicast_promisc(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %en) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636258
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = trunc i32 %en to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %params, align 8
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_unicast_promisc(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %en) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640354
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %params, align 8
  %9 = and i8 %8, 1
  %and = zext i8 %9 to i32
  %10 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %en, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_primary_mac_addr(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644450
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds %struct.dpni_cmd_set_primary_mac_addr, ptr %params, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx2, align 2
  %arrayidx.1 = getelementptr i8, ptr %mac_addr, i32 4
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr inbounds %struct.dpni_cmd_set_primary_mac_addr, ptr %params, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx2.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %mac_addr, i32 3
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr inbounds %struct.dpni_cmd_set_primary_mac_addr, ptr %params, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %mac_addr, i32 2
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr inbounds %struct.dpni_cmd_set_primary_mac_addr, ptr %params, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx2.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %mac_addr, i32 1
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr inbounds %struct.dpni_cmd_set_primary_mac_addr, ptr %params, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx2.4, align 2
  %22 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_addr, align 1
  %arrayidx2.5 = getelementptr inbounds %struct.dpni_cmd_set_primary_mac_addr, ptr %params, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx2.5, align 1
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_primary_mac_addr(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %mac_addr) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648546
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %arrayidx = getelementptr inbounds %struct.dpni_rsp_get_primary_mac_addr, ptr %params, i32 0, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 2
  %arrayidx3 = getelementptr i8, ptr %mac_addr, i32 5
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx3, align 1
  %arrayidx.1 = getelementptr inbounds %struct.dpni_rsp_get_primary_mac_addr, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %arrayidx3.1 = getelementptr i8, ptr %mac_addr, i32 4
  %12 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx3.1, align 1
  %arrayidx.2 = getelementptr inbounds %struct.dpni_rsp_get_primary_mac_addr, ptr %params, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr i8, ptr %mac_addr, i32 3
  %15 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx3.2, align 1
  %arrayidx.3 = getelementptr inbounds %struct.dpni_rsp_get_primary_mac_addr, ptr %params, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %arrayidx3.3 = getelementptr i8, ptr %mac_addr, i32 2
  %18 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx3.3, align 1
  %arrayidx.4 = getelementptr inbounds %struct.dpni_rsp_get_primary_mac_addr, ptr %params, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 2
  %arrayidx3.4 = getelementptr i8, ptr %mac_addr, i32 1
  %21 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx3.4, align 1
  %arrayidx.5 = getelementptr inbounds %struct.dpni_rsp_get_primary_mac_addr, ptr %params, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.5, align 1
  %24 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %mac_addr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_port_mac_addr(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %mac_addr) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640358
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %arrayidx = getelementptr inbounds %struct.dpni_rsp_get_port_mac_addr, ptr %params, i32 0, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 2
  %arrayidx3 = getelementptr i8, ptr %mac_addr, i32 5
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx3, align 1
  %arrayidx.1 = getelementptr inbounds %struct.dpni_rsp_get_port_mac_addr, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %arrayidx3.1 = getelementptr i8, ptr %mac_addr, i32 4
  %12 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx3.1, align 1
  %arrayidx.2 = getelementptr inbounds %struct.dpni_rsp_get_port_mac_addr, ptr %params, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr i8, ptr %mac_addr, i32 3
  %15 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx3.2, align 1
  %arrayidx.3 = getelementptr inbounds %struct.dpni_rsp_get_port_mac_addr, ptr %params, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %arrayidx3.3 = getelementptr i8, ptr %mac_addr, i32 2
  %18 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx3.3, align 1
  %arrayidx.4 = getelementptr inbounds %struct.dpni_rsp_get_port_mac_addr, ptr %params, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 2
  %arrayidx3.4 = getelementptr i8, ptr %mac_addr, i32 1
  %21 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx3.4, align 1
  %arrayidx.5 = getelementptr inbounds %struct.dpni_rsp_get_port_mac_addr, ptr %params, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.5, align 1
  %24 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %mac_addr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_enable_vlan_filter(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %en) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628067
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = trunc i32 %en to i8
  %8 = and i8 %7, 1
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %params, align 8
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_add_vlan_id(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %vlan_id, i8 noundef zeroext %flags, i8 noundef zeroext %tc_id, i8 noundef zeroext %flow_id) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632419
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %flags, ptr %params, align 8
  %tc_id2 = getelementptr inbounds %struct.dpni_cmd_vlan_id, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %tc_id2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %tc_id, ptr %tc_id2, align 1
  %flow_id3 = getelementptr inbounds %struct.dpni_cmd_vlan_id, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %flow_id3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %flow_id, ptr %flow_id3, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %vlan_id4 = getelementptr inbounds %struct.dpni_cmd_vlan_id, ptr %params, i32 0, i32 4
  %11 = ptrtoint ptr %vlan_id4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %vlan_id4, align 4
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_remove_vlan_id(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i16 noundef zeroext %vlan_id) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636259
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %vlan_id1 = getelementptr inbounds %struct.dpni_cmd_vlan_id, ptr %params, i32 0, i32 4
  %8 = ptrtoint ptr %vlan_id1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %vlan_id1, align 4
  %call2 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_add_mac_addr(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511652642
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds %struct.dpni_cmd_add_mac_addr, ptr %params, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx2, align 2
  %arrayidx.1 = getelementptr i8, ptr %mac_addr, i32 4
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr inbounds %struct.dpni_cmd_add_mac_addr, ptr %params, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx2.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %mac_addr, i32 3
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr inbounds %struct.dpni_cmd_add_mac_addr, ptr %params, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %mac_addr, i32 2
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr inbounds %struct.dpni_cmd_add_mac_addr, ptr %params, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx2.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %mac_addr, i32 1
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr inbounds %struct.dpni_cmd_add_mac_addr, ptr %params, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx2.4, align 2
  %22 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_addr, align 1
  %arrayidx2.5 = getelementptr inbounds %struct.dpni_cmd_add_mac_addr, ptr %params, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx2.5, align 1
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_remove_mac_addr(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656738
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds %struct.dpni_cmd_remove_mac_addr, ptr %params, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx2, align 2
  %arrayidx.1 = getelementptr i8, ptr %mac_addr, i32 4
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr inbounds %struct.dpni_cmd_remove_mac_addr, ptr %params, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx2.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %mac_addr, i32 3
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %arrayidx2.2 = getelementptr inbounds %struct.dpni_cmd_remove_mac_addr, ptr %params, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %mac_addr, i32 2
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %arrayidx2.3 = getelementptr inbounds %struct.dpni_cmd_remove_mac_addr, ptr %params, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx2.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %mac_addr, i32 1
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 1
  %arrayidx2.4 = getelementptr inbounds %struct.dpni_cmd_remove_mac_addr, ptr %params, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx2.4, align 2
  %22 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_addr, align 1
  %arrayidx2.5 = getelementptr inbounds %struct.dpni_cmd_remove_mac_addr, ptr %params, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx2.5, align 1
  %call3 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_clear_mac_filters(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %unicast, i32 noundef %multicast) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511660834
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = trunc i32 %unicast to i8
  %8 = and i8 %7, 1
  %multicast.tr = trunc i32 %multicast to i8
  %9 = shl i8 %multicast.tr, 1
  %10 = and i8 %9, 2
  %conv1 = or i8 %10, %8
  %11 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1, ptr %params, align 8
  %call8 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_rx_tc_dist(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %tc_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648547
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cfg, align 8
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %params, align 8
  %tc_id2 = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %tc_id2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %tc_id, ptr %tc_id2, align 2
  %dist_mode = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, ptr %cfg, i32 0, i32 1
  %12 = ptrtoint ptr %dist_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dist_mode, align 4
  %flags = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, ptr %params, i32 0, i32 2
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 15
  %fs_cfg = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, ptr %cfg, i32 0, i32 3
  %16 = ptrtoint ptr %fs_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fs_cfg, align 8
  %.tr = trunc i32 %17 to i8
  %18 = shl i8 %.tr, 4
  %conv9 = or i8 %18, %15
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9, ptr %flags, align 1
  %default_flow_id = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, ptr %cfg, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %default_flow_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %default_flow_id, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %default_flow_id11 = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, ptr %params, i32 0, i32 4
  %23 = ptrtoint ptr %default_flow_id11 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %default_flow_id11, align 2
  %key_cfg_iova = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, ptr %cfg, i32 0, i32 2
  %24 = ptrtoint ptr %key_cfg_iova to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %key_cfg_iova, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %key_cfg_iova12 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 6
  %27 = ptrtoint ptr %key_cfg_iova12 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %key_cfg_iova12, align 8
  %call13 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_congestion_notification(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %qtype, i8 noundef zeroext %tc_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511656742
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %qtype to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %tc = getelementptr inbounds %struct.dpni_cmd_set_congestion_notification, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %tc_id, ptr %tc, align 1
  %dest_cfg = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg, i32 0, i32 5
  %dest_id = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %dest_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dest_id, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %dest_id2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %dest_id2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dest_id2, align 8
  %notification_mode = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg, i32 0, i32 6
  %13 = ptrtoint ptr %notification_mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %notification_mode, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %notification_mode3 = getelementptr inbounds %struct.dpni_cmd_set_congestion_notification, ptr %params, i32 0, i32 4
  %16 = ptrtoint ptr %notification_mode3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %notification_mode3, align 4
  %priority = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %priority, align 8
  %dest_priority = getelementptr inbounds %struct.dpni_cmd_set_congestion_notification, ptr %params, i32 0, i32 5
  %19 = ptrtoint ptr %dest_priority to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %dest_priority, align 2
  %20 = ptrtoint ptr %dest_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dest_cfg, align 8
  %type_units = getelementptr inbounds %struct.dpni_cmd_set_congestion_notification, ptr %params, i32 0, i32 6
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 15
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cfg, align 8
  %.tr = trunc i32 %25 to i8
  %26 = shl i8 %.tr, 4
  %27 = and i8 %26, 48
  %conv13 = or i8 %27, %23
  %28 = ptrtoint ptr %type_units to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv13, ptr %type_units, align 1
  %message_iova = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg, i32 0, i32 4
  %29 = ptrtoint ptr %message_iova to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %message_iova, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30)
  %message_iova14 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %message_iova14 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %message_iova14, align 8
  %message_ctx = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg, i32 0, i32 3
  %33 = ptrtoint ptr %message_ctx to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %message_ctx, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34)
  %message_ctx15 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %message_ctx15 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %message_ctx15, align 8
  %threshold_entry = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg, i32 0, i32 1
  %37 = ptrtoint ptr %threshold_entry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %threshold_entry, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %threshold_entry16 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %threshold_entry16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %threshold_entry16, align 8
  %threshold_exit = getelementptr inbounds %struct.dpni_congestion_notification_cfg, ptr %cfg, i32 0, i32 2
  %41 = ptrtoint ptr %threshold_exit to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %threshold_exit, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %threshold_exit17 = getelementptr inbounds %struct.dpni_cmd_set_congestion_notification, ptr %params, i32 0, i32 10
  %44 = ptrtoint ptr %threshold_exit17 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %threshold_exit17, align 4
  %call18 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_queue(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %qtype, i8 noundef zeroext %tc, i8 noundef zeroext %index, i8 noundef zeroext %options, ptr nocapture noundef readonly %queue) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628070
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %qtype to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %tc2 = getelementptr inbounds %struct.dpni_cmd_set_queue, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %tc2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %tc, ptr %tc2, align 1
  %index3 = getelementptr inbounds %struct.dpni_cmd_set_queue, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %index3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %index, ptr %index3, align 2
  %options4 = getelementptr inbounds %struct.dpni_cmd_set_queue, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %options4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %options, ptr %options4, align 1
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue, align 8
  %conv5 = zext i16 %12 to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv5)
  %dest_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %dest_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dest_id, align 8
  %priority = getelementptr inbounds %struct.anon.49, ptr %queue, i32 0, i32 3
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %priority, align 1
  %dest_prio = getelementptr inbounds %struct.dpni_cmd_set_queue, ptr %params, i32 0, i32 7
  %17 = ptrtoint ptr %dest_prio to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %dest_prio, align 2
  %type = getelementptr inbounds %struct.anon.49, ptr %queue, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %flags = getelementptr inbounds %struct.dpni_cmd_set_queue, ptr %params, i32 0, i32 8
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 15
  %flc = getelementptr inbounds %struct.dpni_queue, ptr %queue, i32 0, i32 2
  %stash_control = getelementptr inbounds %struct.dpni_queue, ptr %queue, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %stash_control to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stash_control, align 8
  %shl11 = shl i8 %23, 6
  %and12 = and i8 %shl11, 64
  %or15 = or i8 %and12, %21
  %hold_active = getelementptr inbounds %struct.anon.49, ptr %queue, i32 0, i32 2
  %24 = ptrtoint ptr %hold_active to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hold_active, align 8
  %shl19 = shl i8 %25, 7
  %or23 = or i8 %shl19, %or15
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or23, ptr %flags, align 1
  %27 = ptrtoint ptr %flc to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %flc, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %flc26 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %flc26 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %flc26, align 8
  %user_context = getelementptr inbounds %struct.dpni_queue, ptr %queue, i32 0, i32 1
  %31 = ptrtoint ptr %user_context to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %user_context, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  %user_context27 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %user_context27 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %user_context27, align 8
  %call28 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_queue(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %qtype, i8 noundef zeroext %tc, i8 noundef zeroext %index, ptr nocapture noundef writeonly %queue, ptr nocapture noundef writeonly %qid) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511689509
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %qtype to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %tc2 = getelementptr inbounds %struct.dpni_cmd_get_queue, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %tc2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %tc, ptr %tc2, align 1
  %index3 = getelementptr inbounds %struct.dpni_cmd_get_queue, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %index3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %index, ptr %index3, align 2
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dest_id = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dest_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dest_id, align 8
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %conv7 = trunc i32 %12 to i16
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %queue, align 8
  %dest_prio = getelementptr inbounds %struct.dpni_rsp_get_queue, ptr %params, i32 0, i32 3
  %14 = ptrtoint ptr %dest_prio to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dest_prio, align 2
  %priority = getelementptr inbounds %struct.anon.49, ptr %queue, i32 0, i32 3
  %16 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %priority, align 1
  %flags = getelementptr inbounds %struct.dpni_rsp_get_queue, ptr %params, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags, align 1
  %19 = and i8 %18, 15
  %and = zext i8 %19 to i32
  %type = getelementptr inbounds %struct.anon.49, ptr %queue, i32 0, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %type, align 4
  %21 = lshr i8 %18, 6
  %22 = and i8 %21, 1
  %flc = getelementptr inbounds %struct.dpni_queue, ptr %queue, i32 0, i32 2
  %stash_control = getelementptr inbounds %struct.dpni_queue, ptr %queue, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %stash_control to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %stash_control, align 8
  %24 = lshr i8 %18, 7
  %hold_active = getelementptr inbounds %struct.anon.49, ptr %queue, i32 0, i32 2
  %25 = ptrtoint ptr %hold_active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %hold_active, align 8
  %flc22 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %flc22 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %flc22, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27)
  %29 = ptrtoint ptr %flc to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %flc, align 8
  %user_context = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %user_context to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %user_context, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %user_context24 = getelementptr inbounds %struct.dpni_queue, ptr %queue, i32 0, i32 1
  %33 = ptrtoint ptr %user_context24 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %user_context24, align 8
  %fqid = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %fqid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fqid, align 8
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %qid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %qid, align 4
  %qdbin = getelementptr inbounds %struct.dpni_rsp_get_queue, ptr %params, i32 0, i32 8
  %38 = ptrtoint ptr %qdbin to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %qdbin, align 4
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %qdbin26 = getelementptr inbounds %struct.dpni_queue_id, ptr %qid, i32 0, i32 1
  %41 = ptrtoint ptr %qdbin26 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %qdbin26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_statistics(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %page, ptr nocapture noundef writeonly %stat) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511681317
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %page, ptr %params, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %params, align 8
  %10 = call i64 @llvm.bswap.i64(i64 %9)
  %11 = ptrtoint ptr %stat to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %stat, align 8
  %arrayidx.1 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.1, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13)
  %arrayidx5.1 = getelementptr [7 x i64], ptr %stat, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx5.1, align 8
  %arrayidx.2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.2, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  %arrayidx5.2 = getelementptr [7 x i64], ptr %stat, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx5.2, align 8
  %arrayidx.3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.3, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  %arrayidx5.3 = getelementptr [7 x i64], ptr %stat, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx5.3, align 8
  %arrayidx.4 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.4, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25)
  %arrayidx5.4 = getelementptr [7 x i64], ptr %stat, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx5.4, align 8
  %arrayidx.5 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.5, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29)
  %arrayidx5.5 = getelementptr [7 x i64], ptr %stat, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx5.5, align 8
  %arrayidx.6 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.6, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33)
  %arrayidx5.6 = getelementptr [7 x i64], ptr %stat, i32 0, i32 6
  %35 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx5.6, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_taildrop(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %cg_point, i32 noundef %qtype, i8 noundef zeroext %tc, i8 noundef zeroext %index, ptr nocapture noundef readonly %taildrop) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636262
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %cg_point to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %conv1 = trunc i32 %qtype to i8
  %qtype2 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %qtype2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %qtype2, align 1
  %tc3 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %tc3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %tc, ptr %tc3, align 2
  %index4 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %index4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %index, ptr %index4, align 1
  %11 = ptrtoint ptr %taildrop to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %taildrop, align 4
  %13 = and i8 %12, 1
  %enable6 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %enable6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %enable6, align 8
  %units = getelementptr inbounds %struct.dpni_taildrop, ptr %taildrop, i32 0, i32 1
  %15 = ptrtoint ptr %units to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %units, align 4
  %conv9 = trunc i32 %16 to i8
  %units10 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, ptr %params, i32 0, i32 7
  %17 = ptrtoint ptr %units10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv9, ptr %units10, align 2
  %threshold = getelementptr inbounds %struct.dpni_taildrop, ptr %taildrop, i32 0, i32 2
  %18 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %threshold, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %threshold11 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, ptr %params, i32 0, i32 9
  %21 = ptrtoint ptr %threshold11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %threshold11, align 4
  %call12 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_taildrop(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i32 noundef %cg_point, i32 noundef %qtype, i8 noundef zeroext %tc, i8 noundef zeroext %index, ptr nocapture noundef writeonly %taildrop) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632166
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %cg_point to i8
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %params, align 8
  %conv1 = trunc i32 %qtype to i8
  %qtype2 = getelementptr inbounds %struct.dpni_cmd_get_taildrop, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %qtype2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv1, ptr %qtype2, align 1
  %tc3 = getelementptr inbounds %struct.dpni_cmd_get_taildrop, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %tc3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %tc, ptr %tc3, align 2
  %index4 = getelementptr inbounds %struct.dpni_cmd_get_taildrop, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %index4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %index, ptr %index4, align 1
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enable = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable, align 8
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %taildrop to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %taildrop, align 4
  %units = getelementptr inbounds %struct.dpni_rsp_get_taildrop, ptr %params, i32 0, i32 3
  %15 = ptrtoint ptr %units to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %units, align 2
  %conv11 = zext i8 %16 to i32
  %units12 = getelementptr inbounds %struct.dpni_taildrop, ptr %taildrop, i32 0, i32 1
  %17 = ptrtoint ptr %units12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv11, ptr %units12, align 4
  %threshold = getelementptr inbounds %struct.dpni_rsp_get_taildrop, ptr %params, i32 0, i32 5
  %18 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %threshold, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %threshold13 = getelementptr inbounds %struct.dpni_taildrop, ptr %taildrop, i32 0, i32 2
  %21 = ptrtoint ptr %threshold13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %threshold13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_api_version(ptr noundef %mc_io, i32 noundef %cmd_flags, ptr nocapture noundef writeonly %major_ver, ptr nocapture noundef writeonly %minor_ver) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.7.0.insert.shift.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632288
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %params, align 8
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %major_ver to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %major_ver, align 2
  %minor = getelementptr inbounds %struct.dpni_rsp_get_api_version, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %minor, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %minor_ver to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %minor_ver, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_rx_fs_dist(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640359
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cfg, align 8
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %params, align 8
  %enable = getelementptr inbounds %struct.dpni_rx_dist_cfg, ptr %cfg, i32 0, i32 2
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable, align 8
  %13 = and i8 %12, 1
  %enable2 = getelementptr inbounds %struct.dpni_cmd_set_rx_fs_dist, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %enable2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %enable2, align 2
  %tc = getelementptr inbounds %struct.dpni_rx_dist_cfg, ptr %cfg, i32 0, i32 3
  %15 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tc, align 1
  %tc5 = getelementptr inbounds %struct.dpni_cmd_set_rx_fs_dist, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %tc5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tc5, align 1
  %fs_miss_flow_id = getelementptr inbounds %struct.dpni_rx_dist_cfg, ptr %cfg, i32 0, i32 4
  %18 = ptrtoint ptr %fs_miss_flow_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fs_miss_flow_id, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %miss_flow_id = getelementptr inbounds %struct.dpni_cmd_set_rx_fs_dist, ptr %params, i32 0, i32 3
  %21 = ptrtoint ptr %miss_flow_id to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %miss_flow_id, align 4
  %key_cfg_iova = getelementptr inbounds %struct.dpni_rx_dist_cfg, ptr %cfg, i32 0, i32 1
  %22 = ptrtoint ptr %key_cfg_iova to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %key_cfg_iova, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  %key_cfg_iova6 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %key_cfg_iova6 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %key_cfg_iova6, align 8
  %call7 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_rx_hash_dist(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644455
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cfg, align 8
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %params, align 8
  %enable = getelementptr inbounds %struct.dpni_rx_dist_cfg, ptr %cfg, i32 0, i32 2
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable, align 8
  %13 = and i8 %12, 1
  %enable2 = getelementptr inbounds %struct.dpni_cmd_set_rx_hash_dist, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %enable2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %enable2, align 2
  %tc = getelementptr inbounds %struct.dpni_rx_dist_cfg, ptr %cfg, i32 0, i32 3
  %15 = ptrtoint ptr %tc to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tc, align 1
  %tc5 = getelementptr inbounds %struct.dpni_cmd_set_rx_hash_dist, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %tc5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tc5, align 1
  %key_cfg_iova = getelementptr inbounds %struct.dpni_rx_dist_cfg, ptr %cfg, i32 0, i32 1
  %18 = ptrtoint ptr %key_cfg_iova to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %key_cfg_iova, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %key_cfg_iova6 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %key_cfg_iova6 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %key_cfg_iova6, align 8
  %call7 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_add_fs_entry(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %tc_id, i16 noundef zeroext %index, ptr nocapture noundef readonly %cfg, ptr nocapture noundef readonly %action) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 40
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511644452
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %tc_id1 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %tc_id1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tc_id, ptr %tc_id1, align 2
  %key_size = getelementptr inbounds %struct.dpni_rule_cfg, ptr %cfg, i32 0, i32 2
  %8 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %key_size, align 8
  %key_size2 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %key_size2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %key_size2, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %index)
  %index3 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, ptr %params, i32 0, i32 3
  %12 = ptrtoint ptr %index3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %index3, align 4
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cfg, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %key_iova4 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %key_iova4 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %key_iova4, align 8
  %mask_iova = getelementptr inbounds %struct.dpni_rule_cfg, ptr %cfg, i32 0, i32 1
  %17 = ptrtoint ptr %mask_iova to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mask_iova, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %mask_iova5 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %mask_iova5 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %mask_iova5, align 8
  %options = getelementptr inbounds %struct.dpni_fs_action_cfg, ptr %action, i32 0, i32 2
  %21 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %options, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %params, align 8
  %flow_id = getelementptr inbounds %struct.dpni_fs_action_cfg, ptr %action, i32 0, i32 1
  %25 = ptrtoint ptr %flow_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flow_id, align 8
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %flow_id7 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, ptr %params, i32 0, i32 4
  %28 = ptrtoint ptr %flow_id7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %flow_id7, align 2
  %29 = ptrtoint ptr %action to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %action, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30)
  %flc8 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %flc8 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %flc8, align 8
  %call9 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_remove_fs_entry(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, i8 noundef zeroext %tc_id, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511648548
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %tc_id1 = getelementptr inbounds %struct.dpni_cmd_remove_fs_entry, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %tc_id1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tc_id, ptr %tc_id1, align 2
  %key_size = getelementptr inbounds %struct.dpni_rule_cfg, ptr %cfg, i32 0, i32 2
  %8 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %key_size, align 8
  %key_size2 = getelementptr inbounds %struct.dpni_cmd_remove_fs_entry, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %key_size2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %key_size2, align 1
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cfg, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %key_iova3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %key_iova3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %key_iova3, align 8
  %mask_iova = getelementptr inbounds %struct.dpni_rule_cfg, ptr %cfg, i32 0, i32 1
  %15 = ptrtoint ptr %mask_iova to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mask_iova, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %mask_iova4 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %mask_iova4 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %mask_iova4, align 8
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_qos_table(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511628068
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %default_tc = getelementptr inbounds %struct.dpni_qos_tbl_cfg, ptr %cfg, i32 0, i32 2
  %7 = ptrtoint ptr %default_tc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %default_tc, align 4
  %default_tc1 = getelementptr inbounds %struct.dpni_cmd_set_qos_table, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %default_tc1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %default_tc1, align 4
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cfg, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %key_cfg_iova2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 6
  %13 = ptrtoint ptr %key_cfg_iova2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %key_cfg_iova2, align 8
  %discard_on_miss = getelementptr inbounds %struct.dpni_qos_tbl_cfg, ptr %cfg, i32 0, i32 1
  %14 = ptrtoint ptr %discard_on_miss to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %discard_on_miss, align 8
  %discard_on_miss3 = getelementptr inbounds %struct.dpni_cmd_set_qos_table, ptr %params, i32 0, i32 2
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %discard_on_miss3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %discard_on_miss3, align 1
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_add_qos_entry(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg, i8 noundef zeroext %tc_id, i16 noundef zeroext %index) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511632164
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %tc_id1 = getelementptr inbounds %struct.dpni_cmd_add_qos_entry, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %tc_id1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tc_id, ptr %tc_id1, align 2
  %key_size = getelementptr inbounds %struct.dpni_rule_cfg, ptr %cfg, i32 0, i32 2
  %8 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %key_size, align 8
  %key_size2 = getelementptr inbounds %struct.dpni_cmd_add_qos_entry, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %key_size2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %key_size2, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %index)
  %index3 = getelementptr inbounds %struct.dpni_cmd_add_qos_entry, ptr %params, i32 0, i32 3
  %12 = ptrtoint ptr %index3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %index3, align 4
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cfg, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %key_iova4 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %key_iova4 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %key_iova4, align 8
  %mask_iova = getelementptr inbounds %struct.dpni_rule_cfg, ptr %cfg, i32 0, i32 1
  %17 = ptrtoint ptr %mask_iova to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mask_iova, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %mask_iova5 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %mask_iova5 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %mask_iova5, align 8
  %call6 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_remove_qos_entry(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511636260
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %key_size = getelementptr inbounds %struct.dpni_rule_cfg, ptr %cfg, i32 0, i32 2
  %7 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %key_size, align 8
  %key_size1 = getelementptr inbounds %struct.dpni_cmd_remove_qos_entry, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %key_size1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %key_size1, align 1
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cfg, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %key_iova2 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %key_iova2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %key_iova2, align 8
  %mask_iova = getelementptr inbounds %struct.dpni_rule_cfg, ptr %cfg, i32 0, i32 1
  %14 = ptrtoint ptr %mask_iova to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mask_iova, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %mask_iova3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %mask_iova3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %mask_iova3, align 8
  %call4 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_clear_qos_table(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511640356
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_tx_shaping(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %tx_cr_shaper, ptr nocapture noundef readonly %tx_er_shaper, i32 noundef %coupled) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511673377
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %max_burst_size = getelementptr inbounds %struct.dpni_tx_shaping_cfg, ptr %tx_cr_shaper, i32 0, i32 1
  %7 = ptrtoint ptr %max_burst_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_burst_size, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %params, align 8
  %max_burst_size1 = getelementptr inbounds %struct.dpni_tx_shaping_cfg, ptr %tx_er_shaper, i32 0, i32 1
  %11 = ptrtoint ptr %max_burst_size1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_burst_size1, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %tx_er_max_burst_size = getelementptr inbounds %struct.dpni_cmd_set_tx_shaping, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %tx_er_max_burst_size to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tx_er_max_burst_size, align 2
  %15 = ptrtoint ptr %tx_cr_shaper to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_cr_shaper, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %tx_cr_rate_limit = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %tx_cr_rate_limit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_cr_rate_limit, align 8
  %19 = ptrtoint ptr %tx_er_shaper to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_er_shaper, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %tx_er_rate_limit = getelementptr inbounds %struct.dpni_cmd_set_tx_shaping, ptr %params, i32 0, i32 4
  %22 = ptrtoint ptr %tx_er_rate_limit to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tx_er_rate_limit, align 4
  %coupled3 = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1, i32 2
  %23 = trunc i32 %coupled to i8
  %24 = and i8 %23, 1
  %25 = ptrtoint ptr %coupled3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %coupled3, align 8
  %call5 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_get_single_step_cfg(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef writeonly %ptp_cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511669031
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %call1 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %offset = getelementptr inbounds %struct.dpni_rsp_single_step_cfg, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %offset, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %offset2 = getelementptr inbounds %struct.dpni_single_step_cfg, ptr %ptp_cfg, i32 0, i32 2
  %10 = ptrtoint ptr %offset2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %offset2, align 2
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %params, align 8
  %13 = lshr i16 %12, 8
  %14 = trunc i16 %13 to i8
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ptp_cfg, align 4
  %17 = lshr i16 %12, 9
  %18 = trunc i16 %17 to i8
  %19 = and i8 %18, 1
  %ch_update = getelementptr inbounds %struct.dpni_single_step_cfg, ptr %ptp_cfg, i32 0, i32 1
  %20 = ptrtoint ptr %ch_update to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ch_update, align 1
  %peer_delay = getelementptr inbounds %struct.dpni_rsp_single_step_cfg, ptr %params, i32 0, i32 2
  %21 = ptrtoint ptr %peer_delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %peer_delay, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %peer_delay12 = getelementptr inbounds %struct.dpni_single_step_cfg, ptr %ptp_cfg, i32 0, i32 3
  %24 = ptrtoint ptr %peer_delay12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %peer_delay12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpni_set_single_step_cfg(ptr noundef %mc_io, i32 noundef %cmd_flags, i16 noundef zeroext %token, ptr nocapture noundef readonly %ptp_cfg) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.fsl_mc_command, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = trunc i32 %cmd_flags to i8
  %3 = and i8 %2, -128
  %4 = and i8 %2, 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %token) #5
  %header.sroa.8.0.insert.ext.i = zext i16 %5 to i64
  %header.sroa.8.0.insert.shift.i = shl nuw nsw i64 %header.sroa.8.0.insert.ext.i, 16
  %header.sroa.7.0.insert.ext.i = zext i8 %4 to i64
  %header.sroa.7.0.insert.shift.i = shl nuw nsw i64 %header.sroa.7.0.insert.ext.i, 32
  %header.sroa.8.0.insert.insert.i = or i64 %header.sroa.8.0.insert.shift.i, %header.sroa.7.0.insert.shift.i
  %header.sroa.5.0.insert.ext.i = zext i8 %3 to i64
  %header.sroa.5.0.insert.shift.i = shl nuw nsw i64 %header.sroa.5.0.insert.ext.i, 48
  %header.sroa.7.0.insert.insert.i = or i64 %header.sroa.8.0.insert.insert.i, %header.sroa.5.0.insert.shift.i
  %header.sroa.0.0.insert.mask.i = or i64 %header.sroa.7.0.insert.insert.i, 1099511664935
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %header.sroa.0.0.insert.mask.i, ptr %cmd, align 8
  %params = getelementptr inbounds %struct.fsl_mc_command, ptr %cmd, i32 0, i32 1
  %offset = getelementptr inbounds %struct.dpni_single_step_cfg, ptr %ptp_cfg, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %offset, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %offset1 = getelementptr inbounds %struct.dpni_cmd_single_step_cfg, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %offset1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %offset1, align 2
  %peer_delay = getelementptr inbounds %struct.dpni_single_step_cfg, ptr %ptp_cfg, i32 0, i32 3
  %11 = ptrtoint ptr %peer_delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %peer_delay, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %peer_delay2 = getelementptr inbounds %struct.dpni_cmd_single_step_cfg, ptr %params, i32 0, i32 2
  %14 = ptrtoint ptr %peer_delay2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %peer_delay2, align 4
  %15 = ptrtoint ptr %ptp_cfg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ptp_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool = icmp ne i8 %16, 0
  %lnot.ext = zext i1 %tobool to i16
  %ch_update = getelementptr inbounds %struct.dpni_single_step_cfg, ptr %ptp_cfg, i32 0, i32 1
  %17 = ptrtoint ptr %ch_update to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ch_update, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not = icmp eq i8 %18, 0
  %shl11 = select i1 %tobool6.not, i16 0, i16 2
  %or14 = or i16 %shl11, %lnot.ext
  %19 = shl nuw nsw i16 %or14, 8
  %20 = ptrtoint ptr %params to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %params, align 8
  %call17 = call i32 @mc_send_command(ptr noundef %mc_io, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #5
  ret i32 %call17
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
