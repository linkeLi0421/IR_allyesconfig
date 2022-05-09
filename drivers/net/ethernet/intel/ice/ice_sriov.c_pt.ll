; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.202 }
%union.anon.202 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.ice_mbx_data = type { i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.203, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }

@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 16, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.1 = internal global [13 x i64] [i64 11, i64 16, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_send_msg_to_vf(ptr noundef %hw, i16 noundef zeroext %vfid, i32 noundef %v_opcode, i32 noundef %v_retval, ptr noundef %msg, i16 noundef zeroext %msglen, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 5
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2050) #7
  %conv = zext i16 %vfid to i32
  %4 = call i32 @llvm.bswap.i32(i32 %conv)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %2, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %v_opcode)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %v_retval)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %msglen)
  %tobool.not = icmp eq i16 %msglen, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %desc, align 4
  %12 = or i16 %11, 4
  store i16 %12, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mailboxq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32
  %call = call i32 @ice_sq_send_cmd(ptr noundef %hw, ptr noundef %mailboxq, ptr noundef nonnull %desc, ptr noundef %msg, i16 noundef zeroext %msglen, ptr noundef %cd) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_dflt_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_sq_send_cmd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ice_conv_link_speed_to_virtchnl(i1 noundef zeroext %adv_link_support, i16 noundef zeroext %link_speed) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %adv_link_support, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i16 %link_speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %link_speed, label %sw.default [
    i16 1, label %if.then.if.end_crit_edge
    i16 2, label %sw.bb1
    i16 4, label %sw.bb2
    i16 8, label %sw.bb3
    i16 16, label %sw.bb4
    i16 32, label %sw.bb5
    i16 64, label %sw.bb6
    i16 128, label %sw.bb7
    i16 256, label %sw.bb8
    i16 512, label %sw.bb9
    i16 1024, label %sw.bb10
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = zext i16 %link_speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %link_speed, label %sw.default18 [
    i16 1, label %if.else.if.end_crit_edge
    i16 2, label %if.else.if.end_crit_edge21
    i16 4, label %if.else.sw.bb13_crit_edge
    i16 8, label %if.else.sw.bb13_crit_edge22
    i16 16, label %if.else.sw.bb13_crit_edge23
    i16 32, label %sw.bb14
    i16 64, label %sw.bb15
    i16 128, label %sw.bb16
    i16 256, label %if.else.sw.bb17_crit_edge
    i16 512, label %if.else.sw.bb17_crit_edge24
    i16 1024, label %if.else.sw.bb17_crit_edge25
  ]

if.else.sw.bb17_crit_edge25:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

if.else.sw.bb17_crit_edge24:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

if.else.sw.bb17_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

if.else.sw.bb13_crit_edge23:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.else.sw.bb13_crit_edge22:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.else.sw.bb13_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

if.else.if.end_crit_edge21:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb13:                                          ; preds = %if.else.sw.bb13_crit_edge, %if.else.sw.bb13_crit_edge22, %if.else.sw.bb13_crit_edge23
  br label %if.end

sw.bb14:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb15:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb16:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb17:                                          ; preds = %if.else.sw.bb17_crit_edge, %if.else.sw.bb17_crit_edge24, %if.else.sw.bb17_crit_edge25
  br label %if.end

sw.default18:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sw.default18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %if.else.if.end_crit_edge, %if.else.if.end_crit_edge21, %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.then.if.end_crit_edge
  %speed.0 = phi i32 [ 0, %sw.default ], [ 100000, %sw.bb10 ], [ 50000, %sw.bb9 ], [ 40000, %sw.bb8 ], [ 25000, %sw.bb7 ], [ 20000, %sw.bb6 ], [ 10000, %sw.bb5 ], [ 5000, %sw.bb4 ], [ 2500, %sw.bb3 ], [ 1000, %sw.bb2 ], [ 100, %sw.bb1 ], [ 0, %sw.default18 ], [ 16, %sw.bb17 ], [ 64, %sw.bb16 ], [ 32, %sw.bb15 ], [ 8, %sw.bb14 ], [ 4, %sw.bb13 ], [ 10, %if.then.if.end_crit_edge ], [ 2, %if.else.if.end_crit_edge ], [ 2, %if.else.if.end_crit_edge21 ]
  ret i32 %speed.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ice_mbx_vf_state_handler(ptr noundef %hw, ptr noundef readonly %mbx_data, i16 noundef zeroext %vf_id, ptr noundef writeonly %is_malvf) local_unnamed_addr #5 align 64 {
entry:
  %new_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx_snapshot = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_state) #7
  %tobool.not = icmp eq ptr %is_malvf, null
  %tobool1.not = icmp eq ptr %mbx_data, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %is_malvf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_malvf, align 1
  %max_num_msgs_mbx = getelementptr inbounds %struct.ice_mbx_data, ptr %mbx_data, i32 0, i32 2
  %1 = ptrtoint ptr %max_num_msgs_mbx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %max_num_msgs_mbx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %2)
  %cmp = icmp ult i16 %2, 64
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %async_watermark_val = getelementptr inbounds %struct.ice_mbx_data, ptr %mbx_data, i32 0, i32 3
  %3 = ptrtoint ptr %async_watermark_val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %async_watermark_val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %4)
  %cmp6 = icmp ult i16 %4, 63
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %2)
  %cmp13 = icmp ugt i16 %4, %2
  %or.cond74 = select i1 %cmp6, i1 true, i1 %cmp13
  br i1 %or.cond74, label %if.end4.cleanup_crit_edge, label %if.end16

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %5 = ptrtoint ptr %mbx_snapshot to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbx_snapshot, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
    i32 2, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end16
  %tobool.not.i = icmp eq ptr %mbx_snapshot, null
  br i1 %tobool.not.i, label %sw.bb.ice_mbx_reset_snapshot.exit_crit_edge, label %lor.lhs.false.i

