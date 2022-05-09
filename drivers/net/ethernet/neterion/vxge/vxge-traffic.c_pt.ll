; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/neterion/vxge/vxge-traffic.c_pt.bc'
source_filename = "../drivers/net/ethernet/neterion/vxge/vxge-traffic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.__vxge_hw_vpath_handle = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.__vxge_hw_virtualpath = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, [48 x i8], ptr, [124 x i8], ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.spinlock, [56 x i8] }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vxge_hw_vpath_reg = type { [768 x i8], i64, [1784 x i8], i64, i64, [32 x i8], i64, i64, i64, i64, [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [320 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i8], i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, i64, [80 x i8], i64, i64, i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, [40 x i8], i64, i64, i64, i64, [608 x i8], [4 x i64], [4 x i64], [4 x i64], i64, i64, i64, i64, i64, i64, [112 x i8], i64, i64, i64, i64, i64, i64, i64, [72 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [376 x i8], i64, [120 x i8], i64, [120 x i8], i64, [72 x i8], i64, i64, [16 x i8], i64, [2312 x i8], i64, i64, [16 x i8], i64, i64, i64, [104 x i8], i64, i64, [336 x i8], i64, i64, i64, i64, i64, i64, i64, [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [104 x i8], i64, i64, i64, i64, i64, [40 x i8], i64, [160 x i8], i64, i64, i64, [8 x i8], i64, [64 x i8], i64, i64, [8 x i8], i64, i64, i64, i64, i64, [8 x i8], i64, i64, i64, [56 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [752 x i8] }
%struct.__vxge_hw_device = type { i32, ptr, ptr, ptr, %struct.vxge_hw_device_config, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, [17 x ptr], [17 x ptr], [17 x ptr], ptr, ptr, [40 x i8], [17 x %struct.__vxge_hw_virtualpath], i64, i64, i32, [4 x i64], [4 x i32], %struct.__vxge_hw_blockpool, %struct.vxge_hw_device_stats, i32, i32, i32, i32, [8 x i16], [56 x i8] }
%struct.vxge_hw_device_config = type { i32, i32, i32, i8, [17 x %struct.vxge_hw_vp_config] }
%struct.vxge_hw_vp_config = type { i32, i32, %struct.vxge_hw_ring_config, %struct.vxge_hw_fifo_config, %struct.vxge_hw_tim_intr_config, %struct.vxge_hw_tim_intr_config, i32, i32 }
%struct.vxge_hw_ring_config = type { i32, i32, i32, i32, i64 }
%struct.vxge_hw_fifo_config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vxge_hw_tim_intr_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__vxge_hw_blockpool = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head }
%struct.vxge_hw_device_stats = type { ptr, %struct.vxge_hw_device_stats_hw_info, %struct.vxge_hw_device_stats_sw_err, %struct.vxge_hw_device_stats_sw_info }
%struct.vxge_hw_device_stats_hw_info = type <{ [17 x ptr], [17 x %struct.vxge_hw_vpath_stats_hw_info] }>
%struct.vxge_hw_vpath_stats_hw_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vxge_hw_xmac_vpath_tx_stats, %struct.vxge_hw_xmac_vpath_rx_stats, i64, i32, i32, i32, i32, i16, [6 x i8], i32, i32, i16, [6 x i8], i16, i16, i16, i16, i64, i64, i64 }
%struct.vxge_hw_xmac_vpath_tx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64 }
%struct.vxge_hw_xmac_vpath_rx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64 }
%struct.vxge_hw_device_stats_sw_err = type { i32 }
%struct.vxge_hw_device_stats_sw_info = type { i32, i32, i32, i32, [17 x %struct.vxge_hw_vpath_stats_sw_info] }
%struct.vxge_hw_vpath_stats_sw_info = type { i32, %struct.vxge_hw_vpath_stats_sw_err, %struct.vxge_hw_vpath_stats_sw_ring_info, %struct.vxge_hw_vpath_stats_sw_fifo_info }
%struct.vxge_hw_vpath_stats_sw_err = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vxge_hw_vpath_stats_sw_ring_info = type { %struct.vxge_hw_vpath_stats_sw_common_info, [16 x i32] }
%struct.vxge_hw_vpath_stats_sw_common_info = type { i32, i32, i32, i32, i32 }
%struct.vxge_hw_vpath_stats_sw_fifo_info = type { %struct.vxge_hw_vpath_stats_sw_common_info, i32, i32, [16 x i32] }
%struct.__vxge_hw_fifo = type { %struct.__vxge_hw_channel, ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, ptr, [48 x i8], ptr, [124 x i8] }
%struct.__vxge_hw_channel = type { %struct.list_head, i32, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [84 x i8], i32, [124 x i8], i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, [92 x i8] }
%struct.__vxge_hw_ring = type { %struct.__vxge_hw_channel, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, ptr, ptr, ptr, [28 x i8], ptr, ptr, [120 x i8] }
%struct.vxge_hw_common_reg = type { [2560 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, [184 x i8], i64, i64, [112 x i8], i64, i64, i64, i64, i64, i64, [80 x i8], i64, i64, i64, i64, i64, [216 x i8], i64, i64, i64, i64, i64, [24 x i8], i64, i64, [88 x i8], [4 x i64], [4 x i64], i64, i64, [4 x i64], [4 x i64], [4 x i64], i64, i64, [8 x i8], i64, [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, [16 x i8], i64, i64, i64, i64, [208 x i8], i64, [184 x i8], i64, [56 x i8], i64, [56 x i8], i64, i64, i64, i64, [8 x i8], i64, i64, [200 x i8], i64, i64, i64, i64, i64, i64, i64 }
%struct.vxge_hw_uld_cbs = type { ptr, ptr, ptr }
%struct.vxge_hw_ring_rxd_1 = type { i64, i64, i64, i64 }
%struct.vxge_hw_fifo_txd = type { i64, i64, i64, i64 }
%struct.__vxge_hw_fifo_txdl_priv = type { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.__vxge_hw_non_offload_db_wrapper = type { i64, i64 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 14]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_intr_enable(ptr noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %vp_open = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end4:                                          ; preds = %if.end
  %vp_reg5 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vp_reg5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_reg5, align 16
  %kdfcctl_errors_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kdfcctl_errors_reg, i32 -1) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %kdfcctl_errors_reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #9, !srcloc !10
  %general_errors_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i40 = getelementptr i8, ptr %general_errors_reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 -1) #9, !srcloc !10
  %pci_config_errors_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i41 = getelementptr i8, ptr %pci_config_errors_reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 -1) #9, !srcloc !10
  %mrpcim_to_vpath_alarm_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i42 = getelementptr i8, ptr %mrpcim_to_vpath_alarm_reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 -1) #9, !srcloc !10
  %srpcim_to_vpath_alarm_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i43 = getelementptr i8, ptr %srpcim_to_vpath_alarm_reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 -1) #9, !srcloc !10
  %vpath_ppif_int_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i44 = getelementptr i8, ptr %vpath_ppif_int_status, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 -1) #9, !srcloc !10
  %srpcim_msg_to_vpath_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i45 = getelementptr i8, ptr %srpcim_msg_to_vpath_reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 -1) #9, !srcloc !10
  %vpath_pcipif_int_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i46 = getelementptr i8, ptr %vpath_pcipif_int_status, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 -1) #9, !srcloc !10
  %prc_alarm_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i47 = getelementptr i8, ptr %prc_alarm_reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 -1) #9, !srcloc !10
  %wrdma_alarm_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i48 = getelementptr i8, ptr %wrdma_alarm_status, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 -1) #9, !srcloc !10
  %asic_ntwk_vp_err_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i49 = getelementptr i8, ptr %asic_ntwk_vp_err_reg, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 -1) #9, !srcloc !10
  %xgmac_vp_int_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i50 = getelementptr i8, ptr %xgmac_vp_int_status, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 -1) #9, !srcloc !10
  %vpath_general_int_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_general_int_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i51 = getelementptr i32, ptr %vpath_general_int_status, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %vpath_pcipif_int_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i52 = getelementptr i8, ptr %vpath_pcipif_int_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 -1) #9, !srcloc !10
  %srpcim_msg_to_vpath_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i53 = getelementptr i8, ptr %srpcim_msg_to_vpath_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 -1) #9, !srcloc !10
  %srpcim_to_vpath_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i54 = getelementptr i8, ptr %srpcim_to_vpath_alarm_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 -1) #9, !srcloc !10
  %mrpcim_to_vpath_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i55 = getelementptr i8, ptr %mrpcim_to_vpath_alarm_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 -1) #9, !srcloc !10
  %pci_config_errors_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i56 = getelementptr i8, ptr %pci_config_errors_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 -1) #9, !srcloc !10
  %general_errors_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %general_errors_mask, i32 1052929) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %add.ptr.i57 = getelementptr i8, ptr %general_errors_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 0) #9, !srcloc !10
  %kdfcctl_errors_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i58 = getelementptr i8, ptr %kdfcctl_errors_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 1118209) #9, !srcloc !10
  %vpath_ppif_int_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i59 = getelementptr i8, ptr %vpath_ppif_int_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 0) #9, !srcloc !10
  %prc_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i60 = getelementptr i8, ptr %prc_alarm_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 128) #9, !srcloc !10
  %wrdma_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i61 = getelementptr i8, ptr %wrdma_alarm_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #9, !srcloc !10
  %xgmac_vp_int_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i62 = getelementptr i8, ptr %xgmac_vp_int_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 0) #9, !srcloc !10
  %hldev = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hldev, align 8
  %first_vp_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %first_vp_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first_vp_id, align 16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6.not = icmp eq i32 %11, %13
  %asic_ntwk_vp_err_mask8 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %add.ptr.i64 = getelementptr i8, ptr %asic_ntwk_vp_err_mask8, i32 4
  br i1 %cmp6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 -1) #9, !srcloc !10
  br label %if.end9

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 1114112) #9, !srcloc !10
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %vpath_general_int_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i65 = getelementptr i8, ptr %vpath_general_int_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 0) #9, !srcloc !10
  br label %exit

exit:                                             ; preds = %if.end9, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end9 ], [ 201, %entry.exit_crit_edge ], [ 204, %if.end.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lo_hi_writeq(i64 noundef %val, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %conv = trunc i64 %val to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr = lshr i64 %val, 32
  %conv3 = trunc i64 %shr to i32
  %1 = tail call i32 @llvm.bswap.i32(i32 %conv3)
  %add.ptr = getelementptr i8, ptr %addr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #9, !srcloc !10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_intr_disable(ptr noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %vp_open = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vp_open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vp_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vp_reg5 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vp_reg5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_reg5, align 16
  %vpath_general_int_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %vpath_general_int_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #9, !srcloc !10
  %kdfcctl_errors_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %kdfcctl_errors_mask, i32 -1) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %add.ptr.i20 = getelementptr i8, ptr %kdfcctl_errors_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 -1) #9, !srcloc !10
  %general_errors_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i21 = getelementptr i8, ptr %general_errors_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 -1) #9, !srcloc !10
  %pci_config_errors_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i22 = getelementptr i8, ptr %pci_config_errors_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 -1) #9, !srcloc !10
  %mrpcim_to_vpath_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i23 = getelementptr i8, ptr %mrpcim_to_vpath_alarm_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 -1) #9, !srcloc !10
  %srpcim_to_vpath_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i24 = getelementptr i8, ptr %srpcim_to_vpath_alarm_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 -1) #9, !srcloc !10
  %vpath_ppif_int_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i25 = getelementptr i8, ptr %vpath_ppif_int_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 -1) #9, !srcloc !10
  %srpcim_msg_to_vpath_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i26 = getelementptr i8, ptr %srpcim_msg_to_vpath_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 -1) #9, !srcloc !10
  %vpath_pcipif_int_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i27 = getelementptr i8, ptr %vpath_pcipif_int_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 -1) #9, !srcloc !10
  %wrdma_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i28 = getelementptr i8, ptr %wrdma_alarm_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 -1) #9, !srcloc !10
  %prc_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i29 = getelementptr i8, ptr %prc_alarm_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 -1) #9, !srcloc !10
  %xgmac_vp_int_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i30 = getelementptr i8, ptr %xgmac_vp_int_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 -1) #9, !srcloc !10
  %asic_ntwk_vp_err_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i31 = getelementptr i8, ptr %asic_ntwk_vp_err_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 -1) #9, !srcloc !10
  br label %exit

