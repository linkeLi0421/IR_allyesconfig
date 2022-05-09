; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_fltr.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_fltr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.ice_vsi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [1 x i32], i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, %struct.spinlock, ptr, i16, i16, %struct.ice_aqc_vsi_props, %struct.rtnl_link_stats64, %struct.ice_eth_stats, %struct.ice_eth_stats, %struct.list_head, %struct.list_head, i8, i16, i8, i8, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [8 x i16], %struct.ice_tc_cfg, ptr, ptr, ptr, i16, i8, ptr, %struct.tc_mqprio_qopt_offload, [16 x ptr], i16, i16, %struct.list_head, i16, i16, i16, i16, i16, i8, i16, i8, i16, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ice_aqc_vsi_props = type { i16, i8, i8, i8, i8, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i32, i16, i8, i8, i16, [16 x i16], [8 x i16], i8, i8, i8, [3 x i8], i32, i16, i16, i16, i16, i16, i16, i32, [24 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_tc_cfg = type { i8, i16, [8 x %struct.ice_tc_info] }
%struct.ice_tc_info = type { i16, i16, i16, i8 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.ice_pf = type { ptr, ptr, ptr, ptr, %struct.devlink_port, ptr, ptr, i16, i16, ptr, ptr, i16, ptr, i16, i16, i16, i16, i32, [8 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, i32, i32, %struct.timer_list, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.ice_ptp, i16, i16, %struct.spinlock, %struct.hlist_head, %struct.wait_queue_head, i8, %struct.wait_queue_head, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, %struct.ice_hw_port_stats, %struct.ice_hw_port_stats, %struct.ice_hw, i8, i8, i16, i32, i32, i32, [32 x i8], ptr, i32, i32, i16, %struct.hlist_head, i64, i64, %struct.ice_link_default_override_tlv, ptr, %struct.ice_switchdev_info, [32 x %struct.ice_agg_node], [32 x %struct.ice_agg_node] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.183 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.183 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ice_ptp = type { %struct.ice_ptp_port, %struct.kthread_delayed_work, %struct.kthread_work, i64, i8, i8, ptr, [4 x %struct.ice_perout_channel], %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, i64 }
%struct.ice_ptp_port = type { %struct.ice_ptp_tx, %struct.kthread_delayed_work, %struct.mutex, i8, i8, i8 }
%struct.ice_ptp_tx = type { %struct.kthread_work, %struct.spinlock, ptr, ptr, i8, i8, i8, i8, i8 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ice_perout_channel = type { i8, i32, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ice_hw_port_stats = type { %struct.ice_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }
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
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.206, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.206 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.ice_link_default_override_tlv = type { i8, i8, i8, i8, i64, i64 }
%struct.ice_switchdev_info = type { ptr, ptr, i8 }
%struct.ice_agg_node = type { i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.208, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.208 = type { ptr }
%struct.ice_fltr_list_entry = type { %struct.list_head, i32, %struct.ice_fltr_info }
%struct.ice_fltr_info = type { i32, i32, i16, i16, i16, i32, %union.anon.200, %union.anon.205, i16, i8, i8, i8 }
%union.anon.200 = type { %struct.anon.202 }
%struct.anon.202 = type { [6 x i8], i16 }
%union.anon.205 = type { i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fltr_free_list(ptr noundef %dev, ptr noundef readonly %h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %h, align 4
  %cmp.not18 = icmp eq ptr %1, %h
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %e.019 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %e.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %e.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019) #3
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.019, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %e.019 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %e.019 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %e.019, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %e.019) #3
  %cmp.not = icmp eq ptr %tmp.0, %h
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_set_vlan_vsi_promisc(ptr noundef %hw, ptr nocapture noundef readonly %vsi, i8 noundef zeroext %promisc_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  %call = tail call i32 @ice_set_vlan_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %1, i8 noundef zeroext %promisc_mask, i1 noundef zeroext false) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_vlan_vsi_promisc(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_clear_vlan_vsi_promisc(ptr noundef %hw, ptr nocapture noundef readonly %vsi, i8 noundef zeroext %promisc_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  %call = tail call i32 @ice_set_vlan_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %1, i8 noundef zeroext %promisc_mask, i1 noundef zeroext true) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_clear_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ice_clear_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i16 noundef zeroext %vid) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_clear_vsi_promisc(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_set_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ice_set_vsi_promisc(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i8 noundef zeroext %promisc_mask, i16 noundef zeroext %vid) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_set_vsi_promisc(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_add_mac_list(ptr nocapture noundef readonly %vsi, ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %call = tail call i32 @ice_add_mac(ptr noundef %hw, ptr noundef %list) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_remove_mac_list(ptr nocapture noundef readonly %vsi, ptr noundef %list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %call = tail call i32 @ice_remove_mac(ptr noundef %hw, ptr noundef %list) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_remove_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_fltr_remove_all(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 8
  %hw = getelementptr inbounds %struct.ice_pf, ptr %1, i32 0, i32 58
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idx, align 2
  tail call void @ice_remove_vsi_fltr(ptr noundef %hw, i16 noundef zeroext %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_remove_vsi_fltr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_add_mac_to_list(ptr nocapture noundef readonly %vsi, ptr noundef %list, ptr nocapture noundef readonly %mac, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac, align 4
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %back = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %6 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %back, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 2848) #3
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.ice_fltr_add_entry_to_list.exit_crit_edge, label %if.end.i

entry.ice_fltr_add_entry_to_list.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_add_entry_to_list.exit

if.end.i:                                         ; preds = %entry
  %fltr_info.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %fltr_info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %fltr_info.i, align 4
  %info.sroa.5.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %info.sroa.5.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %action, ptr %info.sroa.5.0.fltr_info.i.sroa_idx, align 4
  %info.sroa.6.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %info.sroa.6.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %info.sroa.6.0.fltr_info.i.sroa_idx, align 4
  %info.sroa.62.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %info.sroa.62.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %info.sroa.62.0.fltr_info.i.sroa_idx, align 2
  %info.sroa.7.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %info.sroa.7.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %info.sroa.7.0.fltr_info.i.sroa_idx, align 4
  %info.sroa.73.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %info.sroa.73.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %info.sroa.73.0.fltr_info.i.sroa_idx, align 4
  %info.sroa.8.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %info.sroa.8.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %3, ptr %info.sroa.8.0.fltr_info.i.sroa_idx, align 4
  %info.sroa.9.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %info.sroa.9.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %5, ptr %info.sroa.9.0.fltr_info.i.sroa_idx, align 4
  %info.sroa.10.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %info.sroa.10.0.fltr_info.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %info.sroa.10.0.fltr_info.i.sroa_idx, align 2
  %info.sroa.104.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %info.sroa.104.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %1, ptr %info.sroa.104.0.fltr_info.i.sroa_idx, align 2
  %info.sroa.11.0.fltr_info.i.sroa_idx = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i, i32 0, i32 2, i32 9
  %20 = ptrtoint ptr %info.sroa.11.0.fltr_info.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %info.sroa.11.0.fltr_info.i.sroa_idx, align 4
  %21 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call.i.i, ptr %call.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %list, ptr noundef %24) #3
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.ice_fltr_add_entry_to_list.exit_crit_edge

if.end.i.ice_fltr_add_entry_to_list.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_add_entry_to_list.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %call.i.i, align 4
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call.i.i, ptr %list, align 4
  br label %ice_fltr_add_entry_to_list.exit

ice_fltr_add_entry_to_list.exit:                  ; preds = %if.end.i.i.i, %if.end.i.ice_fltr_add_entry_to_list.exit_crit_edge, %entry.ice_fltr_add_entry_to_list.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.ice_fltr_add_entry_to_list.exit_crit_edge ], [ 0, %if.end.i.ice_fltr_add_entry_to_list.exit_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_add_mac(ptr noundef %vsi, ptr nocapture noundef readonly %mac, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_fltr_prepare_mac(ptr noundef %vsi, ptr noundef %mac, i32 noundef %action, ptr noundef nonnull @ice_fltr_add_mac_list)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_fltr_prepare_mac(ptr noundef %vsi, ptr nocapture noundef readonly %mac, i32 noundef %action, ptr nocapture noundef readonly %mac_action) unnamed_addr #0 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #3
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list, ptr %0, align 4
  %idx.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %3 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idx.i, align 2
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac, align 4
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %back.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %9 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 48, i32 noundef 2848) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %fltr_info.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %fltr_info.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %fltr_info.i.i, align 4
  %info.sroa.5.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %action, ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i, align 4
  %info.sroa.6.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i, align 4
  %info.sroa.62.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %info.sroa.62.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %info.sroa.62.0.fltr_info.i.sroa_idx.i, align 2
  %info.sroa.7.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i, align 4
  %info.sroa.73.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %info.sroa.73.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %info.sroa.73.0.fltr_info.i.sroa_idx.i, align 4
  %info.sroa.8.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %6, ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i, align 4
  %info.sroa.9.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 4
  %20 = ptrtoint ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %8, ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i, align 4
  %info.sroa.10.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i, align 2
  %info.sroa.104.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 8
  %22 = ptrtoint ptr %info.sroa.104.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %4, ptr %info.sroa.104.0.fltr_info.i.sroa_idx.i, align 2
  %info.sroa.11.0.fltr_info.i.sroa_idx.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i, i32 0, i32 2, i32 9
  %23 = ptrtoint ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i, align 4
  %24 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call.i.i.i, ptr %call.i.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i.i, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tmp_list, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %tmp_list, ptr noundef %27) #3
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i.i, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %call.i.i.i, align 4
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tmp_list, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call.i.i.i, ptr %tmp_list, align 4
  br label %if.end

if.then:                                          ; preds = %entry
  %32 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %back.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tmp_list, align 4
  %cmp.not18.i = icmp eq ptr %37, %tmp_list
  br i1 %cmp.not18.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %e.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %37, %if.then.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %e.019.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp.0.i = load ptr, ptr %e.019.i, align 4
  %call.i.i.i9 = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i) #3
  br i1 %call.i.i.i9, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %e.019.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i10, align 4
  %41 = ptrtoint ptr %e.019.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %e.019.i, align 4
  %prev1.i.i.i.i11 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i11, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %e.019.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.019.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @devm_kfree(ptr noundef %dev, ptr noundef %e.019.i) #3
  %cmp.not.i = icmp eq ptr %tmp.0.i, %tmp_list
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.i.i, %if.end.i.i.if.end_crit_edge
  %call1 = call i32 %mac_action(ptr noundef %vsi, ptr noundef nonnull %tmp_list) #3, !callees !9
  %47 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %back.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tmp_list, align 4
  %cmp.not18.i12 = icmp eq ptr %52, %tmp_list
  br i1 %cmp.not18.i12, label %if.end.cleanup_crit_edge, label %if.end.for.body.i16_crit_edge

if.end.for.body.i16_crit_edge:                    ; preds = %if.end
  br label %for.body.i16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i16:                                     ; preds = %list_del.exit.i22.for.body.i16_crit_edge, %if.end.for.body.i16_crit_edge
  %e.019.i13 = phi ptr [ %tmp.0.i14, %list_del.exit.i22.for.body.i16_crit_edge ], [ %52, %if.end.for.body.i16_crit_edge ]
  %53 = ptrtoint ptr %e.019.i13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %tmp.0.i14 = load ptr, ptr %e.019.i13, align 4
  %call.i.i.i15 = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i13) #3
  br i1 %call.i.i.i15, label %if.end.i.i.i19, label %for.body.i16.list_del.exit.i22_crit_edge

for.body.i16.list_del.exit.i22_crit_edge:         ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i22

if.end.i.i.i19:                                   ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %e.019.i13, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i17, align 4
  %56 = ptrtoint ptr %e.019.i13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %e.019.i13, align 4
  %prev1.i.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.i18, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit.i22

list_del.exit.i22:                                ; preds = %if.end.i.i.i19, %for.body.i16.list_del.exit.i22_crit_edge
  %60 = ptrtoint ptr %e.019.i13 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i13, align 4
  %prev.i.i20 = getelementptr inbounds %struct.list_head, ptr %e.019.i13, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i20, align 4
  call void @devm_kfree(ptr noundef %dev4, ptr noundef %e.019.i13) #3
  %cmp.not.i21 = icmp eq ptr %tmp.0.i14, %tmp_list
  br i1 %cmp.not.i21, label %list_del.exit.i22.cleanup_crit_edge, label %list_del.exit.i22.for.body.i16_crit_edge

list_del.exit.i22.for.body.i16_crit_edge:         ; preds = %list_del.exit.i22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i16

list_del.exit.i22.cleanup_crit_edge:              ; preds = %list_del.exit.i22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %list_del.exit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %list_del.exit.i.cleanup_crit_edge ], [ %call1, %list_del.exit.i22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_add_mac_and_broadcast(ptr nocapture noundef readonly %vsi, ptr nocapture noundef readonly %mac, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #3
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list.i, ptr %0, align 4
  %idx.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %3 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idx.i.i, align 2
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %mac, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i.i, align 2
  %back.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %9 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 48, i32 noundef 2848) #3
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.end.i.i.i:                                     ; preds = %entry
  %fltr_info.i.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %fltr_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %fltr_info.i.i.i, align 4
  %info.sroa.5.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %action, ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.6.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.62.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %info.sroa.62.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %info.sroa.62.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.7.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.73.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %info.sroa.73.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %info.sroa.73.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.8.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %6, ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.9.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 4
  %20 = ptrtoint ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %8, ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.10.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.104.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 8
  %22 = ptrtoint ptr %info.sroa.104.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %4, ptr %info.sroa.104.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.11.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 9
  %23 = ptrtoint ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i.i, align 4
  %24 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call.i.i.i.i, ptr %call.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tmp_list.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %tmp_list.i, ptr noundef %27) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.lor.lhs.false.i_crit_edge

if.end.i.i.i.lor.lhs.false.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %call.i.i.i.i, align 4
  %30 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tmp_list.i, ptr %prev.i.i.i.i, align 4
  %31 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call.i.i.i.i, ptr %tmp_list.i, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.lor.lhs.false.i_crit_edge
  %32 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idx.i.i, align 2
  %34 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %back.i.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %dev.i4.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %call.i.i.i5.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i4.i, i32 noundef 48, i32 noundef 2848) #3
  %tobool.not.i.i6.i = icmp eq ptr %call.i.i.i5.i, null
  br i1 %tobool.not.i.i6.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i.i20.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.end.i.i20.i:                                   ; preds = %lor.lhs.false.i
  %fltr_info.i.i7.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2
  %38 = ptrtoint ptr %fltr_info.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %fltr_info.i.i7.i, align 4
  %info.sroa.5.0.fltr_info.i.sroa_idx.i8.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %action, ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i8.i, align 4
  %info.sroa.6.0.fltr_info.i.sroa_idx.i9.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i9.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i9.i, align 4
  %info.sroa.62.0.fltr_info.i.sroa_idx.i10.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %info.sroa.62.0.fltr_info.i.sroa_idx.i10.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2, ptr %info.sroa.62.0.fltr_info.i.sroa_idx.i10.i, align 2
  %info.sroa.7.0.fltr_info.i.sroa_idx.i11.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i11.i, align 4
  %info.sroa.73.0.fltr_info.i.sroa_idx.i12.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %info.sroa.73.0.fltr_info.i.sroa_idx.i12.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %info.sroa.73.0.fltr_info.i.sroa_idx.i12.i, align 4
  %info.sroa.8.0.fltr_info.i.sroa_idx.i13.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i13.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i13.i, align 4
  %info.sroa.9.0.fltr_info.i.sroa_idx.i14.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 4
  %45 = ptrtoint ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i14.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i14.i, align 4
  %info.sroa.10.0.fltr_info.i.sroa_idx.i15.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 6, i32 0, i32 1
  %46 = ptrtoint ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i15.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 0, ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i15.i, align 2
  %info.sroa.104.0.fltr_info.i.sroa_idx.i16.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 8
  %47 = ptrtoint ptr %info.sroa.104.0.fltr_info.i.sroa_idx.i16.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %33, ptr %info.sroa.104.0.fltr_info.i.sroa_idx.i16.i, align 2
  %info.sroa.11.0.fltr_info.i.sroa_idx.i17.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i5.i, i32 0, i32 2, i32 9
  %48 = ptrtoint ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i17.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i17.i, align 4
  %49 = ptrtoint ptr %call.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call.i.i.i5.i, ptr %call.i.i.i5.i, align 4
  %prev.i.i.i18.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i5.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i.i.i5.i, ptr %prev.i.i.i18.i, align 4
  %51 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tmp_list.i, align 4
  %call.i.i.i.i19.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i5.i, ptr noundef nonnull %tmp_list.i, ptr noundef %52) #3
  br i1 %call.i.i.i.i19.i, label %if.end.i.i.i.i22.i, label %if.end.i.i20.i.if.end.i_crit_edge

if.end.i.i20.i.if.end.i_crit_edge:                ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i.i.i.i22.i:                               ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i21.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i.i5.i, ptr %prev1.i.i.i.i21.i, align 4
  %54 = ptrtoint ptr %call.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %call.i.i.i5.i, align 4
  %55 = ptrtoint ptr %prev.i.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tmp_list.i, ptr %prev.i.i.i18.i, align 4
  %56 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call.i.i.i5.i, ptr %tmp_list.i, align 4
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %57 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %back.i.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tmp_list.i, align 4
  %cmp.not18.i.i = icmp eq ptr %62, %tmp_list.i
  br i1 %cmp.not18.i.i, label %if.then.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_mac_and_broadcast.exit

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %e.019.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %62, %if.then.i.for.body.i.i_crit_edge ]
  %63 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %tmp.0.i.i = load ptr, ptr %e.019.i.i, align 4
  %call.i.i.i25.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i.i) #3
  br i1 %call.i.i.i25.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i26.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i26.i, align 4
  %66 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %e.019.i.i, align 4
  %prev1.i.i.i.i27.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i27.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %70 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @devm_kfree(ptr noundef %dev.i, ptr noundef %e.019.i.i) #3
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %tmp_list.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

list_del.exit.i.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_mac_and_broadcast.exit

if.end.i:                                         ; preds = %if.end.i.i.i.i22.i, %if.end.i.i20.i.if.end.i_crit_edge
  %72 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %back.i.i, align 8
  %hw.i.i = getelementptr inbounds %struct.ice_pf, ptr %73, i32 0, i32 58
  %call.i.i = call i32 @ice_add_mac(ptr noundef %hw.i.i, ptr noundef nonnull %tmp_list.i) #3
  %74 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %back.i.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %78 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tmp_list.i, align 4
  %cmp.not18.i29.i = icmp eq ptr %79, %tmp_list.i
  br i1 %cmp.not18.i29.i, label %if.end.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge, label %if.end.i.for.body.i33.i_crit_edge

if.end.i.for.body.i33.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i33.i

if.end.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_mac_and_broadcast.exit

for.body.i33.i:                                   ; preds = %list_del.exit.i39.i.for.body.i33.i_crit_edge, %if.end.i.for.body.i33.i_crit_edge
  %e.019.i30.i = phi ptr [ %tmp.0.i31.i, %list_del.exit.i39.i.for.body.i33.i_crit_edge ], [ %79, %if.end.i.for.body.i33.i_crit_edge ]
  %80 = ptrtoint ptr %e.019.i30.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %tmp.0.i31.i = load ptr, ptr %e.019.i30.i, align 4
  %call.i.i.i32.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i30.i) #3
  br i1 %call.i.i.i32.i, label %if.end.i.i.i36.i, label %for.body.i33.i.list_del.exit.i39.i_crit_edge

for.body.i33.i.list_del.exit.i39.i_crit_edge:     ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i39.i

if.end.i.i.i36.i:                                 ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i34.i = getelementptr inbounds %struct.list_head, ptr %e.019.i30.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i34.i, align 4
  %83 = ptrtoint ptr %e.019.i30.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %e.019.i30.i, align 4
  %prev1.i.i.i.i35.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i35.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del.exit.i39.i

list_del.exit.i39.i:                              ; preds = %if.end.i.i.i36.i, %for.body.i33.i.list_del.exit.i39.i_crit_edge
  %87 = ptrtoint ptr %e.019.i30.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i30.i, align 4
  %prev.i.i37.i = getelementptr inbounds %struct.list_head, ptr %e.019.i30.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i37.i, align 4
  call void @devm_kfree(ptr noundef %dev7.i, ptr noundef %e.019.i30.i) #3
  %cmp.not.i38.i = icmp eq ptr %tmp.0.i31.i, %tmp_list.i
  br i1 %cmp.not.i38.i, label %list_del.exit.i39.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge, label %list_del.exit.i39.i.for.body.i33.i_crit_edge

list_del.exit.i39.i.for.body.i33.i_crit_edge:     ; preds = %list_del.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i33.i

list_del.exit.i39.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge: ; preds = %list_del.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_mac_and_broadcast.exit

ice_fltr_prepare_mac_and_broadcast.exit:          ; preds = %list_del.exit.i39.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge, %if.end.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge, %list_del.exit.i.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge, %if.then.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge ], [ %call.i.i, %if.end.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge ], [ -12, %list_del.exit.i.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge ], [ %call.i.i, %list_del.exit.i39.i.ice_fltr_prepare_mac_and_broadcast.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_remove_mac(ptr noundef %vsi, ptr nocapture noundef readonly %mac, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_fltr_prepare_mac(ptr noundef %vsi, ptr noundef %mac, i32 noundef %action, ptr noundef nonnull @ice_fltr_remove_mac_list)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_add_vlan(ptr nocapture noundef readonly %vsi, i16 noundef zeroext %vlan_id, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #3
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list.i, ptr %0, align 4
  %idx.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %3 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idx.i.i, align 2
  %back.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %5 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 48, i32 noundef 2848) #3
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.ice_fltr_prepare_vlan.exit_crit_edge, label %if.end.i.i.i

entry.ice_fltr_prepare_vlan.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_vlan.exit

if.end.i.i.i:                                     ; preds = %entry
  %fltr_info.i.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %fltr_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %fltr_info.i.i.i, align 4
  %info.sroa.5.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %action, ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.6.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.63.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %info.sroa.63.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %info.sroa.63.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.7.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.74.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %info.sroa.74.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %info.sroa.74.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.8.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %vlan_id, ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.9.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.95.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %info.sroa.95.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %4, ptr %info.sroa.95.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.10.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i, align 4
  %19 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call.i.i.i.i, ptr %call.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tmp_list.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %tmp_list.i, ptr noundef %22) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call.i.i.i.i, align 4
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tmp_list.i, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call.i.i.i.i, ptr %tmp_list.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %back.i.i, align 8
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %28, i32 0, i32 58
  %call.i = call i32 @ice_add_vlan(ptr noundef %hw.i, ptr noundef nonnull %tmp_list.i) #3
  %29 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %back.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tmp_list.i, align 4
  %cmp.not18.i.i = icmp eq ptr %34, %tmp_list.i
  br i1 %cmp.not18.i.i, label %if.end.i.ice_fltr_prepare_vlan.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.ice_fltr_prepare_vlan.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_vlan.exit

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %e.019.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %34, %if.end.i.for.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp.0.i.i = load ptr, ptr %e.019.i.i, align 4
  %call.i.i.i5.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i.i) #3
  br i1 %call.i.i.i5.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i6.i, align 4
  %38 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %e.019.i.i, align 4
  %prev1.i.i.i.i7.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i7.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %42 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @devm_kfree(ptr noundef %dev.i, ptr noundef %e.019.i.i) #3
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %tmp_list.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.ice_fltr_prepare_vlan.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

list_del.exit.i.i.ice_fltr_prepare_vlan.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_vlan.exit

ice_fltr_prepare_vlan.exit:                       ; preds = %list_del.exit.i.i.ice_fltr_prepare_vlan.exit_crit_edge, %if.end.i.ice_fltr_prepare_vlan.exit_crit_edge, %entry.ice_fltr_prepare_vlan.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.ice_fltr_prepare_vlan.exit_crit_edge ], [ %call.i, %if.end.i.ice_fltr_prepare_vlan.exit_crit_edge ], [ %call.i, %list_del.exit.i.i.ice_fltr_prepare_vlan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_remove_vlan(ptr nocapture noundef readonly %vsi, i16 noundef zeroext %vlan_id, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #3
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list.i, ptr %0, align 4
  %idx.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %3 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idx.i.i, align 2
  %back.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %5 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 48, i32 noundef 2848) #3
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.ice_fltr_prepare_vlan.exit_crit_edge, label %if.end.i.i.i

entry.ice_fltr_prepare_vlan.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_vlan.exit

if.end.i.i.i:                                     ; preds = %entry
  %fltr_info.i.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %fltr_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %fltr_info.i.i.i, align 4
  %info.sroa.5.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %action, ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.6.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.63.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %info.sroa.63.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %info.sroa.63.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.7.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.74.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %info.sroa.74.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %info.sroa.74.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.8.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %vlan_id, ptr %info.sroa.8.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.9.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.95.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %info.sroa.95.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %4, ptr %info.sroa.95.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.10.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i, align 4
  %19 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call.i.i.i.i, ptr %call.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tmp_list.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %tmp_list.i, ptr noundef %22) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call.i.i.i.i, align 4
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tmp_list.i, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call.i.i.i.i, ptr %tmp_list.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %back.i.i, align 8
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %28, i32 0, i32 58
  %call.i = call i32 @ice_remove_vlan(ptr noundef %hw.i, ptr noundef nonnull %tmp_list.i) #3
  %29 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %back.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tmp_list.i, align 4
  %cmp.not18.i.i = icmp eq ptr %34, %tmp_list.i
  br i1 %cmp.not18.i.i, label %if.end.i.ice_fltr_prepare_vlan.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.ice_fltr_prepare_vlan.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_vlan.exit

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %e.019.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %34, %if.end.i.for.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp.0.i.i = load ptr, ptr %e.019.i.i, align 4
  %call.i.i.i5.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i.i) #3
  br i1 %call.i.i.i5.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i6.i, align 4
  %38 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %e.019.i.i, align 4
  %prev1.i.i.i.i7.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i7.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %42 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @devm_kfree(ptr noundef %dev.i, ptr noundef %e.019.i.i) #3
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %tmp_list.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.ice_fltr_prepare_vlan.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

list_del.exit.i.i.ice_fltr_prepare_vlan.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_vlan.exit

ice_fltr_prepare_vlan.exit:                       ; preds = %list_del.exit.i.i.ice_fltr_prepare_vlan.exit_crit_edge, %if.end.i.ice_fltr_prepare_vlan.exit_crit_edge, %entry.ice_fltr_prepare_vlan.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.ice_fltr_prepare_vlan.exit_crit_edge ], [ %call.i, %if.end.i.ice_fltr_prepare_vlan.exit_crit_edge ], [ %call.i, %list_del.exit.i.i.ice_fltr_prepare_vlan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_add_eth(ptr nocapture noundef readonly %vsi, i16 noundef zeroext %ethertype, i16 noundef zeroext %flag, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #3
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list.i, ptr %0, align 4
  %idx.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %3 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idx.i.i, align 2
  %back.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %5 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 48, i32 noundef 2848) #3
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.ice_fltr_prepare_eth.exit_crit_edge, label %if.end.i.i.i

entry.ice_fltr_prepare_eth.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_eth.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %flag)
  %cmp.i.i = icmp eq i16 %flag, 2
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 3
  %fltr_info.i.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %fltr_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fltr_info.i.i.i, align 4
  %info.sroa.5.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %action, ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.6.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.67.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %info.sroa.67.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %flag, ptr %info.sroa.67.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.7.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.78.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %info.sroa.78.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i.i, ptr %info.sroa.78.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.9.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %ethertype, ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.10.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.109.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %info.sroa.109.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %4, ptr %info.sroa.109.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.11.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i.i, align 4
  %19 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call.i.i.i.i, ptr %call.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tmp_list.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %tmp_list.i, ptr noundef %22) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call.i.i.i.i, align 4
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tmp_list.i, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call.i.i.i.i, ptr %tmp_list.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %back.i.i, align 8
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %28, i32 0, i32 58
  %call.i = call i32 @ice_add_eth_mac(ptr noundef %hw.i, ptr noundef nonnull %tmp_list.i) #3
  %29 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %back.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tmp_list.i, align 4
  %cmp.not18.i.i = icmp eq ptr %34, %tmp_list.i
  br i1 %cmp.not18.i.i, label %if.end.i.ice_fltr_prepare_eth.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.ice_fltr_prepare_eth.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_eth.exit

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %e.019.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %34, %if.end.i.for.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp.0.i.i = load ptr, ptr %e.019.i.i, align 4
  %call.i.i.i5.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i.i) #3
  br i1 %call.i.i.i5.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i6.i, align 4
  %38 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %e.019.i.i, align 4
  %prev1.i.i.i.i7.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i7.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %42 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @devm_kfree(ptr noundef %dev.i, ptr noundef %e.019.i.i) #3
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %tmp_list.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.ice_fltr_prepare_eth.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