sw.bb.ice_mbx_reset_snapshot.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_mbx_reset_snapshot.exit

lor.lhs.false.i:                                  ; preds = %sw.bb
  %mbx_vf.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1
  %8 = ptrtoint ptr %mbx_vf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbx_vf.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ice_mbx_reset_snapshot.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ice_mbx_reset_snapshot.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_mbx_reset_snapshot.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vfcntr_len3.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1, i32 1
  %10 = ptrtoint ptr %vfcntr_len3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vfcntr_len3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i32 %11, 2
  %12 = call ptr @memset(ptr %9, i32 0, i32 %mul.i)
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %13 = call ptr @memset(ptr %mbx_snapshot, i32 0, i32 24)
  br label %ice_mbx_reset_snapshot.exit

ice_mbx_reset_snapshot.exit:                      ; preds = %if.end8.i, %lor.lhs.false.i.ice_mbx_reset_snapshot.exit_crit_edge, %sw.bb.ice_mbx_reset_snapshot.exit_crit_edge
  %num_pending_arq = getelementptr inbounds %struct.ice_mbx_data, ptr %mbx_data, i32 0, i32 1
  %14 = ptrtoint ptr %num_pending_arq to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_pending_arq, align 2
  %num_pending_arq17 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 5
  %16 = ptrtoint ptr %num_pending_arq17 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %num_pending_arq17, align 2
  %17 = ptrtoint ptr %mbx_data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mbx_data, align 2
  %num_msg_proc18 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 4
  %19 = ptrtoint ptr %num_msg_proc18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %num_msg_proc18, align 4
  %20 = ptrtoint ptr %max_num_msgs_mbx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %max_num_msgs_mbx, align 2
  %max_num_msgs_mbx20 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 6
  %22 = ptrtoint ptr %max_num_msgs_mbx20 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %max_num_msgs_mbx20, align 4
  %next_to_clean = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 6
  %23 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %next_to_clean, align 4
  %conv21 = zext i16 %24 to i32
  %25 = load i16, ptr %num_pending_arq, align 2
  %conv23 = zext i16 %25 to i32
  %add = add nuw nsw i32 %conv23, %conv21
  %and = and i32 %add, 1023
  %head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 1
  %26 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %head, align 4
  %27 = add i16 %24, 1023
  %28 = and i16 %27, 1023
  %and27 = zext i16 %28 to i32
  %tail = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 2
  %29 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and27, ptr %tail, align 4
  %num_iterations = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 3
  %30 = ptrtoint ptr %num_iterations to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and27, ptr %num_iterations, align 4
  %31 = ptrtoint ptr %async_watermark_val to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %async_watermark_val, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %32)
  %cmp33.not = icmp ult i16 %15, %32
  br i1 %cmp33.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %ice_mbx_reset_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %new_state, align 4
  %call = call fastcc i32 @ice_mbx_detect_malvf(ptr noundef %hw, i16 noundef zeroext %vf_id, ptr noundef nonnull %new_state, ptr noundef nonnull %is_malvf)
  br label %sw.epilog