exit:                                             ; preds = %if.end4, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end4 ], [ 201, %entry.exit_crit_edge ], [ 204, %if.end.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_tti_ci_set(ptr nocapture noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 2
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %timer_ci_en = getelementptr i8, ptr %1, i32 40
  %4 = ptrtoint ptr %timer_ci_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timer_ci_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4.not = icmp eq i32 %5, 1
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vp_reg2 = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 3
  %6 = ptrtoint ptr %vp_reg2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vp_reg2, align 8
  %8 = ptrtoint ptr %timer_ci_en to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %timer_ci_en, align 4
  %tim_cfg1_int_num = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %7, i32 0, i32 63
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tim_cfg1_int_num) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %tim_cfg1_int_num, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %11 = zext i32 %10 to i64
  %12 = zext i32 %9 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %15 = or i64 %14, 4294967296
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %tim_tti_cfg1_saved = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 14
  %17 = ptrtoint ptr %tim_tti_cfg1_saved to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %tim_tti_cfg1_saved, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_cfg1_int_num, i32 %19) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %16, 32
  %conv3.i = trunc i64 %shr.i to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #9, !srcloc !10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_dynamic_rti_ci_set(ptr nocapture noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tim_rti_cfg1_saved = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 17
  %0 = ptrtoint ptr %tim_rti_cfg1_saved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tim_rti_cfg1_saved, align 8
  %or = or i64 %1, 16777216
  store i64 %or, ptr %tim_rti_cfg1_saved, align 8
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp_reg, align 4
  %arrayidx = getelementptr %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 63, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %or to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %1, 32
  %conv3.i = trunc i64 %shr.i to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_dynamic_tti_rtimer_set(ptr nocapture noundef readonly %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tim_tti_cfg3_saved = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 15
  %0 = ptrtoint ptr %tim_tti_cfg3_saved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tim_tti_cfg3_saved, align 64
  %rtimer = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 13
  %2 = ptrtoint ptr %rtimer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtimer, align 4
  %mul = mul i32 %3, 1000
  %and = and i64 %1, -288230371856744449
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %mul)
  %4 = icmp ult i32 %mul, 272
  %extract9 = lshr i64 %and, 32
  %extract.t10 = trunc i64 %extract9 to i32
  br i1 %4, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %mul, 272
  %conv = zext i32 %div to i64
  %shl = shl nuw nsw i64 %conv, 32
  %or = or i64 %shl, %and
  %or1 = lshr i64 %or, 32
  %5 = trunc i64 %or1 to i32
  %extract.t8 = or i32 %5, 671088640
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val64.0.off32 = phi i32 [ %extract.t8, %if.then ], [ %extract.t10, %entry.if.end_crit_edge ]
  %extract.t7 = trunc i64 %1 to i32
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 3
  %6 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vp_reg, align 8
  %tim_cfg3_int_num = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %7, i32 0, i32 65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %extract.t7) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_cfg3_int_num, i32 %8) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %val64.0.off32) #9
  %add.ptr.i = getelementptr i8, ptr %tim_cfg3_int_num, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_dynamic_rti_rtimer_set(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tim_rti_cfg3_saved = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 18
  %0 = ptrtoint ptr %tim_rti_cfg3_saved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tim_rti_cfg3_saved, align 16
  %rtimer = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %rtimer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtimer, align 64
  %mul = mul i32 %3, 1000
  %and = and i64 %1, -288230371856744449
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %mul)
  %4 = icmp ult i32 %mul, 272
  %extract9 = lshr i64 %and, 32
  %extract.t10 = trunc i64 %extract9 to i32
  br i1 %4, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %mul, 272
  %conv = zext i32 %div to i64
  %shl = shl nuw nsw i64 %conv, 32
  %or = or i64 %shl, %and
  %or1 = lshr i64 %or, 32
  %5 = trunc i64 %or1 to i32
  %extract.t8 = or i32 %5, 536870912
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val64.0.off32 = phi i32 [ %extract.t8, %if.then ], [ %extract.t10, %entry.if.end_crit_edge ]
  %extract.t7 = trunc i64 %1 to i32
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 2
  %6 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vp_reg, align 4
  %arrayidx = getelementptr %struct.vxge_hw_vpath_reg, ptr %7, i32 0, i32 65, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %extract.t7) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %8) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %val64.0.off32) #9
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_channel_msix_mask(ptr nocapture noundef readonly %channel, i32 noundef %msix_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %msix_id, 2
  %sh_prom = zext i32 %shr to i64
  %shr1 = lshr i64 -9223372036854775808, %sh_prom
  %shr2 = lshr i64 %shr1, 32
  %conv = trunc i64 %shr2 to i32
  %common_reg = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 19
  %0 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_reg, align 8
  %rem = srem i32 %msix_id, 4
  %arrayidx = getelementptr %struct.vxge_hw_common_reg, ptr %1, i32 0, i32 37, i32 %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_channel_msix_unmask(ptr nocapture noundef readonly %channel, i32 noundef %msix_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %msix_id, 2
  %sh_prom = zext i32 %shr to i64
  %shr1 = lshr i64 -9223372036854775808, %sh_prom
  %shr2 = lshr i64 %shr1, 32
  %conv = trunc i64 %shr2 to i32
  %common_reg = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 19
  %0 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_reg, align 8
  %rem = srem i32 %msix_id, 4
  %arrayidx = getelementptr %struct.vxge_hw_common_reg, ptr %1, i32 0, i32 36, i32 %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_channel_msix_clear(ptr nocapture noundef readonly %channel, i32 noundef %msix_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %msix_id, 2
  %sh_prom = zext i32 %shr to i64
  %shr1 = lshr i64 -9223372036854775808, %sh_prom
  %shr2 = lshr i64 %shr1, 32
  %conv = trunc i64 %shr2 to i32
  %common_reg = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 19
  %0 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_reg, align 8
  %rem = srem i32 %msix_id, 4
  %arrayidx = getelementptr %struct.vxge_hw_common_reg, ptr %1, i32 0, i32 42, i32 %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_device_set_intr_type(ptr nocapture noundef %hldev, i32 noundef %intr_mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %intr_mode)
  %switch.selectcmp = icmp eq i32 %intr_mode, 1
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %intr_mode)
  %switch.selectcmp13 = icmp eq i32 %intr_mode, 2
  %switch.select14 = select i1 %switch.selectcmp13, i32 2, i32 %switch.select
  %intr_mode6 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4, i32 3
  %0 = trunc i32 %switch.select14 to i8
  %1 = ptrtoint ptr %intr_mode6 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %intr_mode6, align 4
  %bf.shl = shl nuw i8 %0, 6
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %intr_mode6, align 4
  ret i32 %switch.select14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_device_intr_enable(ptr nocapture noundef readonly %hldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %0 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_reg.i, align 4
  %titan_mask_all_int.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %1, i32 0, i32 46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i = getelementptr i8, ptr %titan_mask_all_int.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 257) #9, !srcloc !10
  %vpaths_deployed = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vpaths_deployed, align 8
  %sh_prom = zext i32 %i.056 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and = and i64 %3, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %vpath_handles = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.056, i32 19
  %4 = ptrtoint ptr %vpath_handles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpath_handles, align 4
  %call = tail call i32 @vxge_hw_vpath_intr_enable(ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %intr_mode = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %cmp1 = icmp ult i8 %bf.load, 64
  br i1 %cmp1, label %if.then2, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then2:                                         ; preds = %for.end
  %tim_int_mask0 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 24
  %7 = ptrtoint ptr %tim_int_mask0 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tim_int_mask0, align 8
  %arrayidx5 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx5, align 8
  %or = or i64 %10, %8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp6.not = icmp eq i64 %or, 0
  br i1 %cmp6.not, label %if.then2.if.end10_crit_edge, label %if.then7

if.then2.if.end10_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common_reg.i, align 4
  %tim_int_status0 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %12, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %or to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_int_status0, i32 %13) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %or, 32
  %conv3.i = trunc i64 %shr.i to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i = getelementptr i8, ptr %tim_int_status0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #9, !srcloc !10
  %neg = xor i64 %or, -1
  %15 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common_reg.i, align 4
  %tim_int_mask09 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %16, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %conv.i45 = trunc i64 %neg to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv.i45) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_int_mask09, i32 %17) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i46 = lshr i64 %neg, 32
  %conv3.i47 = trunc i64 %shr.i46 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv3.i47) #9
  %add.ptr.i48 = getelementptr i8, ptr %tim_int_mask09, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %18) #9, !srcloc !10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then2.if.end10_crit_edge
  %tim_int_mask1 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 25
  %19 = ptrtoint ptr %tim_int_mask1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tim_int_mask1, align 8
  %arrayidx13 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 25, i32 1
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13, align 4
  %or14 = or i32 %22, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or14)
  %cmp15.not = icmp eq i32 %or14, 0
  br i1 %cmp15.not, label %if.end10.if.end22_crit_edge, label %if.then16

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common_reg.i, align 4
  %tim_int_status1 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %24, i32 0, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or14) #9
  %add.ptr.i49 = getelementptr i8, ptr %tim_int_status1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %25) #9, !srcloc !10
  %neg18 = xor i32 %or14, -1
  %26 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common_reg.i, align 4
  %tim_int_mask120 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %27, i32 0, i32 51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %neg18) #9
  %add.ptr.i50 = getelementptr i8, ptr %tim_int_mask120, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %28) #9, !srcloc !10
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end10.if.end22_crit_edge, %for.end.if.end22_crit_edge
  %29 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %common_reg.i, align 4
  %titan_general_int_status = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %30, i32 0, i32 44
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %titan_general_int_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i51 = getelementptr i32, ptr %titan_general_int_status, i32 1
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %33 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %cmp.i = icmp ult i8 %bf.load.i, 64
  %conv.i52 = select i1 %cmp.i, i32 256, i32 0
  %34 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %common_reg.i, align 4
  %titan_mask_all_int.i54 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %35, i32 0, i32 46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i55 = getelementptr i8, ptr %titan_mask_all_int.i54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 %conv.i52) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_device_mask_all(ptr nocapture noundef readonly %hldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %0 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_reg, align 4
  %titan_mask_all_int = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %1, i32 0, i32 46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %titan_mask_all_int, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 257) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_device_unmask_all(ptr nocapture noundef readonly %hldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %cmp = icmp ult i8 %bf.load, 64
  %conv = select i1 %cmp, i32 256, i32 0
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %1 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common_reg, align 4
  %titan_mask_all_int = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %2, i32 0, i32 46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %titan_mask_all_int, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_device_intr_disable(ptr nocapture noundef readonly %hldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common_reg.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %0 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_reg.i, align 4
  %titan_mask_all_int.i = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %1, i32 0, i32 46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i = getelementptr i8, ptr %titan_mask_all_int.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 257) #9, !srcloc !10
  %2 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common_reg.i, align 4
  %tim_int_mask0 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %3, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_int_mask0, i32 -1) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %tim_int_mask0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #9, !srcloc !10
  %4 = ptrtoint ptr %common_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common_reg.i, align 4
  %tim_int_mask1 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %5, i32 0, i32 51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i9 = getelementptr i8, ptr %tim_int_mask1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 -1) #9, !srcloc !10
  %vpaths_deployed = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vpaths_deployed, align 8
  %sh_prom = zext i32 %i.010 to i64
  %shr = lshr i64 -9223372036854775808, %sh_prom
  %and = and i64 %7, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %vpath_handles = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.010, i32 19
  %8 = ptrtoint ptr %vpath_handles to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vpath_handles, align 4
  %call = tail call i32 @vxge_hw_vpath_intr_disable(ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_device_flush_io(ptr nocapture noundef readonly %hldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %0 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_reg, align 4
  %titan_general_int_status = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %1, i32 0, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %titan_general_int_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_device_begin_irq(ptr noundef %hldev, i32 noundef %skip_alarms, ptr nocapture noundef writeonly %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %0 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_reg, align 4
  %titan_general_int_status = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %1, i32 0, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %titan_general_int_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %titan_general_int_status, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #9
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i64 %8, label %entry.if.end18_crit_edge [
    i64 0, label %if.then
    i64 -1, label %if.then10
  ], !prof !17

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %reason to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %reason, align 8
  br label %cleanup

if.then10:                                        ; preds = %entry
  %10 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common_reg, align 4
  %adapter_status12 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %11, i32 0, i32 54
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %adapter_status12) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i88 = getelementptr i32, ptr %adapter_status12, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %14 = zext i32 %13 to i64
  %15 = zext i32 %12 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp14 = icmp eq i64 %17, -1
  br i1 %cmp14, label %if.then15, label %if.then10.if.end18_crit_edge

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.then10
  %uld_callbacks.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 6
  %18 = ptrtoint ptr %uld_callbacks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uld_callbacks.i, align 4
  %crit_err.i = getelementptr inbounds %struct.vxge_hw_uld_cbs, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %crit_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crit_err.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then15.__vxge_hw_device_handle_error.exit_crit_edge, label %if.then.i

if.then15.__vxge_hw_device_handle_error.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vxge_hw_device_handle_error.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %21(ptr noundef %hldev, i32 noundef 14, i64 noundef 4294967295) #9
  br label %__vxge_hw_device_handle_error.exit

__vxge_hw_device_handle_error.exit:               ; preds = %if.then.i, %if.then15.__vxge_hw_device_handle_error.exit_crit_edge
  %22 = ptrtoint ptr %reason to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %reason, align 8
  br label %cleanup

if.end18:                                         ; preds = %if.then10.if.end18_crit_edge, %entry.if.end18_crit_edge
  %total_intr_cnt = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 3, i32 2
  %23 = ptrtoint ptr %total_intr_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_intr_cnt, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %total_intr_cnt, align 4
  %25 = ptrtoint ptr %reason to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %8, ptr %reason, align 8
  %vpaths_deployed = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 22
  %26 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vpaths_deployed, align 8
  %28 = lshr i64 %27, 3
  %shl = and i64 %8, 2305825417027649536
  %and = and i64 %shl, %28
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool19.not = icmp eq i64 %and, 0
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %traffic_intr_cnt = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 3, i32 1
  %29 = ptrtoint ptr %traffic_intr_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %traffic_intr_cnt, align 4
  %inc23 = add i32 %30, 1
  store i32 %inc23, ptr %traffic_intr_cnt, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %sw_dev_info_stats = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 3
  %31 = ptrtoint ptr %sw_dev_info_stats to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sw_dev_info_stats, align 4
  %inc27 = add i32 %32, 1
  store i32 %inc27, ptr %sw_dev_info_stats, align 4
  %and28 = and i64 %8, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.end24.cleanup_crit_edge, label %if.then36, !prof !18

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %if.end24
  %sw_dev_err_stats = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 27, i32 2
  %33 = ptrtoint ptr %sw_dev_err_stats to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sw_dev_err_stats, align 4
  %inc38 = add i32 %34, 1
  store i32 %inc38, ptr %sw_dev_err_stats, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then36
  %error_level.091 = phi i32 [ 0, %if.then36 ], [ %error_level.1, %for.inc.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %if.then36 ], [ %inc58, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %vpaths_deployed to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %vpaths_deployed, align 8
  %sh_prom = zext i32 %i.089 to i64
  %shr41 = lshr i64 -9223372036854775808, %sh_prom
  %and42 = and i64 %36, %shr41
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and42)
  %tobool43.not = icmp eq i64 %and42, 0
  br i1 %tobool43.not, label %for.body.for.inc_crit_edge, label %if.end45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end45:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 20, i32 %i.089
  %call46 = tail call fastcc i32 @__vxge_hw_vpath_alarm_process(ptr noundef %arrayidx, i32 noundef %skip_alarms)
  %37 = tail call i32 @llvm.smax.i32(i32 %call46, i32 %error_level.091)
  %call46.off = add i32 %call46, -221
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call46.off)
  %switch = icmp ult i32 %call46.off, 2
  br i1 %switch, label %if.end45.cleanup_crit_edge, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %error_level.1 = phi i32 [ %37, %if.end45.for.inc_crit_edge ], [ %error_level.091, %for.body.for.inc_crit_edge ]
  %inc58 = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc58, 17
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then20, %__vxge_hw_device_handle_error.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then20 ], [ 205, %if.then ], [ 222, %__vxge_hw_device_handle_error.exit ], [ 0, %if.end24.cleanup_crit_edge ], [ %37, %if.end45.cleanup_crit_edge ], [ %error_level.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vxge_hw_vpath_alarm_process(ptr noundef readonly %vpath, i32 noundef %skip_alarms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vpath, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hldev2 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 2
  %0 = ptrtoint ptr %hldev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hldev2, align 8
  %vp_reg3 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 4
  %2 = ptrtoint ptr %vp_reg3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp_reg3, align 16
  %vpath_general_int_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_general_int_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %vpath_general_int_status, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp4 = icmp eq i64 %9, -1
  br i1 %cmp4, label %if.end275.thread, label %if.end11

if.end275.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sw_dev_err_stats452 = getelementptr inbounds %struct.__vxge_hw_device, ptr %1, i32 0, i32 27, i32 2
  %11 = ptrtoint ptr %sw_dev_err_stats452 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sw_dev_err_stats452, align 4
  %inc270453 = add i32 %12, 1
  store i32 %inc270453, ptr %sw_dev_err_stats452, align 4
  br label %sw.epilog.i

if.end11:                                         ; preds = %if.end
  %sw_stats12 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %vpath, i32 0, i32 23
  %13 = ptrtoint ptr %sw_stats12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw_stats12, align 8
  %and = and i64 %10, -1225278165807529985
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %error_stats = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %error_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error_stats, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %error_stats, align 4
  br label %out2.thread445

if.end19:                                         ; preds = %if.end11
  %and20 = and i64 %10, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end79_crit_edge, label %if.then22

if.end19.if.end79_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then22:                                        ; preds = %if.end19
  %xgmac_vp_int_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 52
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %xgmac_vp_int_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i422 = getelementptr i32, ptr %xgmac_vp_int_status, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %if.then22.if.end79_crit_edge, label %if.then26

if.then22.if.end79_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then26:                                        ; preds = %if.then22
  %asic_ntwk_vp_err_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 54
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %asic_ntwk_vp_err_reg) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i423 = getelementptr i32, ptr %asic_ntwk_vp_err_reg, i32 1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i423) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %22 = zext i32 %21 to i64
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #9
  %24 = and i64 %23, 1224979098644774912
  call void @__sanitizer_cov_trace_const_cmp8(i64 1152921504606846976, i64 %24)
  %25 = icmp eq i64 %24, 1152921504606846976
  %26 = and i64 %23, 4785074604081152
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627370496, i64 %26)
  %27 = icmp eq i64 %26, 4503599627370496
  %or.cond = or i1 %25, %27
  br i1 %or.cond, label %if.then37, label %if.then26.if.end46_crit_edge

