; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.mc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32 }
%struct.smc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32 }
%struct.smc_firmware_header_v2_0 = type { %struct.smc_firmware_header_v1_0, i32, i32 }
%struct.smc_firmware_header_v2_1 = type { %struct.smc_firmware_header_v1_0, i32, i32 }
%struct.gfx_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32 }
%struct.rlc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32, i32 }
%struct.rlc_firmware_header_v2_0 = type { %struct.common_firmware_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rlc_firmware_header_v2_1 = type { %struct.rlc_firmware_header_v2_0, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdma_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32 }
%struct.sdma_firmware_header_v1_1 = type { %struct.sdma_firmware_header_v1_0, i32 }
%struct.psp_firmware_header_v1_0 = type { %struct.common_firmware_header, %struct.psp_fw_legacy_bin_desc }
%struct.psp_fw_legacy_bin_desc = type { i32, i32, i32 }
%struct.psp_firmware_header_v1_1 = type { %struct.psp_firmware_header_v1_0, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc }
%struct.psp_firmware_header_v1_2 = type { %struct.psp_firmware_header_v1_0, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc }
%struct.psp_firmware_header_v1_3 = type { %struct.psp_firmware_header_v1_1, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc, %struct.psp_fw_legacy_bin_desc }
%struct.gpu_info_firmware_header_v1_0 = type { %struct.common_firmware_header, i16, i16 }
%struct.firmware = type { i32, ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.96], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.96 = type { i8, [7 x i8] }
%struct.amdgpu_xgmi = type { i64, i64, i64, i32, i32, %struct.list_head, i8, ptr, i8, i8, ptr }
%struct.amdgpu_gart = type { ptr, ptr, i32, i32, i32, i8, i64 }
%struct.amdgpu_vm_manager = type { [3 x %struct.amdgpu_vmid_mgr], i32, i8, i64, [28 x i32], i64, i32, i32, i32, i32, i64, ptr, [28 x ptr], i32, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.xarray }
%struct.amdgpu_vmid_mgr = type { %struct.mutex, i32, %struct.list_head, [16 x %struct.amdgpu_vmid], %struct.atomic_t }
%struct.amdgpu_vmid = type { %struct.list_head, %struct.amdgpu_sync, ptr, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.93] }
%struct.anon.93 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.amdgpu_gtt_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.atomic64_t }
%struct.amdgpu_preempt_mgr = type { %struct.ttm_resource_manager, %struct.atomic64_t }
%struct.amdgpu_vram_scratch = type { ptr, ptr, i64 }
%struct.amdgpu_wb = type { ptr, ptr, i64, i32, [8 x i32] }
%struct.anon.97 = type { %struct.spinlock, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { ptr, ptr, i8, [6 x ptr], [6 x ptr], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, %struct.amdgpu_audio, i32, i32, i32, i32, ptr, ptr }
%struct.amdgpu_audio = type { i8, [9 x %struct.amdgpu_audio_pin], i32 }
%struct.amdgpu_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.amdgpu_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [32 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdgpu_sched = type { i32, [8 x ptr] }
%struct.amdgpu_irq = type { i8, i32, %struct.spinlock, [32 x %struct.amdgpu_irq_client], i8, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.amdgpu_irq_src, ptr, [256 x i32], i32 }
%struct.amdgpu_irq_client = type { ptr }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i8, i8, ptr, ptr, i64, i64, ptr, i64, ptr, i8, i32, %struct.amdgpu_ih_regs, %struct.wait_queue_head, i64 }
%struct.amdgpu_ih_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_powerplay = type { ptr, ptr }
%struct.smu_context = type { ptr, %struct.amdgpu_irq_src, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i64, %struct.smu_table_context, %struct.smu_dpm_context, %struct.smu_power_context, %struct.smu_feature, ptr, %struct.smu_baco_context, %struct.smu_temperature_range, ptr, %struct.smu_umd_pstate_table, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i32, i32, i8, i32, [7 x i32], [7 x i32], i32, i32, i8, i8, i32, i32, i32, i8, i8, %struct.work_struct, %struct.atomic64_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, %struct.smu_user_dpm_profile, %struct.stb_context }
%struct.smu_table_context = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.smu_bios_boot_up_values, ptr, ptr, [15 x %struct.smu_table], %struct.smu_table, %struct.smu_table, %struct.smu_table, i8, ptr, ptr, ptr, i32, ptr }
%struct.smu_bios_boot_up_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.smu_table = type { i64, i32, i8, i64, ptr, ptr }
%struct.smu_dpm_context = type { i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, ptr }
%struct.smu_power_context = type { ptr, i32, %struct.smu_power_gate }
%struct.smu_power_gate = type { i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.mutex }
%struct.smu_feature = type { i32, [2 x i32], [2 x i32], [2 x i32], %struct.mutex }
%struct.smu_baco_context = type { %struct.mutex, i32, i8 }
%struct.smu_temperature_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu_umd_pstate_table = type { %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq }
%struct.pstates_clk_freq = type { i32, i32, i32, %struct.smu_freq_info, %struct.smu_freq_info }
%struct.smu_freq_info = type { i32, i32, i32 }
%struct.smu_user_dpm_profile = type { i32, i32, i32, i32, i32, i32, [23 x i32], i32 }
%struct.stb_context = type { i32, i8, %struct.spinlock }
%struct.amdgpu_pm = type { %struct.mutex, i32, i32, i32, i32, ptr, i8, i32, ptr, i8, i8, i8, i8, i8, i8, %struct.amdgpu_dpm, ptr, i32, i32, i32, %struct.amd_pp_display_configuration, i32, ptr, i8, i32, %struct.i2c_adapter, %struct.mutex, %struct.list_head, [14 x %struct.atomic_t], i32 }
%struct.amdgpu_dpm = type { ptr, i32, ptr, ptr, ptr, ptr, i32, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.amdgpu_dpm_dynamic_state, %struct.amdgpu_dpm_fan, i32, i32, i32, i32, i32, i16, i32, i16, i8, i8, i8, i8, %struct.amdgpu_dpm_thermal, i32 }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.amdgpu_dpm_dynamic_state = type { %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_array, %struct.amdgpu_clock_array, %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits, i32, i32, i16, i16, %struct.amdgpu_cac_leakage_table, %struct.amdgpu_phase_shedding_limits_table, ptr, ptr }
%struct.amdgpu_uvd_clock_voltage_dependency_table = type { i8, ptr }
%struct.amdgpu_vce_clock_voltage_dependency_table = type { i8, ptr }
%struct.amdgpu_clock_voltage_dependency_table = type { i32, ptr }
%struct.amdgpu_clock_array = type { i32, ptr }
%struct.amdgpu_clock_and_voltage_limits = type { i32, i32, i16, i16 }
%struct.amdgpu_cac_leakage_table = type { i32, ptr }
%struct.amdgpu_phase_shedding_limits_table = type { i32, ptr }
%struct.amdgpu_dpm_fan = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i8 }
%struct.amdgpu_dpm_thermal = type { %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.amdgpu_irq_src }
%struct.amd_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, [32 x %struct.single_display_configuration], i32, i32, i8, i32, i32, i8, i32, i32, i32, i32 }
%struct.single_display_configuration = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.amdgpu_nbio = type { ptr, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, ptr, ptr, ptr }
%struct.amdgpu_hdp = type { ptr, ptr, ptr }
%struct.amdgpu_smuio = type { ptr }
%struct.amdgpu_mmhub = type { ptr, ptr, ptr }
%struct.amdgpu_gfxhub = type { ptr }
%struct.amdgpu_gfx = type { %struct.mutex, %struct.amdgpu_gfx_config, %struct.amdgpu_rlc, %struct.amdgpu_pfp, %struct.amdgpu_ce, %struct.amdgpu_me, %struct.amdgpu_mec, %struct.amdgpu_kiq, %struct.amdgpu_scratch, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x %struct.amdgpu_ring], i32, [8 x %struct.amdgpu_ring], i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.sq_work, i32, i32, %struct.amdgpu_cu_info, ptr, i32, i32, i8, %struct.mutex, i32, %struct.delayed_work, %struct.mutex, [4 x i32], ptr, ptr }
%struct.amdgpu_gfx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], %struct.gb_addr_config, [4 x [2 x %struct.amdgpu_rb_config]], i32, i32, i32, i32, i32, i64 }
%struct.gb_addr_config = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_rb_config = type { i32, i32, i32, i32 }
%struct.amdgpu_rlc = type { ptr, i64, ptr, ptr, i32, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i64, ptr, ptr, i64, ptr }
%struct.amdgpu_pfp = type { ptr, i64, ptr }
%struct.amdgpu_ce = type { ptr, i64, ptr }
%struct.amdgpu_me = type { ptr, i64, ptr, i32, i32, i32, [2 x ptr], [4 x i32] }
%struct.amdgpu_mec = type { ptr, i64, ptr, i64, i32, i32, i32, [9 x ptr], [4 x i32] }
%struct.amdgpu_kiq = type { i64, ptr, %struct.spinlock, %struct.amdgpu_ring, %struct.amdgpu_irq_src, ptr }
%struct.amdgpu_ring = type { ptr, ptr, %struct.amdgpu_fence_driver, %struct.drm_gpu_scheduler, ptr, ptr, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, ptr, i64, ptr, i64, i32, i8, i8, i32, i32, i64, [16 x i8], i32, i32, i64, ptr, i32, i64, ptr, i32, ptr, i8, i8, i32 }
%struct.amdgpu_fence_driver = type { i64, ptr, i32, %struct.atomic_t, i8, ptr, i32, %struct.timer_list, i32, %struct.spinlock, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.amdgpu_scratch = type { i32, i32, i32 }
%struct.sq_work = type { %struct.work_struct, i32 }
%struct.amdgpu_cu_info = type { i32, i32, i32, i32, i32, i32, i32, [4 x [4 x i32]], [4 x [4 x i32]] }
%struct.amdgpu_sdma = type { [8 x %struct.amdgpu_sdma_instance], %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i32, i32, i8, ptr, ptr }
%struct.amdgpu_sdma_instance = type { ptr, i32, i32, %struct.amdgpu_ring, %struct.amdgpu_ring, i8 }
%struct.amdgpu_uvd = type { ptr, i32, i32, i32, i8, i8, i8, [2 x %struct.amdgpu_uvd_inst], [40 x ptr], [40 x %struct.atomic_t], %struct.drm_sched_entity, %struct.delayed_work, i32, i32, i32, ptr }
%struct.amdgpu_uvd_inst = type { ptr, ptr, i64, ptr, %struct.amdgpu_ring, [2 x %struct.amdgpu_ring], %struct.amdgpu_irq_src, i32 }
%struct.amdgpu_vce = type { ptr, i64, ptr, ptr, i32, i32, [16 x %struct.atomic_t], [16 x ptr], [16 x i32], %struct.delayed_work, %struct.mutex, ptr, [3 x %struct.amdgpu_ring], %struct.amdgpu_irq_src, i32, %struct.drm_sched_entity, i32, i32 }
%struct.amdgpu_vcn = type { i32, %struct.delayed_work, ptr, i32, i32, i8, i8, [2 x %struct.amdgpu_vcn_inst], [2 x i8], %struct.amdgpu_vcn_reg, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr }
%struct.amdgpu_vcn_inst = type { ptr, ptr, i64, ptr, %struct.amdgpu_ring, [3 x %struct.amdgpu_ring], %struct.atomic_t, %struct.amdgpu_irq_src, %struct.amdgpu_vcn_reg, ptr, %struct.dpg_pause_state, ptr, i64, ptr, %struct.atomic_t, ptr, i64 }
%struct.dpg_pause_state = type { i32, i32 }
%struct.amdgpu_vcn_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_jpeg = type { i8, [2 x %struct.amdgpu_jpeg_inst], %struct.amdgpu_jpeg_reg, i32, %struct.delayed_work, i32, %struct.mutex, %struct.atomic_t }
%struct.amdgpu_jpeg_inst = type { %struct.amdgpu_ring, %struct.amdgpu_irq_src, %struct.amdgpu_jpeg_reg }
%struct.amdgpu_jpeg_reg = type { i32 }
%struct.amdgpu_firmware = type { [35 x %struct.amdgpu_firmware_info], i32, ptr, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i64 }
%struct.amdgpu_firmware_info = type { i32, ptr, i64, ptr, i32, i32, i32 }
%struct.psp_context = type { ptr, %struct.psp_ring, ptr, ptr, ptr, i64, ptr, ptr, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, ptr, i64, ptr, ptr, ptr, i64, ptr, ptr, i64, ptr, %struct.atomic_t, i8, i8, ptr, i32, %struct.ta_context, %struct.psp_xgmi_context, %struct.psp_ras_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.mutex, %struct.psp_memory_training_context, i32 }
%struct.psp_ring = type { i32, ptr, i64, ptr, i32, i32 }
%struct.psp_bin_desc = type { i32, i32, i32, ptr }
%struct.ta_context = type { i8, i32, %struct.ta_mem_context, %struct.psp_bin_desc, i32 }
%struct.ta_mem_context = type { ptr, i64, ptr, i32 }
%struct.psp_xgmi_context = type { %struct.ta_context, %struct.psp_xgmi_topology_info, i8 }
%struct.psp_xgmi_topology_info = type { i32, [64 x %struct.psp_xgmi_node_info] }
%struct.psp_xgmi_node_info = type { i64, i8, i8, i32, i8 }
%struct.psp_ras_context = type { %struct.ta_context, ptr }
%struct.ta_cp_context = type { %struct.ta_context, %struct.mutex }
%struct.psp_memory_training_context = type { i64, ptr, i64, i64, ptr, i32, i32, i8 }
%struct.amdgpu_gds = type { i32, i32, i32, i32 }
%struct.amdgpu_kfd_dev = type { ptr, i64, i8 }
%struct.amdgpu_umc = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.amdgpu_display_manager = type { ptr, ptr, ptr, [5 x ptr], [5 x i8], ptr, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, i16, %struct.drm_private_obj, %struct.mutex, %struct.mutex, ptr, i8, [99 x %struct.list_head], [99 x %struct.list_head], [7 x %struct.common_irq_params], [6 x %struct.common_irq_params], [6 x %struct.common_irq_params], [6 x %struct.common_irq_params], [1 x %struct.common_irq_params], [1 x %struct.common_irq_params], %struct.spinlock, [2 x ptr], [2 x ptr], i8, [2 x %struct.amdgpu_dm_backlight_caps], ptr, ptr, ptr, ptr, %struct.dm_compressor_info, ptr, i32, ptr, ptr, [6 x %struct.amdgpu_encoder], i8, i8, i8, %struct.list_head, %struct.completion, ptr, [2 x i32] }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.common_irq_params = type { ptr, i32, %struct.atomic64_t }
%struct.amdgpu_dm_backlight_caps = type { ptr, i32, i32, i32, i32, i8, i8 }
%struct.dm_compressor_info = type { ptr, ptr, i64 }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.amdgpu_mes = type { ptr, i32, i32, i32, i64, i64, %struct.amdgpu_ring, ptr, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i32, [8 x i32], [2 x i32], [2 x i32], [5 x i32], i32, i64, ptr, i32, i64, ptr, ptr }
%struct.amdgpu_df = type { %struct.amdgpu_df_hash_status, ptr }
%struct.amdgpu_df_hash_status = type { i8, i8, i8 }
%struct.amdgpu_mca = type { ptr, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras }
%struct.amdgpu_mca_ras = type { ptr, ptr }
%struct.amdgpu_ip_block = type { %struct.amdgpu_ip_block_status, ptr }
%struct.amdgpu_ip_block_status = type { i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.mes_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmcu_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32 }
%struct.dmcub_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MC\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"io_debug_size_bytes: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"io_debug_array_offset_bytes: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown MC ucode version: %u.%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMC\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ucode_start_addr: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ppt_offset_bytes: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ppt_size_bytes: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pptable_count: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pptable_entry_offset: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown SMC ucode version: %u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GFX\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ucode_feature_version: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jt_offset: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jt_size: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown GFX ucode version: %u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RLC\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"save_and_restore_offset: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clear_state_descriptor_offset: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"avail_scratch_ram_locations: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"master_pkt_description_offset: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_restore_list_size: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_list_format_start: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reg_list_format_separate_start: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"starting_offsets_start: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reg_list_format_size_bytes: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reg_list_format_array_offset_bytes: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_list_size_bytes: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_list_array_offset_bytes: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reg_list_format_separate_size_bytes: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"reg_list_format_separate_array_offset_bytes: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_list_separate_size_bytes: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"reg_list_separate_array_offset_bytes: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"reg_list_format_direct_reg_list_length: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"save_restore_list_cntl_ucode_ver: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"save_restore_list_cntl_feature_ver: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"save_restore_list_cntl_size_bytes %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"save_restore_list_cntl_offset_bytes: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"save_restore_list_gpm_ucode_ver: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"save_restore_list_gpm_feature_ver: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"save_restore_list_gpm_size_bytes %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"save_restore_list_gpm_offset_bytes: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"save_restore_list_srm_ucode_ver: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"save_restore_list_srm_feature_ver: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"save_restore_list_srm_size_bytes %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"save_restore_list_srm_offset_bytes: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown RLC ucode version: %u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ucode_change_version: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"digest_size: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown SDMA ucode version: %u.%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PSP\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sos_offset_bytes: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sos_size_bytes: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"toc_header_version: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"toc_offset_bytes: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"toc_size_bytes: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kdb_header_version: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kdb_offset_bytes: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kdb_size_bytes: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spl_header_version: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spl_offset_bytes: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spl_size_bytes: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown PSP ucode version: %u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GPU_INFO\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"version_major: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"version_minor: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unknown gpu_info ucode version: %u.%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA0\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA1\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA2\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA3\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA4\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA5\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA6\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA7\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CP_CE\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CP_PFP\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CP_ME\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CP_MEC1\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CP_MEC1_JT\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CP_MEC2\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CP_MEC2_JT\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CP_MES\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CP_MES_DATA\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RLC_RESTORE_LIST_CNTL\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RLC_RESTORE_LIST_GPM_MEM\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RLC_RESTORE_LIST_SRM_MEM\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RLC_IRAM\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RLC_DRAM\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RLC_G\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STORAGE\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SMC\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UVD\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UVD1\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCE\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCN\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCN1\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMCU_ERAM\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMCU_INTV\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VCN0_RAM\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VCN1_RAM\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMCUB\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UNKNOWN UCODE\00", [18 x i8] zeroinitializer }, align 32
@fw_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.119, ptr null, ptr null, ptr @fw_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@amdgpu_ucode_create_bo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.106, i32 706, ptr @.str.107, ptr @.str.108 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"amdgpu: failed to create kernel buffer for firmware.fw_buf\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu_ucode_create_bo\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c\00", [54 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_ucode_create_bo._entry_ptr = internal global ptr @amdgpu_ucode_create_bo._entry, section ".printk_index", align 4
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"size_bytes: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"header_size_bytes: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"header_version_major: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"header_version_minor: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_version_major: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_version_minor: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ucode_version: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ucode_size_bytes: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ucode_array_offset_bytes: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"crc32: 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@fw_attrs = internal global { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @dev_attr_vce_fw_version, ptr @dev_attr_uvd_fw_version, ptr @dev_attr_mc_fw_version, ptr @dev_attr_me_fw_version, ptr @dev_attr_pfp_fw_version, ptr @dev_attr_ce_fw_version, ptr @dev_attr_rlc_fw_version, ptr @dev_attr_rlc_srlc_fw_version, ptr @dev_attr_rlc_srlg_fw_version, ptr @dev_attr_rlc_srls_fw_version, ptr @dev_attr_mec_fw_version, ptr @dev_attr_mec2_fw_version, ptr @dev_attr_sos_fw_version, ptr @dev_attr_asd_fw_version, ptr @dev_attr_ta_ras_fw_version, ptr @dev_attr_ta_xgmi_fw_version, ptr @dev_attr_smc_fw_version, ptr @dev_attr_sdma_fw_version, ptr @dev_attr_sdma2_fw_version, ptr @dev_attr_vcn_fw_version, ptr @dev_attr_dmcu_fw_version, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_vce_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_vce_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_uvd_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_uvd_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mc_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_mc_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_me_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_me_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pfp_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pfp_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ce_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ce_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rlc_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rlc_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rlc_srlc_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rlc_srlc_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rlc_srlg_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rlc_srlg_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rlc_srls_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rlc_srls_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mec_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_mec_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mec2_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_mec2_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sos_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sos_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_asd_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_asd_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ta_ras_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ta_ras_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ta_xgmi_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ta_xgmi_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_smc_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_smc_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sdma_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sdma_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sdma2_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sdma2_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vcn_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_vcn_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dmcu_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_dmcu_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vce_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uvd_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mc_fw_version\00", [18 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"me_fw_version\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pfp_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ce_fw_version\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rlc_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rlc_srlc_fw_version\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rlc_srlg_fw_version\00", [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rlc_srls_fw_version\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mec_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mec2_fw_version\00", [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sos_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ta_ras_fw_version\00", [46 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ta_xgmi_fw_version\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smc_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdma_fw_version\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdma2_fw_version\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vcn_fw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmcu_fw_version\00", [16 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_ucode_name = internal constant { [35 x ptr], [52 x i8] } { [35 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 16, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.145 = internal global [38 x i64] [i64 36, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.146 = internal global [16 x i64] [i64 14, i64 32, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 30, i64 31, i64 34]
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 51, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 58, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 60, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 63, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 75, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 80, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 85, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 86, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 90, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 91, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 98, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 107, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 114, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 116, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 117, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 119, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 128, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 137, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 139, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 141, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 143, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 159, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 161, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 163, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 165, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 167, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 169, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 171, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 173, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 175, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 177, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 179, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 181, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 186, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 188, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 190, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 192, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 194, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 196, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 198, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 200, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 202, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 204, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 206, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 208, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 210, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 214, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 223, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 232, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 239, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 242, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 252, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 261, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 263, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 268, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 270, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 272, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 274, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 276, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 278, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 308, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 310, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 312, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 316, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 326, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 333, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 335, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 338, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 430, i32 10 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 432, i32 10 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 434, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 436, i32 10 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 438, i32 10 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 440, i32 10 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 442, i32 10 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 444, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 446, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 448, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 450, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 452, i32 10 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 454, i32 10 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 456, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 458, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 460, i32 10 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 462, i32 10 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 464, i32 10 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 466, i32 10 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 468, i32 10 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 470, i32 10 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 472, i32 10 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 474, i32 10 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 476, i32 10 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 478, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 480, i32 10 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 482, i32 10 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 484, i32 10 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 486, i32 10 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 488, i32 10 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 490, i32 10 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 492, i32 10 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 494, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 496, i32 10 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 498, i32 10 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 500, i32 10 }
@___asan_gen_.459 = private unnamed_addr constant [14 x i8] c"fw_attr_group\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 552, i32 37 }
@___asan_gen_.462 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 706, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 33, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 34, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 35, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 36, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 37, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 38, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 39, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 40, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 41, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 43, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 553, i32 10 }
@___asan_gen_.513 = private unnamed_addr constant [9 x i8] c"fw_attrs\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 538, i32 26 }
@___asan_gen_.516 = private unnamed_addr constant [24 x i8] c"dev_attr_vce_fw_version\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [24 x i8] c"dev_attr_uvd_fw_version\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [23 x i8] c"dev_attr_mc_fw_version\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [23 x i8] c"dev_attr_me_fw_version\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [24 x i8] c"dev_attr_pfp_fw_version\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [23 x i8] c"dev_attr_ce_fw_version\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [24 x i8] c"dev_attr_rlc_fw_version\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [29 x i8] c"dev_attr_rlc_srlc_fw_version\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [29 x i8] c"dev_attr_rlc_srlg_fw_version\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [29 x i8] c"dev_attr_rlc_srls_fw_version\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [24 x i8] c"dev_attr_mec_fw_version\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [25 x i8] c"dev_attr_mec2_fw_version\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [24 x i8] c"dev_attr_sos_fw_version\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [24 x i8] c"dev_attr_asd_fw_version\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [27 x i8] c"dev_attr_ta_ras_fw_version\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [28 x i8] c"dev_attr_ta_xgmi_fw_version\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [24 x i8] c"dev_attr_smc_fw_version\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [25 x i8] c"dev_attr_sdma_fw_version\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [26 x i8] c"dev_attr_sdma2_fw_version\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [24 x i8] c"dev_attr_vcn_fw_version\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [25 x i8] c"dev_attr_dmcu_fw_version\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 516, i32 1 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 517, i32 1 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 518, i32 1 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 519, i32 1 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 520, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 521, i32 1 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 522, i32 1 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 523, i32 1 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 524, i32 1 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 525, i32 1 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 526, i32 1 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 527, i32 1 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 528, i32 1 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 529, i32 1 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 530, i32 1 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 531, i32 1 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 532, i32 1 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 533, i32 1 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 534, i32 1 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 535, i32 1 }
@___asan_gen_.642 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.643 = private constant [45 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.643, i32 536, i32 1 }
@___asan_gen_.645 = private unnamed_addr constant [31 x i8] c"switch.table.amdgpu_ucode_name\00", align 1
@llvm.compiler.used = appending global [168 x ptr] [ptr @amdgpu_ucode_create_bo._entry, ptr @amdgpu_ucode_create_bo._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @fw_attr_group, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @fw_attrs, ptr @dev_attr_vce_fw_version, ptr @dev_attr_uvd_fw_version, ptr @dev_attr_mc_fw_version, ptr @dev_attr_me_fw_version, ptr @dev_attr_pfp_fw_version, ptr @dev_attr_ce_fw_version, ptr @dev_attr_rlc_fw_version, ptr @dev_attr_rlc_srlc_fw_version, ptr @dev_attr_rlc_srlg_fw_version, ptr @dev_attr_rlc_srls_fw_version, ptr @dev_attr_mec_fw_version, ptr @dev_attr_mec2_fw_version, ptr @dev_attr_sos_fw_version, ptr @dev_attr_asd_fw_version, ptr @dev_attr_ta_ras_fw_version, ptr @dev_attr_ta_xgmi_fw_version, ptr @dev_attr_smc_fw_version, ptr @dev_attr_sdma_fw_version, ptr @dev_attr_sdma2_fw_version, ptr @dev_attr_vcn_fw_version, ptr @dev_attr_dmcu_fw_version, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @switch.table.amdgpu_ucode_name], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ucode_create_bo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_attrs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vce_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_uvd_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mc_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_me_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pfp_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ce_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rlc_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rlc_srlc_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rlc_srlg_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rlc_srls_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mec_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mec2_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sos_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_asd_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ta_ras_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ta_xgmi_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_smc_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sdma_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sdma2_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vcn_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dmcu_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_ucode_name to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_print_mc_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  tail call fastcc void @amdgpu_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %io_debug_size_bytes = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %io_debug_size_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_debug_size_bytes, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %6) #7
  %io_debug_array_offset_bytes = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %7 = ptrtoint ptr %io_debug_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_debug_array_offset_bytes, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %9) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %10 to i32
  %11 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv3 = zext i16 %11 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv3) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ucode_print_common_hdr(ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.109, i32 noundef %2) #7
  %header_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 1
  %3 = ptrtoint ptr %header_size_bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %header_size_bytes, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.110, i32 noundef %5) #7
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %header_version_major, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.111, i32 noundef %conv) #7
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %9 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %header_version_minor, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv1 = zext i16 %11 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.112, i32 noundef %conv1) #7
  %ip_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 4
  %12 = ptrtoint ptr %ip_version_major to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ip_version_major, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv2 = zext i16 %14 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.113, i32 noundef %conv2) #7
  %ip_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 5
  %15 = ptrtoint ptr %ip_version_minor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ip_version_minor, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv3 = zext i16 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.114, i32 noundef %conv3) #7
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 6
  %18 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ucode_version, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.115, i32 noundef %20) #7
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 7
  %21 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ucode_size_bytes, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.116, i32 noundef %23) #7
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 8
  %24 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ucode_array_offset_bytes, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.117, i32 noundef %26) #7
  %crc32 = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 9
  %27 = ptrtoint ptr %crc32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crc32, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.118, i32 noundef %29) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_print_smc_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #7
  tail call fastcc void @amdgpu_ucode_print_common_hdr(ptr noundef %hdr)
  %5 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.else14 [
    i16 256, label %if.then
    i16 512, label %if.then5
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ucode_start_addr = getelementptr inbounds %struct.smc_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %6 = ptrtoint ptr %ucode_start_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ucode_start_addr, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %8) #7
  br label %if.end17

