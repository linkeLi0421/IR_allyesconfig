; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_dcb.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.202 }
%union.anon.202 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.203, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }
%struct.ice_dcbx_cfg = type { i32, i32, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_ets_cfg, %struct.ice_dcb_pfc_cfg, i8, [64 x %struct.ice_dcb_app_priority_table], [2 x i32], [64 x i8], i8, i8 }
%struct.ice_dcb_ets_cfg = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.ice_dcb_pfc_cfg = type { i8, i8, i8, i8 }
%struct.ice_dcb_app_priority_table = type { i16, i8, i8 }
%struct.ice_lldp_org_tlv = type <{ i16, i32, [0 x i8] }>
%struct.ice_cee_feat_tlv = type { %struct.ice_cee_tlv_hdr, i8, i8, [0 x i8] }
%struct.ice_cee_tlv_hdr = type { i16, i8, i8 }
%struct.ice_cee_app_prio = type <{ i16, i8, i16, i8 }>
%struct.ice_aqc_get_cee_dcb_cfg_resp = type { i8, [4 x i8], [8 x i8], i8, i16, i32, [12 x i8] }
%struct.ice_port_info = type { ptr, ptr, i32, i16, i16, i8, i8, i16, i16, i16, i16, %struct.ice_fc_info, %struct.ice_mac_info, %struct.ice_phy_info, %struct.mutex, [8 x [9 x ptr]], [9 x %struct.list_head], %struct.ice_qos_cfg, i8 }
%struct.ice_fc_info = type { i32, i32 }
%struct.ice_mac_info = type { [6 x i8], [6 x i8] }
%struct.ice_phy_info = type { %struct.ice_link_status, %struct.ice_link_status, i64, i64, i32, i8, i16, i32, i32, %struct.ice_aqc_set_phy_cfg_data }
%struct.ice_link_status = type { i64, i64, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.ice_aqc_set_phy_cfg_data = type { i64, i64, i8, i8, i16, i16, i8, i8 }
%struct.ice_qos_cfg = type { %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg, i8 }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.1, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.1 = type { ptr }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_aqc_txsched_elem_data = type { i32, i32, %struct.ice_aqc_txsched_elem }
%struct.ice_aqc_txsched_elem = type { i8, i8, i8, i8, %struct.ice_aqc_elem_info_bw, %struct.ice_aqc_elem_info_bw, i16, i16 }
%struct.ice_aqc_elem_info_bw = type { i16, i16 }
%struct.ice_sched_node = type { ptr, ptr, ptr, %struct.ice_aqc_txsched_elem_data, i32, i16, i8, i8, i8, i8, i8 }
%struct.ice_aqc_port_ets_elem = type { i8, [3 x i8], i32, [8 x i8], i32, i32, i32, [4 x i8], [8 x i32] }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6945, i64 32962]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 860, i64 3260]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 3, i64 0, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 15, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 15, i64 3, i64 4, i64 5, i64 6]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_stop_lldp(ptr noundef %hw, i1 noundef zeroext %shutdown_lldp_agent, i1 noundef zeroext %persist, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #4
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2565) #4
  br i1 %shutdown_lldp_agent, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %0, align 4
  %4 = or i8 %3, 1
  store i8 %4, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %persist, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %0, align 4
  %7 = or i8 %6, 2
  store i8 %7, ptr %0, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_dflt_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_send_cmd(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_start_lldp(ptr noundef %hw, i1 noundef zeroext %persist, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #4
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2566) #4
  %spec.select = select i1 %persist, i8 3, i8 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %spec.select, ptr %0, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_get_dcb_cfg(ptr noundef %hw, i8 noundef zeroext %mib_type, i8 noundef zeroext %bridgetype, ptr noundef writeonly %dcbcfg) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1500, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %ice_aq_get_lldp_mib.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ice_aq_get_lldp_mib.exit:                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #4
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  %3 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %4 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 2
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2560) #4
  %5 = and i8 %mib_type, 3
  %shl.i = shl i8 %bridgetype, 2
  %and5.i = and i8 %shl.i, 12
  %or.i = or i8 %and5.i, %5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or.i, ptr %3, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -9211, ptr %4, align 4
  %call.i18 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef nonnull %call.i, i16 noundef zeroext 1500, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool2.not = icmp eq i32 %call.i18, 0
  br i1 %tobool2.not, label %if.then3, label %ice_aq_get_lldp_mib.exit.if.end5_crit_edge

ice_aq_get_lldp_mib.exit.if.end5_crit_edge:       ; preds = %ice_aq_get_lldp_mib.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %ice_aq_get_lldp_mib.exit
  %tobool1.not.i = icmp eq ptr %dcbcfg, null
  br i1 %tobool1.not.i, label %if.then3.if.end5_crit_edge, label %if.end.i20

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end.i20:                                       ; preds = %if.then3
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 14
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %9)
  %cmp42.i = icmp ult i16 %9, 512
  br i1 %cmp42.i, label %if.end.i20.if.end5_crit_edge, label %if.end19.lr.ph.i

if.end.i20.if.end5_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end19.lr.ph.i:                                 ; preds = %if.end.i20
  %10 = and i16 %9, 511
  %conv840.i = zext i16 %10 to i32
  %add1041.i = add nuw nsw i32 %conv840.i, 2
  %pfc.i.i7.i.i = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 4
  %pfcena.i.i8.i.i = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 4, i32 3
  %pfccap.i.i9.i.i = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 4, i32 2
  %etscfg1.i.i10.i.i = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2
  %cbs.i.i11.i.i = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 1
  %arrayidx6.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 0
  %arrayidx15.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 1
  %arrayidx6.1.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 2
  %arrayidx15.1.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 3
  %arrayidx6.2.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 4
  %arrayidx15.2.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 5
  %arrayidx6.3.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 6
  %arrayidx15.3.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 3, i32 7
  %arrayidx24.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 0
  %11 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 5, i32 0
  %arrayidx24.1.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 1
  %12 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 5, i32 1
  %arrayidx24.2.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 2
  %13 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 5, i32 2
  %arrayidx24.3.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 3
  %14 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 5, i32 3
  %arrayidx24.4.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 4
  %15 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 5, i32 4
  %arrayidx24.5.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 5
  %16 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 5, i32 5
  %arrayidx24.6.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 6
  %17 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 5, i32 6
  %arrayidx24.7.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 4, i32 7
  %18 = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 5, i32 7
  %maxtcs.i.i12.i.i = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 2, i32 2
  %mbc.i.i.i.i = getelementptr inbounds %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 4, i32 1
  %arrayidx2.i.i14.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 3
  %arrayidx11.i.i15.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 3, i32 1
  %arrayidx2.1.i.i17.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 3, i32 2
  %arrayidx11.1.i.i18.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 3, i32 3
  %arrayidx2.2.i.i20.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 3, i32 4
  %arrayidx11.2.i.i21.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 3, i32 5
  %arrayidx2.3.i.i23.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 3, i32 6
  %arrayidx11.3.i.i24.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 3, i32 7
  %arrayidx19.i.i26.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 4
  %arrayidx24.i.i28.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 5
  %arrayidx19.1.i.i30.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 4, i32 1
  %arrayidx24.1.i.i32.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 5, i32 1
  %arrayidx19.2.i.i34.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 4, i32 2
  %arrayidx24.2.i.i36.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 5, i32 2
  %arrayidx19.3.i.i38.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 4, i32 3
  %arrayidx24.3.i.i40.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 5, i32 3
  %arrayidx19.4.i.i42.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 4, i32 4
  %arrayidx24.4.i.i44.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 5, i32 4
  %arrayidx19.5.i.i46.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 4, i32 5
  %arrayidx24.5.i.i48.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 5, i32 5
  %arrayidx19.6.i.i50.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 4, i32 6
  %arrayidx24.6.i.i52.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 5, i32 6
  %arrayidx19.7.i.i54.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 4, i32 7
  %arrayidx24.7.i.i56.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 3, i32 5, i32 7
  br label %if.end19.i

if.end19.i:                                       ; preds = %sw.epilog.i.if.end19.i_crit_edge, %if.end19.lr.ph.i
  %add1049.i = phi i32 [ %add1041.i, %if.end19.lr.ph.i ], [ %add10.i, %sw.epilog.i.if.end19.i_crit_edge ]
  %conv848.i = phi i32 [ %conv840.i, %if.end19.lr.ph.i ], [ %conv8.i, %sw.epilog.i.if.end19.i_crit_edge ]
  %19 = phi i16 [ %10, %if.end19.lr.ph.i ], [ %311, %sw.epilog.i.if.end19.i_crit_edge ]
  %20 = phi i16 [ %9, %if.end19.lr.ph.i ], [ %310, %sw.epilog.i.if.end19.i_crit_edge ]
  %tlv.046.i = phi ptr [ %add.ptr.i, %if.end19.lr.ph.i ], [ %add.ptr23.i, %sw.epilog.i.if.end19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -513, i16 %20)
  %cond.i = icmp ugt i16 %20, -513
  br i1 %cond.i, label %sw.bb.i, label %if.end19.i.sw.epilog.i_crit_edge

if.end19.i.sw.epilog.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end19.i
  %ouisubtype1.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 0, i32 1
  %21 = ptrtoint ptr %ouisubtype1.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %ouisubtype1.i.i, align 1
  %shr.i.i = lshr i32 %22, 8
  %23 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %sw.bb.i.sw.epilog.i_crit_edge [
    i32 32962, label %sw.bb.i.i
    i32 6945, label %sw.bb2.i.i
  ]

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %trunc.i.i.i = trunc i32 %22 to i8
  %24 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %trunc.i.i.i, label %sw.bb.i.i.sw.epilog.i_crit_edge [
    i8 9, label %sw.bb.i.i.i
    i8 10, label %sw.bb3.i.i.i
    i8 11, label %sw.bb4.i.i.i
    i8 12, label %sw.bb5.i.i.i
  ]

sw.bb.i.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tlvinfo.i.i.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 0, i32 2
  %25 = ptrtoint ptr %tlvinfo.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tlvinfo.i.i.i.i, align 1
  %27 = lshr i8 %26, 7
  %28 = ptrtoint ptr %etscfg1.i.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %etscfg1.i.i10.i.i, align 1
  %29 = lshr i8 %26, 6
  %30 = and i8 %29, 1
  %31 = ptrtoint ptr %cbs.i.i11.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %cbs.i.i11.i.i, align 1
  %32 = and i8 %26, 7
  %33 = ptrtoint ptr %maxtcs.i.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %maxtcs.i.i12.i.i, align 1
  %arrayidx13.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 1
  %34 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx13.i.i.i.i, align 1
  %36 = lshr i8 %35, 4
  %37 = and i8 %36, 7
  %38 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx6.i.i.i.i, align 1
  %39 = and i8 %35, 7
  %40 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx15.i.i.i.i, align 1
  %arrayidx.1.i.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx.1.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.1.i.i.i.i.i, align 1
  %43 = lshr i8 %42, 4
  %44 = and i8 %43, 7
  %45 = ptrtoint ptr %arrayidx6.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx6.1.i.i.i.i, align 1
  %46 = and i8 %42, 7
  %47 = ptrtoint ptr %arrayidx15.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx15.1.i.i.i.i, align 1
  %arrayidx.2.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 3
  %48 = ptrtoint ptr %arrayidx.2.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.2.i.i.i.i.i, align 1
  %50 = lshr i8 %49, 4
  %51 = and i8 %50, 7
  %52 = ptrtoint ptr %arrayidx6.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx6.2.i.i.i.i, align 1
  %53 = and i8 %49, 7
  %54 = ptrtoint ptr %arrayidx15.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx15.2.i.i.i.i, align 1
  %arrayidx.3.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 4
  %55 = ptrtoint ptr %arrayidx.3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.3.i.i.i.i.i, align 1
  %57 = lshr i8 %56, 4
  %58 = and i8 %57, 7
  %59 = ptrtoint ptr %arrayidx6.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx6.3.i.i.i.i, align 1
  %60 = and i8 %56, 7
  %61 = ptrtoint ptr %arrayidx15.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx15.3.i.i.i.i, align 1
  %arrayidx18.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 5
  %62 = ptrtoint ptr %arrayidx18.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx18.i.i.i.i.i, align 1
  %64 = ptrtoint ptr %arrayidx24.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx24.i.i.i.i, align 1
  %arrayidx23.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 13
  %65 = ptrtoint ptr %arrayidx23.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx23.i.i.i.i.i, align 1
  %67 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %11, align 1
  %arrayidx18.1.i.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 2
  %68 = ptrtoint ptr %arrayidx18.1.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx18.1.i.i.i.i.i, align 1
  %70 = ptrtoint ptr %arrayidx24.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx24.1.i.i.i.i, align 1
  %arrayidx23.1.i.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 3, i32 1
  %71 = ptrtoint ptr %arrayidx23.1.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx23.1.i.i.i.i.i, align 1
  %73 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %12, align 1
  %arrayidx18.2.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 7
  %74 = ptrtoint ptr %arrayidx18.2.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx18.2.i.i.i.i.i, align 1
  %76 = ptrtoint ptr %arrayidx24.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx24.2.i.i.i.i, align 1
  %arrayidx23.2.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 15
  %77 = ptrtoint ptr %arrayidx23.2.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx23.2.i.i.i.i.i, align 1
  %79 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %13, align 1
  %arrayidx18.3.i.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 2, i32 1
  %80 = ptrtoint ptr %arrayidx18.3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx18.3.i.i.i.i.i, align 1
  %82 = ptrtoint ptr %arrayidx24.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx24.3.i.i.i.i, align 1
  %arrayidx23.3.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 16
  %83 = ptrtoint ptr %arrayidx23.3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx23.3.i.i.i.i.i, align 1
  %85 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %14, align 1
  %arrayidx18.4.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 9
  %86 = ptrtoint ptr %arrayidx18.4.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx18.4.i.i.i.i.i, align 1
  %88 = ptrtoint ptr %arrayidx24.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx24.4.i.i.i.i, align 1
  %arrayidx23.4.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 17
  %89 = ptrtoint ptr %arrayidx23.4.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx23.4.i.i.i.i.i, align 1
  %91 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %15, align 1
  %arrayidx18.5.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 10
  %92 = ptrtoint ptr %arrayidx18.5.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx18.5.i.i.i.i.i, align 1
  %94 = ptrtoint ptr %arrayidx24.5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx24.5.i.i.i.i, align 1
  %arrayidx23.5.i.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 4
  %95 = ptrtoint ptr %arrayidx23.5.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx23.5.i.i.i.i.i, align 1
  %97 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %16, align 1
  %arrayidx18.6.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 11
  %98 = ptrtoint ptr %arrayidx18.6.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx18.6.i.i.i.i.i, align 1
  %100 = ptrtoint ptr %arrayidx24.6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx24.6.i.i.i.i, align 1
  %arrayidx23.6.i.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i.i, i32 19
  %101 = ptrtoint ptr %arrayidx23.6.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx23.6.i.i.i.i.i, align 1
  %103 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %17, align 1
  %arrayidx18.7.i.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 3
  %104 = ptrtoint ptr %arrayidx18.7.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx18.7.i.i.i.i.i, align 1
  %106 = ptrtoint ptr %arrayidx24.7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx24.7.i.i.i.i, align 1
  %arrayidx23.7.i.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 4, i32 1
  %107 = ptrtoint ptr %arrayidx23.7.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx23.7.i.i.i.i.i, align 1
  %109 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %18, align 1
  br label %sw.epilog.i