if.else:                                          ; preds = %ice_mbx_reset_snapshot.exit
  %34 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %new_state, align 4
  %inc.i = add nuw nsw i32 %and27, 1
  %35 = ptrtoint ptr %num_iterations to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc.i, ptr %num_iterations, align 4
  %and.i = and i32 %inc.i, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and)
  %cmp.i = icmp eq i32 %and.i, %and
  br i1 %cmp.i, label %if.else.if.then.i_crit_edge, label %lor.lhs.false.i75

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i75:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %cmp2.not.i = icmp eq i16 %21, -1
  br i1 %cmp2.not.i, label %lor.lhs.false.i75.sw.epilog_crit_edge, label %land.lhs.true.i

lor.lhs.false.i75.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i75
  %inc4.i = add i16 %18, 1
  %36 = ptrtoint ptr %num_msg_proc18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %inc4.i, ptr %num_msg_proc18, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc4.i, i16 %21)
  %cmp8.not.i = icmp ult i16 %inc4.i, %21
  br i1 %cmp8.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  %37 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %new_state, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end16
  %38 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %new_state, align 4
  %num_iterations1.i77 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 3
  %39 = ptrtoint ptr %num_iterations1.i77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_iterations1.i77, align 4
  %inc.i78 = add i32 %40, 1
  store i32 %inc.i78, ptr %num_iterations1.i77, align 4
  %and.i79 = and i32 %inc.i78, 1023
  %head.i80 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 1
  %41 = ptrtoint ptr %head.i80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %head.i80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i79, i32 %42)
  %cmp.i81 = icmp eq i32 %and.i79, %42
  br i1 %cmp.i81, label %sw.bb37.if.then.i89_crit_edge, label %lor.lhs.false.i84

sw.bb37.if.then.i89_crit_edge:                    ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i89

lor.lhs.false.i84:                                ; preds = %sw.bb37
  %max_num_msgs_mbx.i82 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 6
  %43 = ptrtoint ptr %max_num_msgs_mbx.i82 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %max_num_msgs_mbx.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %44)
  %cmp2.not.i83 = icmp eq i16 %44, -1
  br i1 %cmp2.not.i83, label %lor.lhs.false.i84.sw.epilog_crit_edge, label %land.lhs.true.i88

lor.lhs.false.i84.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i88:                                ; preds = %lor.lhs.false.i84
  %num_msg_proc.i85 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 4
  %45 = ptrtoint ptr %num_msg_proc.i85 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_msg_proc.i85, align 4
  %inc4.i86 = add i16 %46, 1
  store i16 %inc4.i86, ptr %num_msg_proc.i85, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc4.i86, i16 %44)
  %cmp8.not.i87 = icmp ult i16 %inc4.i86, %44
  br i1 %cmp8.not.i87, label %land.lhs.true.i88.sw.epilog_crit_edge, label %land.lhs.true.i88.if.then.i89_crit_edge

land.lhs.true.i88.if.then.i89_crit_edge:          ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i89

land.lhs.true.i88.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i89:                                      ; preds = %land.lhs.true.i88.if.then.i89_crit_edge, %sw.bb37.if.then.i89_crit_edge
  %47 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %new_state, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end16
  %48 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %new_state, align 4
  %conv.i = zext i16 %vf_id to i32
  %vfcntr_len.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1, i32 1
  %49 = ptrtoint ptr %vfcntr_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vfcntr_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %50, %conv.i
  br i1 %cmp.not.i, label %if.end.i94, label %sw.bb38.sw.epilog_crit_edge

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i94:                                       ; preds = %sw.bb38
  %mbx_vf.i92 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1
  %51 = ptrtoint ptr %mbx_vf.i92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mbx_vf.i92, align 4
  %arrayidx.i = getelementptr i32, ptr %52, i32 %conv.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %inc.i93 = add i32 %54, 1
  store i32 %inc.i93, ptr %arrayidx.i, align 4
  %55 = load ptr, ptr %mbx_vf.i92, align 4
  %arrayidx6.i = getelementptr i32, ptr %55, i32 %conv.i
  %56 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %57)
  %cmp7.i = icmp ugt i32 %57, 62
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i94.if.end10.i_crit_edge

