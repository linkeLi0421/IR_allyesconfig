; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/pm-asm-offsets.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm-asm-offsets.c"
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
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_WFI_FLAGS_OFFSET $0 offsetof(struct am33xx_pm_sram_data, wfi_flags)\22", "i"(i32 0) #1, !srcloc !46
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_L2_AUX_CTRL_VAL_OFFSET $0 offsetof(struct am33xx_pm_sram_data, l2_aux_ctrl_val)\22", "i"(i32 4) #1, !srcloc !47
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_L2_PREFETCH_CTRL_VAL_OFFSET $0 offsetof(struct am33xx_pm_sram_data, l2_prefetch_ctrl_val)\22", "i"(i32 8) #1, !srcloc !48
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_SRAM_DATA_SIZE $0 sizeof(struct am33xx_pm_sram_data)\22", "i"(i32 16) #1, !srcloc !49
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !50
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_RO_SRAM_DATA_VIRT_OFFSET $0 offsetof(struct am33xx_pm_ro_sram_data, amx3_pm_sram_data_virt)\22", "i"(i32 0) #1, !srcloc !51
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_RO_SRAM_DATA_PHYS_OFFSET $0 offsetof(struct am33xx_pm_ro_sram_data, amx3_pm_sram_data_phys)\22", "i"(i32 4) #1, !srcloc !52
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_RTC_BASE_VIRT_OFFSET $0 offsetof(struct am33xx_pm_ro_sram_data, rtc_base_virt)\22", "i"(i32 8) #1, !srcloc !53
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_RO_SRAM_DATA_SIZE $0 sizeof(struct am33xx_pm_ro_sram_data)\22", "i"(i32 16) #1, !srcloc !54
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
!9 = !{i64 2147978455, i64 2147978458}
!10 = !{i64 2147978789, i64 2147978792}
!11 = !{i64 2147979133, i64 2147979136}
!12 = !{i64 2147979477, i64 2147979480}
!13 = !{i64 2147979821, i64 2147979824}
!14 = !{i64 2147980170, i64 2147980173}
!15 = !{i64 2147980504, i64 2147980507}
!16 = !{i64 2147980833, i64 2147980836}
!17 = !{i64 2147981187, i64 2147981190}
!18 = !{i64 2147981581, i64 2147981584}
!19 = !{i64 2147981955, i64 2147981958}
!20 = !{i64 2147982294, i64 2147982297}
!21 = !{i64 2147982698, i64 2147982701}
!22 = !{i64 2147983092, i64 2147983095}
!23 = !{i64 2147983486, i64 2147983489}
!24 = !{i64 2147983845, i64 2147983848}
!25 = !{i64 2147984204, i64 2147984207}
!26 = !{i64 2147984588, i64 2147984591}
!27 = !{i64 2147984967, i64 2147984970}
!28 = !{i64 2147985371, i64 2147985374}
!29 = !{i64 2147985730, i64 2147985733}
!30 = !{i64 2147986104, i64 2147986107}
!31 = !{i64 2147986254, i64 2147986257}
!32 = !{i64 2147986291, i64 2147986294}
!33 = !{i64 2147986669, i64 2147986672}
!34 = !{i64 2147987047, i64 2147987050}
!35 = !{i64 2147987405, i64 2147987408}
!36 = !{i64 2147987726, i64 2147987729}
!37 = !{i64 2147988047, i64 2147988050}
!38 = !{i64 2147988197, i64 2147988200}
!39 = !{i64 2147988234, i64 2147988237}
!40 = !{i64 2147988590, i64 2147988593}
!41 = !{i64 2147988961, i64 2147988964}
!42 = !{i64 2147989325, i64 2147989328}
!43 = !{i64 2147989661, i64 2147989664}
!44 = !{i64 2147989992, i64 2147989995}
!45 = !{i64 2147990328, i64 2147990331}
!46 = !{i64 2147990493, i64 2147990496}
!47 = !{i64 2147990830, i64 2147990833}
!48 = !{i64 2147991197, i64 2147991200}
!49 = !{i64 2147991589, i64 2147991592}
!50 = !{i64 2147991752, i64 2147991755}
!51 = !{i64 2147991789, i64 2147991792}
!52 = !{i64 2147992198, i64 2147992201}
!53 = !{i64 2147992607, i64 2147992610}
!54 = !{i64 2147992976, i64 2147992979}