if.then5:                                         ; preds = %entry
  %9 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.142)
  switch i16 %4, label %if.then5.if.end17_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb10
  ]

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

sw.bb:                                            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %ppt_offset_bytes = getelementptr inbounds %struct.smc_firmware_header_v2_0, ptr %hdr, i32 0, i32 1
  %10 = ptrtoint ptr %ppt_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ppt_offset_bytes, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %12) #7
  %ppt_size_bytes = getelementptr inbounds %struct.smc_firmware_header_v2_0, ptr %hdr, i32 0, i32 2
  %13 = ptrtoint ptr %ppt_size_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ppt_size_bytes, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %15) #7
  br label %if.end17

sw.bb10:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %pptable_count = getelementptr inbounds %struct.smc_firmware_header_v2_1, ptr %hdr, i32 0, i32 1
  %16 = ptrtoint ptr %pptable_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pptable_count, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %18) #7
  %pptable_entry_offset = getelementptr inbounds %struct.smc_firmware_header_v2_1, ptr %hdr, i32 0, i32 2
  %19 = ptrtoint ptr %pptable_entry_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pptable_entry_offset, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %21) #7
  br label %if.end17

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %22 to i32
  %conv16 = zext i16 %4 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv16) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %sw.bb10, %sw.bb, %if.then5.if.end17_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_print_gfx_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11) #7
  tail call fastcc void @amdgpu_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ucode_feature_version = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %ucode_feature_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucode_feature_version, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %6) #7
  %jt_offset = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %7 = ptrtoint ptr %jt_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %jt_offset, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %9) #7
  %jt_size = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %hdr, i32 0, i32 3
  %10 = ptrtoint ptr %jt_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jt_size, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %12) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %13 to i32
  %14 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv3 = zext i16 %14 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv3) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_print_rlc_hdr(ptr noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16) #7
  tail call fastcc void @amdgpu_ucode_print_common_hdr(ptr noundef %hdr)
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.143)
  switch i16 %1, label %if.else21 [
    i16 256, label %if.then
    i16 512, label %if.then5
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ucode_feature_version = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %5 = ptrtoint ptr %ucode_feature_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ucode_feature_version, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %7) #7
  %save_and_restore_offset = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %8 = ptrtoint ptr %save_and_restore_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %save_and_restore_offset, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %10) #7
  %clear_state_descriptor_offset = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 3
  %11 = ptrtoint ptr %clear_state_descriptor_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clear_state_descriptor_offset, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %13) #7
  %avail_scratch_ram_locations = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 4
  %14 = ptrtoint ptr %avail_scratch_ram_locations to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %avail_scratch_ram_locations, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %16) #7
  %master_pkt_description_offset = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 5
  %17 = ptrtoint ptr %master_pkt_description_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %master_pkt_description_offset, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %19) #7
  br label %if.end25