if.end.i94.if.end10.i_crit_edge:                  ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %is_malvf to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %is_malvf, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i94.if.end10.i_crit_edge
  %num_iterations1.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 3
  %59 = ptrtoint ptr %num_iterations1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_iterations1.i.i, align 4
  %inc.i.i = add i32 %60, 1
  store i32 %inc.i.i, ptr %num_iterations1.i.i, align 4
  %and.i.i = and i32 %inc.i.i, 1023
  %head.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 1
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %62)
  %cmp.i.i = icmp eq i32 %and.i.i, %62
  br i1 %cmp.i.i, label %if.end10.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.end10.i.if.then.i.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end10.i
  %max_num_msgs_mbx.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 6
  %63 = ptrtoint ptr %max_num_msgs_mbx.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %max_num_msgs_mbx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %cmp2.not.i.i = icmp eq i16 %64, -1
  br i1 %cmp2.not.i.i, label %lor.lhs.false.i.i.sw.epilog_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %num_msg_proc.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 4
  %65 = ptrtoint ptr %num_msg_proc.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num_msg_proc.i.i, align 4
  %inc4.i.i = add i16 %66, 1
  store i16 %inc4.i.i, ptr %num_msg_proc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc4.i.i, i16 %64)
  %cmp8.not.i.i = icmp ult i16 %inc4.i.i, %64
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.sw.epilog_crit_edge, label %land.lhs.true.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