if.then26.if.end46_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then37:                                        ; preds = %if.then26
  %network_sustained_fault = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %network_sustained_fault to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %network_sustained_fault, align 4
  %inc39 = add i32 %29, 1
  store i32 %inc39, ptr %network_sustained_fault, align 4
  %asic_ntwk_vp_err_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %asic_ntwk_vp_err_mask, i32 0) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %add.ptr.i424 = getelementptr i8, ptr %asic_ntwk_vp_err_mask, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i424, i32 16) #9, !srcloc !10
  %link_state.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %link_state.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i = icmp eq i32 %31, 1
  br i1 %cmp.i, label %if.then37.if.end46_crit_edge, label %if.end.i

if.then37.if.end46_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.end.i:                                         ; preds = %if.then37
  %32 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %link_state.i, align 32
  %uld_callbacks.i = getelementptr inbounds %struct.__vxge_hw_device, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %uld_callbacks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %uld_callbacks.i, align 4
  %link_down.i = getelementptr inbounds %struct.vxge_hw_uld_cbs, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %link_down.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link_down.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i.if.end46_crit_edge, label %if.then2.i

if.end.i.if.end46_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %36(ptr noundef %1) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then2.i, %if.end.i.if.end46_crit_edge, %if.then37.if.end46_crit_edge, %if.then26.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %24)
  %.not = icmp eq i64 %24, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710656, i64 %26)
  %37 = icmp eq i64 %26, 281474976710656
  %or.cond459 = or i1 %.not, %37
  br i1 %or.cond459, label %if.then58, label %if.end46.if.end68_crit_edge

if.end46.if.end68_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then58:                                        ; preds = %if.end46
  %network_sustained_ok = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %network_sustained_ok to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %network_sustained_ok, align 4
  %inc60 = add i32 %39, 1
  store i32 %inc60, ptr %network_sustained_ok, align 4
  %asic_ntwk_vp_err_mask61 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %asic_ntwk_vp_err_mask61, i32 0) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %add.ptr.i425 = getelementptr i8, ptr %asic_ntwk_vp_err_mask61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i425, i32 1) #9, !srcloc !10
  %link_state.i426 = getelementptr inbounds %struct.__vxge_hw_device, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %link_state.i426 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %link_state.i426, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i427 = icmp eq i32 %41, 2
  br i1 %cmp.i427, label %if.then58.if.end68_crit_edge, label %if.end.i430

if.then58.if.end68_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end.i430:                                      ; preds = %if.then58
  %42 = ptrtoint ptr %link_state.i426 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %link_state.i426, align 32
  %uld_callbacks.i428 = getelementptr inbounds %struct.__vxge_hw_device, ptr %1, i32 0, i32 6
  %43 = ptrtoint ptr %uld_callbacks.i428 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %uld_callbacks.i428, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool.not.i429 = icmp eq ptr %46, null
  br i1 %tobool.not.i429, label %if.end.i430.if.end68_crit_edge, label %if.then2.i431

if.end.i430.if.end68_crit_edge:                   ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then2.i431:                                    ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %46(ptr noundef %1) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then2.i431, %if.end.i430.if.end68_crit_edge, %if.then58.if.end68_crit_edge, %if.end46.if.end68_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %asic_ntwk_vp_err_reg, i32 -1) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i423, i32 -1) #9, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_alarms)
  %tobool75.not = icmp eq i32 %skip_alarms, 0
  br i1 %tobool75.not, label %if.end68.if.end79_crit_edge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68.if.end79_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end79:                                         ; preds = %if.end68.if.end79_crit_edge, %if.then22.if.end79_crit_edge, %if.end19.if.end79_crit_edge
  %alarm_event.2 = phi i32 [ 5, %if.end68.if.end79_crit_edge ], [ 0, %if.then22.if.end79_crit_edge ], [ 0, %if.end19.if.end79_crit_edge ]
  %and80 = and i64 %10, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and80)
  %tobool81.not = icmp eq i64 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end202_crit_edge, label %if.then82

if.end79.if.end202_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then82:                                        ; preds = %if.end79
  %vpath_ppif_int_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 122
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vpath_ppif_int_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i433 = getelementptr i32, ptr %vpath_ppif_int_status, i32 1
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i433) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %49 = zext i32 %48 to i64
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #9
  %and84 = and i64 %50, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and84)
  %tobool85.not = icmp eq i64 %and84, 0
  br i1 %tobool85.not, label %if.then82.if.end147_crit_edge, label %if.then86

if.then82.if.end147_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then86:                                        ; preds = %if.then82
  %general_errors_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 128
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %general_errors_reg) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i434 = getelementptr i32, ptr %general_errors_reg, i32 1
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i434) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %53 = zext i32 %52 to i64
  %general_errors_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 129
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %general_errors_mask) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i435 = getelementptr i32, ptr %general_errors_mask, i32 1
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i435) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %56 = zext i32 %55 to i64
  %57 = xor i64 %56, -1
  %58 = and i64 %57, %53
  %59 = call i64 @llvm.bswap.i64(i64 %58)
  %and90 = and i64 %59, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and90)
  %tobool91.not = icmp eq i64 %and90, 0
  br i1 %tobool91.not, label %if.then86.if.end100_crit_edge, label %if.then92

if.then86.if.end100_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then92:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  %ini_serr_det = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 10
  %60 = ptrtoint ptr %ini_serr_det to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ini_serr_det, align 4
  %inc94 = add i32 %61, 1
  store i32 %inc94, ptr %ini_serr_det, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then92, %if.then86.if.end100_crit_edge
  %alarm_event.3 = phi i32 [ 11, %if.then92 ], [ %alarm_event.2, %if.then86.if.end100_crit_edge ]
  %and103 = and i64 %59, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and103)
  %tobool104.not = icmp eq i64 %and103, 0
  br i1 %tobool104.not, label %if.end100.if.end113_crit_edge, label %if.then105

if.end100.if.end113_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %dblgen_fifo0_overflow = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 6
  %62 = ptrtoint ptr %dblgen_fifo0_overflow to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dblgen_fifo0_overflow, align 4
  %inc107 = add i32 %63, 1
  store i32 %inc107, ptr %dblgen_fifo0_overflow, align 4
  %64 = tail call i32 @llvm.umax.i32(i32 %alarm_event.3, i32 8)
  br label %if.end113

if.end113:                                        ; preds = %if.then105, %if.end100.if.end113_crit_edge
  %alarm_event.4 = phi i32 [ %64, %if.then105 ], [ %alarm_event.3, %if.end100.if.end113_crit_edge ]
  %and116 = and i64 %59, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and116)
  %tobool117.not = icmp eq i64 %and116, 0
  br i1 %tobool117.not, label %if.end113.if.end121_crit_edge, label %if.then118

if.end113.if.end121_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then118:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  %statsb_pif_chain_error = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 7
  %65 = ptrtoint ptr %statsb_pif_chain_error to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %statsb_pif_chain_error, align 4
  %inc120 = add i32 %66, 1
  store i32 %inc120, ptr %statsb_pif_chain_error, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.end113.if.end121_crit_edge
  %and124 = and i64 %59, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and124)
  %tobool125.not = icmp eq i64 %and124, 0
  br i1 %tobool125.not, label %if.end121.if.end129_crit_edge, label %if.then126

if.end121.if.end129_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then126:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %statsb_drop_timeout = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 8
  %67 = ptrtoint ptr %statsb_drop_timeout to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %statsb_drop_timeout, align 4
  %inc128 = add i32 %68, 1
  store i32 %inc128, ptr %statsb_drop_timeout, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end121.if.end129_crit_edge
  %and132 = and i64 %59, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and132)
  %tobool133.not = icmp eq i64 %and132, 0
  br i1 %tobool133.not, label %if.end129.if.end137_crit_edge, label %if.then134

if.end129.if.end137_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then134:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %target_illegal_access = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 9
  %69 = ptrtoint ptr %target_illegal_access to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %target_illegal_access, align 4
  %inc136 = add i32 %70, 1
  store i32 %inc136, ptr %target_illegal_access, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %if.end129.if.end137_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_alarms)
  %tobool138.not = icmp eq i32 %skip_alarms, 0
  br i1 %tobool138.not, label %if.then139, label %if.end137.if.end147_crit_edge

if.end137.if.end147_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then139:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @lo_hi_writeq(i64 noundef -1, ptr noundef %general_errors_reg)
  %71 = tail call i32 @llvm.umax.i32(i32 %alarm_event.4, i32 5)
  br label %if.end147

if.end147:                                        ; preds = %if.then139, %if.end137.if.end147_crit_edge, %if.then82.if.end147_crit_edge
  %alarm_event.5 = phi i32 [ %alarm_event.4, %if.end137.if.end147_crit_edge ], [ %71, %if.then139 ], [ %alarm_event.2, %if.then82.if.end147_crit_edge ]
  %and148 = and i64 %50, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and148)
  %tobool149.not = icmp eq i64 %and148, 0
  br i1 %tobool149.not, label %if.end147.if.end202_crit_edge, label %if.then150

if.end147.if.end202_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then150:                                       ; preds = %if.end147
  %kdfcctl_errors_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 124
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %kdfcctl_errors_reg) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i436 = getelementptr i32, ptr %kdfcctl_errors_reg, i32 1
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i436) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %74 = zext i32 %73 to i64
  %kdfcctl_errors_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 125
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %kdfcctl_errors_mask) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i437 = getelementptr i32, ptr %kdfcctl_errors_mask, i32 1
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i437) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %77 = zext i32 %76 to i64
  %78 = xor i64 %77, -1
  %79 = and i64 %78, %74
  %80 = call i64 @llvm.bswap.i64(i64 %79)
  %and155 = and i64 %80, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and155)
  %tobool156.not = icmp eq i64 %and155, 0
  br i1 %tobool156.not, label %if.then150.if.end165_crit_edge, label %if.then157

if.then150.if.end165_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.then157:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  %kdfcctl_fifo0_overwrite = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %kdfcctl_fifo0_overwrite to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %kdfcctl_fifo0_overwrite, align 4
  %inc159 = add i32 %82, 1
  store i32 %inc159, ptr %kdfcctl_fifo0_overwrite, align 4
  %83 = tail call i32 @llvm.umax.i32(i32 %alarm_event.5, i32 8)
  br label %if.end165

if.end165:                                        ; preds = %if.then157, %if.then150.if.end165_crit_edge
  %alarm_event.6 = phi i32 [ %83, %if.then157 ], [ %alarm_event.5, %if.then150.if.end165_crit_edge ]
  %and168 = and i64 %80, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and168)
  %tobool169.not = icmp eq i64 %and168, 0
  br i1 %tobool169.not, label %if.end165.if.end178_crit_edge, label %if.then170

if.end165.if.end178_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.then170:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  %kdfcctl_fifo0_poison = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 4
  %84 = ptrtoint ptr %kdfcctl_fifo0_poison to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %kdfcctl_fifo0_poison, align 4
  %inc172 = add i32 %85, 1
  store i32 %inc172, ptr %kdfcctl_fifo0_poison, align 4
  %86 = tail call i32 @llvm.umax.i32(i32 %alarm_event.6, i32 8)
  br label %if.end178

if.end178:                                        ; preds = %if.then170, %if.end165.if.end178_crit_edge
  %alarm_event.7 = phi i32 [ %86, %if.then170 ], [ %alarm_event.6, %if.end165.if.end178_crit_edge ]
  %and181 = and i64 %80, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and181)
  %tobool182.not = icmp eq i64 %and181, 0
  br i1 %tobool182.not, label %if.end178.if.end191_crit_edge, label %if.then183

if.end178.if.end191_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  %kdfcctl_fifo0_dma_error = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 5
  %87 = ptrtoint ptr %kdfcctl_fifo0_dma_error to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %kdfcctl_fifo0_dma_error, align 4
  %inc185 = add i32 %88, 1
  store i32 %inc185, ptr %kdfcctl_fifo0_dma_error, align 4
  %89 = tail call i32 @llvm.umax.i32(i32 %alarm_event.7, i32 8)
  br label %if.end191

if.end191:                                        ; preds = %if.then183, %if.end178.if.end191_crit_edge
  %alarm_event.8 = phi i32 [ %89, %if.then183 ], [ %alarm_event.7, %if.end178.if.end191_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_alarms)
  %tobool192.not = icmp eq i32 %skip_alarms, 0
  br i1 %tobool192.not, label %if.then193, label %if.end191.if.end202_crit_edge

if.end191.if.end202_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then193:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @lo_hi_writeq(i64 noundef -1, ptr noundef %kdfcctl_errors_reg)
  %90 = tail call i32 @llvm.umax.i32(i32 %alarm_event.8, i32 5)
  br label %if.end202

if.end202:                                        ; preds = %if.then193, %if.end191.if.end202_crit_edge, %if.end147.if.end202_crit_edge, %if.end79.if.end202_crit_edge
  %alarm_event.9 = phi i32 [ %alarm_event.8, %if.end191.if.end202_crit_edge ], [ %90, %if.then193 ], [ %alarm_event.5, %if.end147.if.end202_crit_edge ], [ %alarm_event.2, %if.end79.if.end202_crit_edge ]
  %and203 = and i64 %10, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and203)
  %tobool204.not = icmp eq i64 %and203, 0
  br i1 %tobool204.not, label %if.end202.out2_crit_edge, label %if.then205

if.end202.out2_crit_edge:                         ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.then205:                                       ; preds = %if.end202
  %wrdma_alarm_status = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 3
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wrdma_alarm_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i438 = getelementptr i32, ptr %wrdma_alarm_status, i32 1
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i438) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %93 = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool208.not = icmp eq i32 %93, 0
  br i1 %tobool208.not, label %if.then205.out2_crit_edge, label %if.then209

