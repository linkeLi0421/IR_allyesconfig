; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_hw_ct.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_hw_ct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_s = type { ptr, ptr, ptr, %struct.bfa_ioc_s, %struct.bfa_iocfc_s, %struct.bfa_timer_mod_s, %struct.bfa_modules_s, %struct.list_head, i32, [4 x %struct.list_head], i32, %struct.bfa_msix_s, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_pcidev_s = type { i32, i8, i16, i16, ptr }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%struct.bfa_ioc_regs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma_s = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod_s = type { %struct.list_head, i32, [35 x %struct.anon.1] }
%struct.anon.1 = type { ptr, ptr }
%struct.bfa_iocpf_s = type { ptr, ptr, i32, i32, i32 }
%struct.bfa_iocfc_s = type { ptr, ptr, %struct.bfa_iocfc_cfg_s, [4 x i32], [4 x i32], [4 x i8], %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, %struct.bfa_cb_qe_s, i32, i32, i32, %struct.bfa_dma_s, ptr, %struct.bfa_dma_s, ptr, [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], [4 x %struct.bfa_dma_s], %struct.bfa_iocfc_regs_s, %struct.bfa_hwif_s, ptr, ptr, i32, %struct.bfa_faa_args_s, %struct.bfa_mem_dma_s, %struct.bfa_mem_dma_s, [4 x %struct.bfa_mem_dma_s], [4 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_iocfc_cfg_s = type { %struct.bfa_iocfc_fwcfg_s, %struct.bfa_iocfc_drvcfg_s }
%struct.bfa_iocfc_fwcfg_s = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8] }
%struct.bfa_iocfc_drvcfg_s = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i16, i32 }
%struct.bfa_cb_qe_s = type { %struct.list_head, ptr, i32, i32, i32, ptr }
%struct.bfa_iocfc_regs_s = type { ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr] }
%struct.bfa_hwif_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bfa_faa_args_s = type { ptr, %struct.bfa_faa_cbfn_s, i8, i32 }
%struct.bfa_faa_cbfn_s = type { ptr, ptr }
%struct.bfa_mem_dma_s = type { %struct.list_head, i32, ptr, i64, ptr, i64 }
%struct.bfa_mem_kva_s = type { %struct.list_head, i32, ptr, ptr }
%struct.bfa_timer_mod_s = type { %struct.list_head }
%struct.bfa_modules_s = type { %struct.bfa_fcdiag_s, %struct.bfa_fcport_s, %struct.bfa_fcxp_mod_s, %struct.bfa_lps_mod_s, %struct.bfa_uf_mod_s, %struct.bfa_rport_mod_s, %struct.bfa_fcp_mod_s, %struct.bfa_sgpg_mod_s, %struct.bfa_port_s, %struct.bfa_ablk_s, %struct.bfa_cee_s, %struct.bfa_sfp_s, %struct.bfa_flash_s, %struct.bfa_diag_s, %struct.bfa_phy_s, %struct.bfa_dconf_mod_s, %struct.bfa_fru_s }
%struct.bfa_fcdiag_s = type { ptr, ptr, %struct.bfa_fcdiag_lb_s, %struct.bfa_fcdiag_qtest_s, %struct.bfa_dport_s }
%struct.bfa_fcdiag_lb_s = type { ptr, ptr, ptr, i32, i32 }
%struct.bfa_fcdiag_qtest_s = type { ptr, ptr, ptr, %struct.bfa_timer_s, i32, i32, i8, i8, i8, i8 }
%struct.bfa_dport_s = type { ptr, ptr, %struct.bfa_reqq_wait_s, ptr, ptr, %union.bfi_diag_dport_msg_u, i8, i8, [2 x i8], i32, i32, i64, i64, %struct.bfa_diag_dport_result_s }
%struct.bfa_reqq_wait_s = type { %struct.list_head, ptr, ptr }
%union.bfi_diag_dport_msg_u = type { %struct.bfi_diag_dport_scn_s }
%struct.bfi_diag_dport_scn_s = type { %struct.bfi_mhdr_s, i8, [3 x i8], %union.anon.5 }
%struct.bfi_mhdr_s = type { i8, i8, %union.anon.2 }
%union.anon.2 = type { i16 }
%union.anon.5 = type { %struct.bfi_diag_dport_scn_teststart_s }
%struct.bfi_diag_dport_scn_teststart_s = type { i64, i64, i8, i8, [2 x i8], i32 }
%struct.bfa_diag_dport_result_s = type { i64, i64, i64, i64, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, [4 x %struct.bfa_diag_dport_subtest_result_s] }
%struct.bfa_diag_dport_subtest_result_s = type { i8, [7 x i8], i64 }
%struct.bfa_fcport_s = type <{ ptr, ptr, i64, i64, i32, i32, i32, [3 x i8], i8, i8, %struct.fc_alpabm_s, %struct.bfa_port_cfg_s, [3 x i8], i32, %struct.bfa_qos_attr_s, %struct.bfa_qos_vc_attr_s, %struct.bfa_reqq_wait_s, %struct.bfa_reqq_wait_s, %struct.bfa_reqq_wait_s, ptr, ptr, %union.anon.6, ptr, %struct.bfa_fcport_ln_s, %struct.bfa_cb_qe_s, %struct.bfa_timer_s, i32, ptr, i64, ptr, i32, %struct.list_head, %struct.list_head, i32, [4 x i8], i64, i32, i32, i32, [4 x i8], %struct.bfa_fcport_trunk_s, i16, [6 x i8], %struct.bfa_mem_dma_s, i32, %struct.bfa_bbcr_attr_s, i32, [4 x i8] }>
%struct.fc_alpabm_s = type { [16 x i8] }
%struct.bfa_port_cfg_s = type { i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, %struct.bfa_qos_bw_s }
%struct.bfa_qos_bw_s = type { i8, i8, i8, i8 }
%struct.bfa_qos_attr_s = type { i8, [3 x i8], i32, %struct.bfa_qos_bw_s, %struct.bfa_qos_bw_s }
%struct.bfa_qos_vc_attr_s = type { i16, i16, i32, [16 x %struct.bfa_qos_vc_info_s] }
%struct.bfa_qos_vc_info_s = type { i8, i8, i8, i8 }
%union.anon.6 = type { %union.bfi_fcport_i2h_msg_u }
%union.bfi_fcport_i2h_msg_u = type { ptr }
%struct.bfa_fcport_ln_s = type { ptr, ptr, %struct.bfa_cb_qe_s, i32 }
%struct.bfa_fcport_trunk_s = type { %struct.bfa_trunk_attr_s }
%struct.bfa_trunk_attr_s = type { i32, i32, i32, i32, [2 x %struct.bfa_trunk_link_attr_s] }
%struct.bfa_trunk_link_attr_s = type { i64, i32, i32, i32, i32 }
%struct.bfa_bbcr_attr_s = type { i8, i8, i8, i8 }
%struct.bfa_fcxp_mod_s = type { ptr, ptr, i16, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, [13 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_lps_mod_s = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.bfa_mem_kva_s }
%struct.bfa_uf_mod_s = type { ptr, ptr, i16, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, [5 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_rport_mod_s = type { ptr, %struct.list_head, %struct.list_head, %struct.list_head, i16, %struct.bfa_mem_kva_s }
%struct.bfa_fcp_mod_s = type { ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, i32, i32, [4 x %struct.bfa_dma_s], %struct.bfa_fcpim_s, [4 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s, i32 }
%struct.bfa_fcpim_s = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.bfa_fcpim_del_itn_stats_s, i32, i32, i64, ptr, ptr }
%struct.bfa_fcpim_del_itn_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_sgpg_mod_s = type { ptr, i32, i32, %struct.list_head, %struct.list_head, [8 x %struct.bfa_mem_dma_s], %struct.bfa_mem_kva_s }
%struct.bfa_port_s = type { ptr, ptr, ptr, i32, i32, %struct.bfa_mbox_cmd_s, ptr, ptr, i32, i64, ptr, %struct.bfa_dma_s, i32, %struct.bfa_mbox_cmd_s, ptr, ptr, i32, %struct.bfa_ioc_notify_s, i32, i32, %struct.bfa_mem_dma_s }
%struct.bfa_mbox_cmd_s = type { %struct.list_head, [8 x i32] }
%struct.bfa_ioc_notify_s = type { %struct.list_head, ptr, ptr }
%struct.bfa_ablk_s = type { ptr, ptr, ptr, %struct.bfa_dma_s, i32, %struct.bfa_mbox_cmd_s, ptr, ptr, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s }
%struct.bfa_cee_s = type { ptr, i32, i32, i32, i32, i32, i32, %struct.bfa_cee_cbfn_s, %struct.bfa_ioc_notify_s, ptr, ptr, ptr, %struct.bfa_dma_s, %struct.bfa_dma_s, ptr, %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s, %struct.bfa_mem_dma_s }
%struct.bfa_cee_cbfn_s = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bfa_sfp_s = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.bfa_mbox_cmd_s, ptr, i64, %struct.bfa_ioc_notify_s, ptr, i32, ptr, ptr, i8, i8, i8, i8, %struct.bfa_mem_dma_s, i8 }
%struct.bfa_flash_s = type { ptr, ptr, i32, i8, [3 x i8], i32, i32, i32, i32, ptr, i64, %struct.bfa_reqq_wait_s, ptr, ptr, ptr, %struct.bfa_cb_qe_s, i32, %struct.bfa_mbox_cmd_s, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s }
%struct.bfa_diag_s = type { ptr, ptr, ptr, %struct.bfa_diag_fwping_s, %struct.bfa_diag_tsensor_s, %struct.bfa_diag_sfpshow_s, %struct.bfa_diag_led_s, %struct.bfa_diag_beacon_s, ptr, %struct.bfa_timer_s, ptr, ptr, ptr, i8, i8, [2 x i8], i32, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s }
%struct.bfa_diag_fwping_s = type { ptr, ptr, ptr, i32, i8, [3 x i8], i32, i32, %struct.bfa_mbox_cmd_s, ptr, i64 }
%struct.bfa_diag_tsensor_s = type { ptr, ptr, ptr, i8, [3 x i8], i32, %struct.bfa_mbox_cmd_s }
%struct.bfa_diag_sfpshow_s = type { ptr, ptr, ptr, i8, i8, [2 x i8], i32, %struct.bfa_mbox_cmd_s, ptr, i64 }
%struct.bfa_diag_led_s = type { %struct.bfa_mbox_cmd_s, i32 }
%struct.bfa_diag_beacon_s = type { %struct.bfa_mbox_cmd_s, i32, i32 }
%struct.bfa_phy_s = type { ptr, ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, i64, %struct.bfa_reqq_wait_s, ptr, ptr, ptr, %struct.bfa_cb_qe_s, i32, %struct.bfa_mbox_cmd_s, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s }
%struct.bfa_dconf_mod_s = type { ptr, i8, i32, i32, %struct.bfa_timer_s, ptr, ptr, ptr, ptr, %struct.bfa_mem_kva_s }
%struct.bfa_fru_s = type { ptr, ptr, i8, [3 x i8], i32, i32, i32, ptr, i64, %struct.bfa_reqq_wait_s, ptr, ptr, ptr, %struct.bfa_cb_qe_s, i32, %struct.bfa_mbox_cmd_s, %struct.bfa_ioc_notify_s, %struct.bfa_mem_dma_s, i8 }
%struct.list_head = type { ptr, ptr }
%struct.bfa_msix_s = type { i32, [22 x ptr] }
%struct.bfa_ioc_hwif_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/bfa/bfa_hw_ct.c\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [32 x i8] c"../drivers/scsi/bfa/bfa_hw_ct.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 105, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfa_hwct_reginit(ptr nocapture noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa_regs1 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22
  %pci_bar_kva = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %pci_func = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pci_func, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %. = select i1 %cmp, i32 81920, i32 82176
  %.19 = select i1 %cmp, i32 81924, i32 82180
  %add.ptr6 = getelementptr i8, ptr %1, i32 %.
  %4 = ptrtoint ptr %bfa_regs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr6, ptr %bfa_regs1, align 4
  %add.ptr8 = getelementptr i8, ptr %1, i32 %.19
  %5 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr8, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfa_hwct2_reginit(ptr nocapture noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bfa_regs1 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22
  %pci_bar_kva = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 196864
  %2 = ptrtoint ptr %bfa_regs1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %bfa_regs1, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 196868
  %intr_mask = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 1
  %3 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr2, ptr %intr_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_hwct_reqq_ack(ptr nocapture noundef readonly %bfa, i32 noundef %reqq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 4, i32 %reqq
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #8, !srcloc !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_hwct_rspq_ack(ptr nocapture noundef %bfa, i32 noundef %rspq, i32 noundef %ci) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 7, i32 %rspq
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #8, !srcloc !16
  %arrayidx7 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 4, i32 %rspq
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ci, ptr %arrayidx7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %ci)
  %arrayidx13 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 5, i32 %rspq
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_hwct2_rspq_ack(ptr nocapture noundef %bfa, i32 noundef %rspq, i32 noundef %ci) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 4, i32 %rspq
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ci, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %1 = tail call i32 @llvm.bswap.i32(i32 %ci)
  %arrayidx2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 4, i32 22, i32 5, i32 %rspq
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #8, !srcloc !16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_hwct_msix_getvecs(ptr nocapture noundef readnone %bfa, ptr nocapture noundef writeonly %msix_vecs_bmap, ptr nocapture noundef writeonly %num_vecs, ptr nocapture noundef writeonly %max_vec_bit) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msix_vecs_bmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 511, ptr %msix_vecs_bmap, align 4
  %1 = ptrtoint ptr %max_vec_bit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %max_vec_bit, align 4
  %2 = ptrtoint ptr %num_vecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 9, ptr %num_vecs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_hwct_msix_init(ptr nocapture noundef %bfa, i32 noundef %nvecs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %nvecs, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %entry.if.end_crit_edge, label %do.end, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 2
  %1 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trcmod, align 8
  %conv = sext i32 %nvecs to i64
  tail call void @__bfa_trc(ptr noundef %2, i32 noundef 1028, i32 noundef 106, i64 noundef %conv) #8
  %msix = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 11
  %3 = ptrtoint ptr %msix to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nvecs, ptr %msix, align 8
  %arrayidx.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 3
  %7 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 5
  %9 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 6
  %10 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 7
  %11 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 8
  %12 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.8.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @bfa_hwct_msix_uninstall(ptr nocapture noundef writeonly %bfa) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 3
  %3 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 4
  %4 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 5
  %5 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 6
  %6 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 7
  %7 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 8
  %8 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bfa_hwct_msix_dummy, ptr %arrayidx.8, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bfa_hwct_msix_ctrl_install(ptr nocapture noundef %bfa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msix = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 11
  %0 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msix, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else [
    i32 0, label %entry.if.end9_crit_edge
    i32 1, label %entry.if.end9.sink.split_crit_edge
  ]

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else, %entry.if.end9.sink.split_crit_edge
  %bfa_msix_lpu_err.sink = phi ptr [ @bfa_msix_lpu_err, %if.else ], [ @bfa_msix_all, %entry.if.end9.sink.split_crit_edge ]
  %handler7 = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %handler7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bfa_msix_lpu_err.sink, ptr %handler7, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msix_all(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msix_lpu_err(ptr noundef, i32 noundef) #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_hwct_msix_queue_install(ptr nocapture noundef %bfa) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msix = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 11
  %0 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msix, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %1, label %for.body10.preheader [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body10.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body10.preheader, %entry.cleanup.sink.split_crit_edge
  %bfa_msix_all.sink49 = phi ptr [ @bfa_msix_reqq, %for.body10.preheader ], [ @bfa_msix_all, %entry.cleanup.sink.split_crit_edge ]
  %bfa_msix_all.sink45 = phi ptr [ @bfa_msix_rspq, %for.body10.preheader ], [ @bfa_msix_all, %entry.cleanup.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bfa_msix_all.sink49, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bfa_msix_all.sink49, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 3
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bfa_msix_all.sink49, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 4
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bfa_msix_all.sink49, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bfa_msix_all.sink45, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 6
  %8 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bfa_msix_all.sink45, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 7
  %9 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bfa_msix_all.sink45, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.bfa_s, ptr %bfa, i32 0, i32 11, i32 1, i32 8
  %10 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bfa_msix_all.sink45, ptr %arrayidx.7, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msix_reqq(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_msix_rspq(ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfa_hwct_msix_dummy(ptr nocapture noundef %bfa, i32 noundef %vec) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_hwct_isr_mode_set(ptr noundef %bfa, i32 noundef %msix) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trcmod = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 2
  %0 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %1, i32 noundef 1028, i32 noundef 160, i64 noundef 0) #8
  %ioc_hwif = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc_hwif, align 4
  %ioc_isr_mode_set = getelementptr inbounds %struct.bfa_ioc_hwif_s, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ioc_isr_mode_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc_isr_mode_set, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioc = getelementptr inbounds %struct.bfa_s, ptr %bfa, i32 0, i32 3
  tail call void %5(ptr noundef %ioc, i32 noundef %msix) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_hwct_msix_get_rme_range(ptr nocapture noundef readnone %bfa, ptr nocapture noundef writeonly %start, ptr nocapture noundef writeonly %end) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %start, align 4
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %end, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_hw_ct.c", i32 105, i32 2}
!2 = distinct !{null, !3, !"__trc_fileno", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfa_hw_ct.c", i32 15, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4991107}
!14 = !{i64 2156168675}
!15 = !{i64 2156168908}
!16 = !{i64 4990689}
!17 = !{i64 2156169664}
!18 = !{i64 2156169897}
!19 = !{i64 2156170365}
!20 = !{i64 2156170828}
!21 = !{!"branch_weights", i32 2000, i32 1}