land.lhs.true.i.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %land.lhs.true.i.i.if.then.i.i_crit_edge, %if.end10.i.if.then.i.i_crit_edge
  %67 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %new_state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %new_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.i.i, %land.lhs.true.i.i.sw.epilog_crit_edge, %lor.lhs.false.i.i.sw.epilog_crit_edge, %sw.bb38.sw.epilog_crit_edge, %if.then.i89, %land.lhs.true.i88.sw.epilog_crit_edge, %lor.lhs.false.i84.sw.epilog_crit_edge, %if.then.i, %land.lhs.true.i.sw.epilog_crit_edge, %lor.lhs.false.i75.sw.epilog_crit_edge, %if.then35
  %status.0 = phi i32 [ -5, %sw.default ], [ %call, %if.then35 ], [ 0, %lor.lhs.false.i75.sw.epilog_crit_edge ], [ 0, %land.lhs.true.i.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %lor.lhs.false.i84.sw.epilog_crit_edge ], [ 0, %land.lhs.true.i88.sw.epilog_crit_edge ], [ 0, %if.then.i89 ], [ -5, %sw.bb38.sw.epilog_crit_edge ], [ 0, %lor.lhs.false.i.i.sw.epilog_crit_edge ], [ 0, %land.lhs.true.i.i.sw.epilog_crit_edge ], [ 0, %if.then.i.i ]
  %69 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %new_state, align 4
  %71 = ptrtoint ptr %mbx_snapshot to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %mbx_snapshot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_state) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ice_mbx_detect_malvf(ptr nocapture noundef %hw, i16 noundef zeroext %vf_id, ptr nocapture noundef writeonly %new_state, ptr nocapture noundef writeonly %is_malvf) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vf_id to i32
  %vfcntr_len = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1, i32 1
  %0 = ptrtoint ptr %vfcntr_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfcntr_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ugt i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbx_vf = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1
  %2 = ptrtoint ptr %mbx_vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbx_vf, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  %6 = load ptr, ptr %mbx_vf, align 4
  %arrayidx6 = getelementptr i32, ptr %6, i32 %conv
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %8)
  %cmp7 = icmp ugt i32 %8, 62
  br i1 %cmp7, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %is_malvf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_malvf, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %num_iterations1.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 3
  %10 = ptrtoint ptr %num_iterations1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_iterations1.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %num_iterations1.i, align 4
  %and.i = and i32 %inc.i, 1023
  %head.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 1
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %13)
  %cmp.i = icmp eq i32 %and.i, %13
  br i1 %cmp.i, label %if.end10.if.then.i_crit_edge, label %lor.lhs.false.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end10
  %max_num_msgs_mbx.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 6
  %14 = ptrtoint ptr %max_num_msgs_mbx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_num_msgs_mbx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp2.not.i = icmp eq i16 %15, -1
  br i1 %cmp2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %num_msg_proc.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 0, i32 4
  %16 = ptrtoint ptr %num_msg_proc.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_msg_proc.i, align 4
  %inc4.i = add i16 %17, 1
  store i16 %inc4.i, ptr %num_msg_proc.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc4.i, i16 %15)
  %cmp8.not.i = icmp ult i16 %inc4.i, %15
  br i1 %cmp8.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge
  %18 = ptrtoint ptr %new_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %new_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_mbx_report_malvf(ptr nocapture noundef readonly %hw, ptr noundef %all_malvfs, i16 noundef zeroext %bitmap_len, i16 noundef zeroext %vf_id, ptr noundef writeonly %report_malvf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %all_malvfs, null
  %tobool1.not = icmp eq ptr %report_malvf, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %report_malvf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %report_malvf, align 1
  %conv = zext i16 %bitmap_len to i32
  %vfcntr_len = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1, i32 1
  %1 = ptrtoint ptr %vfcntr_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vfcntr_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp = icmp ugt i32 %2, %conv
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp2(i16 %vf_id, i16 %bitmap_len)
  %cmp7.not = icmp ult i16 %vf_id, %bitmap_len
  br i1 %cmp7.not, label %if.end10, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end10:                                         ; preds = %if.end4
  %conv5 = zext i16 %vf_id to i32
  %call = tail call i32 @_test_and_set_bit(i32 noundef %conv5, ptr noundef nonnull %all_malvfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.return_crit_edge

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %report_malvf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %report_malvf, align 1
  br label %return

return:                                           ; preds = %if.then13, %if.end10.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -5, %if.end4.return_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end10.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_mbx_clear_malvf(ptr noundef readonly %snap, ptr noundef %all_malvfs, i16 noundef zeroext %bitmap_len, i16 noundef zeroext %vf_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %snap, null
  %tobool1.not = icmp eq ptr %all_malvfs, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i16 %bitmap_len to i32
  %mbx_vf = getelementptr inbounds %struct.ice_mbx_snapshot, ptr %snap, i32 0, i32 1
  %vfcntr_len = getelementptr inbounds %struct.ice_mbx_snapshot, ptr %snap, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %vfcntr_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfcntr_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ugt i32 %1, %conv
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  %conv5 = zext i16 %vf_id to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %vf_id, i16 %bitmap_len)
  %cmp7.not = icmp ult i16 %vf_id, %bitmap_len
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv5)
  %cmp13.not = icmp ugt i32 %1, %conv5
  %or.cond27 = select i1 %cmp7.not, i1 %cmp13.not, i1 false
  br i1 %or.cond27, label %if.end16, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end16:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %conv5, ptr noundef nonnull %all_malvfs) #7
  %2 = ptrtoint ptr %mbx_vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbx_vf, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %conv5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -5, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_mbx_init_snapshot(ptr nocapture noundef %hw, i16 noundef zeroext %vf_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx_snapshot = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vf_count)
  %tobool.not = icmp eq i16 %vf_count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %vf_count to i32
  %num_allocd_vfs = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %num_allocd_vfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_allocd_vfs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ult i32 %1, %conv
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %devm_kcalloc.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %lor.lhs.false
  %2 = shl nuw nsw i32 %conv, 2
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %2, i32 noundef 3520) #7
  %mbx_vf = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1
  %5 = ptrtoint ptr %mbx_vf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %mbx_vf, align 4
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end7

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vfcntr_len = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1, i32 1
  %6 = ptrtoint ptr %vfcntr_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %vfcntr_len, align 4
  %7 = call ptr @memset(ptr %mbx_snapshot, i32 0, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %devm_kcalloc.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_mbx_deinit_snapshot(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx_snapshot = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %mbx_vf = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1
  %2 = ptrtoint ptr %mbx_vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbx_vf, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %3) #7
  %vfcntr_len = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 72, i32 1, i32 1
  %4 = ptrtoint ptr %vfcntr_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vfcntr_len, align 4
  %5 = call ptr @memset(ptr %mbx_snapshot, i32 0, i32 24)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

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