if.then205.out2_crit_edge:                        ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.then209:                                       ; preds = %if.then205
  %prc_alarm_reg = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 6
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_alarm_reg) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i439 = getelementptr i32, ptr %prc_alarm_reg, i32 1
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i439) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %96 = zext i32 %95 to i64
  %97 = zext i32 %94 to i64
  %98 = shl nuw i64 %97, 32
  %99 = or i64 %98, %96
  %prc_alarm_mask = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 7
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %prc_alarm_mask) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i440 = getelementptr i32, ptr %prc_alarm_mask, i32 1
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i440) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %102 = zext i32 %101 to i64
  %103 = zext i32 %100 to i64
  %104 = shl nuw i64 %103, 32
  %105 = or i64 %104, %102
  %106 = xor i64 %105, -1
  %107 = and i64 %99, %106
  %108 = call i64 @llvm.bswap.i64(i64 %107)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %108)
  %tobool215.not = icmp sgt i64 %108, -1
  br i1 %tobool215.not, label %if.then209.if.end219_crit_edge, label %if.then216

if.then209.if.end219_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then216:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  %prc_ring_bumps = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 11
  %109 = ptrtoint ptr %prc_ring_bumps to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %prc_ring_bumps, align 4
  %inc218 = add i32 %110, 1
  store i32 %inc218, ptr %prc_ring_bumps, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.then209.if.end219_crit_edge
  %and222 = and i64 %108, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and222)
  %tobool223.not = icmp eq i64 %and222, 0
  br i1 %tobool223.not, label %if.end219.if.end232_crit_edge, label %if.then224

if.end219.if.end232_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232

if.then224:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  %prc_rxdcm_sc_err = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 12
  %111 = ptrtoint ptr %prc_rxdcm_sc_err to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %prc_rxdcm_sc_err, align 4
  %inc226 = add i32 %112, 1
  store i32 %inc226, ptr %prc_rxdcm_sc_err, align 4
  %113 = tail call i32 @llvm.umax.i32(i32 %alarm_event.9, i32 9)
  br label %if.end232

if.end232:                                        ; preds = %if.then224, %if.end219.if.end232_crit_edge
  %alarm_event.10 = phi i32 [ %113, %if.then224 ], [ %alarm_event.9, %if.end219.if.end232_crit_edge ]
  %and235 = and i64 %108, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and235)
  %tobool236.not = icmp eq i64 %and235, 0
  br i1 %tobool236.not, label %if.end232.if.end245_crit_edge, label %if.then237

if.end232.if.end245_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245

if.then237:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  %prc_rxdcm_sc_abort = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 13
  %114 = ptrtoint ptr %prc_rxdcm_sc_abort to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %prc_rxdcm_sc_abort, align 4
  %inc239 = add i32 %115, 1
  store i32 %inc239, ptr %prc_rxdcm_sc_abort, align 4
  %116 = tail call i32 @llvm.umax.i32(i32 %alarm_event.10, i32 9)
  br label %if.end245

if.end245:                                        ; preds = %if.then237, %if.end232.if.end245_crit_edge
  %alarm_event.11 = phi i32 [ %116, %if.then237 ], [ %alarm_event.10, %if.end232.if.end245_crit_edge ]
  %and248 = and i64 %108, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and248)
  %tobool249.not = icmp eq i64 %and248, 0
  br i1 %tobool249.not, label %if.end245.if.end258_crit_edge, label %if.then250

if.end245.if.end258_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end258

if.then250:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  %prc_quanta_size_err = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_info, ptr %14, i32 0, i32 1, i32 14
  %117 = ptrtoint ptr %prc_quanta_size_err to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %prc_quanta_size_err, align 4
  %inc252 = add i32 %118, 1
  store i32 %inc252, ptr %prc_quanta_size_err, align 4
  %119 = tail call i32 @llvm.umax.i32(i32 %alarm_event.11, i32 9)
  br label %if.end258

if.end258:                                        ; preds = %if.then250, %if.end245.if.end258_crit_edge
  %alarm_event.12 = phi i32 [ %119, %if.then250 ], [ %alarm_event.11, %if.end245.if.end258_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_alarms)
  %tobool259.not = icmp eq i32 %skip_alarms, 0
  br i1 %tobool259.not, label %if.then260, label %if.end258.out2_crit_edge

if.end258.out2_crit_edge:                         ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.then260:                                       ; preds = %if.end258
  tail call fastcc void @lo_hi_writeq(i64 noundef -1, ptr noundef %prc_alarm_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %alarm_event.12)
  %cmp262 = icmp ult i32 %alarm_event.12, 5
  br i1 %cmp262, label %if.then260.out2.thread445_crit_edge, label %if.then260.out2_crit_edge

if.then260.out2_crit_edge:                        ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.then260.out2.thread445_crit_edge:              ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2.thread445

out2.thread445:                                   ; preds = %if.then260.out2.thread445_crit_edge, %if.then13
  %sw_dev_err_stats447 = getelementptr inbounds %struct.__vxge_hw_device, ptr %1, i32 0, i32 27, i32 2
  %120 = ptrtoint ptr %sw_dev_err_stats447 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sw_dev_err_stats447, align 4
  %inc270448 = add i32 %121, 1
  store i32 %inc270448, ptr %sw_dev_err_stats447, align 4
  br label %cleanup

out2:                                             ; preds = %if.then260.out2_crit_edge, %if.end258.out2_crit_edge, %if.then205.out2_crit_edge, %if.end202.out2_crit_edge
  %alarm_event.13 = phi i32 [ %alarm_event.12, %if.end258.out2_crit_edge ], [ %alarm_event.12, %if.then260.out2_crit_edge ], [ %alarm_event.9, %if.then205.out2_crit_edge ], [ %alarm_event.9, %if.end202.out2_crit_edge ]
  %sw_dev_err_stats = getelementptr inbounds %struct.__vxge_hw_device, ptr %1, i32 0, i32 27, i32 2
  %122 = ptrtoint ptr %sw_dev_err_stats to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sw_dev_err_stats, align 4
  %inc270 = add i32 %123, 1
  store i32 %inc270, ptr %sw_dev_err_stats, align 4
  %124 = zext i32 %alarm_event.13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %alarm_event.13, label %if.end275 [
    i32 5, label %out2.cleanup_crit_edge
    i32 0, label %out2.cleanup_crit_edge460
  ]

out2.cleanup_crit_edge460:                        ; preds = %out2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out2.cleanup_crit_edge:                           ; preds = %out2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end275:                                        ; preds = %out2
  %125 = and i32 %alarm_event.13, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %125)
  %switch = icmp eq i32 %125, 8
  br i1 %switch, label %if.end275.sw.epilog.i_crit_edge, label %if.end275.__vxge_hw_device_handle_error.exit_crit_edge

if.end275.__vxge_hw_device_handle_error.exit_crit_edge: ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vxge_hw_device_handle_error.exit

if.end275.sw.epilog.i_crit_edge:                  ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end275.sw.epilog.i_crit_edge, %if.end275.thread
  %alarm_event.13454456 = phi i32 [ 14, %if.end275.thread ], [ %alarm_event.13, %if.end275.sw.epilog.i_crit_edge ]
  %uld_callbacks.i441 = getelementptr inbounds %struct.__vxge_hw_device, ptr %1, i32 0, i32 6
  %126 = ptrtoint ptr %uld_callbacks.i441 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %uld_callbacks.i441, align 4
  %crit_err.i = getelementptr inbounds %struct.vxge_hw_uld_cbs, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %crit_err.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %crit_err.i, align 4
  %tobool.not.i442 = icmp eq ptr %129, null
  br i1 %tobool.not.i442, label %sw.epilog.i.__vxge_hw_device_handle_error.exit_crit_edge, label %if.then.i

sw.epilog.i.__vxge_hw_device_handle_error.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vxge_hw_device_handle_error.exit

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vpath, align 128
  %conv.i = zext i32 %131 to i64
  tail call void %129(ptr noundef %1, i32 noundef %alarm_event.13454456, i64 noundef %conv.i) #9
  br label %__vxge_hw_device_handle_error.exit

__vxge_hw_device_handle_error.exit:               ; preds = %if.then.i, %sw.epilog.i.__vxge_hw_device_handle_error.exit_crit_edge, %if.end275.__vxge_hw_device_handle_error.exit_crit_edge
  %alarm_event.13449 = phi i32 [ %alarm_event.13, %if.end275.__vxge_hw_device_handle_error.exit_crit_edge ], [ %alarm_event.13454456, %sw.epilog.i.__vxge_hw_device_handle_error.exit_crit_edge ], [ %alarm_event.13454456, %if.then.i ]
  %132 = zext i32 %alarm_event.13449 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %alarm_event.13449, label %cond.false282 [
    i32 11, label %__vxge_hw_device_handle_error.exit.cleanup_crit_edge
    i32 14, label %__vxge_hw_device_handle_error.exit.cond.end285_crit_edge
  ]

__vxge_hw_device_handle_error.exit.cond.end285_crit_edge: ; preds = %__vxge_hw_device_handle_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end285

__vxge_hw_device_handle_error.exit.cleanup_crit_edge: ; preds = %__vxge_hw_device_handle_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false282:                                    ; preds = %__vxge_hw_device_handle_error.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %alarm_event.13449)
  %cmp283 = icmp eq i32 %alarm_event.13449, 8
  %cond284 = select i1 %cmp283, i32 219, i32 220
  br label %cond.end285

cond.end285:                                      ; preds = %cond.false282, %__vxge_hw_device_handle_error.exit.cond.end285_crit_edge
  %cond286 = phi i32 [ %cond284, %cond.false282 ], [ 222, %__vxge_hw_device_handle_error.exit.cond.end285_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cond.end285, %__vxge_hw_device_handle_error.exit.cleanup_crit_edge, %out2.cleanup_crit_edge, %out2.cleanup_crit_edge460, %out2.thread445, %if.end68.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond286, %cond.end285 ], [ 0, %if.end68.cleanup_crit_edge ], [ 0, %out2.cleanup_crit_edge ], [ 0, %out2.cleanup_crit_edge460 ], [ 221, %__vxge_hw_device_handle_error.exit.cleanup_crit_edge ], [ 0, %out2.thread445 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_device_clear_tx_rx(ptr nocapture noundef readonly %hldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tim_int_mask0 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 24
  %0 = ptrtoint ptr %tim_int_mask0 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tim_int_mask0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp3.not = icmp eq i64 %3, 0
  br i1 %cmp3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx7 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 24, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx7, align 8
  %or = or i64 %5, %1
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %6 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common_reg, align 4
  %tim_int_status0 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %7, i32 0, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %or to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_int_status0, i32 %8) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %or, 32
  %conv3.i = trunc i64 %shr.i to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i = getelementptr i8, ptr %tim_int_status0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tim_int_mask1 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 25
  %10 = ptrtoint ptr %tim_int_mask1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tim_int_mask1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not = icmp eq i32 %11, 0
  br i1 %cmp9.not, label %lor.lhs.false10, label %if.end.if.then14_crit_edge

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false10:                                  ; preds = %if.end
  %arrayidx12 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 25, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13.not = icmp eq i32 %13, 0
  br i1 %cmp13.not, label %lor.lhs.false10.if.end21_crit_edge, label %lor.lhs.false10.if.then14_crit_edge

lor.lhs.false10.if.then14_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false10.if.end21_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then14:                                        ; preds = %lor.lhs.false10.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %arrayidx18 = getelementptr %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 25, i32 1
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18, align 4
  %or19 = or i32 %15, %11
  %common_reg20 = getelementptr inbounds %struct.__vxge_hw_device, ptr %hldev, i32 0, i32 12
  %16 = ptrtoint ptr %common_reg20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common_reg20, align 4
  %tim_int_status1 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %17, i32 0, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or19) #9
  %add.ptr.i31 = getelementptr i8, ptr %tim_int_status1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %18) #9, !srcloc !10
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %lor.lhs.false10.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_channel_dtr_try_complete(ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %dtrh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_arr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 9
  %0 = ptrtoint ptr %work_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_arr, align 8
  %compl_index = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 13
  %2 = ptrtoint ptr %compl_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_index, align 128
  %arrayidx = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %dtrh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dtrh, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %5) #9, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vxge_hw_channel_dtr_complete(ptr nocapture noundef %channel) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_arr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 9
  %0 = ptrtoint ptr %work_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_arr, align 8
  %compl_index = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 13
  %2 = ptrtoint ptr %compl_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_index, align 128
  %arrayidx = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %5 = load i32, ptr %compl_index, align 128
  %inc = add i32 %5, 1
  %length = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 4
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %7)
  %cmp = icmp eq i32 %inc, %7
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc
  %8 = ptrtoint ptr %compl_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %compl_index, align 128
  %stats = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 21
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats, align 32
  %total_compl_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %total_compl_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_compl_cnt, align 4
  %inc3 = add i32 %12, 1
  store i32 %inc3, ptr %total_compl_cnt, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vxge_hw_channel_dtr_free(ptr nocapture noundef %channel, ptr noundef %dtrh) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %free_arr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 14
  %0 = ptrtoint ptr %free_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_arr, align 4
  %free_ptr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 15
  %2 = ptrtoint ptr %free_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_ptr, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %free_ptr, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %dec
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dtrh, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_channel_dtr_count(ptr nocapture noundef readonly %channel) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reserve_ptr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 7
  %0 = ptrtoint ptr %reserve_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reserve_ptr, align 32
  %reserve_top = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 8
  %2 = ptrtoint ptr %reserve_top to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserve_top, align 4
  %length = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 4
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %free_ptr = getelementptr inbounds %struct.__vxge_hw_channel, ptr %channel, i32 0, i32 15
  %6 = ptrtoint ptr %free_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_ptr, align 8
  %8 = add i32 %1, %5
  %9 = add i32 %3, %7
  %add = sub i32 %8, %9
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_ring_rxd_reserve(ptr nocapture noundef %ring, ptr nocapture noundef %rxdh) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reserve_ptr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 7
  %0 = ptrtoint ptr %reserve_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reserve_ptr.i, align 32
  %reserve_top.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 8
  %2 = ptrtoint ptr %reserve_top.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserve_top.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %length.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 4
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %free_ptr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 15
  %6 = ptrtoint ptr %free_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not.i = icmp eq i32 %5, %7
  br i1 %cmp3.not.i, label %vxge_hw_channel_dtr_alloc.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %reserve_arr5.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 6
  %8 = ptrtoint ptr %reserve_arr5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reserve_arr5.i, align 4
  %free_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 14
  %10 = ptrtoint ptr %free_arr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %free_arr.i, align 4
  store ptr %11, ptr %reserve_arr5.i, align 4
  store ptr %9, ptr %free_arr.i, align 4
  %12 = ptrtoint ptr %reserve_ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %reserve_ptr.i, align 32
  %13 = ptrtoint ptr %reserve_top.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %reserve_top.i, align 4
  %14 = ptrtoint ptr %free_ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %free_ptr.i, align 8
  %stats.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 21
  %15 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stats.i, align 32
  %reserve_free_swaps_cnt.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %reserve_free_swaps_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reserve_free_swaps_cnt.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %reserve_free_swaps_cnt.i, align 4
  br label %if.then