sw.bb3.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tlvinfo.i13.i.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 0, i32 2
  %arrayidx.i.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 1
  %110 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %112 = lshr i8 %111, 4
  %113 = and i8 %112, 7
  %114 = ptrtoint ptr %arrayidx2.i.i14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %arrayidx2.i.i14.i.i.i, align 1
  %115 = and i8 %111, 7
  %116 = ptrtoint ptr %arrayidx11.i.i15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx11.i.i15.i.i.i, align 1
  %arrayidx.1.i.i16.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 1, i32 1
  %117 = ptrtoint ptr %arrayidx.1.i.i16.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.1.i.i16.i.i.i, align 1
  %119 = lshr i8 %118, 4
  %120 = and i8 %119, 7
  %121 = ptrtoint ptr %arrayidx2.1.i.i17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx2.1.i.i17.i.i.i, align 1
  %122 = and i8 %118, 7
  %123 = ptrtoint ptr %arrayidx11.1.i.i18.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx11.1.i.i18.i.i.i, align 1
  %arrayidx.2.i.i19.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 3
  %124 = ptrtoint ptr %arrayidx.2.i.i19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.2.i.i19.i.i.i, align 1
  %126 = lshr i8 %125, 4
  %127 = and i8 %126, 7
  %128 = ptrtoint ptr %arrayidx2.2.i.i20.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx2.2.i.i20.i.i.i, align 1
  %129 = and i8 %125, 7
  %130 = ptrtoint ptr %arrayidx11.2.i.i21.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx11.2.i.i21.i.i.i, align 1
  %arrayidx.3.i.i22.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 4
  %131 = ptrtoint ptr %arrayidx.3.i.i22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.3.i.i22.i.i.i, align 1
  %133 = lshr i8 %132, 4
  %134 = and i8 %133, 7
  %135 = ptrtoint ptr %arrayidx2.3.i.i23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx2.3.i.i23.i.i.i, align 1
  %136 = and i8 %132, 7
  %137 = ptrtoint ptr %arrayidx11.3.i.i24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx11.3.i.i24.i.i.i, align 1
  %arrayidx18.i.i25.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 5
  %138 = ptrtoint ptr %arrayidx18.i.i25.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx18.i.i25.i.i.i, align 1
  %140 = ptrtoint ptr %arrayidx19.i.i26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx19.i.i26.i.i.i, align 1
  %arrayidx23.i.i27.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 13
  %141 = ptrtoint ptr %arrayidx23.i.i27.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx23.i.i27.i.i.i, align 1
  %143 = ptrtoint ptr %arrayidx24.i.i28.i.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx24.i.i28.i.i.i, align 1
  %arrayidx18.1.i.i29.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 2
  %144 = ptrtoint ptr %arrayidx18.1.i.i29.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx18.1.i.i29.i.i.i, align 1
  %146 = ptrtoint ptr %arrayidx19.1.i.i30.i.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx19.1.i.i30.i.i.i, align 1
  %arrayidx23.1.i.i31.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 3, i32 1
  %147 = ptrtoint ptr %arrayidx23.1.i.i31.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx23.1.i.i31.i.i.i, align 1
  %149 = ptrtoint ptr %arrayidx24.1.i.i32.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx24.1.i.i32.i.i.i, align 1
  %arrayidx18.2.i.i33.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 7
  %150 = ptrtoint ptr %arrayidx18.2.i.i33.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx18.2.i.i33.i.i.i, align 1
  %152 = ptrtoint ptr %arrayidx19.2.i.i34.i.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx19.2.i.i34.i.i.i, align 1
  %arrayidx23.2.i.i35.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 15
  %153 = ptrtoint ptr %arrayidx23.2.i.i35.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx23.2.i.i35.i.i.i, align 1
  %155 = ptrtoint ptr %arrayidx24.2.i.i36.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx24.2.i.i36.i.i.i, align 1
  %arrayidx18.3.i.i37.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 2, i32 1
  %156 = ptrtoint ptr %arrayidx18.3.i.i37.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx18.3.i.i37.i.i.i, align 1
  %158 = ptrtoint ptr %arrayidx19.3.i.i38.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx19.3.i.i38.i.i.i, align 1
  %arrayidx23.3.i.i39.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 16
  %159 = ptrtoint ptr %arrayidx23.3.i.i39.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx23.3.i.i39.i.i.i, align 1
  %161 = ptrtoint ptr %arrayidx24.3.i.i40.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx24.3.i.i40.i.i.i, align 1
  %arrayidx18.4.i.i41.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 9
  %162 = ptrtoint ptr %arrayidx18.4.i.i41.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx18.4.i.i41.i.i.i, align 1
  %164 = ptrtoint ptr %arrayidx19.4.i.i42.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx19.4.i.i42.i.i.i, align 1
  %arrayidx23.4.i.i43.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 17
  %165 = ptrtoint ptr %arrayidx23.4.i.i43.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx23.4.i.i43.i.i.i, align 1
  %167 = ptrtoint ptr %arrayidx24.4.i.i44.i.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx24.4.i.i44.i.i.i, align 1
  %arrayidx18.5.i.i45.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 10
  %168 = ptrtoint ptr %arrayidx18.5.i.i45.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx18.5.i.i45.i.i.i, align 1
  %170 = ptrtoint ptr %arrayidx19.5.i.i46.i.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %arrayidx19.5.i.i46.i.i.i, align 1
  %arrayidx23.5.i.i47.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 4
  %171 = ptrtoint ptr %arrayidx23.5.i.i47.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx23.5.i.i47.i.i.i, align 1
  %173 = ptrtoint ptr %arrayidx24.5.i.i48.i.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %arrayidx24.5.i.i48.i.i.i, align 1
  %arrayidx18.6.i.i49.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 11
  %174 = ptrtoint ptr %arrayidx18.6.i.i49.i.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx18.6.i.i49.i.i.i, align 1
  %176 = ptrtoint ptr %arrayidx19.6.i.i50.i.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx19.6.i.i50.i.i.i, align 1
  %arrayidx23.6.i.i51.i.i.i = getelementptr i8, ptr %tlvinfo.i13.i.i.i, i32 19
  %177 = ptrtoint ptr %arrayidx23.6.i.i51.i.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx23.6.i.i51.i.i.i, align 1
  %179 = ptrtoint ptr %arrayidx24.6.i.i52.i.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %arrayidx24.6.i.i52.i.i.i, align 1
  %arrayidx18.7.i.i53.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 3
  %180 = ptrtoint ptr %arrayidx18.7.i.i53.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx18.7.i.i53.i.i.i, align 1
  %182 = ptrtoint ptr %arrayidx19.7.i.i54.i.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %arrayidx19.7.i.i54.i.i.i, align 1
  %arrayidx23.7.i.i55.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 4, i32 1
  %183 = ptrtoint ptr %arrayidx23.7.i.i55.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx23.7.i.i55.i.i.i, align 1
  %185 = ptrtoint ptr %arrayidx24.7.i.i56.i.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx24.7.i.i56.i.i.i, align 1
  br label %sw.epilog.i

sw.bb4.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tlvinfo.i57.i.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 0, i32 2
  %186 = ptrtoint ptr %tlvinfo.i57.i.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %tlvinfo.i57.i.i.i, align 1
  %188 = lshr i8 %187, 7
  %189 = ptrtoint ptr %pfc.i.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %pfc.i.i7.i.i, align 2
  %190 = lshr i8 %187, 6
  %191 = and i8 %190, 1
  %192 = ptrtoint ptr %mbc.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %mbc.i.i.i.i, align 1
  %193 = and i8 %187, 15
  %194 = ptrtoint ptr %pfccap.i.i9.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %pfccap.i.i9.i.i, align 2
  %arrayidx14.i.i.i.i = getelementptr i8, ptr %tlvinfo.i57.i.i.i, i32 1
  %195 = ptrtoint ptr %arrayidx14.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx14.i.i.i.i, align 1
  %197 = ptrtoint ptr %pfcena.i.i8.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %pfcena.i.i8.i.i, align 1
  br label %sw.epilog.i

sw.bb5.i.i.i:                                     ; preds = %sw.bb.i.i
  %tlvinfo.i58.i.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.046.i, i32 0, i32 2
  %sub.i.i.i.i = add nsw i16 %19, -5
  %conv6.i.i.i.i = zext i16 %sub.i.i.i.i to i32
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge, %sw.bb5.i.i.i
  %offset.0.i.i.i.i = phi i32 [ 1, %sw.bb5.i.i.i ], [ %add32.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %i.0.i.i.i.i = phi i32 [ 0, %sw.bb5.i.i.i ], [ %inc34.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %conv5.i.i.i.i = and i32 %offset.0.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i.i.i, i32 %conv6.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %conv5.i.i.i.i, %conv6.i.i.i.i
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i, label %while.cond.i.i.i.i.ice_parse_ieee_app_tlv.exit.i.i.i_crit_edge

while.cond.i.i.i.i.ice_parse_ieee_app_tlv.exit.i.i.i_crit_edge: ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_parse_ieee_app_tlv.exit.i.i.i

while.body.i.i.i.i:                               ; preds = %while.cond.i.i.i.i
  %arrayidx.i59.i.i.i = getelementptr i8, ptr %tlvinfo.i58.i.i.i, i32 %conv5.i.i.i.i
  %198 = ptrtoint ptr %arrayidx.i59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx.i59.i.i.i, align 1
  %200 = lshr i8 %199, 5
  %arrayidx12.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 6, i32 %i.0.i.i.i.i
  %priority.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 6, i32 %i.0.i.i.i.i, i32 1
  %201 = ptrtoint ptr %priority.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %priority.i.i.i.i, align 2
  %202 = and i8 %199, 7
  %selector.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 6, i32 %i.0.i.i.i.i, i32 2
  %203 = ptrtoint ptr %selector.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %selector.i.i.i.i, align 1
  %add.i.i.i.i = add nuw nsw i32 %conv5.i.i.i.i, 1
  %arrayidx22.i.i.i.i = getelementptr i8, ptr %tlvinfo.i58.i.i.i, i32 %add.i.i.i.i
  %204 = ptrtoint ptr %arrayidx22.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx22.i.i.i.i, align 1
  %conv23.i.i.i.i = zext i8 %205 to i16
  %shl.i.i.i.i = shl nuw i16 %conv23.i.i.i.i, 8
  %add25.i.i.i.i = add nuw nsw i32 %conv5.i.i.i.i, 2
  %arrayidx26.i.i.i.i = getelementptr i8, ptr %tlvinfo.i58.i.i.i, i32 %add25.i.i.i.i
  %206 = ptrtoint ptr %arrayidx26.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx26.i.i.i.i, align 1
  %conv27.i.i.i.i = zext i8 %207 to i16
  %or.i.i.i.i = or i16 %shl.i.i.i.i, %conv27.i.i.i.i
  %208 = ptrtoint ptr %arrayidx12.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %or.i.i.i.i, ptr %arrayidx12.i.i.i.i, align 4
  %add32.i.i.i.i = add nuw nsw i32 %conv5.i.i.i.i, 3
  %inc34.i.i.i.i = add nuw nsw i32 %i.0.i.i.i.i, 1
  %exitcond.i.i.i.i = icmp eq i32 %inc34.i.i.i.i, 64
  br i1 %exitcond.i.i.i.i, label %while.body.i.i.i.i.ice_parse_ieee_app_tlv.exit.i.i.i_crit_edge, label %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge

while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i.i.i

while.body.i.i.i.i.ice_parse_ieee_app_tlv.exit.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_parse_ieee_app_tlv.exit.i.i.i

ice_parse_ieee_app_tlv.exit.i.i.i:                ; preds = %while.body.i.i.i.i.ice_parse_ieee_app_tlv.exit.i.i.i_crit_edge, %while.cond.i.i.i.i.ice_parse_ieee_app_tlv.exit.i.i.i_crit_edge
  %i.1.i.i.i.i = phi i32 [ 64, %while.body.i.i.i.i.ice_parse_ieee_app_tlv.exit.i.i.i_crit_edge ], [ %i.0.i.i.i.i, %while.cond.i.i.i.i.ice_parse_ieee_app_tlv.exit.i.i.i_crit_edge ]
  %209 = ptrtoint ptr %dcbcfg to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %i.1.i.i.i.i, ptr %dcbcfg, align 4
  br label %sw.epilog.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i
  %conv2.i.i.i = and i32 %22, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv2.i.i.i)
  %cmp.not.i.i.i = icmp ne i32 %conv2.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %19)
  %cmp11.i.i.i = icmp ult i16 %19, 19
  %or.cond39.i = select i1 %cmp.not.i.i.i, i1 true, i1 %cmp11.i.i.i
  br i1 %or.cond39.i, label %sw.bb2.i.i.sw.epilog.i_crit_edge, label %if.end14.i.i.i

sw.bb2.i.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end14.i.i.i:                                   ; preds = %sw.bb2.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %tlv.046.i, i32 18
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end14.i.i.i
  %sub_tlv.066.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end14.i.i.i ], [ %add.ptr33.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ]
  %feat_tlv_count.065.i.i.i = phi i8 [ 0, %if.end14.i.i.i ], [ %inc.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ]
  %210 = ptrtoint ptr %sub_tlv.066.i.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %sub_tlv.066.i.i.i, align 2
  %and21.i.i.i = and i16 %211, 511
  %212 = lshr i16 %211, 9
  %conv27.i.i.i = zext i16 %212 to i32
  %213 = zext i32 %conv27.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %conv27.i.i.i, label %while.body.i.i.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i13.i.i
    i32 3, label %sw.bb29.i.i.i
    i32 4, label %sw.bb30.i.i.i
  ]

while.body.i.i.i.sw.epilog.i_crit_edge:           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i13.i.i:                                    ; preds = %while.body.i.i.i
  %en_will_err.i.i.i.i = getelementptr inbounds %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 0, i32 1
  %214 = ptrtoint ptr %en_will_err.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %en_will_err.i.i.i.i, align 2
  %216 = and i8 %215, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i.i.i.i = icmp eq i8 %216, 0
  br i1 %tobool.not.i.i.i.i, label %sw.bb.i13.i.i.ice_parse_cee_pgcfg_tlv.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

sw.bb.i13.i.i.ice_parse_cee_pgcfg_tlv.exit.i.i.i_crit_edge: ; preds = %sw.bb.i13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_parse_cee_pgcfg_tlv.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb.i13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %217 = ptrtoint ptr %etscfg1.i.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %etscfg1.i.i10.i.i, align 1
  br label %ice_parse_cee_pgcfg_tlv.exit.i.i.i