if.then5:                                         ; preds = %entry
  %ucode_feature_version10 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 1
  %20 = ptrtoint ptr %ucode_feature_version10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucode_feature_version10, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %22) #7
  %jt_offset = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 2
  %23 = ptrtoint ptr %jt_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %jt_offset, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %25) #7
  %jt_size = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 3
  %26 = ptrtoint ptr %jt_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jt_size, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %28) #7
  %save_and_restore_offset11 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 4
  %29 = ptrtoint ptr %save_and_restore_offset11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %save_and_restore_offset11, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %31) #7
  %clear_state_descriptor_offset12 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 5
  %32 = ptrtoint ptr %clear_state_descriptor_offset12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clear_state_descriptor_offset12, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %34) #7
  %avail_scratch_ram_locations13 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 6
  %35 = ptrtoint ptr %avail_scratch_ram_locations13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %avail_scratch_ram_locations13, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %37) #7
  %reg_restore_list_size = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 7
  %38 = ptrtoint ptr %reg_restore_list_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_restore_list_size, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %40) #7
  %reg_list_format_start = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 8
  %41 = ptrtoint ptr %reg_list_format_start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_list_format_start, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %43) #7
  %reg_list_format_separate_start = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 9
  %44 = ptrtoint ptr %reg_list_format_separate_start to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_list_format_separate_start, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %46) #7
  %starting_offsets_start = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 10
  %47 = ptrtoint ptr %starting_offsets_start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %starting_offsets_start, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %49) #7
  %reg_list_format_size_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 11
  %50 = ptrtoint ptr %reg_list_format_size_bytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_list_format_size_bytes, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %52) #7
  %reg_list_format_array_offset_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 12
  %53 = ptrtoint ptr %reg_list_format_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg_list_format_array_offset_bytes, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %55) #7
  %reg_list_size_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 13
  %56 = ptrtoint ptr %reg_list_size_bytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg_list_size_bytes, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27, i32 noundef %58) #7
  %reg_list_array_offset_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 14
  %59 = ptrtoint ptr %reg_list_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_list_array_offset_bytes, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef %61) #7
  %reg_list_format_separate_size_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 15
  %62 = ptrtoint ptr %reg_list_format_separate_size_bytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg_list_format_separate_size_bytes, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef %64) #7
  %reg_list_format_separate_array_offset_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 16
  %65 = ptrtoint ptr %reg_list_format_separate_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_list_format_separate_array_offset_bytes, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef %67) #7
  %reg_list_separate_size_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 17
  %68 = ptrtoint ptr %reg_list_separate_size_bytes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg_list_separate_size_bytes, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef %70) #7
  %reg_list_separate_array_offset_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_0, ptr %hdr, i32 0, i32 18
  %71 = ptrtoint ptr %reg_list_separate_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg_list_separate_array_offset_bytes, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp15 = icmp eq i16 %3, 256
  br i1 %cmp15, label %if.then17, label %if.then5.if.end25_crit_edge