vxge_hw_channel_dtr_alloc.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %stats15.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 21
  %19 = ptrtoint ptr %stats15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats15.i, align 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %inc16.i = add i32 %22, 1
  store i32 %inc16.i, ptr %20, align 4
  %23 = ptrtoint ptr %rxdh to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rxdh, align 4
  br label %if.end

if.then:                                          ; preds = %do.body.i, %entry.if.then_crit_edge
  %reserve_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 6
  %24 = ptrtoint ptr %reserve_arr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reserve_arr.i, align 4
  %26 = ptrtoint ptr %reserve_ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reserve_ptr.i, align 32
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %reserve_ptr.i, align 32
  %arrayidx.i = getelementptr ptr, ptr %25, i32 %dec.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %rxdh to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %rxdh, align 4
  %control_0 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, ptr %29, i32 0, i32 1
  %31 = call ptr @memset(ptr %control_0, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %vxge_hw_channel_dtr_alloc.exit
  %retval.0.i9 = phi i32 [ 0, %if.then ], [ 102, %vxge_hw_channel_dtr_alloc.exit ]
  ret i32 %retval.0.i9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vxge_hw_ring_rxd_free(ptr nocapture noundef %ring, ptr noundef %rxdh) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %free_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 14
  %0 = ptrtoint ptr %free_arr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_arr.i, align 4
  %free_ptr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 15
  %2 = ptrtoint ptr %free_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_ptr.i, align 8
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %free_ptr.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %dec.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rxdh, ptr %arrayidx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vxge_hw_ring_rxd_pre_post(ptr nocapture noundef %ring, ptr noundef %rxdh) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 9
  %0 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_arr.i, align 8
  %post_index.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %post_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %post_index.i, align 128
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %post_index.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rxdh, ptr %arrayidx.i, align 4
  %5 = load i32, ptr %post_index.i, align 128
  %length.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %if.then.i, label %entry.vxge_hw_channel_dtr_post.exit_crit_edge

entry.vxge_hw_channel_dtr_post.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vxge_hw_channel_dtr_post.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %post_index.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %post_index.i, align 128
  br label %vxge_hw_channel_dtr_post.exit

vxge_hw_channel_dtr_post.exit:                    ; preds = %if.then.i, %entry.vxge_hw_channel_dtr_post.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vxge_hw_ring_rxd_post_post(ptr nocapture noundef readonly %ring, ptr nocapture noundef writeonly %rxdh) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %control_0 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, ptr %rxdh, i32 0, i32 1
  %0 = ptrtoint ptr %control_0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 72057594037927936, ptr %control_0, align 8
  %stats = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 23
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats, align 128
  %usage_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usage_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %usage_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_ring_rxd_post(ptr nocapture noundef %ring, ptr noundef %rxdh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %control_0 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, ptr %rxdh, i32 0, i32 1
  %0 = ptrtoint ptr %control_0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 72057594037927936, ptr %control_0, align 8
  %work_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 9
  %1 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %work_arr.i, align 8
  %post_index.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 11
  %3 = ptrtoint ptr %post_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %post_index.i, align 128
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %post_index.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rxdh, ptr %arrayidx.i, align 4
  %6 = load i32, ptr %post_index.i, align 128
  %length.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 4
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i = icmp eq i32 %6, %8
  br i1 %cmp.i, label %if.then.i, label %entry.vxge_hw_channel_dtr_post.exit_crit_edge

entry.vxge_hw_channel_dtr_post.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vxge_hw_channel_dtr_post.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %post_index.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %post_index.i, align 128
  br label %vxge_hw_channel_dtr_post.exit

vxge_hw_channel_dtr_post.exit:                    ; preds = %if.then.i, %entry.vxge_hw_channel_dtr_post.exit_crit_edge
  %stats = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 23
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats, align 128
  %usage_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usage_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %vxge_hw_channel_dtr_post.exit.if.end_crit_edge, label %if.then

vxge_hw_channel_dtr_post.exit.if.end_crit_edge:   ; preds = %vxge_hw_channel_dtr_post.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %vxge_hw_channel_dtr_post.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %13, -1
  %14 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dec, ptr %usage_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %vxge_hw_channel_dtr_post.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_ring_rxd_post_post_wmb(ptr nocapture noundef readonly %ring, ptr nocapture noundef writeonly %rxdh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %control_0.i = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, ptr %rxdh, i32 0, i32 1
  %0 = ptrtoint ptr %control_0.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 72057594037927936, ptr %control_0.i, align 8
  %stats.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 23
  %1 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats.i, align 128
  %usage_cnt.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %usage_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usage_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %entry.vxge_hw_ring_rxd_post_post.exit_crit_edge, label %if.then.i

entry.vxge_hw_ring_rxd_post_post.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vxge_hw_ring_rxd_post_post.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %4, -1
  %5 = ptrtoint ptr %usage_cnt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec.i, ptr %usage_cnt.i, align 4
  br label %vxge_hw_ring_rxd_post_post.exit

vxge_hw_ring_rxd_post_post.exit:                  ; preds = %if.then.i, %entry.vxge_hw_ring_rxd_post_post.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_ring_rxd_next_completed(ptr nocapture noundef %ring, ptr nocapture noundef %rxdh, ptr nocapture noundef writeonly %t_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 9
  %0 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_arr.i, align 8
  %compl_index.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 13
  %2 = ptrtoint ptr %compl_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_index.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %rxdh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %rxdh, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %5) #9, !srcloc !19
  %7 = ptrtoint ptr %rxdh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxdh, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %control_02 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %control_02 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %control_02, align 8
  %and = and i64 %10, 72057594037927936
  %shr = lshr i64 %10, 48
  %11 = trunc i64 %shr to i8
  %conv = and i8 %11, 15
  %12 = ptrtoint ptr %t_code to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %t_code, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv)
  %cmp5 = icmp eq i8 %conv, 12
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.then7, label %if.end24

if.then7:                                         ; preds = %if.end
  %cmpl_cnt = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 11
  %13 = ptrtoint ptr %cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmpl_cnt, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %cmpl_cnt, align 8
  %15 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %work_arr.i, align 8
  %17 = ptrtoint ptr %compl_index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %compl_index.i, align 128
  %arrayidx.i40 = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.i40, align 4
  %20 = load i32, ptr %compl_index.i, align 128
  %inc.i = add i32 %20, 1
  %length.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %22)
  %cmp.i = icmp eq i32 %inc.i, %22
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %23 = ptrtoint ptr %compl_index.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.store.select.i, ptr %compl_index.i, align 128
  %stats.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 21
  %24 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats.i, align 32
  %total_compl_cnt.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %total_compl_cnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %total_compl_cnt.i, align 4
  %inc3.i = add i32 %27, 1
  store i32 %inc3.i, ptr %total_compl_cnt.i, align 4
  %stats = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 23
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stats, align 128
  %usage_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usage_cnt, align 4
  %inc8 = add i32 %31, 1
  store i32 %inc8, ptr %usage_cnt, align 4
  %32 = load ptr, ptr %stats, align 128
  %usage_max = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %usage_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %usage_max, align 4
  %usage_cnt13 = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %usage_cnt13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usage_cnt13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp14 = icmp ult i32 %34, %36
  br i1 %cmp14, label %if.then16, label %if.then7.exit_crit_edge

if.then7.exit_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then16:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %usage_max to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %usage_max, align 4
  br label %exit

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %rxdh to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rxdh, align 4
  br label %exit

exit:                                             ; preds = %if.end24, %if.then16, %if.then7.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 101, %if.end24 ], [ 101, %entry.exit_crit_edge ], [ 0, %if.then16 ], [ 0, %if.then7.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_ring_handle_tcode(ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %rxdh, i8 noundef zeroext %t_code) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %t_code to i32
  %0 = zext i8 %t_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %t_code, label %if.end [
    i8 0, label %entry.exit_crit_edge
    i8 5, label %entry.exit_crit_edge13
  ]

entry.exit_crit_edge13:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %t_code)
  %cmp6 = icmp ugt i8 %t_code, 15
  br i1 %cmp6, label %if.end.exit_crit_edge, label %if.end9

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %stats = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 23
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats, align 128
  %arrayidx = getelementptr %struct.vxge_hw_vpath_stats_sw_ring_info, ptr %2, i32 0, i32 1, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %exit

exit:                                             ; preds = %if.end9, %if.end.exit_crit_edge, %entry.exit_crit_edge, %entry.exit_crit_edge13
  %status.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.exit_crit_edge ], [ 0, %entry.exit_crit_edge13 ], [ 214, %if.end.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_fifo_free_txdl_count_get(ptr nocapture noundef readonly %fifoh) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reserve_ptr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifoh, i32 0, i32 7
  %0 = ptrtoint ptr %reserve_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reserve_ptr.i, align 32
  %reserve_top.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifoh, i32 0, i32 8
  %2 = ptrtoint ptr %reserve_top.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserve_top.i, align 4
  %length.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifoh, i32 0, i32 4
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %free_ptr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifoh, i32 0, i32 15
  %6 = ptrtoint ptr %free_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_ptr.i, align 8
  %8 = add i32 %1, %5
  %9 = add i32 %3, %7
  %add.i = sub i32 %8, %9
  ret i32 %add.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_fifo_txdl_reserve(ptr nocapture noundef %fifo, ptr nocapture noundef %txdlh, ptr nocapture noundef writeonly %txdl_priv) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reserve_ptr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 7
  %0 = ptrtoint ptr %reserve_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reserve_ptr.i, align 32
  %reserve_top.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 8
  %2 = ptrtoint ptr %reserve_top.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserve_top.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %length.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 4
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %free_ptr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 15
  %6 = ptrtoint ptr %free_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not.i = icmp eq i32 %5, %7
  br i1 %cmp3.not.i, label %vxge_hw_channel_dtr_alloc.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %reserve_arr5.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 6
  %8 = ptrtoint ptr %reserve_arr5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reserve_arr5.i, align 4
  %free_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 14
  %10 = ptrtoint ptr %free_arr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %free_arr.i, align 4
  store ptr %11, ptr %reserve_arr5.i, align 4
  store ptr %9, ptr %free_arr.i, align 4
  %12 = ptrtoint ptr %reserve_ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %reserve_ptr.i, align 32
  %13 = ptrtoint ptr %reserve_top.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %reserve_top.i, align 4
  %14 = ptrtoint ptr %free_ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %free_ptr.i, align 8
  %stats.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 21
  %15 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stats.i, align 32
  %reserve_free_swaps_cnt.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %reserve_free_swaps_cnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reserve_free_swaps_cnt.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %reserve_free_swaps_cnt.i, align 4
  br label %if.then

vxge_hw_channel_dtr_alloc.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %stats15.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 21
  %19 = ptrtoint ptr %stats15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats15.i, align 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %inc16.i = add i32 %22, 1
  store i32 %inc16.i, ptr %20, align 4
  %23 = ptrtoint ptr %txdlh to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %txdlh, align 4
  br label %if.end

if.then:                                          ; preds = %do.body.i, %entry.if.then_crit_edge
  %reserve_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 6
  %24 = ptrtoint ptr %reserve_arr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reserve_arr.i, align 4
  %26 = ptrtoint ptr %reserve_ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reserve_ptr.i, align 32
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %reserve_ptr.i, align 32
  %arrayidx.i = getelementptr ptr, ptr %25, i32 %dec.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %txdlh to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %txdlh, align 4
  %host_control.i = getelementptr inbounds %struct.vxge_hw_fifo_txd, ptr %29, i32 0, i32 3
  %31 = ptrtoint ptr %host_control.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %host_control.i, align 8
  %conv.i = trunc i64 %32 to i32
  %33 = inttoptr i32 %conv.i to ptr
  %per_txdl_space.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 10
  %34 = ptrtoint ptr %per_txdl_space.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %per_txdl_space.i, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 %35
  %align_dma_offset = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 9
  %36 = ptrtoint ptr %align_dma_offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %align_dma_offset, align 4
  %align_vaddr = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 5
  %37 = ptrtoint ptr %align_vaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %align_vaddr, align 4
  %align_vaddr_start = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 4
  %39 = ptrtoint ptr %align_vaddr_start to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %align_vaddr_start, align 4
  %align_used_frags = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 10
  %40 = ptrtoint ptr %align_used_frags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %align_used_frags, align 4
  %frags = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 3
  %41 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %frags, align 4
  %config = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 2
  %42 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config, align 4
  %max_frags = getelementptr inbounds %struct.vxge_hw_fifo_config, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %max_frags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_frags, align 4
  %alloc_frags = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 11
  %46 = ptrtoint ptr %alloc_frags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %alloc_frags, align 4
  %next_txdl_priv = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 13
  %47 = ptrtoint ptr %next_txdl_priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %next_txdl_priv, align 4
  %48 = load i64, ptr %host_control.i, align 8
  %conv = trunc i64 %48 to i32
  %49 = inttoptr i32 %conv to ptr
  %50 = ptrtoint ptr %txdl_priv to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %txdl_priv, align 4
  %51 = load ptr, ptr %config, align 4
  %max_frags430 = getelementptr inbounds %struct.vxge_hw_fifo_config, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %max_frags430 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_frags430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp531.not = icmp eq i32 %53, 0
  br i1 %cmp531.not, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %54 = ptrtoint ptr %txdlh to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %txdlh, align 4
  %add.ptr = getelementptr %struct.vxge_hw_fifo_txd, ptr %55, i32 %i.032
  %inc = add nuw i32 %i.032, 1
  %56 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  %57 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config, align 4
  %max_frags4 = getelementptr inbounds %struct.vxge_hw_fifo_config, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %max_frags4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_frags4, align 4
  %cmp5 = icmp ult i32 %inc, %60
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %vxge_hw_channel_dtr_alloc.exit
  %retval.0.i28 = phi i32 [ 102, %vxge_hw_channel_dtr_alloc.exit ], [ 0, %if.then.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge ]
  ret i32 %retval.0.i28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vxge_hw_fifo_txdl_buffer_set(ptr nocapture noundef readonly %fifo, ptr nocapture noundef %txdlh, i32 noundef %frag_idx, i32 noundef %dma_pointer, i32 noundef %size) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_control.i = getelementptr inbounds %struct.vxge_hw_fifo_txd, ptr %txdlh, i32 0, i32 3
  %0 = ptrtoint ptr %host_control.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %host_control.i, align 8
  %conv.i = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv.i to ptr
  %per_txdl_space.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 10
  %3 = ptrtoint ptr %per_txdl_space.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %per_txdl_space.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 %4
  %frags = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 3
  %5 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frags, align 4
  %add.ptr = getelementptr %struct.vxge_hw_fifo_txd, ptr %txdlh, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_idx)
  %cmp.not = icmp eq i32 %frag_idx, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  br label %if.end12