ice_parse_cee_pgcfg_tlv.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %sw.bb.i13.i.i.ice_parse_cee_pgcfg_tlv.exit.i.i.i_crit_edge
  %tlvinfo.i.i14.i.i = getelementptr inbounds %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 0, i32 3
  %218 = ptrtoint ptr %cbs.i.i11.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %cbs.i.i11.i.i, align 1
  %219 = ptrtoint ptr %tlvinfo.i.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %tlvinfo.i.i14.i.i, align 1
  %221 = lshr i8 %220, 4
  %222 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %arrayidx6.i.i.i.i, align 1
  %223 = load i8, ptr %tlvinfo.i.i14.i.i, align 1
  %224 = and i8 %223, 15
  %225 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %arrayidx15.i.i.i.i, align 1
  %arrayidx.1.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i14.i.i, i32 1
  %226 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx.1.i.i.i.i, align 1
  %228 = lshr i8 %227, 4
  %229 = ptrtoint ptr %arrayidx6.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %arrayidx6.1.i.i.i.i, align 1
  %230 = load i8, ptr %arrayidx.1.i.i.i.i, align 1
  %231 = and i8 %230, 15
  %232 = ptrtoint ptr %arrayidx15.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %arrayidx15.1.i.i.i.i, align 1
  %arrayidx.2.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 1, i32 0, i32 1
  %233 = ptrtoint ptr %arrayidx.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx.2.i.i.i.i, align 1
  %235 = lshr i8 %234, 4
  %236 = ptrtoint ptr %arrayidx6.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx6.2.i.i.i.i, align 1
  %237 = load i8, ptr %arrayidx.2.i.i.i.i, align 1
  %238 = and i8 %237, 15
  %239 = ptrtoint ptr %arrayidx15.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %arrayidx15.2.i.i.i.i, align 1
  %arrayidx.3.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 1, i32 0, i32 2
  %240 = ptrtoint ptr %arrayidx.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx.3.i.i.i.i, align 1
  %242 = lshr i8 %241, 4
  %243 = ptrtoint ptr %arrayidx6.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx6.3.i.i.i.i, align 1
  %244 = load i8, ptr %arrayidx.3.i.i.i.i, align 1
  %245 = and i8 %244, 15
  %246 = ptrtoint ptr %arrayidx15.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %arrayidx15.3.i.i.i.i, align 1
  %arrayidx23.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 1, i32 1
  %247 = ptrtoint ptr %arrayidx23.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx23.i.i.i.i, align 1
  %249 = ptrtoint ptr %arrayidx24.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %arrayidx24.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %221)
  %cmp28.i.i.i.i = icmp eq i8 %221, 15
  %spec.select.i.i.i.i = select i1 %cmp28.i.i.i.i, i8 0, i8 2
  %250 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %spec.select.i.i.i.i, ptr %11, align 1
  %arrayidx23.1.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 1, i32 2
  %251 = ptrtoint ptr %arrayidx23.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx23.1.i.i.i.i, align 1
  %253 = ptrtoint ptr %arrayidx24.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %arrayidx24.1.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %224)
  %cmp28.1.i.i.i.i = icmp eq i8 %224, 15
  %.sink72.i.i.i.i = select i1 %cmp28.1.i.i.i.i, i8 0, i8 2
  %254 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %.sink72.i.i.i.i, ptr %12, align 1
  %arrayidx23.2.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 2
  %255 = ptrtoint ptr %arrayidx23.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx23.2.i.i.i.i, align 1
  %257 = ptrtoint ptr %arrayidx24.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %arrayidx24.2.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %228)
  %cmp28.2.i.i.i.i = icmp eq i8 %228, 15
  %.sink73.i.i.i.i = select i1 %cmp28.2.i.i.i.i, i8 0, i8 2
  %258 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %.sink73.i.i.i.i, ptr %13, align 1
  %arrayidx23.3.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i14.i.i, i32 7
  %259 = ptrtoint ptr %arrayidx23.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx23.3.i.i.i.i, align 1
  %261 = ptrtoint ptr %arrayidx24.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %arrayidx24.3.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %231)
  %cmp28.3.i.i.i.i = icmp eq i8 %231, 15
  %.sink74.i.i.i.i = select i1 %cmp28.3.i.i.i.i, i8 0, i8 2
  %262 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %.sink74.i.i.i.i, ptr %14, align 1
  %arrayidx23.4.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 2, i32 0, i32 1
  %263 = ptrtoint ptr %arrayidx23.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx23.4.i.i.i.i, align 1
  %265 = ptrtoint ptr %arrayidx24.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %arrayidx24.4.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %235)
  %cmp28.4.i.i.i.i = icmp eq i8 %235, 15
  %.sink75.i.i.i.i = select i1 %cmp28.4.i.i.i.i, i8 0, i8 2
  %266 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %.sink75.i.i.i.i, ptr %15, align 1
  %arrayidx23.5.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 2, i32 0, i32 2
  %267 = ptrtoint ptr %arrayidx23.5.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx23.5.i.i.i.i, align 1
  %269 = ptrtoint ptr %arrayidx24.5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %arrayidx24.5.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %238)
  %cmp28.5.i.i.i.i = icmp eq i8 %238, 15
  %.sink76.i.i.i.i = select i1 %cmp28.5.i.i.i.i, i8 0, i8 2
  %270 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %.sink76.i.i.i.i, ptr %16, align 1
  %arrayidx23.6.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 2, i32 1
  %271 = ptrtoint ptr %arrayidx23.6.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx23.6.i.i.i.i, align 1
  %273 = ptrtoint ptr %arrayidx24.6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %arrayidx24.6.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %242)
  %cmp28.6.i.i.i.i = icmp eq i8 %242, 15
  %.sink77.i.i.i.i = select i1 %cmp28.6.i.i.i.i, i8 0, i8 2
  %274 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %.sink77.i.i.i.i, ptr %17, align 1
  %arrayidx23.7.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 2, i32 2
  %275 = ptrtoint ptr %arrayidx23.7.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx23.7.i.i.i.i, align 1
  %277 = ptrtoint ptr %arrayidx24.7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %arrayidx24.7.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %245)
  %cmp28.7.i.i.i.i = icmp eq i8 %245, 15
  %.sink78.i.i.i.i = select i1 %cmp28.7.i.i.i.i, i8 0, i8 2
  %278 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %.sink78.i.i.i.i, ptr %18, align 1
  %arrayidx41.i.i.i.i = getelementptr %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 3
  %279 = ptrtoint ptr %arrayidx41.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx41.i.i.i.i, align 1
  %281 = ptrtoint ptr %maxtcs.i.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %maxtcs.i.i12.i.i, align 1
  br label %cleanup.i.i.i

sw.bb29.i.i.i:                                    ; preds = %while.body.i.i.i
  %en_will_err.i56.i.i.i = getelementptr inbounds %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 0, i32 1
  %282 = ptrtoint ptr %en_will_err.i56.i.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %en_will_err.i56.i.i.i, align 2
  %284 = and i8 %283, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool.not.i57.i.i.i = icmp eq i8 %284, 0
  br i1 %tobool.not.i57.i.i.i, label %sw.bb29.i.i.i.ice_parse_cee_pfccfg_tlv.exit.i.i.i_crit_edge, label %if.then.i58.i.i.i

sw.bb29.i.i.i.ice_parse_cee_pfccfg_tlv.exit.i.i.i_crit_edge: ; preds = %sw.bb29.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_parse_cee_pfccfg_tlv.exit.i.i.i

if.then.i58.i.i.i:                                ; preds = %sw.bb29.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %285 = ptrtoint ptr %pfc.i.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 1, ptr %pfc.i.i7.i.i, align 2
  br label %ice_parse_cee_pfccfg_tlv.exit.i.i.i

ice_parse_cee_pfccfg_tlv.exit.i.i.i:              ; preds = %if.then.i58.i.i.i, %sw.bb29.i.i.i.ice_parse_cee_pfccfg_tlv.exit.i.i.i_crit_edge
  %tlvinfo.i59.i.i.i = getelementptr inbounds %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 0, i32 3
  %286 = ptrtoint ptr %tlvinfo.i59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %tlvinfo.i59.i.i.i, align 1
  %288 = ptrtoint ptr %pfcena.i.i8.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %pfcena.i.i8.i.i, align 1
  %arrayidx2.i.i.i.i = getelementptr i8, ptr %tlvinfo.i59.i.i.i, i32 1
  %289 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx2.i.i.i.i, align 1
  %291 = ptrtoint ptr %pfccap.i.i9.i.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %290, ptr %pfccap.i.i9.i.i, align 2
  br label %cleanup.i.i.i

sw.bb30.i.i.i:                                    ; preds = %while.body.i.i.i
  %292 = and i16 %211, 510
  %293 = udiv i16 %292, 6
  %div.i.i.i.i = zext i16 %293 to i32
  %294 = ptrtoint ptr %dcbcfg to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %div.i.i.i.i, ptr %dcbcfg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %292)
  %295 = icmp ult i16 %292, 6
  br i1 %295, label %sw.bb30.i.i.i.cleanup.i.i.i_crit_edge, label %if.end.i.i.i.i

sw.bb30.i.i.i.cleanup.i.i.i_crit_edge:            ; preds = %sw.bb30.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb30.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 389, i16 %292)
  %cmp.i.i15.i.i = icmp ugt i16 %292, 389
  br i1 %cmp.i.i15.i.i, label %if.end9.thread.i.i.i.i, label %if.end.i.i.i.i.for.body.lr.ph.i.i.i.i_crit_edge

if.end.i.i.i.i.for.body.lr.ph.i.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.lr.ph.i.i.i.i

if.end9.thread.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %296 = ptrtoint ptr %dcbcfg to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 64, ptr %dcbcfg, align 4
  br label %for.body.lr.ph.i.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.end9.thread.i.i.i.i, %if.end.i.i.i.i.for.body.lr.ph.i.i.i.i_crit_edge
  %297 = phi i32 [ 64, %if.end9.thread.i.i.i.i ], [ %div.i.i.i.i, %if.end.i.i.i.i.for.body.lr.ph.i.i.i.i_crit_edge ]
  %tlvinfo.i60.i.i.i = getelementptr inbounds %struct.ice_cee_feat_tlv, ptr %sub_tlv.066.i.i.i, i32 0, i32 3
  %umax.i.i.i = call i32 @llvm.umax.i32(i32 %297, i32 1) #4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.i.i ]
  %offset.081.i.i.i.i = phi i32 [ %add.i.i18.i.i, %sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.i.i ]
  %conv14.i.i.i.i = and i32 %offset.081.i.i.i.i, 65535
  %add.ptr.i.i.i.i = getelementptr i8, ptr %tlvinfo.i60.i.i.i, i32 %conv14.i.i.i.i
  %prio_map.i.i.i.i = getelementptr inbounds %struct.ice_cee_app_prio, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %298 = ptrtoint ptr %prio_map.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %prio_map.i.i.i.i, align 1
  %conv20.i.i.i.i = zext i8 %299 to i32
  %and22.i.i.i.i = and i32 %conv20.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i.i.i)
  %tobool23.not.i.i.i.i = icmp eq i32 %and22.i.i.i.i, 0
  br i1 %tobool23.not.i.i.i.i, label %for.inc.i.i.i.i, label %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge

for.body.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %and22.1.i.i.i.i = and i32 %conv20.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.1.i.i.i.i)
  %tobool23.not.1.i.i.i.i = icmp eq i32 %and22.1.i.i.i.i, 0
  br i1 %tobool23.not.1.i.i.i.i, label %for.inc.1.i.i.i.i, label %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i.i

for.inc.1.i.i.i.i:                                ; preds = %for.inc.i.i.i.i
  %and22.2.i.i.i.i = and i32 %conv20.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.2.i.i.i.i)
  %tobool23.not.2.i.i.i.i = icmp eq i32 %and22.2.i.i.i.i, 0
  br i1 %tobool23.not.2.i.i.i.i, label %for.inc.2.i.i.i.i, label %for.inc.1.i.i.i.i.for.end.i.i.i.i_crit_edge

for.inc.1.i.i.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %for.inc.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i.i

for.inc.2.i.i.i.i:                                ; preds = %for.inc.1.i.i.i.i
  %and22.3.i.i.i.i = and i32 %conv20.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.3.i.i.i.i)
  %tobool23.not.3.i.i.i.i = icmp eq i32 %and22.3.i.i.i.i, 0
  br i1 %tobool23.not.3.i.i.i.i, label %for.inc.3.i.i.i.i, label %for.inc.2.i.i.i.i.for.end.i.i.i.i_crit_edge

for.inc.2.i.i.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %for.inc.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i.i

for.inc.3.i.i.i.i:                                ; preds = %for.inc.2.i.i.i.i
  %and22.4.i.i.i.i = and i32 %conv20.i.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.4.i.i.i.i)
  %tobool23.not.4.i.i.i.i = icmp eq i32 %and22.4.i.i.i.i, 0
  br i1 %tobool23.not.4.i.i.i.i, label %for.inc.4.i.i.i.i, label %for.inc.3.i.i.i.i.for.end.i.i.i.i_crit_edge

for.inc.3.i.i.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %for.inc.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i.i

for.inc.4.i.i.i.i:                                ; preds = %for.inc.3.i.i.i.i
  %and22.5.i.i.i.i = and i32 %conv20.i.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.5.i.i.i.i)
  %tobool23.not.5.i.i.i.i = icmp eq i32 %and22.5.i.i.i.i, 0
  br i1 %tobool23.not.5.i.i.i.i, label %for.inc.5.i.i.i.i, label %for.inc.4.i.i.i.i.for.end.i.i.i.i_crit_edge

for.inc.4.i.i.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %for.inc.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i.i

for.inc.5.i.i.i.i:                                ; preds = %for.inc.4.i.i.i.i
  %and22.6.i.i.i.i = and i32 %conv20.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.6.i.i.i.i)
  %tobool23.not.6.i.i.i.i = icmp eq i32 %and22.6.i.i.i.i, 0
  br i1 %tobool23.not.6.i.i.i.i, label %for.inc.6.i.i.i.i, label %for.inc.5.i.i.i.i.for.end.i.i.i.i_crit_edge

for.inc.5.i.i.i.i.for.end.i.i.i.i_crit_edge:      ; preds = %for.inc.5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i.i.i

for.inc.6.i.i.i.i:                                ; preds = %for.inc.5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %and22.7.i.i.i.i = and i32 %conv20.i.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.7.i.i.i.i)
  %tobool23.not.7.i.i.i.i = icmp eq i32 %and22.7.i.i.i.i, 0
  %spec.select.i61.i.i.i = select i1 %tobool23.not.7.i.i.i.i, i8 8, i8 7
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.6.i.i.i.i, %for.inc.5.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.inc.4.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.inc.3.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.inc.2.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.inc.1.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge
  %up.0.lcssa.i.i.i.i = phi i8 [ 0, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ 1, %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ 4, %for.inc.3.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ 5, %for.inc.4.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ 6, %for.inc.5.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %spec.select.i61.i.i.i, %for.inc.6.i.i.i.i ]
  %arrayidx.i.i16.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 6, i32 %indvars.iv.i.i.i
  %priority.i.i17.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 6, i32 %indvars.iv.i.i.i, i32 1
  %300 = ptrtoint ptr %priority.i.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %up.0.lcssa.i.i.i.i, ptr %priority.i.i17.i.i, align 2
  %upper_oui_sel.i.i.i.i = getelementptr inbounds %struct.ice_cee_app_prio, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %301 = ptrtoint ptr %upper_oui_sel.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %upper_oui_sel.i.i.i.i, align 1
  %303 = and i8 %302, 3
  %conv30.i.i.i.i = zext i8 %303 to i32
  %304 = zext i32 %conv30.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %304, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %conv30.i.i.i.i, label %sw.default.i.i.i.i [
    i32 0, label %for.end.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
    i32 1, label %sw.bb35.i.i.i.i
  ]

for.end.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:      ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i.i.i

sw.bb35.i.i.i.i:                                  ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i.i.i

sw.default.i.i.i.i:                               ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.default.i.i.i.i, %sw.bb35.i.i.i.i, %for.end.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i8 [ %303, %sw.default.i.i.i.i ], [ 2, %sw.bb35.i.i.i.i ], [ 1, %for.end.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ]
  %selector43.i.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %dcbcfg, i32 0, i32 6, i32 %indvars.iv.i.i.i, i32 2
  %305 = ptrtoint ptr %selector43.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %.sink.i.i.i.i, ptr %selector43.i.i.i.i, align 1
  %306 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %306, i32 2)
  %307 = load i16, ptr %add.ptr.i.i.i.i, align 1
  %308 = ptrtoint ptr %arrayidx.i.i16.i.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %307, ptr %arrayidx.i.i16.i.i, align 4
  %add.i.i18.i.i = add nuw nsw i32 %conv14.i.i.i.i, 6
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %sw.epilog.i.i.i.i.cleanup.i.i.i_crit_edge, label %sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge

sw.epilog.i.i.i.i.for.body.i.i.i.i_crit_edge:     ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i.i