if.then5.if.end25_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then17:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %reg_list_format_direct_reg_list_length = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 1
  %74 = ptrtoint ptr %reg_list_format_direct_reg_list_length to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_list_format_direct_reg_list_length, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef %76) #7
  %save_restore_list_cntl_ucode_ver = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 2
  %77 = ptrtoint ptr %save_restore_list_cntl_ucode_ver to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %save_restore_list_cntl_ucode_ver, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %79) #7
  %save_restore_list_cntl_feature_ver = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 3
  %80 = ptrtoint ptr %save_restore_list_cntl_feature_ver to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %save_restore_list_cntl_feature_ver, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %82) #7
  %save_restore_list_cntl_size_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 4
  %83 = ptrtoint ptr %save_restore_list_cntl_size_bytes to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %save_restore_list_cntl_size_bytes, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.36, i32 noundef %85) #7
  %save_restore_list_cntl_offset_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 5
  %86 = ptrtoint ptr %save_restore_list_cntl_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %save_restore_list_cntl_offset_bytes, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %88) #7
  %save_restore_list_gpm_ucode_ver = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 6
  %89 = ptrtoint ptr %save_restore_list_gpm_ucode_ver to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %save_restore_list_gpm_ucode_ver, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38, i32 noundef %91) #7
  %save_restore_list_gpm_feature_ver = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 7
  %92 = ptrtoint ptr %save_restore_list_gpm_feature_ver to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %save_restore_list_gpm_feature_ver, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %94) #7
  %save_restore_list_gpm_size_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 8
  %95 = ptrtoint ptr %save_restore_list_gpm_size_bytes to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %save_restore_list_gpm_size_bytes, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.40, i32 noundef %97) #7
  %save_restore_list_gpm_offset_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 9
  %98 = ptrtoint ptr %save_restore_list_gpm_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %save_restore_list_gpm_offset_bytes, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.41, i32 noundef %100) #7
  %save_restore_list_srm_ucode_ver = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 10
  %101 = ptrtoint ptr %save_restore_list_srm_ucode_ver to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %save_restore_list_srm_ucode_ver, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef %103) #7
  %save_restore_list_srm_feature_ver = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 11
  %104 = ptrtoint ptr %save_restore_list_srm_feature_ver to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %save_restore_list_srm_feature_ver, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, i32 noundef %106) #7
  %save_restore_list_srm_size_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 12
  %107 = ptrtoint ptr %save_restore_list_srm_size_bytes to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %save_restore_list_srm_size_bytes, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %109) #7
  %save_restore_list_srm_offset_bytes = getelementptr inbounds %struct.rlc_firmware_header_v2_1, ptr %hdr, i32 0, i32 13
  %110 = ptrtoint ptr %save_restore_list_srm_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %save_restore_list_srm_offset_bytes, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.45, i32 noundef %112) #7
  br label %if.end25

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %113 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %113 to i32
  %114 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv23 = zext i16 %114 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv23) #7
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then17, %if.then5.if.end25_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_print_sdma_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.47) #7
  tail call fastcc void @amdgpu_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ucode_feature_version = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %ucode_feature_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucode_feature_version, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %6) #7
  %ucode_change_version = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %7 = ptrtoint ptr %ucode_change_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ucode_change_version, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.48, i32 noundef %9) #7
  %jt_offset = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %hdr, i32 0, i32 3
  %10 = ptrtoint ptr %jt_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jt_offset, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %12) #7
  %jt_size = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %hdr, i32 0, i32 4
  %13 = ptrtoint ptr %jt_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jt_size, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3.not = icmp eq i16 %3, 0
  br i1 %cmp3.not, label %if.then.if.end11_crit_edge, label %if.then5

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %digest_size = getelementptr inbounds %struct.sdma_firmware_header_v1_1, ptr %hdr, i32 0, i32 1
  %16 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %digest_size, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.49, i32 noundef %18) #7
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i16 @llvm.bswap.i16(i16 %3)
  %20 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %20 to i32
  %conv10 = zext i16 %19 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %conv10) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5, %if.then.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_print_psp_hdr(ptr noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.51) #7
  tail call fastcc void @amdgpu_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sos = getelementptr inbounds %struct.psp_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %sos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sos, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %6) #7
  %offset_bytes = getelementptr inbounds %struct.psp_firmware_header_v1_0, ptr %hdr, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %offset_bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset_bytes, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.52, i32 noundef %9) #7
  %size_bytes = getelementptr inbounds %struct.psp_firmware_header_v1_0, ptr %hdr, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %size_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size_bytes, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef %12) #7
  %13 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.144)
  switch i16 %3, label %if.then.if.end71_crit_edge [
    i16 256, label %if.then7
    i16 512, label %if.then24
    i16 768, label %if.then38
  ]