if.else:                                          ; preds = %entry
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %or = or i64 %9, 2199023255552
  store i64 %or, ptr %add.ptr, align 8
  %interrupt_type = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 5
  %10 = ptrtoint ptr %interrupt_type to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %interrupt_type, align 16
  %control_12 = getelementptr %struct.vxge_hw_fifo_txd, ptr %txdlh, i32 %6, i32 1
  %12 = ptrtoint ptr %control_12 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %control_12, align 8
  %or3 = or i64 %13, %11
  store i64 %or3, ptr %control_12, align 8
  %tx_intr_num = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 12
  %14 = ptrtoint ptr %tx_intr_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_intr_num, align 16
  %conv = zext i32 %15 to i64
  %shl = shl nuw nsw i64 %conv, 24
  %or5 = or i64 %shl, %or3
  store i64 %or5, ptr %control_12, align 8
  %16 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.else.if.end12_crit_edge, label %if.then7

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %17, -1
  %add.ptr9 = getelementptr %struct.vxge_hw_fifo_txd, ptr %txdlh, i32 %sub
  %18 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr9, align 8
  %or11 = or i64 %19, 1099511627776
  store i64 %or11, ptr %add.ptr9, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.else.if.end12_crit_edge, %if.then
  %conv13 = zext i32 %dma_pointer to i64
  %buffer_pointer = getelementptr %struct.vxge_hw_fifo_txd, ptr %txdlh, i32 %6, i32 2
  %20 = ptrtoint ptr %buffer_pointer to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv13, ptr %buffer_pointer, align 8
  %conv14 = zext i32 %size to i64
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr, align 8
  %or17 = or i64 %22, %conv14
  store i64 %or17, ptr %add.ptr, align 8
  %stats = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 19
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stats, align 128
  %total_buffers = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_fifo_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %total_buffers to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_buffers, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %total_buffers, align 4
  %27 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frags, align 4
  %inc19 = add i32 %28, 1
  store i32 %inc19, ptr %frags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_fifo_txdl_post(ptr nocapture noundef %fifo, ptr noundef %txdlh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_control.i = getelementptr inbounds %struct.vxge_hw_fifo_txd, ptr %txdlh, i32 0, i32 3
  %0 = ptrtoint ptr %host_control.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %host_control.i, align 8
  %conv.i = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv.i to ptr
  %per_txdl_space.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 10
  %3 = ptrtoint ptr %per_txdl_space.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %per_txdl_space.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 %4
  %frags = getelementptr inbounds %struct.__vxge_hw_fifo_txdl_priv, ptr %add.ptr.i, i32 0, i32 3
  %5 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frags, align 4
  %sub = add i32 %6, -1
  %add.ptr = getelementptr %struct.vxge_hw_fifo_txd, ptr %txdlh, i32 %sub
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr, align 8
  %or = or i64 %8, 1099511627776
  store i64 %or, ptr %add.ptr, align 8
  %9 = ptrtoint ptr %txdlh to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %txdlh, align 8
  %or2 = or i64 %10, 72057594037927936
  store i64 %or2, ptr %txdlh, align 8
  %work_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 9
  %11 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %work_arr.i, align 8
  %post_index.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 11
  %13 = ptrtoint ptr %post_index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %post_index.i, align 128
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %post_index.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %txdlh, ptr %arrayidx.i, align 4
  %16 = load i32, ptr %post_index.i, align 128
  %length.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 4
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i = icmp eq i32 %16, %18
  br i1 %cmp.i, label %if.then.i, label %entry.vxge_hw_channel_dtr_post.exit_crit_edge

entry.vxge_hw_channel_dtr_post.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vxge_hw_channel_dtr_post.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %post_index.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %post_index.i, align 128
  br label %vxge_hw_channel_dtr_post.exit

vxge_hw_channel_dtr_post.exit:                    ; preds = %if.then.i, %entry.vxge_hw_channel_dtr_post.exit_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frags, align 4
  %sub4 = add i32 %23, -1
  %no_snoop_bits = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 6
  %24 = ptrtoint ptr %no_snoop_bits to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %no_snoop_bits, align 8
  %shl.i = shl i32 %sub4, 24
  %26 = and i32 %25, 255
  %or2.i = or i32 %26, %shl.i
  %nofl_db.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 4
  %27 = ptrtoint ptr %nofl_db.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nofl_db.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %sub4) #9
  %31 = shl i32 %30, 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #9, !srcloc !10
  %32 = ptrtoint ptr %nofl_db.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nofl_db.i, align 4
  %txdl_ptr4.i = getelementptr inbounds %struct.__vxge_hw_non_offload_db_wrapper, ptr %33, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txdl_ptr4.i, i32 %34) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %add.ptr.i9.i = getelementptr i8, ptr %txdl_ptr4.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #9, !srcloc !10
  %stats = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 19
  %35 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stats, align 128
  %total_posts = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_fifo_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %total_posts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %total_posts, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %total_posts, align 4
  %39 = load ptr, ptr %stats, align 128
  %usage_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usage_cnt, align 4
  %inc6 = add i32 %41, 1
  store i32 %inc6, ptr %usage_cnt, align 4
  %42 = load ptr, ptr %stats, align 128
  %usage_max = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %usage_max to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %usage_max, align 4
  %usage_cnt11 = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %usage_cnt11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %usage_cnt11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp = icmp ult i32 %44, %46
  br i1 %cmp, label %if.then, label %vxge_hw_channel_dtr_post.exit.if.end_crit_edge

vxge_hw_channel_dtr_post.exit.if.end_crit_edge:   ; preds = %vxge_hw_channel_dtr_post.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %vxge_hw_channel_dtr_post.exit
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %usage_max to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %usage_max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %vxge_hw_channel_dtr_post.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_fifo_txdl_next_completed(ptr nocapture noundef %fifo, ptr nocapture noundef %txdlh, ptr nocapture noundef writeonly %t_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 9
  %0 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_arr.i, align 8
  %compl_index.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 13
  %2 = ptrtoint ptr %compl_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_index.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %txdlh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %txdlh, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %5) #9, !srcloc !19
  %7 = ptrtoint ptr %txdlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txdlh, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %and = and i64 %10, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.end
  %11 = ptrtoint ptr %work_arr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %work_arr.i, align 8
  %13 = ptrtoint ptr %compl_index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %compl_index.i, align 128
  %arrayidx.i24 = getelementptr ptr, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.i24, align 4
  %16 = load i32, ptr %compl_index.i, align 128
  %inc.i = add i32 %16, 1
  %length.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 4
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %18)
  %cmp.i = icmp eq i32 %inc.i, %18
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %19 = ptrtoint ptr %compl_index.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select.i, ptr %compl_index.i, align 128
  %stats.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 21
  %20 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stats.i, align 32
  %total_compl_cnt.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %total_compl_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_compl_cnt.i, align 4
  %inc3.i = add i32 %23, 1
  store i32 %inc3.i, ptr %total_compl_cnt.i, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %8, align 8
  %shr = lshr i64 %25, 48
  %26 = trunc i64 %shr to i32
  %conv = and i32 %26, 15
  %27 = ptrtoint ptr %t_code to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %t_code, align 4
  %stats = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 19
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stats, align 128
  %usage_cnt = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usage_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp6.not = icmp eq i32 %31, 0
  br i1 %cmp6.not, label %if.then2.exit_crit_edge, label %if.then8

if.then2.exit_crit_edge:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then8:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %31, -1
  %32 = ptrtoint ptr %usage_cnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dec, ptr %usage_cnt, align 4
  br label %exit

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %txdlh to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %txdlh, align 4
  br label %exit

exit:                                             ; preds = %if.end13, %if.then8, %if.then2.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 101, %if.end13 ], [ 101, %entry.exit_crit_edge ], [ 0, %if.then8 ], [ 0, %if.then2.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vxge_hw_fifo_handle_tcode(ptr nocapture noundef readonly %fifo, ptr nocapture noundef readnone %txdlh, i32 noundef %t_code) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %t_code, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp2 = icmp ugt i32 %and, 4
  br i1 %cmp2, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stats = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 19
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 128
  %arrayidx = getelementptr %struct.vxge_hw_vpath_stats_sw_fifo_info, ptr %1, i32 0, i32 3, i32 %t_code
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end ], [ 214, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vxge_hw_fifo_txdl_free(ptr nocapture noundef %fifo, ptr noundef %txdlh) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %free_arr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 14
  %0 = ptrtoint ptr %free_arr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_arr.i, align 4
  %free_ptr.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 15
  %2 = ptrtoint ptr %free_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_ptr.i, align 8
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %free_ptr.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %dec.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %txdlh, ptr %arrayidx.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_mac_addr_add(ptr noundef %vp, ptr nocapture noundef readonly %macaddr, ptr nocapture noundef readonly %macaddr_mask, i32 noundef %duplicate_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %for.body.preheader

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %macaddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %macaddr, align 1
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %macaddr_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %macaddr_mask, align 1
  %conv4 = zext i8 %3 to i64
  %arrayidx.1 = getelementptr i8, ptr %macaddr, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i64
  %arrayidx3.1 = getelementptr i8, ptr %macaddr_mask, i32 1
  %6 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.1, align 1
  %conv4.1 = zext i8 %7 to i64
  %8 = shl nuw nsw i64 %conv, 16
  %9 = shl nuw nsw i64 %conv.1, 8
  %shl.2 = or i64 %8, %9
  %arrayidx.2 = getelementptr i8, ptr %macaddr, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %11 to i64
  %or.2 = or i64 %shl.2, %conv.2
  %12 = shl nuw nsw i64 %conv4, 16
  %13 = shl nuw nsw i64 %conv4.1, 8
  %shl2.2 = or i64 %12, %13
  %arrayidx3.2 = getelementptr i8, ptr %macaddr_mask, i32 2
  %14 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.2, align 1
  %conv4.2 = zext i8 %15 to i64
  %or5.2 = or i64 %shl2.2, %conv4.2
  %arrayidx.3 = getelementptr i8, ptr %macaddr, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %17 to i64
  %arrayidx3.3 = getelementptr i8, ptr %macaddr_mask, i32 3
  %18 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.3, align 1
  %conv4.3 = zext i8 %19 to i64
  %20 = shl nuw nsw i64 %or.2, 16
  %21 = shl nuw nsw i64 %conv.3, 8
  %shl.4 = or i64 %20, %21
  %arrayidx.4 = getelementptr i8, ptr %macaddr, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %23 to i64
  %or.4 = or i64 %shl.4, %conv.4
  %24 = shl nuw nsw i64 %or5.2, 16
  %25 = shl nuw nsw i64 %conv4.3, 8
  %shl2.4 = or i64 %24, %25
  %arrayidx3.4 = getelementptr i8, ptr %macaddr_mask, i32 4
  %26 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx3.4, align 1
  %conv4.4 = zext i8 %27 to i64
  %or5.4 = or i64 %shl2.4, %conv4.4
  %arrayidx.5 = getelementptr i8, ptr %macaddr, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %29 to i64
  %arrayidx3.5 = getelementptr i8, ptr %macaddr_mask, i32 5
  %30 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx3.5, align 1
  %conv4.5 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplicate_mode)
  %switch.selectcmp = icmp eq i32 %duplicate_mode, 1
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %duplicate_mode)
  %switch.selectcmp22 = icmp eq i32 %duplicate_mode, 2
  %switch.select23 = select i1 %switch.selectcmp22, i32 2, i32 %switch.select
  %32 = shl i64 %or.4, 24
  %33 = shl nuw nsw i64 %conv.5, 16
  %shl8 = or i64 %32, %33
  %34 = shl i64 %or5.4, 24
  %35 = shl nuw nsw i64 %conv4.5, 16
  %shl9 = or i64 %34, %35
  %conv10 = zext i32 %switch.select23 to i64
  %or12 = or i64 %shl9, %conv10
  %call = tail call i32 @__vxge_hw_vpath_rts_table_set(ptr noundef nonnull %vp, i32 noundef 0, i32 noundef 0, i32 noundef 0, i64 noundef %shl8, i64 noundef %or12) #9
  br label %exit