sw.epilog.i.i.i.i.cleanup.i.i.i_crit_edge:        ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %sw.epilog.i.i.i.i.cleanup.i.i.i_crit_edge, %sw.bb30.i.i.i.cleanup.i.i.i_crit_edge, %ice_parse_cee_pfccfg_tlv.exit.i.i.i, %ice_parse_cee_pgcfg_tlv.exit.i.i.i
  %inc.i.i.i = add nuw nsw i8 %feat_tlv_count.065.i.i.i, 1
  %add.ptr31.i.i.i = getelementptr i8, ptr %sub_tlv.066.i.i.i, i32 2
  %conv32.i.i.i = zext i16 %and21.i.i.i to i32
  %add.ptr33.i.i.i = getelementptr i8, ptr %add.ptr31.i.i.i, i32 %conv32.i.i.i
  %cmp17.i.i.i = icmp ult i8 %feat_tlv_count.065.i.i.i, 2
  br i1 %cmp17.i.i.i, label %cleanup.i.i.i.while.body.i.i.i_crit_edge, label %cleanup.i.i.i.sw.epilog.i_crit_edge

cleanup.i.i.i.sw.epilog.i_crit_edge:              ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i

sw.epilog.i:                                      ; preds = %cleanup.i.i.i.sw.epilog.i_crit_edge, %while.body.i.i.i.sw.epilog.i_crit_edge, %sw.bb2.i.i.sw.epilog.i_crit_edge, %ice_parse_ieee_app_tlv.exit.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.end19.i.sw.epilog.i_crit_edge
  %add.ptr21.i = getelementptr i8, ptr %tlv.046.i, i32 2
  %add.ptr23.i = getelementptr i8, ptr %add.ptr21.i, i32 %conv848.i
  %309 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_loadN_noabort(i32 %309, i32 2)
  %310 = load i16, ptr %add.ptr23.i, align 1
  %311 = and i16 %310, 511
  %conv8.i = zext i16 %311 to i32
  %conv9.i = and i32 %add1049.i, 65535
  %add.i = add nuw nsw i32 %conv9.i, 2
  %add10.i = add nuw nsw i32 %add.i, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %310)
  %cmp.i = icmp ult i16 %310, 512
  %conv15.i = and i32 %add10.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %conv15.i)
  %cmp16.i = icmp ugt i32 %conv15.i, 1500
  %or.cond38.i = select i1 %cmp.i, i1 true, i1 %cmp16.i
  br i1 %or.cond38.i, label %sw.epilog.i.if.end5_crit_edge, label %sw.epilog.i.if.end19.i_crit_edge

sw.epilog.i.if.end19.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

sw.epilog.i.if.end5_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5:                                          ; preds = %sw.epilog.i.if.end5_crit_edge, %if.end.i20.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %ice_aq_get_lldp_mib.exit.if.end5_crit_edge
  %ret.0 = phi i32 [ %call.i18, %ice_aq_get_lldp_mib.exit.if.end5_crit_edge ], [ -22, %if.then3.if.end5_crit_edge ], [ 0, %if.end.i20.if.end5_crit_edge ], [ 0, %sw.epilog.i.if.end5_crit_edge ]
  %312 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %add.ptr, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %313, i32 0, i32 44
  call void @devm_kfree(ptr noundef %dev10, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_start_stop_dcbx(ptr noundef %hw, i1 noundef zeroext %start_dcbx_agent, ptr nocapture noundef writeonly %dcbx_agent_status, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #4
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2569) #4
  br i1 %start_dcbx_agent, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd) #4
  %3 = ptrtoint ptr %dcbx_agent_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %dcbx_agent_status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %dcbx_agent_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %dcbx_agent_status, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_set_pfc_mode(ptr noundef %hw, i8 noundef zeroext %pfc_mode, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #4
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %pfc_mode)
  %cmp = icmp ugt i8 %pfc_mode, 2
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 771) #4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %pfc_mode, ptr %0, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %pfc_mode)
  %cmp8.not = icmp eq i8 %4, %pfc_mode
  %. = select i1 %cmp8.not, i32 0, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_dcb_cfg(ptr noundef %pi) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  %cee_cfg = alloca %struct.ice_aqc_get_cee_dcb_cfg_resp, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cee_cfg) #4
  %0 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 1, i32 3
  %4 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 2
  %7 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 4
  %9 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 5
  %10 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 6
  %11 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 2, i32 7
  %12 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 3
  %13 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 4
  %14 = getelementptr inbounds %struct.ice_aqc_get_cee_dcb_cfg_resp, ptr %cee_cfg, i32 0, i32 5
  %tobool.not = icmp eq ptr %pi, null
  %15 = call ptr @memset(ptr %cee_cfg, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #4
  %18 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2567) #4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %17, ptr noundef nonnull %desc.i, ptr noundef nonnull %cee_cfg, i16 noundef zeroext 32, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end.i, label %if.else

if.end.i:                                         ; preds = %if.end
  %desired_dcbx_cfg.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %call.i18 = call i32 @ice_aq_get_dcb_cfg(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %desired_dcbx_cfg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool10.not.i = icmp eq i32 %call.i18, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i.ice_get_ieee_or_cee_dcb_cfg.exit_crit_edge

if.end.i.ice_get_ieee_or_cee_dcb_cfg.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_get_ieee_or_cee_dcb_cfg.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %remote_dcbx_cfg.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %call15.i = call i32 @ice_aq_get_dcb_cfg(ptr noundef %22, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %remote_dcbx_cfg.i) #4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %sq_last_status.i = getelementptr inbounds %struct.ice_hw, ptr %24, i32 0, i32 30, i32 8
  %25 = ptrtoint ptr %sq_last_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sq_last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp17.i = icmp eq i32 %26, 2
  %spec.store.select.i = select i1 %cmp17.i, i32 0, i32 %call15.i
  br label %ice_get_ieee_or_cee_dcb_cfg.exit

ice_get_ieee_or_cee_dcb_cfg.exit:                 ; preds = %if.end12.i, %if.end.i.ice_get_ieee_or_cee_dcb_cfg.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i18, %if.end.i.ice_get_ieee_or_cee_dcb_cfg.exit_crit_edge ], [ %spec.store.select.i, %if.end12.i ]
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %14, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28) #4
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %13, align 2
  %dcbx_mode.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 9
  %32 = ptrtoint ptr %dcbx_mode.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dcbx_mode.i, align 4
  %tlv_status2.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 1
  %33 = ptrtoint ptr %tlv_status2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %tlv_status2.i, align 4
  %34 = ptrtoint ptr %cee_cfg to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cee_cfg, align 4
  %maxtcs.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %maxtcs.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %maxtcs.i, align 2
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %0, align 1
  %39 = and i8 %38, 15
  %arrayidx8.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 0
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx8.i, align 1
  %41 = lshr i8 %38, 4
  %arrayidx20.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 1
  %42 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx20.i, align 1
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %1, align 2
  %45 = and i8 %44, 15
  %arrayidx8.1.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 2
  %46 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx8.1.i, align 1
  %47 = lshr i8 %44, 4
  %arrayidx20.1.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 3
  %48 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx20.1.i, align 1
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %2, align 1
  %51 = and i8 %50, 15
  %arrayidx8.2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 4
  %52 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx8.2.i, align 1
  %53 = lshr i8 %50, 4
  %arrayidx20.2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 5
  %54 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx20.2.i, align 1
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %3, align 4
  %57 = and i8 %56, 15
  %arrayidx8.3.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 6
  %58 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx8.3.i, align 1
  %59 = lshr i8 %56, 4
  %arrayidx20.3.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 7
  %60 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx20.3.i, align 1
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %4, align 1
  %arrayidx30.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 0
  %63 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %39)
  %cmp36.i = icmp eq i8 %39, 15
  br i1 %cmp36.i, label %if.then.i, label %ice_get_ieee_or_cee_dcb_cfg.exit.for.inc52.i_crit_edge

ice_get_ieee_or_cee_dcb_cfg.exit.for.inc52.i_crit_edge: ; preds = %ice_get_ieee_or_cee_dcb_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc52.i

if.then.i:                                        ; preds = %ice_get_ieee_or_cee_dcb_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add i8 %35, -1
  %64 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %sub.i, ptr %arrayidx8.i, align 1
  br label %for.inc52.i

for.inc52.i:                                      ; preds = %if.then.i, %ice_get_ieee_or_cee_dcb_cfg.exit.for.inc52.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.then.i ], [ 2, %ice_get_ieee_or_cee_dcb_cfg.exit.for.inc52.i_crit_edge ]
  %65 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 0
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink.i, ptr %65, align 1
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %5, align 2
  %arrayidx30.1.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx30.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %41)
  %cmp36.1.i = icmp eq i8 %41, 15
  br i1 %cmp36.1.i, label %if.then.1.i, label %for.inc52.i.for.inc52.1.i_crit_edge

for.inc52.i.for.inc52.1.i_crit_edge:              ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc52.1.i

if.then.1.i:                                      ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.1.i = add i8 %35, -1
  %70 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %sub.1.i, ptr %arrayidx20.i, align 1
  br label %for.inc52.1.i

for.inc52.1.i:                                    ; preds = %if.then.1.i, %for.inc52.i.for.inc52.1.i_crit_edge
  %.sink220.i = phi i8 [ 0, %if.then.1.i ], [ 2, %for.inc52.i.for.inc52.1.i_crit_edge ]
  %71 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink220.i, ptr %71, align 1
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %6, align 1
  %arrayidx30.2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 2
  %75 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx30.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %45)
  %cmp36.2.i = icmp eq i8 %45, 15
  br i1 %cmp36.2.i, label %if.then.2.i, label %for.inc52.1.i.for.inc52.2.i_crit_edge

for.inc52.1.i.for.inc52.2.i_crit_edge:            ; preds = %for.inc52.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc52.2.i

if.then.2.i:                                      ; preds = %for.inc52.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.2.i = add i8 %35, -1
  %76 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %sub.2.i, ptr %arrayidx8.1.i, align 1
  br label %for.inc52.2.i

for.inc52.2.i:                                    ; preds = %if.then.2.i, %for.inc52.1.i.for.inc52.2.i_crit_edge
  %.sink221.i = phi i8 [ 0, %if.then.2.i ], [ 2, %for.inc52.1.i.for.inc52.2.i_crit_edge ]
  %77 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 2
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.sink221.i, ptr %77, align 1
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %7, align 4
  %arrayidx30.3.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 3
  %81 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx30.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %47)
  %cmp36.3.i = icmp eq i8 %47, 15
  br i1 %cmp36.3.i, label %if.then.3.i, label %for.inc52.2.i.for.inc52.3.i_crit_edge

for.inc52.2.i.for.inc52.3.i_crit_edge:            ; preds = %for.inc52.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc52.3.i

if.then.3.i:                                      ; preds = %for.inc52.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.3.i = add i8 %35, -1
  %82 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %sub.3.i, ptr %arrayidx20.1.i, align 1
  br label %for.inc52.3.i

for.inc52.3.i:                                    ; preds = %if.then.3.i, %for.inc52.2.i.for.inc52.3.i_crit_edge
  %.sink222.i = phi i8 [ 0, %if.then.3.i ], [ 2, %for.inc52.2.i.for.inc52.3.i_crit_edge ]
  %83 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 3
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.sink222.i, ptr %83, align 1
  %85 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %8, align 1
  %arrayidx30.4.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 4
  %87 = ptrtoint ptr %arrayidx30.4.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx30.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %51)
  %cmp36.4.i = icmp eq i8 %51, 15
  br i1 %cmp36.4.i, label %if.then.4.i, label %for.inc52.3.i.for.inc52.4.i_crit_edge

for.inc52.3.i.for.inc52.4.i_crit_edge:            ; preds = %for.inc52.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc52.4.i

if.then.4.i:                                      ; preds = %for.inc52.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.4.i = add i8 %35, -1
  %88 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %sub.4.i, ptr %arrayidx8.2.i, align 1
  br label %for.inc52.4.i

for.inc52.4.i:                                    ; preds = %if.then.4.i, %for.inc52.3.i.for.inc52.4.i_crit_edge
  %.sink223.i = phi i8 [ 0, %if.then.4.i ], [ 2, %for.inc52.3.i.for.inc52.4.i_crit_edge ]
  %89 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.sink223.i, ptr %89, align 1
  %91 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %9, align 2
  %arrayidx30.5.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 5
  %93 = ptrtoint ptr %arrayidx30.5.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx30.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %53)
  %cmp36.5.i = icmp eq i8 %53, 15
  br i1 %cmp36.5.i, label %if.then.5.i, label %for.inc52.4.i.for.inc52.5.i_crit_edge

for.inc52.4.i.for.inc52.5.i_crit_edge:            ; preds = %for.inc52.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc52.5.i

if.then.5.i:                                      ; preds = %for.inc52.4.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.5.i = add i8 %35, -1
  %94 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %sub.5.i, ptr %arrayidx20.2.i, align 1
  br label %for.inc52.5.i

for.inc52.5.i:                                    ; preds = %if.then.5.i, %for.inc52.4.i.for.inc52.5.i_crit_edge
  %.sink224.i = phi i8 [ 0, %if.then.5.i ], [ 2, %for.inc52.4.i.for.inc52.5.i_crit_edge ]
  %95 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 5
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %.sink224.i, ptr %95, align 1
  %97 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %10, align 1
  %arrayidx30.6.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 6
  %99 = ptrtoint ptr %arrayidx30.6.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx30.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %57)
  %cmp36.6.i = icmp eq i8 %57, 15
  br i1 %cmp36.6.i, label %if.then.6.i, label %for.inc52.5.i.for.inc52.6.i_crit_edge

for.inc52.5.i.for.inc52.6.i_crit_edge:            ; preds = %for.inc52.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc52.6.i

if.then.6.i:                                      ; preds = %for.inc52.5.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.6.i = add i8 %35, -1
  %100 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %sub.6.i, ptr %arrayidx8.3.i, align 1
  br label %for.inc52.6.i

for.inc52.6.i:                                    ; preds = %if.then.6.i, %for.inc52.5.i.for.inc52.6.i_crit_edge
  %.sink225.i = phi i8 [ 0, %if.then.6.i ], [ 2, %for.inc52.5.i.for.inc52.6.i_crit_edge ]
  %101 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 6
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink225.i, ptr %101, align 1
  %103 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %11, align 4
  %arrayidx30.7.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 7
  %105 = ptrtoint ptr %arrayidx30.7.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx30.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %59)
  %cmp36.7.i = icmp eq i8 %59, 15
  br i1 %cmp36.7.i, label %if.then.7.i, label %for.inc52.6.i.if.end103.i_crit_edge

for.inc52.6.i.if.end103.i_crit_edge:              ; preds = %for.inc52.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.i

if.then.7.i:                                      ; preds = %for.inc52.6.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.7.i = add i8 %35, -1
  %106 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %sub.7.i, ptr %arrayidx20.3.i, align 1
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then.7.i, %for.inc52.6.i.if.end103.i_crit_edge
  %.sink226.i = phi i8 [ 0, %if.then.7.i ], [ 2, %for.inc52.6.i.if.end103.i_crit_edge ]
  %107 = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 7
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %.sink226.i, ptr %107, align 1
  %109 = call i16 @llvm.bswap.i16(i16 %31) #4
  %110 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %12, align 1
  %pfcena.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 4, i32 3
  %112 = ptrtoint ptr %pfcena.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %pfcena.i, align 1
  %pfccap.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 4, i32 2
  %113 = ptrtoint ptr %pfccap.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 8, ptr %pfccap.i, align 2
  %app_mode.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 10
  %114 = ptrtoint ptr %app_mode.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %app_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %115)
  %cmp57.i = icmp eq i8 %115, 1
  %remote_dcbx_cfg.i20 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 2
  %cmp_dcbcfg.0.i = select i1 %cmp57.i, ptr %desired_dcbx_cfg.i, ptr %remote_dcbx_cfg.i20
  %116 = and i32 %29, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %116)
  %.not.i = icmp eq i32 %116, 768
  br i1 %.not.i, label %if.then123.i, label %if.end103.i.for.cond78.preheader.1.i_crit_edge