if.then.if.end71_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %toc = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 1
  %14 = ptrtoint ptr %toc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %toc, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef %16) #7
  %offset_bytes13 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %offset_bytes13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset_bytes13, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef %19) #7
  %size_bytes15 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %size_bytes15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size_bytes15, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.56, i32 noundef %22) #7
  %kdb = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 2
  %23 = ptrtoint ptr %kdb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %kdb, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.57, i32 noundef %25) #7
  %offset_bytes18 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %offset_bytes18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset_bytes18, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.58, i32 noundef %28) #7
  %size_bytes20 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %size_bytes20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size_bytes20, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.59, i32 noundef %31) #7
  br label %if.end71

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %kdb28 = getelementptr inbounds %struct.psp_firmware_header_v1_2, ptr %hdr, i32 0, i32 2
  %32 = ptrtoint ptr %kdb28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %kdb28, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.57, i32 noundef %34) #7
  %offset_bytes31 = getelementptr inbounds %struct.psp_firmware_header_v1_2, ptr %hdr, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %offset_bytes31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset_bytes31, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.58, i32 noundef %37) #7
  %size_bytes33 = getelementptr inbounds %struct.psp_firmware_header_v1_2, ptr %hdr, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %size_bytes33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size_bytes33, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.59, i32 noundef %40) #7
  br label %if.end71

if.then38:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %toc46 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 1
  %41 = ptrtoint ptr %toc46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %toc46, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef %43) #7
  %offset_bytes50 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %offset_bytes50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset_bytes50, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef %46) #7
  %size_bytes53 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %size_bytes53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size_bytes53, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.56, i32 noundef %49) #7
  %kdb55 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 2
  %50 = ptrtoint ptr %kdb55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %kdb55, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.57, i32 noundef %52) #7
  %offset_bytes59 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %offset_bytes59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset_bytes59, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.58, i32 noundef %55) #7
  %size_bytes62 = getelementptr inbounds %struct.psp_firmware_header_v1_1, ptr %hdr, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %size_bytes62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size_bytes62, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.59, i32 noundef %58) #7
  %spl = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %hdr, i32 0, i32 1
  %59 = ptrtoint ptr %spl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %spl, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.60, i32 noundef %61) #7
  %offset_bytes65 = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %hdr, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %offset_bytes65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset_bytes65, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.61, i32 noundef %64) #7
  %size_bytes67 = getelementptr inbounds %struct.psp_firmware_header_v1_3, ptr %hdr, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %size_bytes67 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size_bytes67, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.62, i32 noundef %67) #7
  br label %if.end71

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %68 = tail call i16 @llvm.bswap.i16(i16 %3)
  %69 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %69 to i32
  %conv70 = zext i16 %68 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63, i32 noundef %conv, i32 noundef %conv70) #7
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then38, %if.then24, %if.then7, %if.then.if.end71_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_print_gpu_info_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.64) #7
  tail call fastcc void @amdgpu_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %version_major2 = getelementptr inbounds %struct.gpu_info_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %version_major2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %version_major2, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv3 = zext i16 %6 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.65, i32 noundef %conv3) #7
  %version_minor4 = getelementptr inbounds %struct.gpu_info_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %7 = ptrtoint ptr %version_minor4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %version_minor4, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv5 = zext i16 %9 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.66, i32 noundef %conv5) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %10 to i32
  %11 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv7 = zext i16 %11 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.67, i32 noundef %conv, i32 noundef %conv7) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_ucode_validate(ptr nocapture noundef readonly %fw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp = icmp eq i32 %3, %6
  %. = select i1 %cmp, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_ucode_hdr_version(ptr nocapture noundef readonly %hdr, i16 noundef zeroext %hdr_major, i16 noundef zeroext %hdr_minor) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %hdr_major)
  %cmp = icmp eq i16 %1, %hdr_major
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %hdr_minor)
  %cmp5 = icmp eq i16 %3, %hdr_minor
  br i1 %cmp5, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_ucode_get_load_type(ptr nocapture noundef readonly %adev, i32 noundef %load_type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge16
    i32 2, label %entry.return_crit_edge17
    i32 3, label %entry.return_crit_edge18
    i32 4, label %entry.return_crit_edge19
    i32 5, label %entry.return_crit_edge20
    i32 6, label %entry.return_crit_edge21
    i32 7, label %entry.return_crit_edge22
    i32 8, label %entry.return_crit_edge23
    i32 9, label %entry.return_crit_edge24
    i32 10, label %entry.sw.bb2_crit_edge
    i32 11, label %entry.sw.bb2_crit_edge25
    i32 12, label %entry.sw.bb2_crit_edge26
    i32 13, label %entry.sw.bb2_crit_edge27
    i32 14, label %entry.sw.bb2_crit_edge28
    i32 15, label %entry.sw.bb2_crit_edge29
    i32 16, label %entry.sw.bb2_crit_edge30
    i32 17, label %entry.sw.bb2_crit_edge31
    i32 18, label %entry.sw.bb2_crit_edge32
    i32 19, label %entry.sw.bb3_crit_edge
    i32 22, label %entry.sw.bb3_crit_edge33
    i32 20, label %entry.sw.bb3_crit_edge34
    i32 21, label %entry.sw.bb3_crit_edge35
    i32 23, label %entry.sw.bb3_crit_edge36
    i32 24, label %entry.sw.bb3_crit_edge37
    i32 26, label %entry.sw.bb3_crit_edge38
    i32 28, label %entry.sw.bb3_crit_edge39
    i32 29, label %entry.sw.bb3_crit_edge40
    i32 30, label %entry.sw.bb3_crit_edge41
    i32 31, label %entry.sw.bb3_crit_edge42
    i32 32, label %entry.sw.bb3_crit_edge43
    i32 33, label %entry.sw.bb3_crit_edge44
    i32 25, label %entry.sw.bb3_crit_edge45
    i32 34, label %entry.sw.bb3_crit_edge46
    i32 35, label %entry.sw.bb3_crit_edge47
    i32 27, label %sw.bb4
  ]

entry.sw.bb3_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb2_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge25, %entry.sw.bb2_crit_edge26, %entry.sw.bb2_crit_edge27, %entry.sw.bb2_crit_edge28, %entry.sw.bb2_crit_edge29, %entry.sw.bb2_crit_edge30, %entry.sw.bb2_crit_edge31, %entry.sw.bb2_crit_edge32
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge33, %entry.sw.bb3_crit_edge34, %entry.sw.bb3_crit_edge35, %entry.sw.bb3_crit_edge36, %entry.sw.bb3_crit_edge37, %entry.sw.bb3_crit_edge38, %entry.sw.bb3_crit_edge39, %entry.sw.bb3_crit_edge40, %entry.sw.bb3_crit_edge41, %entry.sw.bb3_crit_edge42, %entry.sw.bb3_crit_edge43, %entry.sw.bb3_crit_edge44, %entry.sw.bb3_crit_edge45, %entry.sw.bb3_crit_edge46, %entry.sw.bb3_crit_edge47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_type)
  %tobool.not = icmp eq i32 %load_type, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_type)
  %tobool5.not = icmp eq i32 %load_type, 0
  br i1 %tobool5.not, label %sw.bb4.return_crit_edge, label %land.lhs.true

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %apu_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 10
  %3 = ptrtoint ptr %apu_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %apu_flags, align 4
  %and = lshr i32 %4, 5
  %5 = and i32 %and, 2
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_type)
  %tobool9.not = icmp eq i32 %load_type, 0
  %.15 = select i1 %tobool9.not, i32 0, i32 2
  br label %return