exit:                                             ; preds = %for.body.preheader, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %for.body.preheader ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vxge_hw_vpath_rts_table_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_mac_addr_get(ptr noundef %vp, ptr nocapture noundef writeonly %macaddr, ptr nocapture noundef writeonly %macaddr_mask) local_unnamed_addr #0 align 64 {
entry:
  %data1 = alloca i64, align 8
  %data2 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #9
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data2) #9
  %1 = ptrtoint ptr %data2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %data2, align 8
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %call = call i32 @__vxge_hw_vpath_rts_table_get(ptr noundef nonnull %vp, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %data1, ptr noundef nonnull %data2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data1, align 8
  %shr = lshr i64 %3, 16
  store i64 %shr, ptr %data1, align 8
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data2, align 8
  %shr4 = lshr i64 %5, 16
  %conv = trunc i64 %shr to i8
  %arrayidx = getelementptr i8, ptr %macaddr, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %shr8 = lshr i64 %3, 24
  %conv10 = trunc i64 %shr4 to i8
  %arrayidx12 = getelementptr i8, ptr %macaddr_mask, i32 5
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %arrayidx12, align 1
  %shr13 = lshr i64 %5, 24
  %conv.1 = trunc i64 %shr8 to i8
  %arrayidx.1 = getelementptr i8, ptr %macaddr, i32 4
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %shr8.1 = lshr i64 %3, 32
  %conv10.1 = trunc i64 %shr13 to i8
  %arrayidx12.1 = getelementptr i8, ptr %macaddr_mask, i32 4
  %9 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10.1, ptr %arrayidx12.1, align 1
  %shr13.1 = lshr i64 %5, 32
  %conv.2 = trunc i64 %shr8.1 to i8
  %arrayidx.2 = getelementptr i8, ptr %macaddr, i32 3
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %shr8.2 = lshr i64 %3, 40
  %conv10.2 = trunc i64 %shr13.1 to i8
  %arrayidx12.2 = getelementptr i8, ptr %macaddr_mask, i32 3
  %11 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.2, ptr %arrayidx12.2, align 1
  %shr13.2 = lshr i64 %5, 40
  %conv.3 = trunc i64 %shr8.2 to i8
  %arrayidx.3 = getelementptr i8, ptr %macaddr, i32 2
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  %shr8.3 = lshr i64 %3, 48
  %conv10.3 = trunc i64 %shr13.2 to i8
  %arrayidx12.3 = getelementptr i8, ptr %macaddr_mask, i32 2
  %13 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10.3, ptr %arrayidx12.3, align 1
  %shr13.3 = lshr i64 %5, 48
  %conv.4 = trunc i64 %shr8.3 to i8
  %arrayidx.4 = getelementptr i8, ptr %macaddr, i32 1
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.4, ptr %arrayidx.4, align 1
  %shr8.4 = lshr i64 %3, 56
  %conv10.4 = trunc i64 %shr13.3 to i8
  %arrayidx12.4 = getelementptr i8, ptr %macaddr_mask, i32 1
  %15 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.4, ptr %arrayidx12.4, align 1
  %shr13.4 = lshr i64 %5, 56
  %conv.5 = trunc i64 %shr8.4 to i8
  %16 = ptrtoint ptr %macaddr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.5, ptr %macaddr, align 1
  %conv10.5 = trunc i64 %shr13.4 to i8
  %17 = ptrtoint ptr %macaddr_mask to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.5, ptr %macaddr_mask, align 1
  br label %exit

exit:                                             ; preds = %if.end3, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end.exit_crit_edge ], [ 201, %entry.exit_crit_edge ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #9
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vxge_hw_vpath_rts_table_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_mac_addr_get_next(ptr noundef %vp, ptr nocapture noundef writeonly %macaddr, ptr nocapture noundef writeonly %macaddr_mask) local_unnamed_addr #0 align 64 {
entry:
  %data1 = alloca i64, align 8
  %data2 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data1) #9
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data2) #9
  %1 = ptrtoint ptr %data2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %data2, align 8
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %call = call i32 @__vxge_hw_vpath_rts_table_get(ptr noundef nonnull %vp, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %data1, ptr noundef nonnull %data2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data1, align 8
  %shr = lshr i64 %3, 16
  store i64 %shr, ptr %data1, align 8
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data2, align 8
  %shr4 = lshr i64 %5, 16
  %conv = trunc i64 %shr to i8
  %arrayidx = getelementptr i8, ptr %macaddr, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %shr8 = lshr i64 %3, 24
  %conv10 = trunc i64 %shr4 to i8
  %arrayidx12 = getelementptr i8, ptr %macaddr_mask, i32 5
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %arrayidx12, align 1
  %shr13 = lshr i64 %5, 24
  %conv.1 = trunc i64 %shr8 to i8
  %arrayidx.1 = getelementptr i8, ptr %macaddr, i32 4
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %shr8.1 = lshr i64 %3, 32
  %conv10.1 = trunc i64 %shr13 to i8
  %arrayidx12.1 = getelementptr i8, ptr %macaddr_mask, i32 4
  %9 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10.1, ptr %arrayidx12.1, align 1
  %shr13.1 = lshr i64 %5, 32
  %conv.2 = trunc i64 %shr8.1 to i8
  %arrayidx.2 = getelementptr i8, ptr %macaddr, i32 3
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %shr8.2 = lshr i64 %3, 40
  %conv10.2 = trunc i64 %shr13.1 to i8
  %arrayidx12.2 = getelementptr i8, ptr %macaddr_mask, i32 3
  %11 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.2, ptr %arrayidx12.2, align 1
  %shr13.2 = lshr i64 %5, 40
  %conv.3 = trunc i64 %shr8.2 to i8
  %arrayidx.3 = getelementptr i8, ptr %macaddr, i32 2
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  %shr8.3 = lshr i64 %3, 48
  %conv10.3 = trunc i64 %shr13.2 to i8
  %arrayidx12.3 = getelementptr i8, ptr %macaddr_mask, i32 2
  %13 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10.3, ptr %arrayidx12.3, align 1
  %shr13.3 = lshr i64 %5, 48
  %conv.4 = trunc i64 %shr8.3 to i8
  %arrayidx.4 = getelementptr i8, ptr %macaddr, i32 1
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.4, ptr %arrayidx.4, align 1
  %shr8.4 = lshr i64 %3, 56
  %conv10.4 = trunc i64 %shr13.3 to i8
  %arrayidx12.4 = getelementptr i8, ptr %macaddr_mask, i32 1
  %15 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.4, ptr %arrayidx12.4, align 1
  %shr13.4 = lshr i64 %5, 56
  %conv.5 = trunc i64 %shr8.4 to i8
  %16 = ptrtoint ptr %macaddr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.5, ptr %macaddr, align 1
  %conv10.5 = trunc i64 %shr13.4 to i8
  %17 = ptrtoint ptr %macaddr_mask to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.5, ptr %macaddr_mask, align 1
  br label %exit

exit:                                             ; preds = %if.end3, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end.exit_crit_edge ], [ 201, %entry.exit_crit_edge ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data1) #9
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_mac_addr_delete(ptr noundef %vp, ptr nocapture noundef readonly %macaddr, ptr nocapture noundef readonly %macaddr_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %for.body.preheader

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %macaddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %macaddr, align 1
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %macaddr_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %macaddr_mask, align 1
  %conv4 = zext i8 %3 to i64
  %arrayidx.1 = getelementptr i8, ptr %macaddr, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i64
  %arrayidx3.1 = getelementptr i8, ptr %macaddr_mask, i32 1
  %6 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.1, align 1
  %conv4.1 = zext i8 %7 to i64
  %8 = shl nuw nsw i64 %conv, 16
  %9 = shl nuw nsw i64 %conv.1, 8
  %shl.2 = or i64 %8, %9
  %arrayidx.2 = getelementptr i8, ptr %macaddr, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %11 to i64
  %or.2 = or i64 %shl.2, %conv.2
  %12 = shl nuw nsw i64 %conv4, 16
  %13 = shl nuw nsw i64 %conv4.1, 8
  %shl2.2 = or i64 %12, %13
  %arrayidx3.2 = getelementptr i8, ptr %macaddr_mask, i32 2
  %14 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.2, align 1
  %conv4.2 = zext i8 %15 to i64
  %or5.2 = or i64 %shl2.2, %conv4.2
  %arrayidx.3 = getelementptr i8, ptr %macaddr, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %17 to i64
  %arrayidx3.3 = getelementptr i8, ptr %macaddr_mask, i32 3
  %18 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.3, align 1
  %conv4.3 = zext i8 %19 to i64
  %20 = shl nuw nsw i64 %or.2, 16
  %21 = shl nuw nsw i64 %conv.3, 8
  %shl.4 = or i64 %20, %21
  %arrayidx.4 = getelementptr i8, ptr %macaddr, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %23 to i64
  %or.4 = or i64 %shl.4, %conv.4
  %24 = shl nuw nsw i64 %or5.2, 16
  %25 = shl nuw nsw i64 %conv4.3, 8
  %shl2.4 = or i64 %24, %25
  %arrayidx3.4 = getelementptr i8, ptr %macaddr_mask, i32 4
  %26 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx3.4, align 1
  %conv4.4 = zext i8 %27 to i64
  %or5.4 = or i64 %shl2.4, %conv4.4
  %arrayidx.5 = getelementptr i8, ptr %macaddr, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %29 to i64
  %arrayidx3.5 = getelementptr i8, ptr %macaddr_mask, i32 5
  %30 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx3.5, align 1
  %conv4.5 = zext i8 %31 to i64
  %32 = shl i64 %or.4, 24
  %33 = shl nuw nsw i64 %conv.5, 16
  %shl6 = or i64 %32, %33
  %34 = shl i64 %or5.4, 24
  %35 = shl nuw nsw i64 %conv4.5, 16
  %shl7 = or i64 %34, %35
  %call = tail call i32 @__vxge_hw_vpath_rts_table_set(ptr noundef nonnull %vp, i32 noundef 1, i32 noundef 0, i32 noundef 0, i64 noundef %shl6, i64 noundef %shl7) #9
  br label %exit

exit:                                             ; preds = %for.body.preheader, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %for.body.preheader ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_vid_add(ptr noundef %vp, i64 noundef %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i64 %vid, 52
  %call = tail call i32 @__vxge_hw_vpath_rts_table_set(ptr noundef nonnull %vp, i32 noundef 0, i32 noundef 1, i32 noundef 0, i64 noundef %shl, i64 noundef 0) #9
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_vid_delete(ptr noundef %vp, i64 noundef %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i64 %vid, 52
  %call = tail call i32 @__vxge_hw_vpath_rts_table_set(ptr noundef nonnull %vp, i32 noundef 1, i32 noundef 1, i32 noundef 0, i64 noundef %shl, i64 noundef 0) #9
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_promisc_enable(ptr noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ringh, align 128
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hldev = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hldev, align 8
  %access_rights = getelementptr inbounds %struct.__vxge_hw_device, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %access_rights to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %access_rights, align 16
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %9, i32 0, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %rxmac_vcfg0, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %12 = zext i32 %11 to i64
  %13 = zext i32 %10 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #9
  %and6 = and i64 %16, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg010 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %18, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %19 = trunc i64 %16 to i32
  %conv.i = or i32 %19, 1118464
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg010, i32 %20) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %16, 32
  %conv3.i = trunc i64 %shr.i to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i20 = getelementptr i8, ptr %rxmac_vcfg010, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %21) #9, !srcloc !10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.then8 ], [ 201, %lor.lhs.false.cleanup_crit_edge ], [ 201, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_promisc_disable(ptr noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ringh, align 128
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.exit_crit_edge, label %if.end

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %rxmac_vcfg0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #9
  %and = and i64 %12, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.exit_crit_edge, label %if.then4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg07 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %14, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %15 = trunc i64 %12 to i32
  %conv.i = and i32 %15, -1114369
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg07, i32 %16) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %12, 32
  %conv3.i = trunc i64 %shr.i to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i14 = getelementptr i8, ptr %rxmac_vcfg07, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %17) #9, !srcloc !10
  br label %exit

exit:                                             ; preds = %if.then4, %if.end.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.end.exit_crit_edge ], [ 201, %lor.lhs.false.exit_crit_edge ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_bcast_enable(ptr noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ringh, align 128
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.exit_crit_edge, label %if.end

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %rxmac_vcfg0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #9
  %and = and i64 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg06 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %14, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %15 = trunc i64 %12 to i32
  %conv.i = or i32 %15, 4096
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg06, i32 %16) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %12, 32
  %conv3.i = trunc i64 %shr.i to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i13 = getelementptr i8, ptr %rxmac_vcfg06, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %17) #9, !srcloc !10
  br label %exit

exit:                                             ; preds = %if.then4, %if.end.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end.exit_crit_edge ], [ 0, %if.then4 ], [ 201, %lor.lhs.false.exit_crit_edge ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_mcast_enable(ptr noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ringh, align 128
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.exit_crit_edge, label %if.end

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %rxmac_vcfg0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #9
  %and = and i64 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg06 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %14, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %15 = trunc i64 %12 to i32
  %conv.i = or i32 %15, 65536
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg06, i32 %16) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %12, 32
  %conv3.i = trunc i64 %shr.i to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i13 = getelementptr i8, ptr %rxmac_vcfg06, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %17) #9, !srcloc !10
  br label %exit

exit:                                             ; preds = %if.then4, %if.end.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.end.exit_crit_edge ], [ 0, %if.then4 ], [ 201, %lor.lhs.false.exit_crit_edge ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_mcast_disable(ptr noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %lor.lhs.false

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %ringh = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ringh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ringh, align 128
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.exit_crit_edge, label %if.end

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %lor.lhs.false
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %5, i32 0, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac_vcfg0) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %rxmac_vcfg0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #9
  %and = and i64 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.exit_crit_edge, label %if.then4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vp_reg, align 16
  %rxmac_vcfg07 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %14, i32 0, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %15 = trunc i64 %12 to i32
  %conv.i = and i32 %15, -65537
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac_vcfg07, i32 %16) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %12, 32
  %conv3.i = trunc i64 %shr.i to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i14 = getelementptr i8, ptr %rxmac_vcfg07, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %17) #9, !srcloc !10
  br label %exit