if.end103.i.for.cond78.preheader.1.i_crit_edge:   ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond78.preheader.1.i

if.then123.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #6
  %117 = trunc i16 %109 to i8
  %conv129.i = and i8 %117, 7
  %arrayidx132.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 0
  %priority.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 0, i32 1
  %118 = ptrtoint ptr %priority.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv129.i, ptr %priority.i, align 2
  %selector136.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 0, i32 2
  %119 = ptrtoint ptr %selector136.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %selector136.i, align 1
  %120 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -30458, ptr %arrayidx132.i, align 4
  br label %for.cond78.preheader.1.i

for.cond78.preheader.1.i:                         ; preds = %if.then123.i, %if.end103.i.for.cond78.preheader.1.i_crit_edge
  %app_index.1.i = phi i8 [ 0, %if.end103.i.for.cond78.preheader.1.i_crit_edge ], [ 1, %if.then123.i ]
  %121 = ptrtoint ptr %cmp_dcbcfg.0.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cmp_dcbcfg.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp79212.not.1.i = icmp eq i32 %122, 0
  br i1 %cmp79212.not.1.i, label %for.cond78.preheader.1.i.if.end103.1.i_crit_edge, label %for.cond78.preheader.1.i.for.body81.1.i_crit_edge

for.cond78.preheader.1.i.for.body81.1.i_crit_edge: ; preds = %for.cond78.preheader.1.i
  br label %for.body81.1.i

for.cond78.preheader.1.i.if.end103.1.i_crit_edge: ; preds = %for.cond78.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.1.i

for.body81.1.i:                                   ; preds = %for.inc98.1.i.for.body81.1.i_crit_edge, %for.cond78.preheader.1.i.for.body81.1.i_crit_edge
  %j.0213.1.i = phi i32 [ %inc99.1.i, %for.inc98.1.i.for.body81.1.i_crit_edge ], [ 0, %for.cond78.preheader.1.i.for.body81.1.i_crit_edge ]
  %selector.1.i = getelementptr %struct.ice_dcbx_cfg, ptr %cmp_dcbcfg.0.i, i32 0, i32 6, i32 %j.0213.1.i, i32 2
  %123 = ptrtoint ptr %selector.1.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %selector.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %124)
  %cmp87.1.i = icmp eq i8 %124, 2
  br i1 %cmp87.1.i, label %land.lhs.true.1.i, label %for.body81.1.i.for.inc98.1.i_crit_edge

for.body81.1.i.for.inc98.1.i_crit_edge:           ; preds = %for.body81.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc98.1.i

land.lhs.true.1.i:                                ; preds = %for.body81.1.i
  %arrayidx82.1.i = getelementptr %struct.ice_dcbx_cfg, ptr %cmp_dcbcfg.0.i, i32 0, i32 6, i32 %j.0213.1.i
  %125 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx82.1.i, align 4
  %127 = zext i16 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %126, label %land.lhs.true.1.i.for.inc98.1.i_crit_edge [
    i16 3260, label %land.lhs.true.1.i.if.end103.1.i_crit_edge
    i16 860, label %land.lhs.true.1.i.if.end103.1.i_crit_edge37
  ]

land.lhs.true.1.i.if.end103.1.i_crit_edge37:      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.1.i

land.lhs.true.1.i.if.end103.1.i_crit_edge:        ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.1.i

land.lhs.true.1.i.for.inc98.1.i_crit_edge:        ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc98.1.i

for.inc98.1.i:                                    ; preds = %land.lhs.true.1.i.for.inc98.1.i_crit_edge, %for.body81.1.i.for.inc98.1.i_crit_edge
  %inc99.1.i = add nuw i32 %j.0213.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc99.1.i, %122
  br i1 %exitcond.1.not.i, label %for.inc98.1.i.if.end103.1.i_crit_edge, label %for.inc98.1.i.for.body81.1.i_crit_edge

for.inc98.1.i.for.body81.1.i_crit_edge:           ; preds = %for.inc98.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body81.1.i

for.inc98.1.i.if.end103.1.i_crit_edge:            ; preds = %for.inc98.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.1.i

if.end103.1.i:                                    ; preds = %for.inc98.1.i.if.end103.1.i_crit_edge, %land.lhs.true.1.i.if.end103.1.i_crit_edge, %land.lhs.true.1.i.if.end103.1.i_crit_edge37, %for.cond78.preheader.1.i.if.end103.1.i_crit_edge
  %ice_app_prot_id_type.2.1.i = phi i16 [ 3260, %for.cond78.preheader.1.i.if.end103.1.i_crit_edge ], [ 3260, %for.inc98.1.i.if.end103.1.i_crit_edge ], [ %126, %land.lhs.true.1.i.if.end103.1.i_crit_edge ], [ %126, %land.lhs.true.1.i.if.end103.1.i_crit_edge37 ]
  %128 = and i32 %29, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %128)
  %.not.1.i = icmp eq i32 %128, 6144
  br i1 %.not.1.i, label %if.then123.1.i, label %if.end103.1.i.if.end103.2.i_crit_edge

if.end103.1.i.if.end103.2.i_crit_edge:            ; preds = %if.end103.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103.2.i

if.then123.1.i:                                   ; preds = %if.end103.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %129 = trunc i16 %109 to i8
  %130 = lshr i8 %129, 3
  %conv129.1.i = and i8 %130, 7
  %idxprom131.1.i = zext i8 %app_index.1.i to i32
  %arrayidx132.1.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 %idxprom131.1.i
  %priority.1.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 %idxprom131.1.i, i32 1
  %131 = ptrtoint ptr %priority.1.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv129.1.i, ptr %priority.1.i, align 2
  %selector136.1.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 %idxprom131.1.i, i32 2
  %132 = ptrtoint ptr %selector136.1.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 2, ptr %selector136.1.i, align 1
  %133 = ptrtoint ptr %arrayidx132.1.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %ice_app_prot_id_type.2.1.i, ptr %arrayidx132.1.i, align 4
  %inc141.1.i = add nuw nsw i8 %app_index.1.i, 1
  br label %if.end103.2.i

if.end103.2.i:                                    ; preds = %if.then123.1.i, %if.end103.1.i.if.end103.2.i_crit_edge
  %app_index.1.1.i = phi i8 [ %app_index.1.i, %if.end103.1.i.if.end103.2.i_crit_edge ], [ %inc141.1.i, %if.then123.1.i ]
  %134 = and i32 %29, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %134)
  %.not.2.i = icmp eq i32 %134, 196608
  br i1 %.not.2.i, label %if.then123.2.i, label %if.end103.2.i.ice_cee_to_dcb_cfg.exit_crit_edge

if.end103.2.i.ice_cee_to_dcb_cfg.exit_crit_edge:  ; preds = %if.end103.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_cee_to_dcb_cfg.exit

if.then123.2.i:                                   ; preds = %if.end103.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %and126.2.i = lshr i16 %109, 8
  %135 = trunc i16 %and126.2.i to i8
  %conv129.2.i = and i8 %135, 7
  %idxprom131.2.i = zext i8 %app_index.1.1.i to i32
  %arrayidx132.2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 %idxprom131.2.i
  %priority.2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 %idxprom131.2.i, i32 1
  %136 = ptrtoint ptr %priority.2.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv129.2.i, ptr %priority.2.i, align 2
  %selector136.2.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 6, i32 %idxprom131.2.i, i32 2
  %137 = ptrtoint ptr %selector136.2.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %selector136.2.i, align 1
  %138 = ptrtoint ptr %arrayidx132.2.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -30444, ptr %arrayidx132.2.i, align 4
  %inc141.2.i = add nsw i8 %app_index.1.1.i, 1
  br label %ice_cee_to_dcb_cfg.exit

ice_cee_to_dcb_cfg.exit:                          ; preds = %if.then123.2.i, %if.end103.2.i.ice_cee_to_dcb_cfg.exit_crit_edge
  %app_index.1.2.i = phi i8 [ %app_index.1.1.i, %if.end103.2.i.ice_cee_to_dcb_cfg.exit_crit_edge ], [ %inc141.2.i, %if.then123.2.i ]
  %qos_cfg.i21 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17
  %conv146.i = zext i8 %app_index.1.2.i to i32
  %139 = ptrtoint ptr %qos_cfg.i21 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv146.i, ptr %qos_cfg.i21, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 4
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %141, i32 0, i32 30, i32 8
  %142 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sq_last_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cmp = icmp eq i32 %143, 2
  br i1 %cmp, label %if.end.i28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i28:                                       ; preds = %if.else
  %dcbx_mode = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 9
  %144 = ptrtoint ptr %dcbx_mode to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 2, ptr %dcbx_mode, align 4
  %qos_cfg.i23 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17
  %call.i26 = call i32 @ice_aq_get_dcb_cfg(ptr noundef %141, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %qos_cfg.i23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool10.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool10.not.i27, label %if.end12.i34, label %if.end.i28.cleanup_crit_edge

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12.i34:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  %remote_dcbx_cfg.i29 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 2
  %145 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw, align 4
  %call15.i30 = call i32 @ice_aq_get_dcb_cfg(ptr noundef %146, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %remote_dcbx_cfg.i29) #4
  %147 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hw, align 4
  %sq_last_status.i31 = getelementptr inbounds %struct.ice_hw, ptr %148, i32 0, i32 30, i32 8
  %149 = ptrtoint ptr %sq_last_status.i31 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sq_last_status.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %cmp17.i32 = icmp eq i32 %150, 2
  %spec.store.select.i33 = select i1 %cmp17.i32, i32 0, i32 %call15.i30
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i34, %if.end.i28.cleanup_crit_edge, %if.else.cleanup_crit_edge, %ice_cee_to_dcb_cfg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.else.cleanup_crit_edge ], [ %retval.0.i, %ice_cee_to_dcb_cfg.exit ], [ %call.i26, %if.end.i28.cleanup_crit_edge ], [ %spec.store.select.i33, %if.end12.i34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cee_cfg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_dcb(ptr noundef %hw, i1 noundef zeroext %enable_mib_change) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %dcb = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 13
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_info, align 4
  %is_sw_lldp = getelementptr inbounds %struct.ice_port_info, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %is_sw_lldp to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_sw_lldp, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %is_sw_lldp, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 536608
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !9
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %9 = trunc i32 %8 to i8
  %10 = ptrtoint ptr %is_sw_lldp to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load2 = load i8, ptr %is_sw_lldp, align 4
  %conv.i = shl i8 %9, 5
  %bf.clear3 = and i8 %bf.load2, 31
  %bf.set4 = or i8 %bf.clear3, %conv.i
  store i8 %bf.set4, ptr %is_sw_lldp, align 4
  %trunc = trunc i32 %8 to i3
  %11 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.5)
  switch i3 %trunc, label %if.end.if.end39_crit_edge [
    i3 2, label %if.end.if.then21_crit_edge
    i3 1, label %if.end.if.then21_crit_edge66
    i3 0, label %if.end.if.then21_crit_edge67
    i3 -1, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.if.then21_crit_edge67:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.end.if.then21_crit_edge66:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then21:                                        ; preds = %if.end.if.then21_crit_edge, %if.end.if.then21_crit_edge66, %if.end.if.then21_crit_edge67
  %12 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_info, align 4
  %call23 = tail call i32 @ice_get_dcb_cfg(ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %is_sw_lldp to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load28 = load i8, ptr %is_sw_lldp, align 4
  %bf.clear29 = and i8 %bf.load28, -17
  store i8 %bf.clear29, ptr %is_sw_lldp, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end26, %if.end.if.end39_crit_edge
  br i1 %enable_mib_change, label %if.then41, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #4
  %15 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2561) #4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %if.then41.cleanup_crit_edge, label %if.then44

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %is_sw_lldp to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load46 = load i8, ptr %is_sw_lldp, align 4
  %bf.set48 = or i8 %bf.load46, 16
  store i8 %bf.set48, ptr %is_sw_lldp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.then41.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call23, %if.then21.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call.i, %if.then44 ], [ 0, %if.then41.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_cfg_lldp_mib_change(ptr noundef %hw, i1 noundef zeroext %ena_mib) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dcb = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 0, i32 13
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_info = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_info, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 536608
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !9
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %8 = trunc i32 %7 to i8
  %conv.i = and i8 %8, 7
  %dcbx_status = getelementptr inbounds %struct.ice_port_info, ptr %3, i32 0, i32 17, i32 3
  %9 = ptrtoint ptr %dcbx_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %dcbx_status, align 4
  %bf.shl = shl nuw i8 %conv.i, 5
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %dcbx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv.i)
  %cmp = icmp eq i8 %conv.i, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #4
  %10 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2561) #4
  br i1 %ena_mib, label %if.end6.ice_aq_cfg_lldp_mib_change.exit_crit_edge, label %if.then.i

if.end6.ice_aq_cfg_lldp_mib_change.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_aq_cfg_lldp_mib_change.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %11 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %14 = or i8 %13, 1
  store i8 %14, ptr %11, align 4
  br label %ice_aq_cfg_lldp_mib_change.exit

ice_aq_cfg_lldp_mib_change.exit:                  ; preds = %if.then.i, %if.end6.ice_aq_cfg_lldp_mib_change.exit_crit_edge
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then10, label %ice_aq_cfg_lldp_mib_change.exit.cleanup_crit_edge