list_del.exit.i.i.ice_fltr_prepare_eth.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_eth.exit

ice_fltr_prepare_eth.exit:                        ; preds = %list_del.exit.i.i.ice_fltr_prepare_eth.exit_crit_edge, %if.end.i.ice_fltr_prepare_eth.exit_crit_edge, %entry.ice_fltr_prepare_eth.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.ice_fltr_prepare_eth.exit_crit_edge ], [ %call.i, %if.end.i.ice_fltr_prepare_eth.exit_crit_edge ], [ %call.i, %list_del.exit.i.i.ice_fltr_prepare_eth.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_fltr_remove_eth(ptr nocapture noundef readonly %vsi, i16 noundef zeroext %ethertype, i16 noundef zeroext %flag, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #3
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list.i, ptr %0, align 4
  %idx.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 19
  %3 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idx.i.i, align 2
  %back.i.i = getelementptr inbounds %struct.ice_vsi, ptr %vsi, i32 0, i32 2
  %5 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %back.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i.i, i32 noundef 48, i32 noundef 2848) #3
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.ice_fltr_prepare_eth.exit_crit_edge, label %if.end.i.i.i

entry.ice_fltr_prepare_eth.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_eth.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %flag)
  %cmp.i.i = icmp eq i16 %flag, 2
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 3
  %fltr_info.i.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %fltr_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fltr_info.i.i.i, align 4
  %info.sroa.5.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %action, ptr %info.sroa.5.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.6.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %info.sroa.6.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.67.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %info.sroa.67.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %flag, ptr %info.sroa.67.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.7.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %info.sroa.7.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.78.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %info.sroa.78.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.i.i, ptr %info.sroa.78.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.9.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %ethertype, ptr %info.sroa.9.0.fltr_info.i.sroa_idx.i.i, align 4
  %info.sroa.10.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %info.sroa.10.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.109.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %info.sroa.109.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %4, ptr %info.sroa.109.0.fltr_info.i.sroa_idx.i.i, align 2
  %info.sroa.11.0.fltr_info.i.sroa_idx.i.i = getelementptr inbounds %struct.ice_fltr_list_entry, ptr %call.i.i.i.i, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %info.sroa.11.0.fltr_info.i.sroa_idx.i.i, align 4
  %19 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call.i.i.i.i, ptr %call.i.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tmp_list.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %tmp_list.i, ptr noundef %22) #3
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call.i.i.i.i, align 4
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tmp_list.i, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call.i.i.i.i, ptr %tmp_list.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %back.i.i, align 8
  %hw.i = getelementptr inbounds %struct.ice_pf, ptr %28, i32 0, i32 58
  %call.i = call i32 @ice_remove_eth_mac(ptr noundef %hw.i, ptr noundef nonnull %tmp_list.i) #3
  %29 = ptrtoint ptr %back.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %back.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tmp_list.i, align 4
  %cmp.not18.i.i = icmp eq ptr %34, %tmp_list.i
  br i1 %cmp.not18.i.i, label %if.end.i.ice_fltr_prepare_eth.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.ice_fltr_prepare_eth.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_eth.exit

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %e.019.i.i = phi ptr [ %tmp.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %34, %if.end.i.for.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp.0.i.i = load ptr, ptr %e.019.i.i, align 4
  %call.i.i.i5.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i.i) #3
  br i1 %call.i.i.i5.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i.i6.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i6.i, align 4
  %38 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %e.019.i.i, align 4
  %prev1.i.i.i.i7.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i7.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %42 = ptrtoint ptr %e.019.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.019.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @devm_kfree(ptr noundef %dev.i, ptr noundef %e.019.i.i) #3
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %tmp_list.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.ice_fltr_prepare_eth.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

list_del.exit.i.i.ice_fltr_prepare_eth.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ice_fltr_prepare_eth.exit

ice_fltr_prepare_eth.exit:                        ; preds = %list_del.exit.i.i.ice_fltr_prepare_eth.exit_crit_edge, %if.end.i.ice_fltr_prepare_eth.exit_crit_edge, %entry.ice_fltr_prepare_eth.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.ice_fltr_prepare_eth.exit_crit_edge ], [ %call.i, %if.end.i.ice_fltr_prepare_eth.exit_crit_edge ], [ %call.i, %list_del.exit.i.i.ice_fltr_prepare_eth.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_remove_vlan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_eth_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_remove_eth_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!9 = !{ptr @ice_fltr_add_mac_list, ptr @ice_fltr_remove_mac_list}