exit:                                             ; preds = %if.then4, %if.end.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %status.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.end.exit_crit_edge ], [ 201, %lor.lhs.false.exit_crit_edge ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_alarm_process(ptr noundef readonly %vp, i32 noundef %skip_alarms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vp, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %call = tail call fastcc i32 @__vxge_hw_vpath_alarm_process(ptr noundef %1, i32 noundef %skip_alarms)
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %status.0 = phi i32 [ %call, %if.end ], [ 201, %entry.exit_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_msix_set(ptr nocapture noundef readonly %vp, ptr nocapture noundef readonly %tim_msix_id, i32 noundef %alarm_msix_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath1 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath1, align 4
  %vp_reg2 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vp_reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vp_reg2, align 16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  %mul = shl i32 %5, 2
  %6 = ptrtoint ptr %tim_msix_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tim_msix_id, align 4
  %add = add i32 %mul, %7
  %conv = zext i32 %add to i64
  %shl = shl i64 %conv, 48
  %arrayidx6 = getelementptr i32, ptr %tim_msix_id, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %9, %mul
  %conv8 = zext i32 %add7 to i64
  %shl9 = shl i64 %conv8, 40
  %or = or i64 %shl9, %shl
  %interrupt_cfg0 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %interrupt_cfg0, i32 0) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr exact i64 %or, 32
  %conv3.i = trunc i64 %shr.i to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i = getelementptr i8, ptr %interrupt_cfg0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #9, !srcloc !10
  %hldev = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hldev, align 8
  %first_vp_id = getelementptr inbounds %struct.__vxge_hw_device, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %first_vp_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_vp_id, align 16
  %mul10 = shl i32 %14, 2
  %add11 = add i32 %mul10, %alarm_msix_id
  %interrupt_cfg2 = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %interrupt_cfg2, i32 0) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %15 = and i32 %add11, 255
  %add.ptr.i28 = getelementptr i8, ptr %interrupt_cfg2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %15) #9, !srcloc !10
  %16 = ptrtoint ptr %hldev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hldev, align 8
  %intr_mode = getelementptr inbounds %struct.__vxge_hw_device, ptr %17, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %intr_mode, align 4
  %bf.lshr.mask = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, -128
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %one_shot_vect0_en = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i29 = getelementptr i8, ptr %one_shot_vect0_en, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 16) #9, !srcloc !10
  %one_shot_vect1_en = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i30 = getelementptr i8, ptr %one_shot_vect1_en, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 16) #9, !srcloc !10
  %one_shot_vect2_en = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %3, i32 0, i32 161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %add.ptr.i31 = getelementptr i8, ptr %one_shot_vect2_en, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 16) #9, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_msix_mask(ptr nocapture noundef readonly %vp, i32 noundef %msix_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %hldev1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hldev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hldev1, align 8
  %shr = ashr i32 %msix_id, 2
  %sh_prom = zext i32 %shr to i64
  %shr2 = lshr i64 -9223372036854775808, %sh_prom
  %shr3 = lshr i64 %shr2, 32
  %conv = trunc i64 %shr3 to i32
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common_reg, align 4
  %rem = srem i32 %msix_id, 4
  %arrayidx = getelementptr %struct.vxge_hw_common_reg, ptr %5, i32 0, i32 37, i32 %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_msix_clear(ptr nocapture noundef readonly %vp, i32 noundef %msix_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %hldev1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hldev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hldev1, align 8
  %intr_mode = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %intr_mode, align 4
  %bf.lshr.mask = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, -128
  %shr = ashr i32 %msix_id, 2
  %sh_prom = zext i32 %shr to i64
  %shr2 = lshr i64 -9223372036854775808, %sh_prom
  %shr3 = lshr i64 %shr2, 32
  %conv = trunc i64 %shr3 to i32
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common_reg, align 4
  %rem = srem i32 %msix_id, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.vxge_hw_common_reg, ptr %6, i32 0, i32 42, i32 %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12 = getelementptr %struct.vxge_hw_common_reg, ptr %6, i32 0, i32 36, i32 %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  %add.ptr.i18 = getelementptr i8, ptr %arrayidx12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %8) #9, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_msix_unmask(ptr nocapture noundef readonly %vp, i32 noundef %msix_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %hldev1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hldev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hldev1, align 8
  %shr = ashr i32 %msix_id, 2
  %sh_prom = zext i32 %shr to i64
  %shr2 = lshr i64 -9223372036854775808, %sh_prom
  %shr3 = lshr i64 %shr2, 32
  %conv = trunc i64 %shr3 to i32
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common_reg, align 4
  %rem = srem i32 %msix_id, 4
  %arrayidx = getelementptr %struct.vxge_hw_common_reg, ptr %5, i32 0, i32 36, i32 %rem
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_inta_mask_tx_rx(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %hldev1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hldev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hldev1, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul.neg = mul nsw i32 %5, -4
  %sub5 = add nsw i32 %mul.neg, 60
  %sh_prom = zext i32 %sub5 to i64
  %shl = shl nuw i64 8, %sh_prom
  %shl12 = shl nuw nsw i64 4, %sh_prom
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tim_int_mask1.sroa.6.0 = phi i32 [ 0, %if.then ], [ 1073741824, %entry.if.end_crit_edge ]
  %tim_int_mask1.sroa.0.0 = phi i32 [ 0, %if.then ], [ -2147483648, %entry.if.end_crit_edge ]
  %tim_int_mask0.sroa.7.0 = phi i64 [ %shl12, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tim_int_mask0.sroa.0.0 = phi i64 [ %shl, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common_reg, align 4
  %tim_int_mask017 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %7, i32 0, i32 49
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tim_int_mask017) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %tim_int_mask017, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tim_int_mask0.sroa.0.0)
  %cmp19.not = icmp eq i64 %tim_int_mask0.sroa.0.0, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tim_int_mask0.sroa.7.0)
  %cmp21.not = icmp eq i64 %tim_int_mask0.sroa.7.0, 0
  %or.cond = select i1 %cmp19.not, i1 %cmp21.not, i1 false
  br i1 %or.cond, label %if.end.if.end29_crit_edge, label %if.then22

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = zext i32 %8 to i64
  %11 = shl nuw i64 %10, 32
  %12 = zext i32 %9 to i64
  %13 = or i64 %11, %12
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #9
  %or25 = or i64 %tim_int_mask0.sroa.0.0, %tim_int_mask0.sroa.7.0
  %or26 = or i64 %or25, %14
  %15 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common_reg, align 4
  %tim_int_mask028 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %16, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %or26 to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_int_mask028, i32 %17) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %or26, 32
  %conv3.i = trunc i64 %shr.i to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i71 = getelementptr i8, ptr %tim_int_mask028, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %18) #9, !srcloc !10
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end.if.end29_crit_edge
  %19 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %common_reg, align 4
  %tim_int_mask131 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %20, i32 0, i32 51
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tim_int_mask131) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  br i1 %cmp, label %if.end29.if.end50_crit_edge, label %if.then41

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then41:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %or44 = or i32 %tim_int_mask1.sroa.0.0, %tim_int_mask1.sroa.6.0
  %or4670 = or i32 %or44, %22
  %23 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %common_reg, align 4
  %tim_int_mask149 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %24, i32 0, i32 51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or4670) #9
  %add.ptr.i72 = getelementptr i8, ptr %tim_int_mask149, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %25) #9, !srcloc !10
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.end29.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxge_hw_vpath_inta_unmask_tx_rx(ptr nocapture noundef readonly %vp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vpath = getelementptr inbounds %struct.__vxge_hw_vpath_handle, ptr %vp, i32 0, i32 1
  %0 = ptrtoint ptr %vpath to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpath, align 4
  %hldev1 = getelementptr inbounds %struct.__vxge_hw_virtualpath, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hldev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hldev1, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ult i32 %5, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul.neg = mul nsw i32 %5, -4
  %sub5 = add nsw i32 %mul.neg, 60
  %sh_prom = zext i32 %sub5 to i64
  %shl = shl nuw i64 8, %sh_prom
  %shl12 = shl nuw nsw i64 4, %sh_prom
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tim_int_mask0.sroa.0.0 = phi i64 [ %shl, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tim_int_mask0.sroa.7.0 = phi i64 [ %shl12, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tim_int_mask1.sroa.0.0 = phi i32 [ 0, %if.then ], [ -2147483648, %entry.if.end_crit_edge ]
  %tim_int_mask1.sroa.6.0 = phi i32 [ 0, %if.then ], [ 1073741824, %entry.if.end_crit_edge ]
  %common_reg = getelementptr inbounds %struct.__vxge_hw_device, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common_reg, align 4
  %tim_int_mask017 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %7, i32 0, i32 49
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tim_int_mask017) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !14
  %add.ptr.i = getelementptr i32, ptr %tim_int_mask017, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !15
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tim_int_mask0.sroa.0.0)
  %cmp19.not = icmp eq i64 %tim_int_mask0.sroa.0.0, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tim_int_mask0.sroa.7.0)
  %cmp21.not = icmp eq i64 %tim_int_mask0.sroa.7.0, 0
  %or.cond = select i1 %cmp19.not, i1 %cmp21.not, i1 false
  br i1 %or.cond, label %if.end.if.end28_crit_edge, label %if.then22

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or25 = or i64 %tim_int_mask0.sroa.7.0, %tim_int_mask0.sroa.0.0
  %neg = xor i64 %or25, -1
  %and = and i64 %14, %neg
  %15 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common_reg, align 4
  %tim_int_mask027 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %16, i32 0, i32 49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %and to i32
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tim_int_mask027, i32 %17) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %and, 32
  %conv3.i = trunc i64 %shr.i to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i62 = getelementptr i8, ptr %tim_int_mask027, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %18) #9, !srcloc !10
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end.if.end28_crit_edge
  br i1 %cmp, label %if.end28.if.end43_crit_edge, label %if.then34

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %or37 = or i32 %tim_int_mask1.sroa.6.0, %tim_int_mask1.sroa.0.0
  %neg38 = xor i32 %or37, -1
  %19 = trunc i64 %14 to i32
  %conv40 = and i32 %19, %neg38
  %20 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common_reg, align 4
  %tim_int_mask142 = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %21, i32 0, i32 51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv40) #9
  %add.ptr.i63 = getelementptr i8, ptr %tim_int_mask142, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %22) #9, !srcloc !10
  br label %if.end43

if.end43:                                         ; preds = %if.then34, %if.end28.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_poll_rx(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmpl_cnt = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %cmpl_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmpl_cnt, align 8
  %work_arr.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 9
  %1 = ptrtoint ptr %work_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %work_arr.i.i, align 8
  %compl_index.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 13
  %3 = ptrtoint ptr %compl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %compl_index.i.i, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %6) #9, !srcloc !19
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %control_02.i = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %control_02.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %control_02.i, align 8
  %and.i = and i64 %8, 72057594037927936
  %shr.i = lshr i64 %8, 48
  %9 = trunc i64 %shr.i to i8
  %conv.i = and i8 %9, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv.i)
  %cmp5.i = icmp eq i8 %conv.i, 12
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.then7.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmpl_cnt, align 8
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %cmpl_cnt, align 8
  %12 = ptrtoint ptr %work_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %work_arr.i.i, align 8
  %14 = ptrtoint ptr %compl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %compl_index.i.i, align 128
  %arrayidx.i40.i = getelementptr ptr, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.i40.i, align 4
  %17 = load i32, ptr %compl_index.i.i, align 128
  %inc.i.i = add i32 %17, 1
  %length.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 4
  %18 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %19)
  %cmp.i.i = icmp eq i32 %inc.i.i, %19
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %20 = ptrtoint ptr %compl_index.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select.i.i, ptr %compl_index.i.i, align 128
  %stats.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 21
  %21 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stats.i.i, align 32
  %total_compl_cnt.i.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %total_compl_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_compl_cnt.i.i, align 4
  %inc3.i.i = add i32 %24, 1
  store i32 %inc3.i.i, ptr %total_compl_cnt.i.i, align 4
  %stats.i = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 23
  %25 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stats.i, align 128
  %usage_cnt.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %usage_cnt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usage_cnt.i, align 4
  %inc8.i = add i32 %28, 1
  store i32 %inc8.i, ptr %usage_cnt.i, align 4
  %29 = load ptr, ptr %stats.i, align 128
  %usage_max.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %usage_max.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usage_max.i, align 4
  %usage_cnt13.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %usage_cnt13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usage_cnt13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp14.i = icmp ult i32 %31, %33
  br i1 %cmp14.i, label %if.then16.i, label %if.then7.i.if.then_crit_edge

if.then7.i.if.then_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then16.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %usage_max.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %usage_max.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then16.i, %if.then7.i.if.then_crit_edge
  %callback = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 19
  %35 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %callback, align 8
  %userdata = getelementptr inbounds %struct.__vxge_hw_channel, ptr %ring, i32 0, i32 18
  %37 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %userdata, align 4
  %call1 = tail call i32 %36(ptr noundef %ring, ptr noundef nonnull %6, i8 noundef zeroext %conv.i, ptr noundef %38) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %status.0.i57 = phi i32 [ 0, %if.then ], [ 101, %entry.if.end_crit_edge ], [ 101, %if.end.i.if.end_crit_edge ]
  %39 = ptrtoint ptr %cmpl_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmpl_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp3.not = icmp eq i32 %40, 0
  br i1 %cmp3.not, label %if.end.if.end26_crit_edge, label %if.then4

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then4:                                         ; preds = %if.end
  %doorbell_cnt = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 13
  %41 = ptrtoint ptr %doorbell_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %doorbell_cnt, align 16
  %add = add i32 %42, %40
  store i32 %add, ptr %doorbell_cnt, align 16
  %conv = zext i32 %add to i64
  %rxds_limit = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 15
  %43 = ptrtoint ptr %rxds_limit to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rxds_limit, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv)
  %cmp7.not = icmp ugt i64 %44, %conv
  br i1 %cmp7.not, label %if.then4.if.end26_crit_edge, label %if.then9

if.then4.if.end26_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then9:                                         ; preds = %if.then4
  %mul = shl i32 %add, 2
  %total_db_cnt = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 14
  %45 = ptrtoint ptr %total_db_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %total_db_cnt, align 4
  %add12 = add i32 %46, %add
  store i32 %add12, ptr %total_db_cnt, align 4
  %rxds_per_block = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 9
  %47 = ptrtoint ptr %rxds_per_block to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rxds_per_block, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %48)
  %cmp14.not = icmp ult i32 %add12, %48
  br i1 %cmp14.not, label %if.then9.if.end20_crit_edge, label %if.then16

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %add17 = add i32 %mul, 4
  %rem = urem i32 %add12, %48
  %49 = ptrtoint ptr %total_db_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %rem, ptr %total_db_cnt, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then9.if.end20_crit_edge
  %new_count.0 = phi i32 [ %add17, %if.then16 ], [ %mul, %if.then9.if.end20_crit_edge ]
  %vp_reg = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 2
  %50 = ptrtoint ptr %vp_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vp_reg, align 4
  %prc_rxd_doorbell = getelementptr inbounds %struct.vxge_hw_vpath_reg, ptr %51, i32 0, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %new_count.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %prc_rxd_doorbell, i32 %52) #9, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %53 = ashr i32 %new_count.0, 31
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %add.ptr.i = getelementptr i8, ptr %prc_rxd_doorbell, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %54) #9, !srcloc !10
  %common_reg = getelementptr inbounds %struct.__vxge_hw_ring, ptr %ring, i32 0, i32 3
  %55 = ptrtoint ptr %common_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %common_reg, align 8
  %titan_general_int_status = getelementptr inbounds %struct.vxge_hw_common_reg, ptr %56, i32 0, i32 44
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %titan_general_int_status) #9, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !23
  %58 = ptrtoint ptr %doorbell_cnt to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %doorbell_cnt, align 16
  br label %if.end26

if.end26:                                         ; preds = %if.end20, %if.then4.if.end26_crit_edge, %if.end.if.end26_crit_edge
  ret i32 %status.0.i57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxge_hw_vpath_poll_tx(ptr noundef %fifo, ptr noundef %skb_ptr, i32 noundef %nr_skb, ptr noundef %more) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_arr.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 9
  %0 = ptrtoint ptr %work_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_arr.i.i, align 8
  %compl_index.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 13
  %2 = ptrtoint ptr %compl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_index.i.i, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %5) #9, !srcloc !19
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %entry.if.end5_crit_edge, label %if.end.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %and.i = and i64 %7, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %work_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %work_arr.i.i, align 8
  %10 = ptrtoint ptr %compl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %compl_index.i.i, align 128
  %arrayidx.i24.i = getelementptr ptr, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i24.i, align 4
  %13 = load i32, ptr %compl_index.i.i, align 128
  %inc.i.i = add i32 %13, 1
  %length.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 4
  %14 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %15)
  %cmp.i.i = icmp eq i32 %inc.i.i, %15
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %16 = ptrtoint ptr %compl_index.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select.i.i, ptr %compl_index.i.i, align 128
  %stats.i.i = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 21
  %17 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats.i.i, align 32
  %total_compl_cnt.i.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %total_compl_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_compl_cnt.i.i, align 4
  %inc3.i.i = add i32 %20, 1
  store i32 %inc3.i.i, ptr %total_compl_cnt.i.i, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %5, align 8
  %shr.i = lshr i64 %22, 48
  %23 = trunc i64 %shr.i to i32
  %conv.i = and i32 %23, 15
  %stats.i = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 19
  %24 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats.i, align 128
  %usage_cnt.i = getelementptr inbounds %struct.vxge_hw_vpath_stats_sw_common_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %usage_cnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usage_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp6.not.i = icmp eq i32 %27, 0
  br i1 %cmp6.not.i, label %if.then2.i.if.then_crit_edge, label %if.then8.i

if.then2.i.if.then_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then8.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %27, -1
  %28 = ptrtoint ptr %usage_cnt.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dec.i, ptr %usage_cnt.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then8.i, %if.then2.i.if.then_crit_edge
  %callback = getelementptr inbounds %struct.__vxge_hw_fifo, ptr %fifo, i32 0, i32 16
  %29 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %callback, align 8
  %userdata = getelementptr inbounds %struct.__vxge_hw_channel, ptr %fifo, i32 0, i32 18
  %31 = ptrtoint ptr %userdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %userdata, align 4
  %call2 = tail call i32 %30(ptr noundef %fifo, ptr noundef nonnull %5, i32 noundef %conv.i, ptr noundef %32, ptr noundef %skb_ptr, i32 noundef %nr_skb, ptr noundef %more) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %cmp3.not, i32 0, i32 3
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %status.0 = phi i32 [ %spec.select, %if.then ], [ 101, %entry.if.end5_crit_edge ], [ 101, %if.end.i.if.end5_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

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
!9 = !{i64 2156018064}
!10 = !{i64 6107126}
!11 = !{i64 2156018437}
!12 = !{i64 2156439525}
!13 = !{i64 6107544}
!14 = !{i64 2156017256}
!15 = !{i64 2156017694}
!16 = !{i64 2156534581}
!17 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 929393}
!20 = !{i64 2156539187}
!21 = !{i64 2156539383}
!22 = !{i64 2156545190}
!23 = !{i64 2156546351}