ice_aq_cfg_lldp_mib_change.exit.cleanup_crit_edge: ; preds = %ice_aq_cfg_lldp_mib_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %ice_aq_cfg_lldp_mib_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %dcbx_status to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load13 = load i8, ptr %dcbx_status, align 4
  %bf.shl15 = select i1 %ena_mib, i8 0, i8 16
  %bf.clear16 = and i8 %bf.load13, -17
  %bf.set17 = or i8 %bf.clear16, %bf.shl15
  store i8 %bf.set17, ptr %dcbx_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %ice_aq_cfg_lldp_mib_change.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call.i, %ice_aq_cfg_lldp_mib_change.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_set_dcb_cfg(ptr noundef readonly %pi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %qos_cfg = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17
  %add.ptr = getelementptr i8, ptr %1, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1500, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %app_mode = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 10
  %4 = ptrtoint ptr %app_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %app_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %pfc_mode.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 5
  %pfccap.i97.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 4, i32 2
  %pfcena.i98.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 4, i32 3
  %maxtcs.i92.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 2
  %arrayidx6.i93.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4
  %arrayidx8.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5
  %arrayidx6.1.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 1
  %arrayidx8.1.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 1
  %arrayidx6.2.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 2
  %arrayidx8.2.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 2
  %arrayidx6.3.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 3
  %arrayidx8.3.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 3
  %arrayidx6.4.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 4
  %arrayidx8.4.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 4
  %arrayidx6.5.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 5
  %arrayidx8.5.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 5
  %arrayidx6.6.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 6
  %arrayidx8.6.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 6
  %arrayidx6.7.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 4, i32 7
  %arrayidx8.7.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 5, i32 7
  %pfc.i.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 4
  %mbc.i.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 4, i32 1
  %arrayidx.i.i30.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 3
  %arrayidx4.i.i31.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 3, i32 1
  %arrayidx.1.i.i33.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 3, i32 2
  %arrayidx4.1.i.i34.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 3, i32 3
  %arrayidx.2.i.i37.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 3, i32 4
  %arrayidx4.2.i.i38.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 3, i32 5
  %arrayidx.3.i.i41.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 3, i32 6
  %arrayidx4.3.i.i42.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 3, i32 7
  %arrayidx17.i.i45.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 4
  %arrayidx20.i.i47.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 5
  %arrayidx17.1.i.i49.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 4, i32 1
  %arrayidx20.1.i.i51.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 5, i32 1
  %arrayidx17.2.i.i53.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 4, i32 2
  %arrayidx20.2.i.i55.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 5, i32 2
  %arrayidx17.3.i.i57.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 4, i32 3
  %arrayidx20.3.i.i59.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 5, i32 3
  %arrayidx17.4.i.i61.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 4, i32 4
  %arrayidx20.4.i.i63.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 5, i32 4
  %arrayidx17.5.i.i65.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 4, i32 5
  %arrayidx20.5.i.i67.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 5, i32 5
  %arrayidx17.6.i.i69.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 4, i32 6
  %arrayidx20.6.i.i71.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 5, i32 6
  %arrayidx17.7.i.i73.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 4, i32 7
  %arrayidx20.7.i.i75.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 3, i32 5, i32 7
  %etscfg3.i.i.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2
  %arrayidx.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3
  %arrayidx4.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 1
  %arrayidx.1.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 2
  %arrayidx4.1.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 3
  %arrayidx.2.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 4
  %arrayidx4.2.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 5
  %arrayidx.3.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 6
  %arrayidx4.3.i.i.i.i = getelementptr %struct.ice_port_info, ptr %pi, i32 0, i32 17, i32 0, i32 2, i32 3, i32 7
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i, %if.end4
  %offset.0.i = phi i16 [ 0, %if.end4 ], [ %offset.1.i, %if.end13.i ]
  %tlvid.0.i = phi i16 [ 3, %if.end4 ], [ %inc.i, %if.end13.i ]
  %tlv.0.i = phi ptr [ %call.i, %if.end4 ], [ %tlv.1.i, %if.end13.i ]
  %inc.i = add nuw nsw i16 %tlvid.0.i, 1
  %6 = ptrtoint ptr %pfc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfc_mode.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 0
  %trunc27.i = trunc i16 %tlvid.0.i to i15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.cond.i
  %8 = zext i15 %trunc27.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i15 %trunc27.i, label %if.then.i.i.ice_add_dcb_tlv.exit.i_crit_edge [
    i15 3, label %sw.bb.i.i
    i15 4, label %sw.bb3.i.i
    i15 5, label %sw.bb4.i.i
    i15 6, label %sw.bb5.i.i
  ]

if.then.i.i.ice_add_dcb_tlv.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_add_dcb_tlv.exit.i

sw.bb.i.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 -487, ptr %tlv.0.i, align 1
  %ouisubtype2.i.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %ouisubtype2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 8438281, ptr %ouisubtype2.i.i.i, align 1
  %11 = ptrtoint ptr %etscfg3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %etscfg3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i.i = icmp eq i8 %12, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i8 0, i8 -128
  %tlvinfo.i.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %maxtcs.i92.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %maxtcs.i92.i.i, align 1
  %15 = and i8 %14, 7
  %or.i.i.i = or i8 %spec.select.i.i.i, %15
  %16 = ptrtoint ptr %tlvinfo.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or.i.i.i, ptr %tlvinfo.i.i.i, align 1
  %arrayidx6.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %19 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx4.i.i.i.i, align 1
  %21 = and i8 %20, 15
  %22 = shl i8 %18, 4
  %or44.i.i.i.i = or i8 %21, %22
  %23 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or44.i.i.i.i, ptr %arrayidx6.i.i.i, align 1
  %24 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1.i.i.i.i, align 1
  %26 = ptrtoint ptr %arrayidx4.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx4.1.i.i.i.i, align 1
  %28 = and i8 %27, 15
  %29 = shl i8 %25, 4
  %or44.1.i.i.i.i = or i8 %28, %29
  %arrayidx11.1.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx11.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or44.1.i.i.i.i, ptr %arrayidx11.1.i.i.i.i, align 1
  %31 = ptrtoint ptr %arrayidx.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2.i.i.i.i, align 1
  %33 = ptrtoint ptr %arrayidx4.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx4.2.i.i.i.i, align 1
  %35 = and i8 %34, 15
  %36 = shl i8 %32, 4
  %or44.2.i.i.i.i = or i8 %35, %36
  %arrayidx11.2.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 3
  %37 = ptrtoint ptr %arrayidx11.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %or44.2.i.i.i.i, ptr %arrayidx11.2.i.i.i.i, align 1
  %38 = ptrtoint ptr %arrayidx.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.3.i.i.i.i, align 1
  %40 = ptrtoint ptr %arrayidx4.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx4.3.i.i.i.i, align 1
  %42 = and i8 %41, 15
  %43 = shl i8 %39, 4
  %or44.3.i.i.i.i = or i8 %42, %43
  %arrayidx11.3.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 4
  %44 = ptrtoint ptr %arrayidx11.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %or44.3.i.i.i.i, ptr %arrayidx11.3.i.i.i.i, align 1
  %45 = ptrtoint ptr %arrayidx6.i93.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx6.i93.i.i, align 1
  %arrayidx19.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 5
  %47 = ptrtoint ptr %arrayidx19.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx19.i.i.i.i, align 1
  %48 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx8.i.i.i, align 1
  %arrayidx23.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 13
  %50 = ptrtoint ptr %arrayidx23.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx23.i.i.i.i, align 1
  %51 = ptrtoint ptr %arrayidx6.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx6.1.i.i.i, align 1
  %arrayidx19.1.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 2
  %53 = ptrtoint ptr %arrayidx19.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx19.1.i.i.i.i, align 1
  %54 = ptrtoint ptr %arrayidx8.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.1.i.i.i, align 1
  %arrayidx23.1.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 3, i32 1
  %56 = ptrtoint ptr %arrayidx23.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx23.1.i.i.i.i, align 1
  %57 = ptrtoint ptr %arrayidx6.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx6.2.i.i.i, align 1
  %arrayidx19.2.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 7
  %59 = ptrtoint ptr %arrayidx19.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx19.2.i.i.i.i, align 1
  %60 = ptrtoint ptr %arrayidx8.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx8.2.i.i.i, align 1
  %arrayidx23.2.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 15
  %62 = ptrtoint ptr %arrayidx23.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx23.2.i.i.i.i, align 1
  %63 = ptrtoint ptr %arrayidx6.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx6.3.i.i.i, align 1
  %arrayidx19.3.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 2, i32 1
  %65 = ptrtoint ptr %arrayidx19.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx19.3.i.i.i.i, align 1
  %66 = ptrtoint ptr %arrayidx8.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8.3.i.i.i, align 1
  %arrayidx23.3.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 16
  %68 = ptrtoint ptr %arrayidx23.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx23.3.i.i.i.i, align 1
  %69 = ptrtoint ptr %arrayidx6.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx6.4.i.i.i, align 1
  %arrayidx19.4.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 9
  %71 = ptrtoint ptr %arrayidx19.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx19.4.i.i.i.i, align 1
  %72 = ptrtoint ptr %arrayidx8.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx8.4.i.i.i, align 1
  %arrayidx23.4.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 17
  %74 = ptrtoint ptr %arrayidx23.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx23.4.i.i.i.i, align 1
  %75 = ptrtoint ptr %arrayidx6.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx6.5.i.i.i, align 1
  %arrayidx19.5.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 10
  %77 = ptrtoint ptr %arrayidx19.5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx19.5.i.i.i.i, align 1
  %78 = ptrtoint ptr %arrayidx8.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx8.5.i.i.i, align 1
  %arrayidx23.5.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 4
  %80 = ptrtoint ptr %arrayidx23.5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx23.5.i.i.i.i, align 1
  %81 = ptrtoint ptr %arrayidx6.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx6.6.i.i.i, align 1
  %arrayidx19.6.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 11
  %83 = ptrtoint ptr %arrayidx19.6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx19.6.i.i.i.i, align 1
  %84 = ptrtoint ptr %arrayidx8.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx8.6.i.i.i, align 1
  %arrayidx23.6.i.i.i.i = getelementptr i8, ptr %tlvinfo.i.i.i, i32 19
  %86 = ptrtoint ptr %arrayidx23.6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx23.6.i.i.i.i, align 1
  %87 = ptrtoint ptr %arrayidx6.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx6.7.i.i.i, align 1
  %arrayidx19.7.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 3
  %89 = ptrtoint ptr %arrayidx19.7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx19.7.i.i.i.i, align 1
  %90 = ptrtoint ptr %arrayidx8.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx8.7.i.i.i, align 1
  %arrayidx23.7.i.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 4, i32 1
  %92 = ptrtoint ptr %arrayidx23.7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx23.7.i.i.i.i, align 1
  br label %ice_add_dcb_tlv.exit.i

sw.bb3.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tlvinfo.i28.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 2
  %93 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 -487, ptr %tlv.0.i, align 1
  %ouisubtype2.i29.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 1
  %94 = ptrtoint ptr %ouisubtype2.i29.i.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 8438282, ptr %ouisubtype2.i29.i.i, align 1
  %arrayidx.i.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 1
  %95 = ptrtoint ptr %arrayidx.i.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i30.i.i, align 1
  %97 = ptrtoint ptr %arrayidx4.i.i31.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx4.i.i31.i.i, align 1
  %99 = and i8 %98, 15
  %100 = shl i8 %96, 4
  %or44.i.i32.i.i = or i8 %99, %100
  %101 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %or44.i.i32.i.i, ptr %arrayidx.i.i.i, align 1
  %102 = ptrtoint ptr %arrayidx.1.i.i33.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.1.i.i33.i.i, align 1
  %104 = ptrtoint ptr %arrayidx4.1.i.i34.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx4.1.i.i34.i.i, align 1
  %106 = and i8 %105, 15
  %107 = shl i8 %103, 4
  %or44.1.i.i35.i.i = or i8 %106, %107
  %arrayidx11.1.i.i36.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 1, i32 1
  %108 = ptrtoint ptr %arrayidx11.1.i.i36.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %or44.1.i.i35.i.i, ptr %arrayidx11.1.i.i36.i.i, align 1
  %109 = ptrtoint ptr %arrayidx.2.i.i37.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.2.i.i37.i.i, align 1
  %111 = ptrtoint ptr %arrayidx4.2.i.i38.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx4.2.i.i38.i.i, align 1
  %113 = and i8 %112, 15
  %114 = shl i8 %110, 4
  %or44.2.i.i39.i.i = or i8 %113, %114
  %arrayidx11.2.i.i40.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 3
  %115 = ptrtoint ptr %arrayidx11.2.i.i40.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %or44.2.i.i39.i.i, ptr %arrayidx11.2.i.i40.i.i, align 1
  %116 = ptrtoint ptr %arrayidx.3.i.i41.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.3.i.i41.i.i, align 1
  %118 = ptrtoint ptr %arrayidx4.3.i.i42.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx4.3.i.i42.i.i, align 1
  %120 = and i8 %119, 15
  %121 = shl i8 %117, 4
  %or44.3.i.i43.i.i = or i8 %120, %121
  %arrayidx11.3.i.i44.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 4
  %122 = ptrtoint ptr %arrayidx11.3.i.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %or44.3.i.i43.i.i, ptr %arrayidx11.3.i.i44.i.i, align 1
  %123 = ptrtoint ptr %arrayidx17.i.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx17.i.i45.i.i, align 1
  %arrayidx19.i.i46.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 5
  %125 = ptrtoint ptr %arrayidx19.i.i46.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx19.i.i46.i.i, align 1
  %126 = ptrtoint ptr %arrayidx20.i.i47.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx20.i.i47.i.i, align 1
  %arrayidx23.i.i48.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 13
  %128 = ptrtoint ptr %arrayidx23.i.i48.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx23.i.i48.i.i, align 1
  %129 = ptrtoint ptr %arrayidx17.1.i.i49.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx17.1.i.i49.i.i, align 1
  %arrayidx19.1.i.i50.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 2
  %131 = ptrtoint ptr %arrayidx19.1.i.i50.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx19.1.i.i50.i.i, align 1
  %132 = ptrtoint ptr %arrayidx20.1.i.i51.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx20.1.i.i51.i.i, align 1
  %arrayidx23.1.i.i52.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 3, i32 1
  %134 = ptrtoint ptr %arrayidx23.1.i.i52.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx23.1.i.i52.i.i, align 1
  %135 = ptrtoint ptr %arrayidx17.2.i.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx17.2.i.i53.i.i, align 1
  %arrayidx19.2.i.i54.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 7
  %137 = ptrtoint ptr %arrayidx19.2.i.i54.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx19.2.i.i54.i.i, align 1
  %138 = ptrtoint ptr %arrayidx20.2.i.i55.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx20.2.i.i55.i.i, align 1
  %arrayidx23.2.i.i56.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 15
  %140 = ptrtoint ptr %arrayidx23.2.i.i56.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx23.2.i.i56.i.i, align 1
  %141 = ptrtoint ptr %arrayidx17.3.i.i57.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx17.3.i.i57.i.i, align 1
  %arrayidx19.3.i.i58.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 2, i32 1
  %143 = ptrtoint ptr %arrayidx19.3.i.i58.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx19.3.i.i58.i.i, align 1
  %144 = ptrtoint ptr %arrayidx20.3.i.i59.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx20.3.i.i59.i.i, align 1
  %arrayidx23.3.i.i60.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 16
  %146 = ptrtoint ptr %arrayidx23.3.i.i60.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx23.3.i.i60.i.i, align 1
  %147 = ptrtoint ptr %arrayidx17.4.i.i61.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx17.4.i.i61.i.i, align 1
  %arrayidx19.4.i.i62.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 9
  %149 = ptrtoint ptr %arrayidx19.4.i.i62.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx19.4.i.i62.i.i, align 1
  %150 = ptrtoint ptr %arrayidx20.4.i.i63.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx20.4.i.i63.i.i, align 1
  %arrayidx23.4.i.i64.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 17
  %152 = ptrtoint ptr %arrayidx23.4.i.i64.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx23.4.i.i64.i.i, align 1
  %153 = ptrtoint ptr %arrayidx17.5.i.i65.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx17.5.i.i65.i.i, align 1
  %arrayidx19.5.i.i66.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 10
  %155 = ptrtoint ptr %arrayidx19.5.i.i66.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx19.5.i.i66.i.i, align 1
  %156 = ptrtoint ptr %arrayidx20.5.i.i67.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx20.5.i.i67.i.i, align 1
  %arrayidx23.5.i.i68.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 4
  %158 = ptrtoint ptr %arrayidx23.5.i.i68.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx23.5.i.i68.i.i, align 1
  %159 = ptrtoint ptr %arrayidx17.6.i.i69.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx17.6.i.i69.i.i, align 1
  %arrayidx19.6.i.i70.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 11
  %161 = ptrtoint ptr %arrayidx19.6.i.i70.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx19.6.i.i70.i.i, align 1
  %162 = ptrtoint ptr %arrayidx20.6.i.i71.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx20.6.i.i71.i.i, align 1
  %arrayidx23.6.i.i72.i.i = getelementptr i8, ptr %tlvinfo.i28.i.i, i32 19
  %164 = ptrtoint ptr %arrayidx23.6.i.i72.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx23.6.i.i72.i.i, align 1
  %165 = ptrtoint ptr %arrayidx17.7.i.i73.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx17.7.i.i73.i.i, align 1
  %arrayidx19.7.i.i74.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 3
  %167 = ptrtoint ptr %arrayidx19.7.i.i74.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx19.7.i.i74.i.i, align 1
  %168 = ptrtoint ptr %arrayidx20.7.i.i75.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx20.7.i.i75.i.i, align 1
  %arrayidx23.7.i.i76.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 4, i32 1
  %170 = ptrtoint ptr %arrayidx23.7.i.i76.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %arrayidx23.7.i.i76.i.i, align 1
  br label %ice_add_dcb_tlv.exit.i

sw.bb4.i.i:                                       ; preds = %if.then.i.i
  %tlvinfo.i77.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 2
  %171 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 2)
  store i16 -506, ptr %tlv.0.i, align 1
  %ouisubtype2.i78.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 1
  %172 = ptrtoint ptr %ouisubtype2.i78.i.i to i32
  call void @__asan_storeN_noabort(i32 %172, i32 4)
  store i32 8438283, ptr %ouisubtype2.i78.i.i, align 1
  %173 = ptrtoint ptr %pfc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %pfc.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i79.i.i = icmp eq i8 %174, 0
  br i1 %tobool.not.i79.i.i, label %sw.bb4.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

