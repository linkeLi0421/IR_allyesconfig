; ModuleID = '/llk/IR_all_yes/drivers/memory/emif-asm-offsets.c_pt.bc'
source_filename = "../drivers/memory/emif-asm-offsets.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @main() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "\0A.ascii \22->EMIF_SDCFG_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_sdcfg_val)\22", "i"(i32 0) #1, !srcloc !9
  tail call void asm sideeffect "\0A.ascii \22->EMIF_TIMING1_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_timing1_val)\22", "i"(i32 4) #1, !srcloc !10
  tail call void asm sideeffect "\0A.ascii \22->EMIF_TIMING2_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_timing2_val)\22", "i"(i32 8) #1, !srcloc !11
  tail call void asm sideeffect "\0A.ascii \22->EMIF_TIMING3_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_timing3_val)\22", "i"(i32 12) #1, !srcloc !12
  tail call void asm sideeffect "\0A.ascii \22->EMIF_REF_CTRL_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_ref_ctrl_val)\22", "i"(i32 16) #1, !srcloc !13
  tail call void asm sideeffect "\0A.ascii \22->EMIF_ZQCFG_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_zqcfg_val)\22", "i"(i32 20) #1, !srcloc !14
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PMCR_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_pmcr_val)\22", "i"(i32 24) #1, !srcloc !15
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PMCR_SHDW_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_pmcr_shdw_val)\22", "i"(i32 28) #1, !srcloc !16
  tail call void asm sideeffect "\0A.ascii \22->EMIF_RD_WR_LEVEL_RAMP_CTRL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_rd_wr_level_ramp_ctrl)\22", "i"(i32 32) #1, !srcloc !17
  tail call void asm sideeffect "\0A.ascii \22->EMIF_RD_WR_EXEC_THRESH_OFFSET $0 offsetof(struct emif_regs_amx3, emif_rd_wr_exec_thresh)\22", "i"(i32 36) #1, !srcloc !18
  tail call void asm sideeffect "\0A.ascii \22->EMIF_COS_CONFIG_OFFSET $0 offsetof(struct emif_regs_amx3, emif_cos_config)\22", "i"(i32 40) #1, !srcloc !19
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PRIORITY_TO_COS_MAPPING_OFFSET $0 offsetof(struct emif_regs_amx3, emif_priority_to_cos_mapping)\22", "i"(i32 44) #1, !srcloc !20
  tail call void asm sideeffect "\0A.ascii \22->EMIF_CONNECT_ID_SERV_1_MAP_OFFSET $0 offsetof(struct emif_regs_amx3, emif_connect_id_serv_1_map)\22", "i"(i32 48) #1, !srcloc !21
  tail call void asm sideeffect "\0A.ascii \22->EMIF_CONNECT_ID_SERV_2_MAP_OFFSET $0 offsetof(struct emif_regs_amx3, emif_connect_id_serv_2_map)\22", "i"(i32 52) #1, !srcloc !22
  tail call void asm sideeffect "\0A.ascii \22->EMIF_OCP_CONFIG_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_ocp_config_val)\22", "i"(i32 56) #1, !srcloc !23
  tail call void asm sideeffect "\0A.ascii \22->EMIF_LPDDR2_NVM_TIM_OFFSET $0 offsetof(struct emif_regs_amx3, emif_lpddr2_nvm_tim)\22", "i"(i32 60) #1, !srcloc !24
  tail call void asm sideeffect "\0A.ascii \22->EMIF_LPDDR2_NVM_TIM_SHDW_OFFSET $0 offsetof(struct emif_regs_amx3, emif_lpddr2_nvm_tim_shdw)\22", "i"(i32 64) #1, !srcloc !25
  tail call void asm sideeffect "\0A.ascii \22->EMIF_DLL_CALIB_CTRL_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_dll_calib_ctrl_val)\22", "i"(i32 68) #1, !srcloc !26
  tail call void asm sideeffect "\0A.ascii \22->EMIF_DLL_CALIB_CTRL_VAL_SHDW_OFFSET $0 offsetof(struct emif_regs_amx3, emif_dll_calib_ctrl_val_shdw)\22", "i"(i32 72) #1, !srcloc !27
  tail call void asm sideeffect "\0A.ascii \22->EMIF_DDR_PHY_CTLR_1_OFFSET $0 offsetof(struct emif_regs_amx3, emif_ddr_phy_ctlr_1)\22", "i"(i32 76) #1, !srcloc !28
  tail call void asm sideeffect "\0A.ascii \22->EMIF_EXT_PHY_CTRL_VALS_OFFSET $0 offsetof(struct emif_regs_amx3, emif_ext_phy_ctrl_vals)\22", "i"(i32 80) #1, !srcloc !29
  tail call void asm sideeffect "\0A.ascii \22->EMIF_REGS_AMX3_SIZE $0 sizeof(struct emif_regs_amx3)\22", "i"(i32 560) #1, !srcloc !30
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !31
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_BASE_ADDR_VIRT_OFFSET $0 offsetof(struct ti_emif_pm_data, ti_emif_base_addr_virt)\22", "i"(i32 0) #1, !srcloc !32
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_BASE_ADDR_PHYS_OFFSET $0 offsetof(struct ti_emif_pm_data, ti_emif_base_addr_phys)\22", "i"(i32 4) #1, !srcloc !33
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_CONFIG_OFFSET $0 offsetof(struct ti_emif_pm_data, ti_emif_sram_config)\22", "i"(i32 8) #1, !srcloc !34
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_REGS_VIRT_OFFSET $0 offsetof(struct ti_emif_pm_data, regs_virt)\22", "i"(i32 12) #1, !srcloc !35
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_REGS_PHYS_OFFSET $0 offsetof(struct ti_emif_pm_data, regs_phys)\22", "i"(i32 16) #1, !srcloc !36
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_DATA_SIZE $0 sizeof(struct ti_emif_pm_data)\22", "i"(i32 24) #1, !srcloc !37
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !38
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_SAVE_CONTEXT_OFFSET $0 offsetof(struct ti_emif_pm_functions, save_context)\22", "i"(i32 0) #1, !srcloc !39
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_RESTORE_CONTEXT_OFFSET $0 offsetof(struct ti_emif_pm_functions, restore_context)\22", "i"(i32 4) #1, !srcloc !40
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_RUN_HW_LEVELING $0 offsetof(struct ti_emif_pm_functions, run_hw_leveling)\22", "i"(i32 8) #1, !srcloc !41
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_ENTER_SR_OFFSET $0 offsetof(struct ti_emif_pm_functions, enter_sr)\22", "i"(i32 12) #1, !srcloc !42
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_EXIT_SR_OFFSET $0 offsetof(struct ti_emif_pm_functions, exit_sr)\22", "i"(i32 16) #1, !srcloc !43
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_ABORT_SR_OFFSET $0 offsetof(struct ti_emif_pm_functions, abort_sr)\22", "i"(i32 20) #1, !srcloc !44
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_FUNCTIONS_SIZE $0 sizeof(struct ti_emif_pm_functions)\22", "i"(i32 24) #1, !srcloc !45
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

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
!9 = !{i64 2147975145, i64 2147975148}
!10 = !{i64 2147975479, i64 2147975482}
!11 = !{i64 2147975823, i64 2147975826}
!12 = !{i64 2147976167, i64 2147976170}
!13 = !{i64 2147976511, i64 2147976514}
!14 = !{i64 2147976860, i64 2147976863}
!15 = !{i64 2147977194, i64 2147977197}
!16 = !{i64 2147977523, i64 2147977526}
!17 = !{i64 2147977877, i64 2147977880}
!18 = !{i64 2147978271, i64 2147978274}
!19 = !{i64 2147978645, i64 2147978648}
!20 = !{i64 2147978984, i64 2147978987}
!21 = !{i64 2147979388, i64 2147979391}
!22 = !{i64 2147979782, i64 2147979785}
!23 = !{i64 2147980176, i64 2147980179}
!24 = !{i64 2147980535, i64 2147980538}
!25 = !{i64 2147980894, i64 2147980897}
!26 = !{i64 2147981278, i64 2147981281}
!27 = !{i64 2147981657, i64 2147981660}
!28 = !{i64 2147982061, i64 2147982064}
!29 = !{i64 2147982420, i64 2147982423}
!30 = !{i64 2147982794, i64 2147982797}
!31 = !{i64 2147982944, i64 2147982947}
!32 = !{i64 2147982981, i64 2147982984}
!33 = !{i64 2147983359, i64 2147983362}
!34 = !{i64 2147983737, i64 2147983740}
!35 = !{i64 2147984095, i64 2147984098}
!36 = !{i64 2147984416, i64 2147984419}
!37 = !{i64 2147984737, i64 2147984740}
!38 = !{i64 2147984887, i64 2147984890}
!39 = !{i64 2147984924, i64 2147984927}
!40 = !{i64 2147985280, i64 2147985283}
!41 = !{i64 2147985651, i64 2147985654}
!42 = !{i64 2147986015, i64 2147986018}
!43 = !{i64 2147986351, i64 2147986354}
!44 = !{i64 2147986682, i64 2147986685}
!45 = !{i64 2147987018, i64 2147987021}