return:                                           ; preds = %sw.default, %land.lhs.true, %sw.bb4.return_crit_edge, %sw.bb3, %sw.bb2, %entry.return_crit_edge, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24
  %retval.0 = phi i32 [ 1, %sw.bb2 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge16 ], [ 0, %entry.return_crit_edge17 ], [ 0, %entry.return_crit_edge18 ], [ 0, %entry.return_crit_edge19 ], [ 0, %entry.return_crit_edge20 ], [ 0, %entry.return_crit_edge21 ], [ 0, %entry.return_crit_edge22 ], [ 0, %entry.return_crit_edge23 ], [ 0, %entry.return_crit_edge24 ], [ %., %sw.bb3 ], [ 0, %sw.bb4.return_crit_edge ], [ %.15, %sw.default ], [ %5, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @amdgpu_ucode_name(i32 noundef %ucode_id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %ucode_id)
  %0 = icmp ult i32 %ucode_id, 35
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [35 x ptr], ptr @switch.table.amdgpu_ucode_name, i32 0, i32 %ucode_id
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.103, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ucode_sysfs_init(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %call = tail call i32 @sysfs_create_group(ptr noundef %1, ptr noundef nonnull @fw_attr_group) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_sysfs_fini(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @fw_attr_group) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ucode_create_bo(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %0 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %fw_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 3
  %2 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_size, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  %fw_buf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 2
  %fw_buf_mc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 10
  %fw_buf_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 9
  %call = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %3, i32 noundef 4096, i32 noundef %cond, ptr noundef %fw_buf, ptr noundef %fw_buf_mc, ptr noundef %fw_buf_ptr) #7
  %6 = ptrtoint ptr %fw_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_buf, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %do.end, label %if.else

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.104) #10
  br label %return

if.else:                                          ; preds = %if.then
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt, align 8
  %and11 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else.return_crit_edge, label %if.then13

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %fw_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_buf_ptr, align 8
  %14 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_size, align 8
  %16 = call ptr @memset(ptr %13, i32 0, i32 %15)
  br label %return

return:                                           ; preds = %if.then13, %if.else.return_crit_edge, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then13 ], [ 0, %if.else.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ucode_free_bo(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %0 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fw_buf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 2
  %fw_buf_mc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 10
  %fw_buf_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 9
  tail call void @amdgpu_bo_free_kernel(ptr noundef %fw_buf, ptr noundef %fw_buf_mc, ptr noundef %fw_buf_ptr) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ucode_init_bo(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #7
  %2 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %in_suspend = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 137
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_suspend, align 1, !range !315
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %firmware = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %6 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.else13, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and6 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %max_ucodes11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %max_ucodes11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %max_ucodes11, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %max_ucodes11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 31, ptr %max_ucodes11, align 4
  br label %if.end16

if.else13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %max_ucodes15 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 4
  %12 = ptrtoint ptr %max_ucodes15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 35, ptr %max_ucodes15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.else, %if.then8
  %max_ucodes18 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 4
  %13 = ptrtoint ptr %max_ucodes18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_ucodes18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1990.not = icmp eq i32 %14, 0
  br i1 %cmp1990.not, label %if.end16.cleanup_crit_edge, label %for.body.lr.ph

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  %fw_buf_ptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 9
  %fw_buf_mc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 10
  %rlc_dram_ucode_size_bytes.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 30
  %rlc_dram_ucode.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 37
  %rlc_iram_ucode_size_bytes.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 29
  %rlc_iram_ucode.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 36
  %save_restore_list_srm_size_bytes.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 28
  %save_restore_list_srm.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 35
  %save_restore_list_gpm_size_bytes.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 27
  %save_restore_list_gpm.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 34
  %save_restore_list_cntl_size_bytes.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 26
  %save_restore_list_cntl.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 33
  %kaddr.i83 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 0, i32 11, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fw_offset.091 = phi i64 [ 0, %for.body.lr.ph ], [ %fw_offset.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092
  %fw = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 1
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %if.then23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %for.body
  %17 = ptrtoint ptr %fw_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw_buf_ptr, align 8
  %idx.ext = trunc i64 %fw_offset.091 to i32
  %add.ptr = getelementptr i8, ptr %18, i32 %idx.ext
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw, align 4
  %cmp.i = icmp eq ptr %20, null
  br i1 %cmp.i, label %if.then23.amdgpu_ucode_init_single_fw.exit_crit_edge, label %if.end.i

if.then23.amdgpu_ucode_init_single_fw.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ucode_init_single_fw.exit

if.end.i:                                         ; preds = %if.then23
  %21 = ptrtoint ptr %fw_buf_mc to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fw_buf_mc, align 8
  %add = add i64 %22, %fw_offset.091
  %mc_addr1.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 2
  %23 = ptrtoint ptr %mc_addr1.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add, ptr %mc_addr1.i, align 8
  %kaddr.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 3
  %24 = ptrtoint ptr %kaddr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr, ptr %kaddr.i, align 8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %26)
  %cmp2.i = icmp eq i32 %26, 23
  br i1 %cmp2.i, label %if.end.i.amdgpu_ucode_init_single_fw.exit_crit_edge, label %if.end4.i

if.end.i.amdgpu_ucode_init_single_fw.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ucode_init_single_fw.exit

if.end4.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %29 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp14.i = icmp eq i32 %30, 2
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end4.i
  %31 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %26, label %sw.default.i [
    i32 11, label %if.then15.i.sw.bb.i_crit_edge
    i32 13, label %if.then15.i.sw.bb.i_crit_edge98
    i32 12, label %if.then15.i.sw.bb19.i_crit_edge
    i32 14, label %if.then15.i.sw.bb19.i_crit_edge99
    i32 17, label %sw.bb29.i
    i32 18, label %sw.bb33.i
    i32 19, label %sw.bb39.i
    i32 20, label %sw.bb45.i
    i32 21, label %sw.bb51.i
    i32 15, label %sw.bb57.i
    i32 16, label %sw.bb62.i
    i32 30, label %sw.bb67.i
    i32 31, label %sw.bb75.i
    i32 34, label %sw.bb83.i
  ]

if.then15.i.sw.bb19.i_crit_edge99:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19.i

if.then15.i.sw.bb19.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19.i

if.then15.i.sw.bb.i_crit_edge98:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then15.i.sw.bb.i_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then15.i.sw.bb.i_crit_edge, %if.then15.i.sw.bb.i_crit_edge98
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 7
  %32 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ucode_size_bytes.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %jt_size.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %28, i32 0, i32 3
  %35 = ptrtoint ptr %jt_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %jt_size.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %mul.neg.i = mul i32 %37, -4
  %sub.i = add i32 %mul.neg.i, %34
  %ucode_size.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %38 = ptrtoint ptr %ucode_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.i, ptr %ucode_size.i, align 4
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %ucode_array_offset_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 8
  %41 = ptrtoint ptr %ucode_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ucode_array_offset_bytes.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  %add.ptr.i = getelementptr i8, ptr %40, i32 %43
  br label %if.end101.i

sw.bb19.i:                                        ; preds = %if.then15.i.sw.bb19.i_crit_edge, %if.then15.i.sw.bb19.i_crit_edge99
  %jt_size20.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %28, i32 0, i32 3
  %44 = ptrtoint ptr %jt_size20.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %jt_size20.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  %mul21.i = shl i32 %46, 2
  %ucode_size22.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %47 = ptrtoint ptr %ucode_size22.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul21.i, ptr %ucode_size22.i, align 4
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %ucode_array_offset_bytes25.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 8
  %50 = ptrtoint ptr %ucode_array_offset_bytes25.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ucode_array_offset_bytes25.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  %add.ptr26.i = getelementptr i8, ptr %49, i32 %52
  %jt_offset.i = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %28, i32 0, i32 2
  %53 = ptrtoint ptr %jt_offset.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %jt_offset.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %mul27.i = shl i32 %55, 2
  %add.ptr28.i = getelementptr i8, ptr %add.ptr26.i, i32 %mul27.i
  br label %if.end101.i

sw.bb29.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %save_restore_list_cntl_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %save_restore_list_cntl_size_bytes.i, align 8
  %ucode_size30.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %58 = ptrtoint ptr %ucode_size30.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ucode_size30.i, align 4
  %59 = ptrtoint ptr %save_restore_list_cntl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %save_restore_list_cntl.i, align 4
  br label %if.end101.i

sw.bb33.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %save_restore_list_gpm_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %save_restore_list_gpm_size_bytes.i, align 4
  %ucode_size36.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %63 = ptrtoint ptr %ucode_size36.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ucode_size36.i, align 4
  %64 = ptrtoint ptr %save_restore_list_gpm.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %save_restore_list_gpm.i, align 8
  br label %if.end101.i

sw.bb39.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %save_restore_list_srm_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %save_restore_list_srm_size_bytes.i, align 8
  %ucode_size42.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %68 = ptrtoint ptr %ucode_size42.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %ucode_size42.i, align 4
  %69 = ptrtoint ptr %save_restore_list_srm.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %save_restore_list_srm.i, align 4
  br label %if.end101.i

sw.bb45.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %rlc_iram_ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rlc_iram_ucode_size_bytes.i, align 4
  %ucode_size48.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %73 = ptrtoint ptr %ucode_size48.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %ucode_size48.i, align 4
  %74 = ptrtoint ptr %rlc_iram_ucode.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rlc_iram_ucode.i, align 8
  br label %if.end101.i

sw.bb51.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %rlc_dram_ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rlc_dram_ucode_size_bytes.i, align 8
  %ucode_size54.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %78 = ptrtoint ptr %ucode_size54.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %ucode_size54.i, align 4
  %79 = ptrtoint ptr %rlc_dram_ucode.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rlc_dram_ucode.i, align 4
  br label %if.end101.i

sw.bb57.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %mes_ucode_size_bytes.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %28, i32 0, i32 2
  %81 = ptrtoint ptr %mes_ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mes_ucode_size_bytes.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  %ucode_size58.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %84 = ptrtoint ptr %ucode_size58.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %ucode_size58.i, align 4
  %85 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i, align 4
  %mes_ucode_offset_bytes.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %28, i32 0, i32 3
  %87 = ptrtoint ptr %mes_ucode_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mes_ucode_offset_bytes.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #7
  %add.ptr61.i = getelementptr i8, ptr %86, i32 %89
  br label %if.end101.i

sw.bb62.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %mes_ucode_data_size_bytes.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %28, i32 0, i32 5
  %90 = ptrtoint ptr %mes_ucode_data_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mes_ucode_data_size_bytes.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #7
  %ucode_size63.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %93 = ptrtoint ptr %ucode_size63.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %ucode_size63.i, align 4
  %94 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i, align 4
  %mes_ucode_data_offset_bytes.i = getelementptr inbounds %struct.mes_firmware_header_v1_0, ptr %28, i32 0, i32 6
  %96 = ptrtoint ptr %mes_ucode_data_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mes_ucode_data_offset_bytes.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  %add.ptr66.i = getelementptr i8, ptr %95, i32 %98
  br label %if.end101.i

sw.bb67.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %ucode_size_bytes68.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 7
  %99 = ptrtoint ptr %ucode_size_bytes68.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ucode_size_bytes68.i, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  %intv_size_bytes.i = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, ptr %28, i32 0, i32 2
  %102 = ptrtoint ptr %intv_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %intv_size_bytes.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #7
  %sub69.i = sub i32 %101, %104
  %ucode_size70.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %105 = ptrtoint ptr %ucode_size70.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub69.i, ptr %ucode_size70.i, align 4
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %ucode_array_offset_bytes73.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 8
  %108 = ptrtoint ptr %ucode_array_offset_bytes73.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ucode_array_offset_bytes73.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #7
  %add.ptr74.i = getelementptr i8, ptr %107, i32 %110
  br label %if.end101.i

sw.bb75.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %intv_size_bytes76.i = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, ptr %28, i32 0, i32 2
  %111 = ptrtoint ptr %intv_size_bytes76.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %intv_size_bytes76.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #7
  %ucode_size77.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %114 = ptrtoint ptr %ucode_size77.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %ucode_size77.i, align 4
  %115 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data.i, align 4
  %ucode_array_offset_bytes80.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 8
  %117 = ptrtoint ptr %ucode_array_offset_bytes80.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ucode_array_offset_bytes80.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #7
  %add.ptr81.i = getelementptr i8, ptr %116, i32 %119
  %intv_offset_bytes.i = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, ptr %28, i32 0, i32 1
  %120 = ptrtoint ptr %intv_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %intv_offset_bytes.i, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #7
  %add.ptr82.i = getelementptr i8, ptr %add.ptr81.i, i32 %122
  br label %if.end101.i

sw.bb83.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %inst_const_bytes.i = getelementptr inbounds %struct.dmcub_firmware_header_v1_0, ptr %28, i32 0, i32 1
  %123 = ptrtoint ptr %inst_const_bytes.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %inst_const_bytes.i, align 4
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #7
  %ucode_size84.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %126 = ptrtoint ptr %ucode_size84.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %ucode_size84.i, align 4
  %127 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i, align 4
  %ucode_array_offset_bytes87.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 8
  %129 = ptrtoint ptr %ucode_array_offset_bytes87.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ucode_array_offset_bytes87.i, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #7
  %add.ptr88.i = getelementptr i8, ptr %128, i32 %131
  br label %if.end101.i

sw.default.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %ucode_size_bytes89.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 7
  %132 = ptrtoint ptr %ucode_size_bytes89.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ucode_size_bytes89.i, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #7
  %ucode_size90.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %135 = ptrtoint ptr %ucode_size90.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %ucode_size90.i, align 4
  %136 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i, align 4
  %ucode_array_offset_bytes93.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 8
  %138 = ptrtoint ptr %ucode_array_offset_bytes93.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ucode_array_offset_bytes93.i, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #7
  %add.ptr94.i = getelementptr i8, ptr %137, i32 %140
  br label %if.end101.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %ucode_size_bytes95.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 7
  %141 = ptrtoint ptr %ucode_size_bytes95.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ucode_size_bytes95.i, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #7
  %ucode_size96.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %144 = ptrtoint ptr %ucode_size96.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %ucode_size96.i, align 4
  %145 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i, align 4
  %ucode_array_offset_bytes99.i = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 8
  %147 = ptrtoint ptr %ucode_array_offset_bytes99.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ucode_array_offset_bytes99.i, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #7
  %add.ptr100.i = getelementptr i8, ptr %146, i32 %149
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else.i, %sw.default.i, %sw.bb83.i, %sw.bb75.i, %sw.bb67.i, %sw.bb62.i, %sw.bb57.i, %sw.bb51.i, %sw.bb45.i, %sw.bb39.i, %sw.bb33.i, %sw.bb29.i, %sw.bb19.i, %sw.bb.i
  %ucode_addr.0.i = phi ptr [ %add.ptr94.i, %sw.default.i ], [ %add.ptr88.i, %sw.bb83.i ], [ %add.ptr82.i, %sw.bb75.i ], [ %add.ptr74.i, %sw.bb67.i ], [ %add.ptr66.i, %sw.bb62.i ], [ %add.ptr61.i, %sw.bb57.i ], [ %80, %sw.bb51.i ], [ %75, %sw.bb45.i ], [ %70, %sw.bb39.i ], [ %65, %sw.bb33.i ], [ %60, %sw.bb29.i ], [ %add.ptr28.i, %sw.bb19.i ], [ %add.ptr.i, %sw.bb.i ], [ %add.ptr100.i, %if.else.i ]
  %ucode_size103.i = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %150 = ptrtoint ptr %ucode_size103.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ucode_size103.i, align 4
  %152 = call ptr @memcpy(ptr %add.ptr, ptr %ucode_addr.0.i, i32 %151)
  br label %amdgpu_ucode_init_single_fw.exit

amdgpu_ucode_init_single_fw.exit:                 ; preds = %if.end101.i, %if.end.i.amdgpu_ucode_init_single_fw.exit_crit_edge, %if.then23.amdgpu_ucode_init_single_fw.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.092)
  %cmp27 = icmp eq i32 %i.092, 11
  br i1 %cmp27, label %land.lhs.true28, label %amdgpu_ucode_init_single_fw.exit.if.end45_crit_edge

amdgpu_ucode_init_single_fw.exit.if.end45_crit_edge: ; preds = %amdgpu_ucode_init_single_fw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true28:                                  ; preds = %amdgpu_ucode_init_single_fw.exit
  %153 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %cmp31.not = icmp eq i32 %154, 2
  br i1 %cmp31.not, label %land.lhs.true28.if.end45_crit_edge, label %if.then32

land.lhs.true28.if.end45_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then32:                                        ; preds = %land.lhs.true28
  %155 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %data, align 4
  %cmp.i81 = icmp eq ptr %156, null
  br i1 %cmp.i81, label %if.then32.amdgpu_ucode_patch_jt.exit_crit_edge, label %if.end.i89

if.then32.amdgpu_ucode_patch_jt.exit_crit_edge:   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ucode_patch_jt.exit

if.end.i89:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data, align 4
  %161 = ptrtoint ptr %kaddr.i83 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %kaddr.i83, align 8
  %ucode_size_bytes.i84 = getelementptr inbounds %struct.common_firmware_header, ptr %160, i32 0, i32 7
  %163 = ptrtoint ptr %ucode_size_bytes.i84 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ucode_size_bytes.i84, align 4
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #7
  %add.i = add i32 %165, 4095
  %and.i = and i32 %add.i, -4096
  %add.ptr.i85 = getelementptr i8, ptr %162, i32 %and.i
  %ucode_array_offset_bytes.i86 = getelementptr inbounds %struct.common_firmware_header, ptr %160, i32 0, i32 8
  %166 = ptrtoint ptr %ucode_array_offset_bytes.i86 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ucode_array_offset_bytes.i86, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #7
  %add.ptr6.i = getelementptr i8, ptr %160, i32 %168
  %jt_offset.i87 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %160, i32 0, i32 2
  %169 = ptrtoint ptr %jt_offset.i87 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %jt_offset.i87, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #7
  %mul.i = shl i32 %171, 2
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 %mul.i
  %jt_size.i88 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %160, i32 0, i32 3
  %172 = ptrtoint ptr %jt_size.i88 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %jt_size.i88, align 4
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #7
  %mul8.i = shl i32 %174, 2
  %175 = call ptr @memcpy(ptr %add.ptr.i85, ptr %add.ptr7.i, i32 %mul8.i)
  br label %amdgpu_ucode_patch_jt.exit

amdgpu_ucode_patch_jt.exit:                       ; preds = %if.end.i89, %if.then32.amdgpu_ucode_patch_jt.exit_crit_edge
  %jt_size = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %158, i32 0, i32 3
  %176 = ptrtoint ptr %jt_size to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %jt_size, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  %shl = shl i32 %178, 2
  %add42 = add i32 %shl, 4095
  %and43 = and i32 %add42, -4096
  %conv = zext i32 %and43 to i64
  %add44 = add i64 %fw_offset.091, %conv
  br label %if.end45

if.end45:                                         ; preds = %amdgpu_ucode_patch_jt.exit, %land.lhs.true28.if.end45_crit_edge, %amdgpu_ucode_init_single_fw.exit.if.end45_crit_edge
  %fw_offset.1 = phi i64 [ %add44, %amdgpu_ucode_patch_jt.exit ], [ %fw_offset.091, %land.lhs.true28.if.end45_crit_edge ], [ %fw_offset.091, %amdgpu_ucode_init_single_fw.exit.if.end45_crit_edge ]
  %ucode_size = getelementptr [35 x %struct.amdgpu_firmware_info], ptr %firmware, i32 0, i32 %i.092, i32 4
  %179 = ptrtoint ptr %ucode_size to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ucode_size, align 4
  %add46 = add i32 %180, 4095
  %and47 = and i32 %add46, -4096
  %conv48 = zext i32 %and47 to i64
  %add49 = add i64 %fw_offset.1, %conv48
  br label %for.inc

for.inc:                                          ; preds = %if.end45, %for.body.for.inc_crit_edge
  %fw_offset.2 = phi i64 [ %add49, %if.end45 ], [ %fw_offset.091, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.092, 1
  %181 = ptrtoint ptr %max_ucodes18 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %max_ucodes18, align 4
  %cmp19 = icmp ult i32 %inc, %182
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vce_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_version = getelementptr i8, ptr %1, i32 65480
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_uvd_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_version = getelementptr i8, ptr %1, i32 59308
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_mc_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_version = getelementptr i8, ptr %1, i32 3892
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_me_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %me_fw_version = getelementptr i8, ptr %1, i32 34792
  %2 = ptrtoint ptr %me_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me_fw_version, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pfp_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pfp_fw_version = getelementptr i8, ptr %1, i32 34800
  %2 = ptrtoint ptr %pfp_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pfp_fw_version, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ce_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ce_fw_version = getelementptr i8, ptr %1, i32 34808
  %2 = ptrtoint ptr %ce_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ce_fw_version, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rlc_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rlc_fw_version = getelementptr i8, ptr %1, i32 34816
  %2 = ptrtoint ptr %rlc_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rlc_fw_version, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rlc_srlc_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rlc_srlc_fw_version = getelementptr i8, ptr %1, i32 34852
  %2 = ptrtoint ptr %rlc_srlc_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rlc_srlc_fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rlc_srlg_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rlc_srlg_fw_version = getelementptr i8, ptr %1, i32 34860
  %2 = ptrtoint ptr %rlc_srlg_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rlc_srlg_fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rlc_srls_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rlc_srls_fw_version = getelementptr i8, ptr %1, i32 34868
  %2 = ptrtoint ptr %rlc_srls_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rlc_srls_fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_mec_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mec_fw_version = getelementptr i8, ptr %1, i32 34824
  %2 = ptrtoint ptr %mec_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mec_fw_version, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_mec2_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mec2_fw_version = getelementptr i8, ptr %1, i32 34832
  %2 = ptrtoint ptr %mec2_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mec2_fw_version, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sos_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sos = getelementptr i8, ptr %1, i32 80072
  %2 = ptrtoint ptr %sos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sos, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_asd_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bin_desc = getelementptr i8, ptr %1, i32 80312
  %2 = ptrtoint ptr %bin_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_desc, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ta_ras_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bin_desc = getelementptr i8, ptr %1, i32 81976
  %2 = ptrtoint ptr %bin_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_desc, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ta_xgmi_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bin_desc = getelementptr i8, ptr %1, i32 80368
  %2 = ptrtoint ptr %bin_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_desc, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_smc_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_version = getelementptr i8, ptr %1, i32 29716
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sdma_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_version = getelementptr i8, ptr %1, i32 44548
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sdma2_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_version = getelementptr i8, ptr %1, i32 46380
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vcn_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vcn = getelementptr i8, ptr %1, i32 68800
  %2 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vcn, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_dmcu_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dmcu_fw_version = getelementptr i8, ptr %1, i32 85412
  %2 = ptrtoint ptr %dmcu_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmcu_fw_version, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.121, i32 noundef %3) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !214, !215, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305}
!llvm.module.flags = !{!306, !307, !308, !309, !310, !311, !312, !313}
!llvm.ident = !{!314}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 51, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 58, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 60, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 63, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 75, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 80, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 85, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 86, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 90, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 91, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 98, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 107, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 114, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 116, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 117, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 119, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 128, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 137, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 139, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 141, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 143, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 159, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 161, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 163, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 165, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 167, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 169, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 171, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 173, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 175, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 177, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 179, i32 3}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 181, i32 3}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 186, i32 4}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 188, i32 4}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 190, i32 4}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 192, i32 4}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 194, i32 4}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 196, i32 4}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 198, i32 4}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 200, i32 4}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 202, i32 4}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 204, i32 4}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 206, i32 4}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 208, i32 4}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 210, i32 4}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 214, i32 3}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 223, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 232, i32 3}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 239, i32 4}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 242, i32 3}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 252, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 261, i32 3}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 263, i32 3}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 268, i32 4}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 270, i32 4}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 272, i32 4}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 274, i32 4}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 276, i32 4}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 278, i32 4}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 308, i32 4}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 310, i32 4}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 312, i32 4}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 316, i32 3}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 326, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 333, i32 3}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 335, i32 3}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 338, i32 3}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 430, i32 10}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 432, i32 10}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 434, i32 10}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 436, i32 10}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 438, i32 10}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 440, i32 10}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 442, i32 10}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 444, i32 10}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 446, i32 10}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 448, i32 10}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 450, i32 10}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 452, i32 10}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 454, i32 10}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 456, i32 10}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 458, i32 10}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 460, i32 10}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 462, i32 10}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 464, i32 10}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 466, i32 10}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 468, i32 10}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 470, i32 10}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 472, i32 10}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 474, i32 10}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 476, i32 10}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 478, i32 10}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 480, i32 10}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 482, i32 10}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 484, i32 10}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 486, i32 10}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 488, i32 10}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 490, i32 10}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 492, i32 10}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 494, i32 10}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 496, i32 10}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 498, i32 10}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 500, i32 10}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 706, i32 4}
!210 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.106, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @amdgpu_ucode_create_bo._entry, !209, !"_entry", i1 false, i1 false}
!215 = !{ptr @amdgpu_ucode_create_bo._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.109, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 33, i32 2}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 34, i32 2}
!220 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 35, i32 2}
!222 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 36, i32 2}
!224 = !{ptr @.str.113, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 37, i32 2}
!226 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 38, i32 2}
!228 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 39, i32 2}
!230 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 40, i32 2}
!232 = !{ptr @.str.117, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 41, i32 2}
!234 = !{ptr @.str.118, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 43, i32 2}
!236 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 553, i32 10}
!238 = !{ptr @fw_attr_group, !239, !"fw_attr_group", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 552, i32 37}
!240 = !{ptr @fw_attrs, !241, !"fw_attrs", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 538, i32 26}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 516, i32 1}
!244 = !{ptr @dev_attr_vce_fw_version, !243, !"dev_attr_vce_fw_version", i1 false, i1 false}
!245 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 517, i32 1}
!248 = !{ptr @dev_attr_uvd_fw_version, !247, !"dev_attr_uvd_fw_version", i1 false, i1 false}
!249 = !{ptr @.str.123, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 518, i32 1}
!251 = !{ptr @dev_attr_mc_fw_version, !250, !"dev_attr_mc_fw_version", i1 false, i1 false}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 519, i32 1}
!254 = !{ptr @dev_attr_me_fw_version, !253, !"dev_attr_me_fw_version", i1 false, i1 false}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 520, i32 1}
!257 = !{ptr @dev_attr_pfp_fw_version, !256, !"dev_attr_pfp_fw_version", i1 false, i1 false}
!258 = !{ptr @.str.126, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 521, i32 1}
!260 = !{ptr @dev_attr_ce_fw_version, !259, !"dev_attr_ce_fw_version", i1 false, i1 false}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 522, i32 1}
!263 = !{ptr @dev_attr_rlc_fw_version, !262, !"dev_attr_rlc_fw_version", i1 false, i1 false}
!264 = !{ptr @.str.128, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 523, i32 1}
!266 = !{ptr @dev_attr_rlc_srlc_fw_version, !265, !"dev_attr_rlc_srlc_fw_version", i1 false, i1 false}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 524, i32 1}
!269 = !{ptr @dev_attr_rlc_srlg_fw_version, !268, !"dev_attr_rlc_srlg_fw_version", i1 false, i1 false}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 525, i32 1}
!272 = !{ptr @dev_attr_rlc_srls_fw_version, !271, !"dev_attr_rlc_srls_fw_version", i1 false, i1 false}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 526, i32 1}
!275 = !{ptr @dev_attr_mec_fw_version, !274, !"dev_attr_mec_fw_version", i1 false, i1 false}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 527, i32 1}
!278 = !{ptr @dev_attr_mec2_fw_version, !277, !"dev_attr_mec2_fw_version", i1 false, i1 false}
!279 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 528, i32 1}
!281 = !{ptr @dev_attr_sos_fw_version, !280, !"dev_attr_sos_fw_version", i1 false, i1 false}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 529, i32 1}
!284 = !{ptr @dev_attr_asd_fw_version, !283, !"dev_attr_asd_fw_version", i1 false, i1 false}
!285 = !{ptr @.str.135, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 530, i32 1}
!287 = !{ptr @dev_attr_ta_ras_fw_version, !286, !"dev_attr_ta_ras_fw_version", i1 false, i1 false}
!288 = !{ptr @.str.136, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 531, i32 1}
!290 = !{ptr @dev_attr_ta_xgmi_fw_version, !289, !"dev_attr_ta_xgmi_fw_version", i1 false, i1 false}
!291 = !{ptr @.str.137, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 532, i32 1}
!293 = !{ptr @dev_attr_smc_fw_version, !292, !"dev_attr_smc_fw_version", i1 false, i1 false}
!294 = !{ptr @.str.138, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 533, i32 1}
!296 = !{ptr @dev_attr_sdma_fw_version, !295, !"dev_attr_sdma_fw_version", i1 false, i1 false}
!297 = !{ptr @.str.139, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 534, i32 1}
!299 = !{ptr @dev_attr_sdma2_fw_version, !298, !"dev_attr_sdma2_fw_version", i1 false, i1 false}
!300 = !{ptr @.str.140, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 535, i32 1}
!302 = !{ptr @dev_attr_vcn_fw_version, !301, !"dev_attr_vcn_fw_version", i1 false, i1 false}
!303 = !{ptr @.str.141, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ucode.c", i32 536, i32 1}
!305 = !{ptr @dev_attr_dmcu_fw_version, !304, !"dev_attr_dmcu_fw_version", i1 false, i1 false}
!306 = !{i32 1, !"wchar_size", i32 2}
!307 = !{i32 1, !"min_enum_size", i32 4}
!308 = !{i32 8, !"branch-target-enforcement", i32 0}
!309 = !{i32 8, !"sign-return-address", i32 0}
!310 = !{i32 8, !"sign-return-address-all", i32 0}
!311 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!312 = !{i32 7, !"uwtable", i32 1}
!313 = !{i32 7, !"frame-pointer", i32 2}
!314 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!315 = !{i8 0, i8 2}