sw.bb4.i.i.if.end.i.i.i_crit_edge:                ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %175 = ptrtoint ptr %tlvinfo.i77.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -128, ptr %tlvinfo.i77.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %sw.bb4.i.i.if.end.i.i.i_crit_edge
  %176 = ptrtoint ptr %mbc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %mbc.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool4.not.i.i.i = icmp eq i8 %177, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.ice_add_ieee_pfc_tlv.exit.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.ice_add_ieee_pfc_tlv.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_add_ieee_pfc_tlv.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %178 = ptrtoint ptr %tlvinfo.i77.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %tlvinfo.i77.i.i, align 1
  %180 = or i8 %179, 64
  store i8 %180, ptr %tlvinfo.i77.i.i, align 1
  br label %ice_add_ieee_pfc_tlv.exit.i.i

ice_add_ieee_pfc_tlv.exit.i.i:                    ; preds = %if.then5.i.i.i, %if.end.i.i.i.ice_add_ieee_pfc_tlv.exit.i.i_crit_edge
  %181 = ptrtoint ptr %pfccap.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %pfccap.i97.i.i, align 2
  %183 = and i8 %182, 15
  %184 = ptrtoint ptr %tlvinfo.i77.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %tlvinfo.i77.i.i, align 1
  %or1325.i.i.i = or i8 %185, %183
  store i8 %or1325.i.i.i, ptr %tlvinfo.i77.i.i, align 1
  %186 = ptrtoint ptr %pfcena.i98.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %pfcena.i98.i.i, align 1
  %arrayidx16.i.i.i = getelementptr i8, ptr %tlvinfo.i77.i.i, i32 1
  %188 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %arrayidx16.i.i.i, align 1
  br label %ice_add_dcb_tlv.exit.i

sw.bb5.i.i:                                       ; preds = %if.then.i.i
  %tlvinfo.i80.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 2
  %189 = ptrtoint ptr %qos_cfg to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %qos_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp.i.i.i = icmp eq i32 %190, 0
  br i1 %cmp.i.i.i, label %sw.bb5.i.i.ice_add_dcb_tlv.exit.i_crit_edge, label %if.end.i81.i.i

sw.bb5.i.i.ice_add_dcb_tlv.exit.i_crit_edge:      ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_add_dcb_tlv.exit.i

if.end.i81.i.i:                                   ; preds = %sw.bb5.i.i
  %ouisubtype1.i.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 1
  %191 = ptrtoint ptr %ouisubtype1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 4)
  store i32 8438284, ptr %ouisubtype1.i.i.i, align 1
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i81.i.i
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ 0, %if.end.i81.i.i ]
  %offset.0.i.i.i = phi i32 [ %add39.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ 1, %if.end.i81.i.i ]
  %192 = ptrtoint ptr %qos_cfg to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %qos_cfg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %indvars.iv.i.i)
  %cmp3.i.i.i = icmp ugt i32 %193, %indvars.iv.i.i
  br i1 %cmp3.i.i.i, label %while.body.i.i.i, label %while.end.i.split.loop.exit100.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %arrayidx.i82.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %qos_cfg, i32 0, i32 6, i32 %indvars.iv.i.i
  %priority5.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %qos_cfg, i32 0, i32 6, i32 %indvars.iv.i.i, i32 1
  %194 = ptrtoint ptr %priority5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %priority5.i.i.i, align 2
  %selector11.i.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %qos_cfg, i32 0, i32 6, i32 %indvars.iv.i.i, i32 2
  %196 = ptrtoint ptr %selector11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %selector11.i.i.i, align 1
  %198 = and i8 %197, 7
  %199 = shl i8 %195, 5
  %or82.i.i.i = or i8 %198, %199
  %idxprom18.i.i.i = and i32 %offset.0.i.i.i, 65535
  %arrayidx19.i.i.i = getelementptr i8, ptr %tlvinfo.i80.i.i, i32 %idxprom18.i.i.i
  %200 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %or82.i.i.i, ptr %arrayidx19.i.i.i, align 1
  %201 = ptrtoint ptr %arrayidx.i82.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %arrayidx.i82.i.i, align 4
  %203 = lshr i16 %202, 8
  %conv25.i.i.i = trunc i16 %203 to i8
  %add.i.i.i = add nuw nsw i32 %idxprom18.i.i.i, 1
  %arrayidx27.i.i.i = getelementptr i8, ptr %tlvinfo.i80.i.i, i32 %add.i.i.i
  %204 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv25.i.i.i, ptr %arrayidx27.i.i.i, align 1
  %205 = load i16, ptr %arrayidx.i82.i.i, align 4
  %conv34.i.i.i = trunc i16 %205 to i8
  %add36.i.i.i = add nuw nsw i32 %idxprom18.i.i.i, 2
  %arrayidx37.i.i.i = getelementptr i8, ptr %tlvinfo.i80.i.i, i32 %add36.i.i.i
  %206 = ptrtoint ptr %arrayidx37.i.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv34.i.i.i, ptr %arrayidx37.i.i.i, align 1
  %add39.i.i.i = add nuw nsw i32 %idxprom18.i.i.i, 3
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i32 %indvars.iv.next.i.i, 64
  br i1 %exitcond.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i.i

while.end.i.split.loop.exit100.i.i:               ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %207 = trunc i32 %indvars.iv.i.i to i8
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.end.i.split.loop.exit100.i.i, %while.body.i.i.i.while.end.i.i.i_crit_edge
  %i.1.i.i.i = phi i8 [ %207, %while.end.i.split.loop.exit100.i.i ], [ 64, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %conv47.i.i.i = zext i8 %i.1.i.i.i to i16
  %mul.i.i.i = mul nuw nsw i16 %conv47.i.i.i, 3
  %add48.i.i.i = add nuw nsw i16 %mul.i.i.i, 5
  %or52.i.i.i = or i16 %add48.i.i.i, -512
  %208 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 2)
  store i16 %or52.i.i.i, ptr %tlv.0.i, align 1
  br label %ice_add_dcb_tlv.exit.i

if.else.i.i:                                      ; preds = %while.cond.i
  %209 = zext i15 %trunc27.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.7)
  switch i15 %trunc27.i, label %if.else.i.i.ice_add_dcb_tlv.exit.i_crit_edge [
    i15 3, label %sw.bb7.i.i
    i15 4, label %sw.bb8.i.i
    i15 5, label %sw.bb9.i.i
    i15 6, label %sw.bb10.i.i
  ]

if.else.i.i.ice_add_dcb_tlv.exit.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_add_dcb_tlv.exit.i

sw.bb7.i.i:                                       ; preds = %if.else.i.i
  %tlvinfo.i83.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 2
  %210 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 2)
  store i16 -364, ptr %tlv.0.i, align 1
  %ouisubtype2.i84.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 1
  %211 = ptrtoint ptr %ouisubtype2.i84.i.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 -191, ptr %ouisubtype2.i84.i.i, align 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %sw.bb7.i.i
  %i.023.i.i.i = phi i32 [ 0, %sw.bb7.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i85.i.i = getelementptr %struct.ice_dcbx_cfg, ptr %qos_cfg, i32 0, i32 8, i32 %i.023.i.i.i
  %212 = ptrtoint ptr %arrayidx.i85.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i85.i.i, align 1
  %arrayidx3.i.i.i = getelementptr i8, ptr %tlvinfo.i83.i.i, i32 %i.023.i.i.i
  %214 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %arrayidx3.i.i.i, align 1
  %215 = load i8, ptr %arrayidx.i85.i.i, align 1
  %add.i86.i.i = add nuw nsw i32 %i.023.i.i.i, 80
  %arrayidx6.i87.i.i = getelementptr i8, ptr %tlvinfo.i83.i.i, i32 %add.i86.i.i
  %216 = ptrtoint ptr %arrayidx6.i87.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %arrayidx6.i87.i.i, align 1
  %inc.i.i.i = add nuw nsw i32 %i.023.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %ice_add_dscp_up_tlv.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

ice_add_dscp_up_tlv.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx7.i.i.i = getelementptr i8, ptr %tlvinfo.i83.i.i, i32 64
  %217 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %arrayidx7.i.i.i, align 1
  %arrayidx9.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 25
  %218 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %arrayidx9.i.i.i, align 1
  br label %ice_add_dcb_tlv.exit.i

sw.bb8.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tlvinfo.i88.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 2
  %219 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 2)
  store i16 -380, ptr %tlv.0.i, align 1
  %ouisubtype2.i89.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 1
  %220 = ptrtoint ptr %ouisubtype2.i89.i.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 4)
  store i32 -190, ptr %ouisubtype2.i89.i.i, align 1
  %221 = call ptr @memset(ptr %tlvinfo.i88.i.i, i32 0, i32 128)
  br label %ice_add_dcb_tlv.exit.i

sw.bb9.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tlvinfo.i90.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 2
  %222 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 2)
  store i16 -487, ptr %tlv.0.i, align 1
  %ouisubtype2.i91.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 1
  %223 = ptrtoint ptr %ouisubtype2.i91.i.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 -189, ptr %ouisubtype2.i91.i.i, align 1
  %224 = ptrtoint ptr %maxtcs.i92.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %maxtcs.i92.i.i, align 1
  %226 = and i8 %225, 7
  %227 = ptrtoint ptr %tlvinfo.i90.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %tlvinfo.i90.i.i, align 1
  %228 = ptrtoint ptr %arrayidx6.i93.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx6.i93.i.i, align 1
  %arrayidx7.i94.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 5
  %230 = ptrtoint ptr %arrayidx7.i94.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %arrayidx7.i94.i.i, align 1
  %231 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx8.i.i.i, align 1
  %arrayidx10.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 13
  %233 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %arrayidx10.i.i.i, align 1
  %234 = ptrtoint ptr %arrayidx6.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx6.1.i.i.i, align 1
  %arrayidx7.1.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 2
  %236 = ptrtoint ptr %arrayidx7.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx7.1.i.i.i, align 1
  %237 = ptrtoint ptr %arrayidx8.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx8.1.i.i.i, align 1
  %arrayidx10.1.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 3, i32 1
  %239 = ptrtoint ptr %arrayidx10.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %arrayidx10.1.i.i.i, align 1
  %240 = ptrtoint ptr %arrayidx6.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx6.2.i.i.i, align 1
  %arrayidx7.2.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 7
  %242 = ptrtoint ptr %arrayidx7.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %arrayidx7.2.i.i.i, align 1
  %243 = ptrtoint ptr %arrayidx8.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx8.2.i.i.i, align 1
  %arrayidx10.2.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 15
  %245 = ptrtoint ptr %arrayidx10.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %arrayidx10.2.i.i.i, align 1
  %246 = ptrtoint ptr %arrayidx6.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx6.3.i.i.i, align 1
  %arrayidx7.3.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 2, i32 1
  %248 = ptrtoint ptr %arrayidx7.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %arrayidx7.3.i.i.i, align 1
  %249 = ptrtoint ptr %arrayidx8.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx8.3.i.i.i, align 1
  %arrayidx10.3.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 16
  %251 = ptrtoint ptr %arrayidx10.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %arrayidx10.3.i.i.i, align 1
  %252 = ptrtoint ptr %arrayidx6.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx6.4.i.i.i, align 1
  %arrayidx7.4.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 9
  %254 = ptrtoint ptr %arrayidx7.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %arrayidx7.4.i.i.i, align 1
  %255 = ptrtoint ptr %arrayidx8.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx8.4.i.i.i, align 1
  %arrayidx10.4.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 17
  %257 = ptrtoint ptr %arrayidx10.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %arrayidx10.4.i.i.i, align 1
  %258 = ptrtoint ptr %arrayidx6.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx6.5.i.i.i, align 1
  %arrayidx7.5.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 10
  %260 = ptrtoint ptr %arrayidx7.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %arrayidx7.5.i.i.i, align 1
  %261 = ptrtoint ptr %arrayidx8.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx8.5.i.i.i, align 1
  %arrayidx10.5.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 4
  %263 = ptrtoint ptr %arrayidx10.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %arrayidx10.5.i.i.i, align 1
  %264 = ptrtoint ptr %arrayidx6.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx6.6.i.i.i, align 1
  %arrayidx7.6.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 11
  %266 = ptrtoint ptr %arrayidx7.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %265, ptr %arrayidx7.6.i.i.i, align 1
  %267 = ptrtoint ptr %arrayidx8.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx8.6.i.i.i, align 1
  %arrayidx10.6.i.i.i = getelementptr i8, ptr %tlvinfo.i90.i.i, i32 19
  %269 = ptrtoint ptr %arrayidx10.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %arrayidx10.6.i.i.i, align 1
  %270 = ptrtoint ptr %arrayidx6.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx6.7.i.i.i, align 1
  %arrayidx7.7.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 3
  %272 = ptrtoint ptr %arrayidx7.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %271, ptr %arrayidx7.7.i.i.i, align 1
  %273 = ptrtoint ptr %arrayidx8.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx8.7.i.i.i, align 1
  %arrayidx10.7.i.i.i = getelementptr %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 4, i32 1
  %275 = ptrtoint ptr %arrayidx10.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %274, ptr %arrayidx10.7.i.i.i, align 1
  br label %ice_add_dcb_tlv.exit.i

sw.bb10.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %tlvinfo.i95.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 2
  %276 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_storeN_noabort(i32 %276, i32 2)
  store i16 -506, ptr %tlv.0.i, align 1
  %ouisubtype2.i96.i.i = getelementptr inbounds %struct.ice_lldp_org_tlv, ptr %tlv.0.i, i32 0, i32 1
  %277 = ptrtoint ptr %ouisubtype2.i96.i.i to i32
  call void @__asan_storeN_noabort(i32 %277, i32 4)
  store i32 -188, ptr %ouisubtype2.i96.i.i, align 1
  %278 = ptrtoint ptr %pfccap.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %pfccap.i97.i.i, align 2
  %280 = and i8 %279, 15
  %281 = ptrtoint ptr %tlvinfo.i95.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %tlvinfo.i95.i.i, align 1
  %282 = ptrtoint ptr %pfcena.i98.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %pfcena.i98.i.i, align 1
  %284 = and i8 %283, 15
  %arrayidx8.i99.i.i = getelementptr i8, ptr %tlvinfo.i95.i.i, i32 1
  %285 = ptrtoint ptr %arrayidx8.i99.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %284, ptr %arrayidx8.i99.i.i, align 1
  br label %ice_add_dcb_tlv.exit.i

ice_add_dcb_tlv.exit.i:                           ; preds = %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %ice_add_dscp_up_tlv.exit.i.i, %if.else.i.i.ice_add_dcb_tlv.exit.i_crit_edge, %while.end.i.i.i, %sw.bb5.i.i.ice_add_dcb_tlv.exit.i_crit_edge, %ice_add_ieee_pfc_tlv.exit.i.i, %sw.bb3.i.i, %sw.bb.i.i, %if.then.i.i.ice_add_dcb_tlv.exit.i_crit_edge
  %286 = ptrtoint ptr %tlv.0.i to i32
  call void @__asan_loadN_noabort(i32 %286, i32 2)
  %287 = load i16, ptr %tlv.0.i, align 1
  %288 = and i16 %287, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %288)
  %tobool.not.i = icmp eq i16 %288, 0
  %narrow.i = add nuw nsw i16 %288, 2
  %add5.i = select i1 %tobool.not.i, i16 0, i16 %narrow.i
  %offset.1.i = add i16 %add5.i, %offset.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %tlvid.0.i)
  %cmp.i = icmp ugt i16 %tlvid.0.i, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1500, i16 %offset.1.i)
  %cmp10.i = icmp ugt i16 %offset.1.i, 1500
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %ice_dcb_cfg_to_lldp.exit, label %if.end13.i

if.end13.i:                                       ; preds = %ice_add_dcb_tlv.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %tlv.0.i, i32 2
  %conv16.i = zext i16 %288 to i32
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 %conv16.i
  %tlv.1.i = select i1 %tobool.not.i, ptr %tlv.0.i, ptr %add.ptr17.i
  br label %while.cond.i

ice_dcb_cfg_to_lldp.exit:                         ; preds = %ice_add_dcb_tlv.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select = select i1 %cmp, i8 2, i8 0
  %call10 = tail call i32 @ice_aq_set_lldp_mib(ptr noundef %1, i8 noundef zeroext %spec.select, ptr noundef nonnull %call.i, i16 noundef zeroext %offset.1.i, ptr noundef null) #4
  %289 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %add.ptr, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %290, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev15, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %ice_dcb_cfg_to_lldp.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %ice_dcb_cfg_to_lldp.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_set_lldp_mib(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_query_port_ets(ptr noundef %pi, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %elem.i = alloca %struct.ice_aqc_txsched_elem_data, align 4
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_lock = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %sched_lock, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #4
  %tobool.not.i = icmp eq ptr %pi, null
  %0 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %ice_aq_query_port_ets.exit.thread, label %ice_aq_query_port_ets.exit

ice_aq_query_port_ets.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #4
  br label %if.end

ice_aq_query_port_ets.exit:                       ; preds = %entry
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1038) #4
  %2 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi, align 8
  %node_teid.i = getelementptr inbounds %struct.ice_sched_node, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %node_teid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node_teid.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  %hw.i = getelementptr inbounds %struct.ice_port_info, ptr %pi, i32 0, i32 1
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 4
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %8, ptr noundef nonnull %desc.i, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef %cd) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader.i, label %ice_aq_query_port_ets.exit.if.end_crit_edge

ice_aq_query_port_ets.exit.if.end_crit_edge:      ; preds = %ice_aq_query_port_ets.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.cond.preheader.i:                             ; preds = %ice_aq_query_port_ets.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %elem.i) #4
  %9 = call ptr @memset(ptr %elem.i, i32 255, i32 24)
  %10 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pi, align 8
  %num_children137.i = getelementptr inbounds %struct.ice_sched_node, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %num_children137.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_children137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp138.not.i = icmp eq i8 %13, 0
  br i1 %cmp138.not.i, label %for.cond.preheader.i.for.body31.i.preheader_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.for.body31.i.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31.i.preheader

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %arrayidx10.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 0
  %arrayidx10.1.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 1
  %arrayidx10.2.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 2
  %arrayidx10.3.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 3
  %arrayidx10.4.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 4
  %arrayidx10.5.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 5
  %arrayidx10.6.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 6
  %arrayidx10.7.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc24.i.for.body.i_crit_edge ]
  %14 = phi ptr [ %11, %for.body.preheader.i ], [ %39, %for.inc24.i.for.body.i_crit_edge ]
  %children.i = getelementptr inbounds %struct.ice_sched_node, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %children.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %indvars.iv.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %node_teid.i10 = getelementptr inbounds %struct.ice_sched_node, ptr %18, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %node_teid.i10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %node_teid.i10, align 4
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp11.i = icmp eq i32 %20, %22
  br i1 %cmp11.i, label %for.body.i.for.inc24.i_crit_edge, label %for.cond4.i

for.body.i.for.inc24.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc24.i

for.cond4.i:                                      ; preds = %for.body.i
  %23 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx10.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp11.1.i = icmp eq i32 %20, %24
  br i1 %cmp11.1.i, label %for.cond4.i.for.inc24.i_crit_edge, label %for.cond4.1.i

for.cond4.i.for.inc24.i_crit_edge:                ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc24.i

for.cond4.1.i:                                    ; preds = %for.cond4.i
  %25 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %26)
  %cmp11.2.i = icmp eq i32 %20, %26
  br i1 %cmp11.2.i, label %for.cond4.1.i.for.inc24.i_crit_edge, label %for.cond4.2.i

for.cond4.1.i.for.inc24.i_crit_edge:              ; preds = %for.cond4.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc24.i

for.cond4.2.i:                                    ; preds = %for.cond4.1.i
  %27 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %28)
  %cmp11.3.i = icmp eq i32 %20, %28
  br i1 %cmp11.3.i, label %for.cond4.2.i.for.inc24.i_crit_edge, label %for.cond4.3.i

for.cond4.2.i.for.inc24.i_crit_edge:              ; preds = %for.cond4.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc24.i

for.cond4.3.i:                                    ; preds = %for.cond4.2.i
  %29 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx10.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %30)
  %cmp11.4.i = icmp eq i32 %20, %30
  br i1 %cmp11.4.i, label %for.cond4.3.i.for.inc24.i_crit_edge, label %for.cond4.4.i

for.cond4.3.i.for.inc24.i_crit_edge:              ; preds = %for.cond4.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc24.i

for.cond4.4.i:                                    ; preds = %for.cond4.3.i
  %31 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx10.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %32)
  %cmp11.5.i = icmp eq i32 %20, %32
  br i1 %cmp11.5.i, label %for.cond4.4.i.for.inc24.i_crit_edge, label %for.cond4.5.i

for.cond4.4.i.for.inc24.i_crit_edge:              ; preds = %for.cond4.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc24.i

for.cond4.5.i:                                    ; preds = %for.cond4.4.i
  %33 = ptrtoint ptr %arrayidx10.6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx10.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %34)
  %cmp11.6.i = icmp eq i32 %20, %34
  br i1 %cmp11.6.i, label %for.cond4.5.i.for.inc24.i_crit_edge, label %for.cond4.6.i

for.cond4.5.i.for.inc24.i_crit_edge:              ; preds = %for.cond4.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc24.i

for.cond4.6.i:                                    ; preds = %for.cond4.5.i
  %35 = ptrtoint ptr %arrayidx10.7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx10.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %36)
  %cmp11.7.i = icmp eq i32 %20, %36
  br i1 %cmp11.7.i, label %for.cond4.6.i.for.inc24.i_crit_edge, label %for.cond4.7.i

for.cond4.6.i.for.inc24.i_crit_edge:              ; preds = %for.cond4.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc24.i

for.cond4.7.i:                                    ; preds = %for.cond4.6.i
  call void @__sanitizer_cov_trace_pc() #6
  %in_use.i = getelementptr inbounds %struct.ice_sched_node, ptr %18, i32 0, i32 6
  %37 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %in_use.i, align 2
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %for.cond4.7.i, %for.cond4.6.i.for.inc24.i_crit_edge, %for.cond4.5.i.for.inc24.i_crit_edge, %for.cond4.4.i.for.inc24.i_crit_edge, %for.cond4.3.i.for.inc24.i_crit_edge, %for.cond4.2.i.for.inc24.i_crit_edge, %for.cond4.1.i.for.inc24.i_crit_edge, %for.cond4.i.for.inc24.i_crit_edge, %for.body.i.for.inc24.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %38 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pi, align 8
  %num_children.i = getelementptr inbounds %struct.ice_sched_node, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %num_children.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_children.i, align 4
  %42 = zext i8 %41 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %42
  br i1 %cmp.i, label %for.inc24.i.for.body.i_crit_edge, label %for.inc24.i.for.body31.i.preheader_crit_edge

for.inc24.i.for.body31.i.preheader_crit_edge:     ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31.i.preheader

for.inc24.i.for.body.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body31.i.preheader:                           ; preds = %for.inc24.i.for.body31.i.preheader_crit_edge, %for.cond.preheader.i.for.body31.i.preheader_crit_edge
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc85.i.for.body31.i_crit_edge, %for.body31.i.preheader
  %indvars.iv149.i = phi i32 [ %indvars.iv.next150.i, %for.inc85.i.for.body31.i_crit_edge ], [ 0, %for.body31.i.preheader ]
  %arrayidx34.i = getelementptr %struct.ice_aqc_port_ets_elem, ptr %buf, i32 0, i32 8, i32 %indvars.iv149.i
  %43 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx34.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp35.i = icmp eq i32 %44, -1
  br i1 %cmp35.i, label %for.body31.i.for.inc85.i_crit_edge, label %for.cond39.preheader.i

for.body31.i.for.inc85.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc85.i

for.cond39.preheader.i:                           ; preds = %for.body31.i
  %46 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pi, align 8
  %num_children42.i = getelementptr inbounds %struct.ice_sched_node, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %num_children42.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_children42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp44140.not.i = icmp eq i8 %49, 0
  br i1 %cmp44140.not.i, label %for.cond39.preheader.i.for.end63.i_crit_edge, label %for.body46.lr.ph.i

for.cond39.preheader.i.for.end63.i_crit_edge:     ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end63.i

for.body46.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %children48.i = getelementptr inbounds %struct.ice_sched_node, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %children48.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %children48.i, align 4
  %wide.trip.count.i = zext i8 %49 to i32
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.inc61.i.for.body46.i_crit_edge, %for.body46.lr.ph.i
  %indvars.iv147.i = phi i32 [ 0, %for.body46.lr.ph.i ], [ %indvars.iv.next148.i, %for.inc61.i.for.body46.i_crit_edge ]
  %arrayidx50.i = getelementptr ptr, ptr %51, i32 %indvars.iv147.i
  %52 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx50.i, align 4
  %tobool51.not.i = icmp eq ptr %53, null
  br i1 %tobool51.not.i, label %for.body46.i.for.inc61.i_crit_edge, label %if.end53.i

for.body46.i.for.inc61.i_crit_edge:               ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc61.i

if.end53.i:                                       ; preds = %for.body46.i
  %node_teid55.i = getelementptr inbounds %struct.ice_sched_node, ptr %53, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %node_teid55.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %node_teid55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %44)
  %cmp56.i = icmp eq i32 %55, %44
  br i1 %cmp56.i, label %if.then58.i, label %if.end53.i.for.inc61.i_crit_edge

if.end53.i.for.inc61.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc61.i

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  %56 = trunc i32 %indvars.iv147.i to i8
  %tc_num.i = getelementptr inbounds %struct.ice_sched_node, ptr %53, i32 0, i32 9
  %57 = trunc i32 %indvars.iv149.i to i8
  %58 = ptrtoint ptr %tc_num.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %tc_num.i, align 1
  %in_use59.i = getelementptr inbounds %struct.ice_sched_node, ptr %53, i32 0, i32 6
  %59 = ptrtoint ptr %in_use59.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %in_use59.i, align 2
  br label %for.end63.i

for.inc61.i:                                      ; preds = %if.end53.i.for.inc61.i_crit_edge, %for.body46.i.for.inc61.i_crit_edge
  %indvars.iv.next148.i = add nuw nsw i32 %indvars.iv147.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next148.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc61.i.for.end63.i_crit_edge, label %for.inc61.i.for.body46.i_crit_edge

for.inc61.i.for.body46.i_crit_edge:               ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body46.i

for.inc61.i.for.end63.i_crit_edge:                ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end63.i

for.end63.i:                                      ; preds = %for.inc61.i.for.end63.i_crit_edge, %if.then58.i, %for.cond39.preheader.i.for.end63.i_crit_edge
  %i.1135.i = phi i8 [ %56, %if.then58.i ], [ 0, %for.cond39.preheader.i.for.end63.i_crit_edge ], [ %49, %for.inc61.i.for.end63.i_crit_edge ]
  %60 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pi, align 8
  %num_children66.i = getelementptr inbounds %struct.ice_sched_node, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %num_children66.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_children66.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %i.1135.i, i8 %63)
  %cmp68.i = icmp ult i8 %i.1135.i, %63
  br i1 %cmp68.i, label %for.end63.i.for.inc85.i_crit_edge, label %if.end71.i

for.end63.i.for.inc85.i_crit_edge:                ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc85.i

if.end71.i:                                       ; preds = %for.end63.i
  %64 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw.i, align 4
  %call.i11 = call i32 @ice_sched_query_elem(ptr noundef %65, i32 noundef %45, ptr noundef nonnull %elem.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool72.not.i = icmp eq i32 %call.i11, 0
  br i1 %tobool72.not.i, label %if.end75.i, label %if.end71.i.ice_update_port_tc_tree_cfg.exit_crit_edge

if.end71.i.ice_update_port_tc_tree_cfg.exit_crit_edge: ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_update_port_tc_tree_cfg.exit

if.end75.i:                                       ; preds = %if.end71.i
  %call74.i = call i32 @ice_sched_add_node(ptr noundef nonnull %pi, i8 noundef zeroext 1, ptr noundef nonnull %elem.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool76.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end75.i.ice_update_port_tc_tree_cfg.exit_crit_edge

if.end75.i.ice_update_port_tc_tree_cfg.exit_crit_edge: ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_update_port_tc_tree_cfg.exit

if.end78.i:                                       ; preds = %if.end75.i
  %66 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pi, align 8
  %call80.i = call ptr @ice_sched_find_node_by_teid(ptr noundef %67, i32 noundef %45) #4
  %tobool81.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool81.not.i, label %if.end78.i.for.inc85.i_crit_edge, label %if.then82.i

if.end78.i.for.inc85.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc85.i

if.then82.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #6
  %tc_num83.i = getelementptr inbounds %struct.ice_sched_node, ptr %call80.i, i32 0, i32 9
  %68 = trunc i32 %indvars.iv149.i to i8
  %69 = ptrtoint ptr %tc_num83.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %tc_num83.i, align 1
  br label %for.inc85.i

for.inc85.i:                                      ; preds = %if.then82.i, %if.end78.i.for.inc85.i_crit_edge, %for.end63.i.for.inc85.i_crit_edge, %for.body31.i.for.inc85.i_crit_edge
  %indvars.iv.next150.i = add nuw nsw i32 %indvars.iv149.i, 1
  %exitcond151.not.i = icmp eq i32 %indvars.iv.next150.i, 8
  br i1 %exitcond151.not.i, label %for.inc85.i.ice_update_port_tc_tree_cfg.exit_crit_edge, label %for.inc85.i.for.body31.i_crit_edge

for.inc85.i.for.body31.i_crit_edge:               ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31.i

for.inc85.i.ice_update_port_tc_tree_cfg.exit_crit_edge: ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ice_update_port_tc_tree_cfg.exit

ice_update_port_tc_tree_cfg.exit:                 ; preds = %for.inc85.i.ice_update_port_tc_tree_cfg.exit_crit_edge, %if.end75.i.ice_update_port_tc_tree_cfg.exit_crit_edge, %if.end71.i.ice_update_port_tc_tree_cfg.exit_crit_edge
  %retval.0.i12 = phi i32 [ %call.i11, %if.end71.i.ice_update_port_tc_tree_cfg.exit_crit_edge ], [ 0, %for.inc85.i.ice_update_port_tc_tree_cfg.exit_crit_edge ], [ %call74.i, %if.end75.i.ice_update_port_tc_tree_cfg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %elem.i) #4
  br label %if.end

if.end:                                           ; preds = %ice_update_port_tc_tree_cfg.exit, %ice_aq_query_port_ets.exit.if.end_crit_edge, %ice_aq_query_port_ets.exit.thread
  %status.0 = phi i32 [ %call.i, %ice_aq_query_port_ets.exit.if.end_crit_edge ], [ %retval.0.i12, %ice_update_port_tc_tree_cfg.exit ], [ -22, %ice_aq_query_port_ets.exit.thread ]
  call void @mutex_unlock(ptr noundef %sched_lock) #4
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sched_query_elem(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sched_add_node(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ice_sched_find_node_by_teid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{i64 6789023}
!10 = !{i64 2160089556}
