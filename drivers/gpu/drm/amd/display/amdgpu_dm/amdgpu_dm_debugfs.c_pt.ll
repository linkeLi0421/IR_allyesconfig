; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.179 = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_dm_connector = type { %struct.drm_connector, i32, ptr, %struct.amdgpu_hpd, i32, ptr, ptr, ptr, %struct.drm_dp_mst_topology_mgr, %struct.amdgpu_dm_dp_aux, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.mutex, i8, i32, i32, i8, %struct.dsc_preferred_settings, %struct.drm_display_mode, i32 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_dm_dp_aux = type { %struct.drm_dp_aux, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.dsc_preferred_settings = type { i32, i32, i32, i32, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.189, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.188], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.188 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.185] }
%struct.anon.185 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.amdgpu_gtt_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.atomic64_t }
%struct.amdgpu_preempt_mgr = type { %struct.ttm_resource_manager, %struct.atomic64_t }
%struct.amdgpu_vram_scratch = type { ptr, ptr, i64 }
%struct.amdgpu_wb = type { ptr, ptr, i64, i32, [8 x i32] }
%struct.anon.189 = type { %struct.spinlock, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { ptr, ptr, i8, [6 x ptr], [6 x ptr], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, %struct.amdgpu_audio, i32, i32, i32, i32, ptr, ptr }
%struct.amdgpu_audio = type { i8, [9 x %struct.amdgpu_audio_pin], i32 }
%struct.amdgpu_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.amdgpu_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [32 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
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
%struct.common_irq_params = type { ptr, i32, %struct.atomic64_t }
%struct.amdgpu_dm_backlight_caps = type { ptr, i32, i32, i32, i32, i8, i8 }
%struct.dm_compressor_info = type { ptr, ptr, i64 }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.amdgpu_mes = type { ptr, i32, i32, i32, i64, i64, %struct.amdgpu_ring, ptr, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i32, [8 x i32], [2 x i32], [2 x i32], [5 x i32], i32, i64, ptr, i32, i64, ptr, ptr }
%struct.amdgpu_df = type { %struct.amdgpu_df_hash_status, ptr }
%struct.amdgpu_df_hash_status = type { i8, i8, i8 }
%struct.amdgpu_mca = type { ptr, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras }
%struct.amdgpu_mca_ras = type { ptr, ptr }
%struct.amdgpu_ip_block = type { %struct.amdgpu_ip_block_status, ptr }
%struct.amdgpu_ip_block_status = type { i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.195, i32, i32, i32, i32 }
%union.anon.195 = type { %struct.anon.197 }
%struct.anon.197 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.dc_log_buffer_ctx = type { ptr, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.82 = type { ptr }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.103 }
%struct.anon.103 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.104, %struct.anon.105, %struct.anon.106, i32, i32 }
%struct.anon.104 = type { i8, [3 x i8] }
%struct.anon.105 = type { i32, i32, i32 }
%struct.anon.106 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.110, %struct.anon.111, i8, i8, i64 }
%struct.anon.110 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.111 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.152 }
%struct.anon.152 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.145, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.146, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.145 = type { i8, [3 x i8] }
%struct.anon.146 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.101 }
%struct.anon.101 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.163 }
%struct.anon.163 = type { i8 }
%union.max_lane_count = type { %struct.anon.164 }
%struct.anon.164 = type { i8 }
%union.max_down_spread = type { %struct.anon.165 }
%struct.anon.165 = type { i8 }
%union.dprx_feature = type { %struct.anon.166 }
%struct.anon.166 = type { i8 }
%union.sink_count = type { %struct.anon.167 }
%struct.anon.167 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.168 }
%struct.anon.168 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.169 }
%struct.anon.169 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
%struct.dpcd_dsc_support = type { i8 }
%struct.dpcd_dsc_algorithm_revision = type { i8 }
%struct.dpcd_dsc_rc_buffer_block_size = type { i8 }
%struct.dpcd_dsc_slice_capability1 = type { i8 }
%struct.dpcd_dsc_line_buffer_bit_depth = type { i8 }
%struct.dpcd_dsc_block_prediction_support = type { i8 }
%struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor = type { i8, i8, i8 }
%struct.dpcd_dsc_decoder_color_format_capabilities = type { i8 }
%struct.dpcd_dsc_decoder_color_depth_capabilities = type { i8 }
%struct.dpcd_peak_dsc_throughput_dsc_sink = type { i8 }
%struct.dpcd_dsc_slice_capabilities_2 = type { i8 }
%struct.dpcd_bits_per_pixel_increment = type { i8 }
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.170 }
%struct.anon.170 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.171 }
%struct.anon.171 = type { i8 }
%union.dpia_info = type { %struct.anon.172 }
%struct.anon.172 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.173 }
%struct.anon.173 = type { i8, i8, %struct.anon.174 }
%struct.anon.174 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.175 }
%struct.anon.175 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.176 }
%struct.anon.176 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.link_training_settings = type { %struct.dc_link_settings, [4 x %struct.dc_lane_settings], ptr, ptr, ptr, i8, i16, i16, i16, i32, i32, i8, i32, i8, i8, [4 x %struct.dc_lane_settings], [4 x %union.dpcd_training_lane] }
%union.dpcd_training_lane = type { %struct.anon.112 }
%struct.anon.112 = type { i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.dm_crtc_state = type { %struct.drm_crtc_state, ptr, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, %struct.mod_freesync_config, %struct.dc_info_packet, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.mod_freesync_config = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%struct.dcn_dsc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.143 }
%struct.dc_stream_status = type { i32, i32, i32, i32, %struct.timing_sync_info, [4 x ptr], i8 }
%struct.timing_sync_info = type { i32, i32, i8 }
%struct.resource_context = type { [6 x %struct.pipe_ctx], [12 x i8], [6 x i8], [7 x i8], i8, [6 x i8], %struct.link_enc_cfg_context }
%struct.pipe_ctx = type { ptr, ptr, %struct.plane_resource, %struct.stream_resource, %struct.link_resource, ptr, %struct.pll_settings, i8, i8, ptr, ptr, ptr, ptr, %union.pipe_update_flags, ptr, ptr, i8 }
%struct.plane_resource = type { %struct.scaler_data, ptr, ptr, ptr, ptr, ptr, i8, %struct.dcn_fe_bandwidth }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.scaling_ratios = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.fixed31_32 = type { i64 }
%struct.scl_inits = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.sharpness_adj = type { i32, i32 }
%struct.line_buffer_params = type { i8, i8, i8, i32, i32 }
%struct.dcn_fe_bandwidth = type { i32 }
%struct.stream_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.pixel_clk_params, %struct.encoder_info_frame, ptr, i8 }
%struct.pixel_clk_params = type { i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, %struct.csdp_ref_clk_ds_params, i32, %struct.pixel_clk_flags }
%struct.csdp_ref_clk_ds_params = type { i8, i32, i32, i32 }
%struct.pixel_clk_flags = type { i8, [3 x i8] }
%struct.encoder_info_frame = type { %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet }
%struct.link_resource = type { ptr }
%struct.pll_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.pipe_update_flags = type { i32 }
%struct.link_enc_cfg_context = type { i32, [6 x %struct.link_enc_assignment], [7 x i32], [6 x %struct.link_enc_assignment] }
%struct.link_enc_assignment = type { i8, %struct.display_endpoint_id, i32, ptr }
%struct.display_endpoint_id = type { %struct.graphics_object_id, i32 }
%struct.bw_context = type { %union.bw_output, %struct.display_mode_lib }
%union.bw_output = type { %struct.dce_bw_output }
%struct.dce_bw_output = type { i8, i8, i8, i8, i8, [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], i32, i32, i32, i32, i32 }
%struct.dce_watermarks = type { i32, i32, i32, i32 }
%struct.display_mode_lib = type { %struct._vcs_dpi_ip_params_st, %struct._vcs_dpi_soc_bounding_box_st, i32, %struct.vba_vars_st, ptr, %struct.dml_funcs, [6 x %struct._vcs_dpi_display_e2e_pipe_params_st] }
%struct._vcs_dpi_ip_params_st = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, double, double, double, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_soc_bounding_box_st = type { [9 x %struct._vcs_dpi_voltage_scaling_st], i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, double, double, i32, double, i8, double, double, i8, i8, i32 }
%struct._vcs_dpi_voltage_scaling_st = type { i32, double, double, double, double, double, double, double, double, double, double, double }
%struct.vba_vars_st = type { %struct._vcs_dpi_ip_params_st, %struct._vcs_dpi_soc_bounding_box_st, i32, i8, double, double, double, double, double, double, double, double, double, i8, double, i32, i32, double, double, double, double, double, double, double, i32, double, double, double, [8 x double], double, double, double, double, i32, i8, i8, i8, i8, i32, double, double, double, double, i8, i32, i8, i32, i32, i32, i32, [8 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, i8, double, i32, [8 x i32], double, i32, i32, i32, double, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, double, i32, i8, double, double, double, double, double, double, double, double, double, double, double, double, i8, i32, double, double, double, double, double, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], [8 x double], double, [8 x i32], [8 x double], [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], i8, [8 x i32], [8 x [2 x i32]], [8 x [2 x i32]], [8 x i8], [8 x i8], i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], double, double, i32, i32, i32, double, [9 x [2 x i32]], [9 x [2 x i32]], i32, i32, i8, double, i8, [8 x i8], double, double, double, double, double, double, double, double, double, double, double, double, double, [8 x double], [8 x i32], [8 x double], [8 x double], i32, double, [8 x %struct._vcs_dpi_display_e2e_pipe_params_st], i32, [8 x i32], i8, double, double, i32, i8, i8, [9 x double], [9 x [2 x double]], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], i32, i8, i8, double, i8, i8, i8, i8, [9 x i8], i32, double, double, [9 x [2 x [8 x i8]]], i8, i8, i8, i8, i8, i8, i8, [9 x i32], double, double, double, double, double, double, double, double, i32, i32, double, double, i32, [8 x double], [8 x double], [8 x double], [9 x [2 x double]], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, i32, double, double, double, double, double, double, [9 x [2 x double]], double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [9 x [2 x double]], [9 x [2 x [8 x i32]]], [8 x i32], [9 x [8 x i32]], [8 x double], [9 x [2 x [8 x i32]]], [8 x i32], [8 x i32], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [8 x double], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x i8]]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x double]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i32]], [9 x [2 x i32]], [9 x [2 x i8]], [9 x [2 x double]], [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x double], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x double]], [8 x double], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [8 x i8]], [9 x [8 x i32]], [9 x [8 x double]], [9 x [8 x double]], [9 x [8 x double]], [9 x [2 x i8]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x [8 x double]]], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x i8]], [9 x [8 x double]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x i32]], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x [8 x i8]]], [8 x double], double, double, [8 x double], [8 x double], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], double, double, [8 x double], [8 x double], [8 x double], [8 x i32], [8 x double], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], i8, [8 x i8], double, double, [9 x [2 x i32]], i8, [9 x i8], [8 x i32], [8 x double], [8 x i8], [8 x double], [8 x double], [9 x [2 x i32]], i32, i32, i32, i32, i32, double, double, i32, [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], double, i32, double, [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], i32, i32, double, [8 x double], [8 x double], [8 x double], i32, [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], double, [8 x i8], i32, double, double, double, [8 x i32], [8 x i32], [8 x i32], [9 x [2 x [8 x double]]], [8 x double], [9 x double], [9 x [2 x i8]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [8 x double], [8 x double], [8 x double], double, i32, double, i8, double, double, double, double, double, i8, [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], i8, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], double, double, double, [8 x i8], i32, i8, double, double, [8 x double], [8 x double], [9 x double], i8, i8, i32, [8 x i32], [8 x i32], i32, [9 x [2 x i8]], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i8], [8 x i32], [8 x i32], [9 x double], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x i8]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x double]], [9 x [2 x double]], [9 x [2 x double]], [9 x [2 x double]], [8 x double], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], double, i32, i8, i8, i8, double, double, double, double, double, double, double, double, double, double, double, [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x i8], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [9 x [2 x i32]] }
%struct._vcs_dpi_display_e2e_pipe_params_st = type { %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_output_params_st, %struct._vcs_dpi_display_clocks_and_cfg_st }
%struct._vcs_dpi_display_pipe_params_st = type { %struct._vcs_dpi_display_pipe_source_params_st, %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_scaler_ratio_depth_st, %struct._vcs_dpi_scaler_taps_st }
%struct._vcs_dpi_display_pipe_source_params_st = type { i32, double, double, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, %struct._vcs_dpi_display_xfc_params_st, i8, i8 }
%struct._vcs_dpi_display_xfc_params_st = type { double, double, double, i32 }
%struct._vcs_dpi_display_pipe_dest_params_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, double, i8, i8, i32, i8, i32, i32 }
%struct._vcs_dpi_scaler_ratio_depth_st = type { double, double, double, double, double, double, double, double, i32, i32 }
%struct._vcs_dpi_scaler_taps_st = type { i32, i32, i32, i32 }
%struct._vcs_dpi_display_output_params_st = type { i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.writeback_st }
%struct.writeback_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double }
%struct._vcs_dpi_display_clocks_and_cfg_st = type { i32, double, double, double, double, double }
%struct.dml_funcs = type { ptr, ptr, ptr, ptr }
%struct.dm_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [6 x %struct.dm_pp_single_disp_config], i8, i32 }
%struct.dm_pp_single_disp_config = type { i32, i8, i8, i8, i32, i32, i32, i32, %struct.dc_link_settings }
%struct.anon.143 = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.137, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.113 }
%union.anon.113 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.114 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.114 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.125, i32, i32, i32, i32 }
%struct.anon.125 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.126 }
%struct.anon.126 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.137 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.dsc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.dmub_srv_fb_info = type { i8, [8 x %struct.dmub_fb] }
%struct.dmub_fb = type { ptr, i64, i32 }
%struct.dmub_debugfs_trace_entry = type { i32, i32, i32, i32 }

@dp_debugfs_entries = internal constant { [20 x %struct.anon.179], [32 x i8] } { [20 x %struct.anon.179] [%struct.anon.179 { ptr @.str.15, ptr @dp_link_settings_debugfs_fops }, %struct.anon.179 { ptr @.str.16, ptr @dp_phy_settings_debugfs_fop }, %struct.anon.179 { ptr @.str.17, ptr @dp_lttpr_status_fops }, %struct.anon.179 { ptr @.str.18, ptr @dp_phy_test_pattern_fops }, %struct.anon.179 { ptr @.str.19, ptr @hdcp_sink_capability_fops }, %struct.anon.179 { ptr @.str.20, ptr @sdp_message_fops }, %struct.anon.179 { ptr @.str.21, ptr @dp_dpcd_address_debugfs_fops }, %struct.anon.179 { ptr @.str.22, ptr @dp_dpcd_size_debugfs_fops }, %struct.anon.179 { ptr @.str.23, ptr @dp_dpcd_data_debugfs_fops }, %struct.anon.179 { ptr @.str.24, ptr @dp_dsc_clock_en_debugfs_fops }, %struct.anon.179 { ptr @.str.25, ptr @dp_dsc_slice_width_debugfs_fops }, %struct.anon.179 { ptr @.str.26, ptr @dp_dsc_slice_height_debugfs_fops }, %struct.anon.179 { ptr @.str.27, ptr @dp_dsc_bits_per_pixel_debugfs_fops }, %struct.anon.179 { ptr @.str.28, ptr @dp_dsc_pic_width_debugfs_fops }, %struct.anon.179 { ptr @.str.29, ptr @dp_dsc_pic_height_debugfs_fops }, %struct.anon.179 { ptr @.str.30, ptr @dp_dsc_chunk_size_debugfs_fops }, %struct.anon.179 { ptr @.str.31, ptr @dp_dsc_slice_bpg_offset_debugfs_fops }, %struct.anon.179 { ptr @.str.32, ptr @dp_dsc_fec_support_fops }, %struct.anon.179 { ptr @.str.33, ptr @dp_max_bpc_debugfs_fops }, %struct.anon.179 { ptr @.str.34, ptr @dp_dsc_disable_passthrough_debugfs_fops }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"psr_capability\00", [17 x i8] zeroinitializer }, align 32
@psr_capability_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @psr_capability_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"psr_state\00", [22 x i8] zeroinitializer }, align 32
@psr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @psr_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu_current_backlight_pwm\00", [35 x i8] zeroinitializer }, align 32
@current_backlight_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @current_backlight_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_target_backlight_pwm\00", [36 x i8] zeroinitializer }, align 32
@target_backlight_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @target_backlight_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ilr_setting\00", [20 x i8] zeroinitializer }, align 32
@edp_ilr_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @edp_ilr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @edp_ilr_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dtn_debugfs_init.dtn_log_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dtn_log_read, ptr @dtn_log_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dtn_debugfs_init.dcc_en_bits_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dcc_en_bits_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu_mst_topology\00", [44 x i8] zeroinitializer }, align 32
@mst_topo_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mst_topo_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_dm_dtn_log\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu_dm_visual_confirm\00", [39 x i8] zeroinitializer }, align 32
@visual_confirm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @visual_confirm_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu_dm_dmub_tracebuffer\00", [37 x i8] zeroinitializer }, align 32
@dmub_tracebuffer_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dmub_tracebuffer_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu_dm_dmub_fw_state\00", [40 x i8] zeroinitializer }, align 32
@dmub_fw_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dmub_fw_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_dm_force_timing_sync\00", [36 x i8] zeroinitializer }, align 32
@force_timing_sync_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @force_timing_sync_ops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu_dm_dmcub_trace_event_en\00", [33 x i8] zeroinitializer }, align 32
@dmcub_trace_event_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dmcub_trace_event_state_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_dm_trigger_hpd_mst\00", [38 x i8] zeroinitializer }, align 32
@trigger_hpd_mst_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @trigger_hpd_mst_ops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"amdgpu_dm_dcc_en\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu_dm_disable_hpd\00", [42 x i8] zeroinitializer }, align 32
@disable_hpd_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @disable_hpd_ops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link_settings\00", [18 x i8] zeroinitializer }, align 32
@dp_link_settings_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_link_settings_read, ptr @dp_link_settings_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_settings\00", [19 x i8] zeroinitializer }, align 32
@dp_phy_settings_debugfs_fop = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_phy_settings_read, ptr @dp_phy_settings_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lttpr_status\00", [19 x i8] zeroinitializer }, align 32
@dp_lttpr_status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_lttpr_status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_pattern\00", [19 x i8] zeroinitializer }, align 32
@dp_phy_test_pattern_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @dp_phy_test_pattern_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdcp_sink_capability\00", [43 x i8] zeroinitializer }, align 32
@hdcp_sink_capability_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @hdcp_sink_capability_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdp_message\00", [20 x i8] zeroinitializer }, align 32
@sdp_message_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @dp_sdp_message_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aux_dpcd_address\00", [47 x i8] zeroinitializer }, align 32
@dp_dpcd_address_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @dp_dpcd_address_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aux_dpcd_size\00", [18 x i8] zeroinitializer }, align 32
@dp_dpcd_size_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @dp_dpcd_size_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aux_dpcd_data\00", [18 x i8] zeroinitializer }, align 32
@dp_dpcd_data_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dpcd_data_read, ptr @dp_dpcd_data_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsc_clock_en\00", [19 x i8] zeroinitializer }, align 32
@dp_dsc_clock_en_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dsc_clock_en_read, ptr @dp_dsc_clock_en_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsc_slice_width\00", [16 x i8] zeroinitializer }, align 32
@dp_dsc_slice_width_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dsc_slice_width_read, ptr @dp_dsc_slice_width_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsc_slice_height\00", [47 x i8] zeroinitializer }, align 32
@dp_dsc_slice_height_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dsc_slice_height_read, ptr @dp_dsc_slice_height_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsc_bits_per_pixel\00", [45 x i8] zeroinitializer }, align 32
@dp_dsc_bits_per_pixel_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dsc_bits_per_pixel_read, ptr @dp_dsc_bits_per_pixel_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsc_pic_width\00", [18 x i8] zeroinitializer }, align 32
@dp_dsc_pic_width_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dsc_pic_width_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsc_pic_height\00", [17 x i8] zeroinitializer }, align 32
@dp_dsc_pic_height_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dsc_pic_height_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsc_chunk_size\00", [17 x i8] zeroinitializer }, align 32
@dp_dsc_chunk_size_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dsc_chunk_size_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsc_slice_bpg\00", [18 x i8] zeroinitializer }, align 32
@dp_dsc_slice_bpg_offset_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_dsc_slice_bpg_offset_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dp_dsc_fec_support\00", [45 x i8] zeroinitializer }, align 32
@dp_dsc_fec_support_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_dsc_fec_support_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max_bpc\00", [24 x i8] zeroinitializer }, align 32
@dp_max_bpc_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dp_max_bpc_read, ptr @dp_max_bpc_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsc_disable_passthrough\00", [40 x i8] zeroinitializer }, align 32
@dp_dsc_disable_passthrough_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @dp_dsc_passthrough_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Current:  %d  0x%x  %d  \00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Verified:  %d  0x%x  %d  \00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Reported:  %d  0x%x  %d  \00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Preferred:  %d  0x%x  %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"user data not be read\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid Input value No HW will be programmed\0A\00", [50 x i8] zeroinitializer }, align 32
@__const.parse_write_buffer_into_params.delimiter = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"user data could not be read successfully\0A\00", [54 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"string to int convert error code: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  %d  %d  %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid Input No HW will be programmed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy repeater count: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phy repeater mode: transparent\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"phy repeater mode: non-transparent\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy repeater mode: non lttpr\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phy repeater mode: read error\0A\00", [33 x i8] zeroinitializer }, align 32
@__const.dp_phy_test_pattern_debugfs_write.custom_pattern = private unnamed_addr constant [10 x i8] c"\1F|\F0\C1\07\1F|\F0\C1\07", align 1
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid Test Pattern Parameters\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:%d HDCP version: \00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HDCP1.4\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HDCP2.2\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no memory to allocate write buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FEC_Sink_Support: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSC_Sink_Support: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad max_bpc value\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sink support: %s\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" [0x%02x]\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Driver support: %s\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid Input value. No HW will be programmed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%d] %d kHz\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ILR is not supported by this eDP panel.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"force_yuv420_output\00", [44 x i8] zeroinitializer }, align 32
@force_yuv420_output_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @force_yuv420_output_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"output_bpc\00", [21 x i8] zeroinitializer }, align 32
@output_bpc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @output_bpc_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"trigger_hotplug\00", [16 x i8] zeroinitializer }, align 32
@trigger_hotplug_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @trigger_hotplug, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"internal_display\00", [47 x i8] zeroinitializer }, align 32
@internal_display_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @internal_display_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Current: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Maximum: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Internal: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d  \00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0AMST topology for connector %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"trace_code=%u tick_count=%u param0=%u param1=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.output_bpc_show = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 6, i32 8, i32 10, i32 12, i32 6, i32 16], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 10, i64 12, i64 20, i64 30]
@__sancov_gen_cov_switch_values.88 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 85, i64 170]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967261]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"dp_debugfs_entries\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2633, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2904, i32 30 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"psr_capability_fops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2512, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2905, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"psr_fops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2906, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"current_backlight_fops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2745, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2908, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"target_backlight_fops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2746, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2910, i32 23 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"edp_ilr_debugfs_fops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2881, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"dtn_log_fops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3490, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"dcc_en_bits_fops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3496, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3505, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"mst_topo_fops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3426, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3507, i32 22 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3514, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"visual_confirm_fops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3427, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3517, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant [22 x i8] c"dmub_tracebuffer_fops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2505, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3520, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"dmub_fw_state_fops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2504, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3523, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant [22 x i8] c"force_timing_sync_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3340, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3526, i32 29 }
@___asan_gen_.169 = private unnamed_addr constant [29 x i8] c"dmcub_trace_event_state_fops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2740, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3529, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"trigger_hpd_mst_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3307, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3532, i32 29 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3535, i32 29 }
@___asan_gen_.184 = private unnamed_addr constant [16 x i8] c"disable_hpd_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3371, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2634, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant [30 x i8] c"dp_link_settings_debugfs_fops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2572, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2635, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"dp_phy_settings_debugfs_fop\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2579, i32 37 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2636, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"dp_lttpr_status_fops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2507, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2637, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [25 x i8] c"dp_phy_test_pattern_fops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2586, i32 37 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2639, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [26 x i8] c"hdcp_sink_capability_fops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2509, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2641, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"sdp_message_fops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2592, i32 37 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2642, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [29 x i8] c"dp_dpcd_address_debugfs_fops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2598, i32 37 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2643, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"dp_dpcd_size_debugfs_fops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2604, i32 37 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2644, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant [26 x i8] c"dp_dpcd_data_debugfs_fops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2610, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2645, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [29 x i8] c"dp_dsc_clock_en_debugfs_fops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2514, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2646, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant [32 x i8] c"dp_dsc_slice_width_debugfs_fops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2521, i32 37 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2647, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant [33 x i8] c"dp_dsc_slice_height_debugfs_fops\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2528, i32 37 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2648, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant [35 x i8] c"dp_dsc_bits_per_pixel_debugfs_fops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2535, i32 37 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2649, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [30 x i8] c"dp_dsc_pic_width_debugfs_fops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2542, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2650, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant [31 x i8] c"dp_dsc_pic_height_debugfs_fops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2548, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2651, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant [31 x i8] c"dp_dsc_chunk_size_debugfs_fops\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2554, i32 37 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2652, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant [37 x i8] c"dp_dsc_slice_bpg_offset_debugfs_fops\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2560, i32 37 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2653, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant [24 x i8] c"dp_dsc_fec_support_fops\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2503, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2654, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant [24 x i8] c"dp_max_bpc_debugfs_fops\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2617, i32 37 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2655, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant [40 x i8] c"dp_dsc_disable_passthrough_debugfs_fops\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2624, i32 37 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 199, i32 32 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 206, i32 32 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 213, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 220, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 229, i32 7 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 275, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 306, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 83, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 128, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 230, i32 6 }
@___asan_gen_.338 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 214, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 156, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 382, i32 32 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 510, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 452, i32 16 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 457, i32 17 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 459, i32 17 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 461, i32 17 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 463, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 689, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 994, i32 16 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1001, i32 17 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1001, i32 24 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1003, i32 24 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1006, i32 24 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1008, i32 14 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1370, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1439, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1210, i32 16 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1211, i32 16 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 54, i32 13 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 54, i32 21 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2359, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2444, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 856, i32 16 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 858, i32 17 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 861, i32 16 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2743, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2479, i32 16 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2852, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2783, i32 18 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2786, i32 17 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2752, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant [25 x i8] c"force_yuv420_output_fops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2690, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2753, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant [16 x i8] c"output_bpc_fops\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2506, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2754, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant [29 x i8] c"trigger_hotplug_debugfs_fops\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2566, i32 37 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2755, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant [22 x i8] c"internal_display_fops\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 2511, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 920, i32 16 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 921, i32 16 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 1024, i32 16 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3467, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 3237, i32 17 }
@___asan_gen_.472 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.473 = private constant [71 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 796, i32 7 }
@___asan_gen_.475 = private unnamed_addr constant [29 x i8] c"switch.table.output_bpc_show\00", align 1
@llvm.compiler.used = appending global [128 x ptr] [ptr @dp_debugfs_entries, ptr @.str, ptr @psr_capability_fops, ptr @.str.1, ptr @psr_fops, ptr @.str.2, ptr @current_backlight_fops, ptr @.str.3, ptr @target_backlight_fops, ptr @.str.4, ptr @edp_ilr_debugfs_fops, ptr @dtn_debugfs_init.dtn_log_fops, ptr @dtn_debugfs_init.dcc_en_bits_fops, ptr @.str.5, ptr @mst_topo_fops, ptr @.str.6, ptr @.str.7, ptr @visual_confirm_fops, ptr @.str.8, ptr @dmub_tracebuffer_fops, ptr @.str.9, ptr @dmub_fw_state_fops, ptr @.str.10, ptr @force_timing_sync_ops, ptr @.str.11, ptr @dmcub_trace_event_state_fops, ptr @.str.12, ptr @trigger_hpd_mst_ops, ptr @.str.13, ptr @.str.14, ptr @disable_hpd_ops, ptr @.str.15, ptr @dp_link_settings_debugfs_fops, ptr @.str.16, ptr @dp_phy_settings_debugfs_fop, ptr @.str.17, ptr @dp_lttpr_status_fops, ptr @.str.18, ptr @dp_phy_test_pattern_fops, ptr @.str.19, ptr @hdcp_sink_capability_fops, ptr @.str.20, ptr @sdp_message_fops, ptr @.str.21, ptr @dp_dpcd_address_debugfs_fops, ptr @.str.22, ptr @dp_dpcd_size_debugfs_fops, ptr @.str.23, ptr @dp_dpcd_data_debugfs_fops, ptr @.str.24, ptr @dp_dsc_clock_en_debugfs_fops, ptr @.str.25, ptr @dp_dsc_slice_width_debugfs_fops, ptr @.str.26, ptr @dp_dsc_slice_height_debugfs_fops, ptr @.str.27, ptr @dp_dsc_bits_per_pixel_debugfs_fops, ptr @.str.28, ptr @dp_dsc_pic_width_debugfs_fops, ptr @.str.29, ptr @dp_dsc_pic_height_debugfs_fops, ptr @.str.30, ptr @dp_dsc_chunk_size_debugfs_fops, ptr @.str.31, ptr @dp_dsc_slice_bpg_offset_debugfs_fops, ptr @.str.32, ptr @dp_dsc_fec_support_fops, ptr @.str.33, ptr @dp_max_bpc_debugfs_fops, ptr @.str.34, ptr @dp_dsc_disable_passthrough_debugfs_fops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @force_yuv420_output_fops, ptr @.str.78, ptr @output_bpc_fops, ptr @.str.79, ptr @trigger_hotplug_debugfs_fops, ptr @.str.80, ptr @internal_display_fops, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @switch.table.output_bpc_show], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_debugfs_entries to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psr_capability_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_backlight_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_backlight_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edp_ilr_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtn_debugfs_init.dtn_log_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtn_debugfs_init.dcc_en_bits_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mst_topo_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visual_confirm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmub_tracebuffer_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmub_fw_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_timing_sync_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcub_trace_event_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_hpd_mst_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_hpd_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_link_settings_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_phy_settings_debugfs_fop to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_lttpr_status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_phy_test_pattern_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_sink_capability_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdp_message_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dpcd_address_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dpcd_size_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dpcd_data_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_clock_en_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_slice_width_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_slice_height_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_bits_per_pixel_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_pic_width_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_pic_height_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_chunk_size_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_slice_bpg_offset_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_fec_support_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_max_bpc_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_dsc_disable_passthrough_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_yuv420_output_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_bpc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_hotplug_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @internal_display_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.output_bpc_show to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @connector_debugfs_init(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_entry = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 51
  %0 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_entry, align 4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %2 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %connector_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end16_crit_edge [
    i32 10, label %entry.for.body.preheader_crit_edge
    i32 14, label %entry.for.body.preheader_crit_edge80
  ]

entry.for.body.preheader_crit_edge80:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

for.body.preheader:                               ; preds = %entry.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge80
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.077 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [20 x %struct.anon.179], ptr @dp_debugfs_entries, i32 0, i32 %i.077
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %fops = getelementptr [20 x %struct.anon.179], ptr @dp_debugfs_entries, i32 0, i32 %i.077, i32 1
  %7 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fops, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef %6, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %connector, ptr noundef %8) #12
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %.pr)
  %cmp9 = icmp eq i32 %.pr, 14
  br i1 %cmp9, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @psr_capability_fops) #12
  %call12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @psr_fops) #12
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @current_backlight_fops) #12
  %call14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @target_backlight_fops) #12
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @edp_ilr_debugfs_fops) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  %call24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @force_yuv420_output_fops) #12
  %call24.1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @output_bpc_fops) #12
  %call24.2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @trigger_hotplug_debugfs_fops) #12
  %call24.3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.80, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @internal_display_fops) #12
  %debugfs_dpcd_address = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 20
  %10 = ptrtoint ptr %debugfs_dpcd_address to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %debugfs_dpcd_address, align 8
  %debugfs_dpcd_size = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %connector, i32 0, i32 21
  %11 = ptrtoint ptr %debugfs_dpcd_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %debugfs_dpcd_size, align 4
  %12 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %13)
  %cmp30 = icmp eq i32 %13, 11
  br i1 %cmp30, label %for.body34, label %if.end16.if.end43_crit_edge

if.end16.if.end43_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

for.body34:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %connector, ptr noundef nonnull @hdcp_sink_capability_fops) #12
  br label %if.end43

if.end43:                                         ; preds = %for.body34, %if.end16.if.end43_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dtn_debugfs_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @mst_topo_fops) #12
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @dtn_debugfs_init.dtn_log_fops) #12
  %call3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.7, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @visual_confirm_fops) #12
  %call4 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.8, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @dmub_tracebuffer_fops) #12
  %call5 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.9, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @dmub_fw_state_fops) #12
  %call6 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.10, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @force_timing_sync_ops) #12
  %call7 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @dmcub_trace_event_state_fops) #12
  %call8 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.12, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @trigger_hpd_mst_ops) #12
  %call9 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.13, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @dtn_debugfs_init.dcc_en_bits_fops) #12
  %call10 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.14, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @disable_hpd_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtn_log_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %log_ctx = alloca %struct.dc_log_buffer_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 117
  %4 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %log_ctx) #12
  %6 = call ptr @memset(ptr %log_ctx, i32 0, i32 12)
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool2.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %log_hw_state = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 66
  %7 = ptrtoint ptr %log_hw_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log_hw_state, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void %8(ptr noundef %5, ptr noundef nonnull %log_ctx) #12
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  %pos8 = getelementptr inbounds %struct.dc_log_buffer_ctx, ptr %log_ctx, i32 0, i32 1
  %11 = ptrtoint ptr %pos8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos8, align 4
  %conv = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv)
  %cmp = icmp slt i64 %10, %conv
  br i1 %cmp, label %if.then10, label %if.end5.if.end22_crit_edge

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then10:                                        ; preds = %if.end5
  %13 = trunc i64 %10 to i32
  %conv13 = sub i32 %12, %13
  %14 = call i32 @llvm.umin.i32(i32 %conv13, i32 %size)
  %15 = ptrtoint ptr %log_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %log_ctx, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.i.i = icmp slt i32 %14, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then10
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end22_crit_edge, label %if.then27.i.i, !prof !268

land.rhs16.i.i.if.end22_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.end22

if.then.i.i.i:                                    ; preds = %if.then10
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %14, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buf, i32 %14, i32 -1226833920) #15, !srcloc !269
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %14) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %buf, ptr noundef %add.ptr, i32 noundef %14) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %14, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %14, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool18.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool18.not, label %if.then19, label %copy_to_user.exit.if.end22_crit_edge

copy_to_user.exit.if.end22_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv20 = zext i32 %14 to i64
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos, align 8
  %add = add i64 %19, %conv20
  store i64 %add, ptr %pos, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %copy_to_user.exit.if.end22_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end22_crit_edge, %if.end5.if.end22_crit_edge
  %result.1 = phi i32 [ 0, %if.end5.if.end22_crit_edge ], [ 0, %copy_to_user.exit.if.end22_crit_edge ], [ %14, %if.then19 ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.if.end22_crit_edge ]
  %20 = ptrtoint ptr %log_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log_ctx, align 4
  call void @kfree(ptr noundef %21) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %log_ctx) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtn_log_write(ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 117
  %4 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %log_hw_state = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 66
  %6 = ptrtoint ptr %log_hw_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log_hw_state, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %7(ptr noundef %5, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %size
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dcc_en_bits_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 117
  %4 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dm, align 8
  %res_pool = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe_count, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #12
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !270

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %get_dcc_en_bits = getelementptr inbounds %struct.dc, ptr %5, i32 0, i32 17, i32 72
  %13 = ptrtoint ptr %get_dcc_en_bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_dcc_en_bits, align 4
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  tail call void %14(ptr noundef %5, ptr noundef nonnull %call8.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 32) #17
  %tobool9.not = icmp eq ptr %call7.i.i.i69, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %for.cond.preheader

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp79.not = icmp eq i32 %9, 0
  br i1 %cmp79.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %offset.081 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.080 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i.i.i69, i32 %offset.081
  %sub = sub i32 32, %offset.081
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %i.080
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.84, i32 noundef %17)
  %add = add i32 %call12, %offset.081
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call13 = tail call i32 @strlen(ptr noundef nonnull %call7.i.i.i69) #18
  %arrayidx14 = getelementptr i8, ptr %call7.i.i.i69, i32 %call13
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %arrayidx14, align 1
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool15.not82 = icmp eq i32 %size, 0
  br i1 %tobool15.not82, label %for.end.cleanup.sink.split_crit_edge, label %while.body.preheader

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

while.body.preheader:                             ; preds = %for.end
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %19)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.preheader
  %20 = phi i64 [ %.pr, %while.body.preheader ], [ %add27, %if.end24.while.body_crit_edge ]
  %buf.addr.085 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr25, %if.end24.while.body_crit_edge ]
  %size.addr.084 = phi i32 [ %size, %while.body.preheader ], [ %sub26, %if.end24.while.body_crit_edge ]
  %result.083 = phi i32 [ 0, %while.body.preheader ], [ %add28, %if.end24.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 31, i64 %20)
  %cmp16 = icmp sgt i64 %20, 31
  br i1 %cmp16, label %while.body.cleanup.sink.split_crit_edge, label %if.end18

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end18:                                         ; preds = %while.body
  %add.ptr19 = getelementptr i8, ptr %call7.i.i.i69, i32 %result.083
  %21 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr19, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 3475) #12
  %23 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %25, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.085, i8 %22, i32 -1226833921) #12, !srcloc !274
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %add.ptr25 = getelementptr i8, ptr %buf.addr.085, i32 1
  %sub26 = add i32 %size.addr.084, -1
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pos, align 8
  %add27 = add i64 %28, 1
  store i64 %add27, ptr %pos, align 8
  %add28 = add nuw i32 %result.083, 1
  %tobool15.not = icmp eq i32 %sub26, 0
  br i1 %tobool15.not, label %if.end24.cleanup.sink.split_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end24.cleanup.sink.split_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end24.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %call7.i.i.i69.sink = phi ptr [ %call8.i.i, %if.end.cleanup.sink.split_crit_edge ], [ %call7.i.i.i69, %for.end.cleanup.sink.split_crit_edge ], [ %call7.i.i.i69, %if.end24.cleanup.sink.split_crit_edge ], [ %call7.i.i.i69, %while.body.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %for.end.cleanup.sink.split_crit_edge ], [ %result.083, %while.body.cleanup.sink.split_crit_edge ], [ %size, %if.end24.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i69.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %26, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_link_settings_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_link, align 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %and = and i64 %7, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = and i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 100) #17
  %tobool4.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21
  %9 = ptrtoint ptr %cur_link_settings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_link_settings, align 8
  %link_rate = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21, i32 1
  %11 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_rate, align 4
  %link_spread = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21, i32 2
  %13 = ptrtoint ptr %link_spread to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link_spread, align 8
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 24, ptr noundef nonnull @.str.35, i32 noundef %10, i32 noundef %12, i32 noundef %14)
  %add.ptr = getelementptr i8, ptr %call7.i.i.i, i32 24
  %verified_link_cap = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 20
  %15 = ptrtoint ptr %verified_link_cap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %verified_link_cap, align 8
  %link_rate14 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 20, i32 1
  %17 = ptrtoint ptr %link_rate14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link_rate14, align 4
  %link_spread16 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 20, i32 2
  %19 = ptrtoint ptr %link_spread16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_spread16, align 8
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 25, ptr noundef nonnull @.str.36, i32 noundef %16, i32 noundef %18, i32 noundef %20)
  %add.ptr19 = getelementptr i8, ptr %call7.i.i.i, i32 49
  %reported_link_cap = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 19
  %21 = ptrtoint ptr %reported_link_cap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reported_link_cap, align 8
  %link_rate23 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 19, i32 1
  %23 = ptrtoint ptr %link_rate23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_rate23, align 4
  %link_spread25 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 19, i32 2
  %25 = ptrtoint ptr %link_spread25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_spread25, align 8
  %call26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr19, i32 noundef 25, ptr noundef nonnull @.str.37, i32 noundef %22, i32 noundef %24, i32 noundef %26)
  %add.ptr28 = getelementptr i8, ptr %call7.i.i.i, i32 74
  %preferred_link_setting = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 23
  %27 = ptrtoint ptr %preferred_link_setting to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %preferred_link_setting, align 8
  %link_rate32 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 23, i32 1
  %29 = ptrtoint ptr %link_rate32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_rate32, align 4
  %link_spread34 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 23, i32 2
  %31 = ptrtoint ptr %link_spread34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %link_spread34, align 8
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr28, i32 noundef 26, ptr noundef nonnull @.str.38, i32 noundef %28, i32 noundef %30, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool36.not90 = icmp eq i32 %size, 0
  br i1 %tobool36.not90, label %if.end6.while.end_crit_edge, label %while.body.preheader

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end6
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %33)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %while.body.preheader
  %34 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end45.while.body_crit_edge ]
  %buf.addr.093 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr46, %if.end45.while.body_crit_edge ]
  %size.addr.092 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end45.while.body_crit_edge ]
  %result.091 = phi i32 [ 0, %while.body.preheader ], [ %add47, %if.end45.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %34)
  %cmp = icmp sgt i64 %34, 99
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end39

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end39:                                         ; preds = %while.body
  %add.ptr40 = getelementptr i8, ptr %call7.i.i.i, i32 %result.091
  %35 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr40, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 229) #12
  %37 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %39, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %40 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.093, i8 %36, i32 -1226833921) #12, !srcloc !275
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool43.not = icmp eq i32 %40, 0
  br i1 %tobool43.not, label %if.end45, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %add.ptr46 = getelementptr i8, ptr %buf.addr.093, i32 1
  %sub = add i32 %size.addr.092, -1
  %41 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %pos, align 8
  %add = add i64 %42, 1
  store i64 %add, ptr %pos, align 8
  %add47 = add nuw i32 %result.091, 1
  %tobool36.not = icmp eq i32 %sub, 0
  br i1 %tobool36.not, label %if.end45.while.end_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end6.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end6.while.end_crit_edge ], [ %result.091, %while.body.while.end_crit_edge ], [ %size, %if.end45.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %40, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_link_settings_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %prefer_link_settings = alloca %struct.dc_link_settings, align 4
  %param_nums = alloca i8, align 1
  %param = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_link, align 8
  %dc1 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prefer_link_settings) #12
  %8 = getelementptr inbounds i8, ptr %prefer_link_settings, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %10 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %param_nums, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param) #12
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %param, align 4, !annotation !276
  %12 = getelementptr inbounds [2 x i32], ptr %param, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 40) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 40, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 2, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp9 = icmp eq i8 %16, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %12, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %20, label %if.end12.if.then18_crit_edge [
    i32 6, label %if.end12.sw.epilog16_crit_edge
    i32 10, label %if.end12.sw.epilog16_crit_edge41
    i32 12, label %if.end12.sw.epilog16_crit_edge42
    i32 20, label %if.end12.sw.epilog16_crit_edge43
    i32 30, label %if.end12.sw.epilog16_crit_edge44
  ]

if.end12.sw.epilog16_crit_edge44:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog16

if.end12.sw.epilog16_crit_edge43:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog16

if.end12.sw.epilog16_crit_edge42:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog16

if.end12.sw.epilog16_crit_edge41:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog16

if.end12.sw.epilog16_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog16

if.end12.if.then18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

sw.epilog16:                                      ; preds = %if.end12.sw.epilog16_crit_edge, %if.end12.sw.epilog16_crit_edge41, %if.end12.sw.epilog16_crit_edge42, %if.end12.sw.epilog16_crit_edge43, %if.end12.sw.epilog16_crit_edge44
  %switch.tableidx = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 4
  %switch.cast = trunc i32 %switch.tableidx to i4
  %switch.downshift = lshr i4 -5, %switch.cast
  %23 = and i4 %switch.downshift, 1
  %24 = sext i4 %23 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %switch.masked = icmp ne i4 %23, 0
  %valid_input.0.off0 = select i1 %22, i1 %switch.masked, i1 false
  br i1 %valid_input.0.off0, label %if.end19, label %sw.epilog16.if.then18_crit_edge

sw.epilog16.if.then18_crit_edge:                  ; preds = %sw.epilog16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %sw.epilog16.if.then18_crit_edge, %if.end12.if.then18_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog16
  call void @__sanitizer_cov_trace_pc() #14
  %link_spread = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %link_spread to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_spread, align 8
  %link_spread20 = getelementptr inbounds %struct.dc_link_settings, ptr %prefer_link_settings, i32 0, i32 2
  %27 = ptrtoint ptr %link_spread20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %link_spread20, align 4
  %use_link_rate_set = getelementptr inbounds %struct.dc_link_settings, ptr %prefer_link_settings, i32 0, i32 3
  %28 = ptrtoint ptr %use_link_rate_set to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %use_link_rate_set, align 4
  %29 = ptrtoint ptr %prefer_link_settings to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %18, ptr %prefer_link_settings, align 4
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %prefer_link_settings, i32 0, i32 1
  %30 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %20, ptr %link_rate, align 4
  call void @dc_link_set_preferred_training_settings(ptr noundef %7, ptr noundef nonnull %prefer_link_settings, ptr noundef null, ptr noundef %5, i1 noundef zeroext true) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18, %if.then11, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then11 ], [ %size, %if.end19 ], [ %size, %if.then18 ], [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prefer_link_settings) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_write_buffer_into_params(ptr noundef %wr_buf, i32 noundef %wr_buf_size, ptr noundef %param, ptr noundef %buf, i32 noundef %max_param_num, ptr nocapture noundef %param_nums) unnamed_addr #0 align 64 {
entry:
  %wr_buf_ptr = alloca ptr, align 4
  %delimiter = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf_ptr) #12
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %delimiter) #12
  %0 = call ptr @memcpy(ptr %delimiter, ptr @__const.parse_write_buffer_into_params.delimiter, i32 3)
  %1 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %param_nums, align 1
  %2 = ptrtoint ptr %wr_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wr_buf, ptr %wr_buf_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr_buf_size)
  %cmp9.i.i = icmp slt i32 %wr_buf_size, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then_crit_edge, label %if.then27.i.i, !prof !268

land.rhs16.i.i.if.then_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %wr_buf, i32 noundef %wr_buf_size, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %wr_buf_size, i32 -1226833920) #15, !srcloc !277
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !268

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_buf, i32 noundef %wr_buf_size) #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !271
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %wr_buf, ptr noundef %buf, i32 noundef %wr_buf_size) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %wr_buf_size, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %wr_buf_size, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.while.cond_crit_edge, label %if.then11.i.i, !prof !268

if.end.i.i.while.cond_crit_edge:                  ; preds = %if.end.i.i
  br label %while.cond

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %wr_buf_size, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %wr_buf, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then

if.then:                                          ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.42) #12
  br label %cleanup

while.cond:                                       ; preds = %while.end32.while.cond_crit_edge, %if.end.i.i.while.cond_crit_edge
  %wr_buf_count.0 = phi i32 [ %wr_buf_count.2.lcssa, %while.end32.while.cond_crit_edge ], [ 0, %if.end.i.i.while.cond_crit_edge ]
  %8 = ptrtoint ptr %wr_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr_buf_ptr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp.not = icmp ne i8 %11, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %wr_buf_count.0, i32 %wr_buf_size)
  %cmp2 = icmp ult i32 %wr_buf_count.0, %wr_buf_size
  %or.cond = select i1 %cmp.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %while.cond4.preheader, label %while.cond.while.end38_crit_edge

while.cond.while.end38_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end38

while.cond4.preheader:                            ; preds = %while.cond
  %12 = ptrtoint ptr %wr_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr_buf_ptr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv5107 = zext i8 %15 to i32
  %arrayidx108 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv5107
  %16 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx108, align 1
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp7.not109.not = icmp eq i8 %18, 0
  br i1 %cmp7.not109.not, label %while.cond4.preheader.while.end_crit_edge, label %while.cond4.preheader.while.body13_crit_edge

while.cond4.preheader.while.body13_crit_edge:     ; preds = %while.cond4.preheader
  br label %while.body13

while.cond4.preheader.while.end_crit_edge:        ; preds = %while.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body13:                                     ; preds = %while.body13.while.body13_crit_edge, %while.cond4.preheader.while.body13_crit_edge
  %19 = phi ptr [ %incdec.ptr, %while.body13.while.body13_crit_edge ], [ %13, %while.cond4.preheader.while.body13_crit_edge ]
  %wr_buf_count.1112 = phi i32 [ %inc, %while.body13.while.body13_crit_edge ], [ %wr_buf_count.0, %while.cond4.preheader.while.body13_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %wr_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr, ptr %wr_buf_ptr, align 4
  %inc = add nuw i32 %wr_buf_count.1112, 1
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr, align 1
  %conv5 = zext i8 %22 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv5
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp7.not = icmp ne i8 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %wr_buf_size)
  %cmp10 = icmp ult i32 %inc, %wr_buf_size
  %or.cond102 = select i1 %cmp7.not, i1 %cmp10, i1 false
  br i1 %or.cond102, label %while.body13.while.body13_crit_edge, label %while.body13.while.end_crit_edge

while.body13.while.end_crit_edge:                 ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body13.while.body13_crit_edge:              ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body13

while.end:                                        ; preds = %while.body13.while.end_crit_edge, %while.cond4.preheader.while.end_crit_edge
  %wr_buf_count.1.lcssa = phi i32 [ %wr_buf_count.0, %while.cond4.preheader.while.end_crit_edge ], [ %inc, %while.body13.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wr_buf_count.1.lcssa, i32 %wr_buf_size)
  %cmp14 = icmp eq i32 %wr_buf_count.1.lcssa, %wr_buf_size
  br i1 %cmp14, label %while.end.while.end38_crit_edge, label %while.cond18.preheader

while.end.while.end38_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end38

while.cond18.preheader:                           ; preds = %while.end
  %26 = ptrtoint ptr %wr_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr_buf_ptr, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv19113 = zext i8 %29 to i32
  %arrayidx20114 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv19113
  %30 = ptrtoint ptr %arrayidx20114 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx20114, align 1
  %32 = and i8 %31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp23.not115 = icmp eq i8 %32, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %wr_buf_count.1.lcssa, i32 %wr_buf_size)
  %cmp26116 = icmp ult i32 %wr_buf_count.1.lcssa, %wr_buf_size
  %or.cond103117 = select i1 %cmp23.not115, i1 %cmp26116, i1 false
  br i1 %or.cond103117, label %while.cond18.preheader.while.body29_crit_edge, label %while.cond18.preheader.while.end32_crit_edge

while.cond18.preheader.while.end32_crit_edge:     ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end32

while.cond18.preheader.while.body29_crit_edge:    ; preds = %while.cond18.preheader
  br label %while.body29

while.body29:                                     ; preds = %while.body29.while.body29_crit_edge, %while.cond18.preheader.while.body29_crit_edge
  %33 = phi ptr [ %incdec.ptr30, %while.body29.while.body29_crit_edge ], [ %27, %while.cond18.preheader.while.body29_crit_edge ]
  %wr_buf_count.2118 = phi i32 [ %inc31, %while.body29.while.body29_crit_edge ], [ %wr_buf_count.1.lcssa, %while.cond18.preheader.while.body29_crit_edge ]
  %incdec.ptr30 = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %wr_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %incdec.ptr30, ptr %wr_buf_ptr, align 4
  %inc31 = add nuw i32 %wr_buf_count.2118, 1
  %35 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr30, align 1
  %conv19 = zext i8 %36 to i32
  %arrayidx20 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv19
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx20, align 1
  %39 = and i8 %38, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp23.not = icmp eq i8 %39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc31, i32 %wr_buf_size)
  %cmp26 = icmp ult i32 %inc31, %wr_buf_size
  %or.cond103 = select i1 %cmp23.not, i1 %cmp26, i1 false
  br i1 %or.cond103, label %while.body29.while.body29_crit_edge, label %while.body29.while.end32_crit_edge

while.body29.while.end32_crit_edge:               ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end32

while.body29.while.body29_crit_edge:              ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body29

while.end32:                                      ; preds = %while.body29.while.end32_crit_edge, %while.cond18.preheader.while.end32_crit_edge
  %wr_buf_count.2.lcssa = phi i32 [ %wr_buf_count.1.lcssa, %while.cond18.preheader.while.end32_crit_edge ], [ %inc31, %while.body29.while.end32_crit_edge ]
  %40 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %param_nums, align 1
  %inc33 = add i8 %41, 1
  store i8 %inc33, ptr %param_nums, align 1
  %cmp34 = icmp eq i32 %wr_buf_count.2.lcssa, %wr_buf_size
  br i1 %cmp34, label %while.end32.while.end38_crit_edge, label %while.end32.while.cond_crit_edge

while.end32.while.cond_crit_edge:                 ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end32.while.end38_crit_edge:                ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end38

while.end38:                                      ; preds = %while.end32.while.end38_crit_edge, %while.end.while.end38_crit_edge, %while.cond.while.end38_crit_edge
  %42 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %param_nums, align 1
  %conv39 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv39, i32 %max_param_num)
  %cmp40 = icmp sgt i32 %conv39, %max_param_num
  br i1 %cmp40, label %if.then42, label %while.end38.if.end44_crit_edge

while.end38.if.end44_crit_edge:                   ; preds = %while.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then42:                                        ; preds = %while.end38
  call void @__sanitizer_cov_trace_pc() #14
  %conv43 = trunc i32 %max_param_num to i8
  %44 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv43, ptr %param_nums, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %while.end38.if.end44_crit_edge
  %45 = ptrtoint ptr %wr_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %wr_buf, ptr %wr_buf_ptr, align 4
  %46 = ptrtoint ptr %wr_buf to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %wr_buf, align 1
  %conv46120 = zext i8 %47 to i32
  %arrayidx47121 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv46120
  %48 = ptrtoint ptr %arrayidx47121 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx47121, align 1
  %50 = and i8 %49, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp50.not122 = icmp ne i8 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wr_buf_size)
  %cmp53123 = icmp ne i32 %wr_buf_size, 0
  %or.cond104124 = and i1 %cmp50.not122, %cmp53123
  br i1 %or.cond104124, label %if.end44.while.body56_crit_edge, label %if.end44.while.cond60.preheader_crit_edge

if.end44.while.cond60.preheader_crit_edge:        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond60.preheader

if.end44.while.body56_crit_edge:                  ; preds = %if.end44
  br label %while.body56

while.cond60.preheader.loopexit:                  ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %wr_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %incdec.ptr57, ptr %wr_buf_ptr, align 4
  br label %while.cond60.preheader

while.cond60.preheader:                           ; preds = %while.cond60.preheader.loopexit, %if.end44.while.cond60.preheader_crit_edge
  %52 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp63126.not = icmp eq i8 %53, 0
  br i1 %cmp63126.not, label %while.cond60.preheader.cleanup_crit_edge, label %while.cond60.preheader.while.body65_crit_edge

while.cond60.preheader.while.body65_crit_edge:    ; preds = %while.cond60.preheader
  br label %while.body65

while.cond60.preheader.cleanup_crit_edge:         ; preds = %while.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body56:                                     ; preds = %while.body56.while.body56_crit_edge, %if.end44.while.body56_crit_edge
  %54 = phi ptr [ %incdec.ptr57, %while.body56.while.body56_crit_edge ], [ %wr_buf, %if.end44.while.body56_crit_edge ]
  %wr_buf_count.3125 = phi i32 [ %inc58, %while.body56.while.body56_crit_edge ], [ 0, %if.end44.while.body56_crit_edge ]
  %incdec.ptr57 = getelementptr i8, ptr %54, i32 1
  %inc58 = add nuw i32 %wr_buf_count.3125, 1
  %55 = ptrtoint ptr %incdec.ptr57 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr57, align 1
  %conv46 = zext i8 %56 to i32
  %arrayidx47 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv46
  %57 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx47, align 1
  %59 = and i8 %58, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp50.not = icmp ne i8 %59, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58, i32 %wr_buf_size)
  %cmp53 = icmp ult i32 %inc58, %wr_buf_size
  %or.cond104 = select i1 %cmp50.not, i1 %cmp53, i1 false
  br i1 %or.cond104, label %while.body56.while.body56_crit_edge, label %while.cond60.preheader.loopexit

while.body56.while.body56_crit_edge:              ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body56

while.body65:                                     ; preds = %if.end71.while.body65_crit_edge, %while.cond60.preheader.while.body65_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end71.while.body65_crit_edge ], [ 0, %while.cond60.preheader.while.body65_crit_edge ]
  %call66 = call ptr @strsep(ptr noundef nonnull %wr_buf_ptr, ptr noundef nonnull %delimiter) #12
  %arrayidx67 = getelementptr i32, ptr %param, i32 %indvars.iv
  %call.i = call i32 @_kstrtol(ptr noundef %call66, i32 noundef 16, ptr noundef %arrayidx67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool69.not = icmp eq i32 %call.i, 0
  br i1 %tobool69.not, label %while.body65.if.end71_crit_edge, label %if.then70

while.body65.if.end71_crit_edge:                  ; preds = %while.body65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then70:                                        ; preds = %while.body65
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %call.i) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %while.body65.if.end71_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %60 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %param_nums, align 1
  %62 = zext i8 %61 to i32
  %cmp63 = icmp ult i32 %indvars.iv.next, %62
  br i1 %cmp63, label %if.end71.while.body65_crit_edge, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end71.while.body65_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body65

cleanup:                                          ; preds = %if.end71.cleanup_crit_edge, %while.cond60.preheader.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ 0, %while.cond60.preheader.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %delimiter) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf_ptr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_set_preferred_training_settings(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_phy_settings_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_link, align 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %and = and i64 %7, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = and i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 20) #17
  %tobool4.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cur_lane_setting = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 22
  %9 = ptrtoint ptr %cur_lane_setting to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_lane_setting, align 8
  %PRE_EMPHASIS = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 22, i32 0, i32 1
  %11 = ptrtoint ptr %PRE_EMPHASIS to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %PRE_EMPHASIS, align 4
  %POST_CURSOR2 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 22, i32 0, i32 2
  %13 = ptrtoint ptr %POST_CURSOR2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %POST_CURSOR2, align 8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 20, ptr noundef nonnull @.str.47, i32 noundef %10, i32 noundef %12, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool12.not41 = icmp eq i32 %size, 0
  br i1 %tobool12.not41, label %if.end6.while.end_crit_edge, label %while.body.preheader

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end6
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.preheader
  %16 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end19.while.body_crit_edge ]
  %buf.addr.044 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr20, %if.end19.while.body_crit_edge ]
  %size.addr.043 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end19.while.body_crit_edge ]
  %result.042 = phi i32 [ 0, %while.body.preheader ], [ %add21, %if.end19.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 19, i64 %16)
  %cmp = icmp sgt i64 %16, 19
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end14

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end14:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %call7.i.i.i, i32 %result.042
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 391) #12
  %19 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %21, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %22 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.044, i8 %18, i32 -1226833921) #12, !srcloc !278
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not = icmp eq i32 %22, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %add.ptr20 = getelementptr i8, ptr %buf.addr.044, i32 1
  %sub = add i32 %size.addr.043, -1
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pos, align 8
  %add = add i64 %24, 1
  store i64 %add, ptr %pos, align 8
  %add21 = add nuw i32 %result.042, 1
  %tobool12.not = icmp eq i32 %sub, 0
  br i1 %tobool12.not, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end6.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end6.while.end_crit_edge ], [ %result.042, %while.body.while.end_crit_edge ], [ %size, %if.end19.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_phy_settings_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %param = alloca [3 x i32], align 4
  %link_lane_settings = alloca %struct.link_training_settings, align 4
  %param_nums = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_link, align 8
  %dc1 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %param) #12
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %param, align 4, !annotation !276
  %9 = getelementptr inbounds [3 x i32], ptr %param, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !276
  %11 = getelementptr inbounds [3 x i32], ptr %param, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !276
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %link_lane_settings) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %13 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 40) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 40, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 3, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp9 = icmp eq i8 %16, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp13 = icmp sgt i32 %18, 3
  br i1 %cmp13, label %if.end12.if.then22_crit_edge, label %lor.lhs.false

if.end12.if.then22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end12
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp16 = icmp sgt i32 %20, 3
  br i1 %cmp16, label %lor.lhs.false.if.then22_crit_edge, label %lor.lhs.false18

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp20 = icmp sgt i32 %22, 3
  br i1 %cmp20, label %lor.lhs.false18.if.then22_crit_edge, label %if.end23

lor.lhs.false18.if.then22_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false18.if.then22_crit_edge, %lor.lhs.false.if.then22_crit_edge, %if.end12.if.then22_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.48) #12
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false18
  %preferred_link_setting = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 23
  %link_rate = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 23, i32 1
  %23 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp24.not = icmp eq i32 %24, 0
  br i1 %cmp24.not, label %if.else.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end23
  %test_pattern_enabled = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 30
  %25 = ptrtoint ptr %test_pattern_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %test_pattern_enabled, align 4, !range !279
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool26.not = icmp eq i8 %26, 0
  %27 = call ptr @memset(ptr %link_lane_settings, i32 0, i32 156)
  br i1 %tobool26.not, label %land.rhs.if.else_crit_edge, label %if.then29

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then29:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %preferred_link_setting to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %preferred_link_setting, align 8
  %30 = ptrtoint ptr %link_lane_settings to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %link_lane_settings, align 4
  %link_rate35 = getelementptr inbounds %struct.dc_link_settings, ptr %link_lane_settings, i32 0, i32 1
  %31 = ptrtoint ptr %link_rate35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %24, ptr %link_rate35, align 4
  %link_spread = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 23, i32 2
  br label %if.end50

if.else.critedge:                                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %32 = getelementptr inbounds i8, ptr %link_lane_settings, i32 12
  %33 = call ptr @memset(ptr %32, i32 0, i32 144)
  br label %if.else

if.else:                                          ; preds = %if.else.critedge, %land.rhs.if.else_crit_edge
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21
  %34 = ptrtoint ptr %cur_link_settings to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_link_settings, align 8
  %36 = ptrtoint ptr %link_lane_settings to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %link_lane_settings, align 4
  %link_rate43 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21, i32 1
  %37 = ptrtoint ptr %link_rate43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %link_rate43, align 4
  %link_rate45 = getelementptr inbounds %struct.dc_link_settings, ptr %link_lane_settings, i32 0, i32 1
  %39 = ptrtoint ptr %link_rate45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %link_rate45, align 4
  %link_spread47 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21, i32 2
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then29
  %link_spread47.sink = phi ptr [ %link_spread47, %if.else ], [ %link_spread, %if.then29 ]
  %40 = ptrtoint ptr %link_spread47.sink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %link_spread47.sink, align 8
  %link_spread49 = getelementptr inbounds %struct.dc_link_settings, ptr %link_lane_settings, i32 0, i32 2
  %42 = ptrtoint ptr %link_spread49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %link_spread49, align 4
  %43 = ptrtoint ptr %link_lane_settings to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_lane_settings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp5394.not = icmp eq i32 %44, 0
  br i1 %cmp5394.not, label %if.end50.for.end_crit_edge, label %if.end50.for.body_crit_edge

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  br label %for.body

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end50.for.body_crit_edge
  %r.095 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end50.for.body_crit_edge ]
  %arrayidx56 = getelementptr %struct.link_training_settings, ptr %link_lane_settings, i32 0, i32 1, i32 %r.095
  %45 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %18, ptr %arrayidx56, align 4
  %PRE_EMPHASIS = getelementptr %struct.link_training_settings, ptr %link_lane_settings, i32 0, i32 1, i32 %r.095, i32 1
  %46 = ptrtoint ptr %PRE_EMPHASIS to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %20, ptr %PRE_EMPHASIS, align 4
  %POST_CURSOR2 = getelementptr %struct.link_training_settings, ptr %link_lane_settings, i32 0, i32 1, i32 %r.095, i32 2
  %47 = ptrtoint ptr %POST_CURSOR2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %22, ptr %POST_CURSOR2, align 4
  %inc = add nuw i32 %r.095, 1
  %48 = ptrtoint ptr %link_lane_settings to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_lane_settings, align 4
  %cmp53 = icmp ult i32 %inc, %49
  br i1 %cmp53, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end50.for.end_crit_edge
  call void @dc_link_set_drive_settings(ptr noundef %7, ptr noundef nonnull %link_lane_settings, ptr noundef %5) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then22, %if.then11, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then11 ], [ %size, %if.then22 ], [ %size, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %link_lane_settings) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_set_drive_settings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_lttpr_status_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dp_lttpr_status_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_lttpr_status_show(ptr noundef %m, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 36
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 8
  %call2 = tail call zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef %10, ptr noundef %7, i32 noundef 983042, ptr noundef nonnull %call7.i.i, i32 noundef 1) #12
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i.i, align 8
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %12, label %sw.default [
    i8 -128, label %if.end.sw.epilog_crit_edge
    i8 64, label %sw.bb3
    i8 32, label %sw.bb4
    i8 16, label %sw.bb5
    i8 8, label %sw.bb6
    i8 4, label %sw.bb7
    i8 2, label %sw.bb8
    i8 1, label %sw.bb9
    i8 0, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = zext i8 %12 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %if.end.sw.epilog_crit_edge
  %repeater_count.0 = phi i32 [ %phi.cast, %sw.default ], [ 0, %sw.bb10 ], [ 8, %sw.bb9 ], [ 7, %sw.bb8 ], [ 6, %sw.bb7 ], [ 5, %sw.bb6 ], [ 4, %sw.bb5 ], [ 3, %sw.bb4 ], [ 2, %sw.bb3 ], [ 1, %if.end.sw.epilog_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %repeater_count.0) #12
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %call13 = tail call zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef %15, ptr noundef %7, i32 noundef 983043, ptr noundef nonnull %call7.i.i, i32 noundef 1) #12
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i.i, align 8
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %17, label %if.else26 [
    i8 85, label %sw.epilog.if.end29_crit_edge
    i8 -86, label %if.then20
    i8 0, label %if.then25
  ]

sw.epilog.if.end29_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.else26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then25, %if.then20, %sw.epilog.if.end29_crit_edge
  %.str.51.sink = phi ptr [ @.str.51, %if.then20 ], [ @.str.53, %if.else26 ], [ @.str.52, %if.then25 ], [ @.str.50, %sw.epilog.if.end29_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.51.sink) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_phy_test_pattern_debugfs_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %param = alloca [11 x i32], align 4
  %param_nums = alloca i8, align 1
  %custom_pattern = alloca [10 x i8], align 1
  %link_training_settings = alloca %struct.link_training_settings, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_link, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %param) #12
  %6 = call ptr @memset(ptr %param, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %7 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %param_nums, align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %custom_pattern) #12
  %8 = call ptr @memcpy(ptr %custom_pattern, ptr @__const.dp_phy_test_pattern_debugfs_write.custom_pattern, i32 10)
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %link_training_settings) #12
  %9 = getelementptr inbounds i8, ptr %link_training_settings, i32 16
  %10 = call ptr @memset(ptr %9, i32 255, i32 140)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 100) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 100, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 11, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp8 = icmp eq i8 %13, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %15)
  %16 = icmp ult i32 %15, 17
  br i1 %16, label %switch.hole_check, label %if.end11.if.then14_crit_edge

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %switch.hole_check.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.54) #12
  br label %cleanup

switch.hole_check:                                ; preds = %if.end11
  %switch.shifted = lshr i32 129119, %15
  %17 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %switch.lobit.not = icmp eq i32 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then14_crit_edge, label %switch.lookup

switch.hole_check.if.then14_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = trunc i32 %15 to i17
  %switch.downshift = lshr i17 2142, %switch.cast
  %18 = and i17 %switch.downshift, 1
  %switch.masked.not = icmp eq i17 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp16 = icmp eq i32 %15, 4
  br i1 %cmp16, label %for.cond.preheader, label %switch.lookup.if.end43_crit_edge

switch.lookup.if.end43_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

for.cond.preheader:                               ; preds = %switch.lookup
  %arrayidx21 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx21, align 4
  %conv23 = and i32 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23)
  %cmp24.not = icmp eq i32 %conv23, 0
  br i1 %cmp24.not, label %for.cond.1, label %for.cond.preheader.for.body34.preheader_crit_edge

for.cond.preheader.for.body34.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.1:                                       ; preds = %for.cond.preheader
  %arrayidx21.1 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx21.1, align 4
  %conv23.1 = and i32 %22, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.1)
  %cmp24.not.1 = icmp eq i32 %conv23.1, 0
  br i1 %cmp24.not.1, label %for.cond.2, label %for.cond.1.for.body34.preheader_crit_edge

for.cond.1.for.body34.preheader_crit_edge:        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx21.2 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx21.2, align 4
  %conv23.2 = and i32 %24, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.2)
  %cmp24.not.2 = icmp eq i32 %conv23.2, 0
  br i1 %cmp24.not.2, label %for.cond.3, label %for.cond.2.for.body34.preheader_crit_edge

for.cond.2.for.body34.preheader_crit_edge:        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx21.3 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx21.3, align 4
  %conv23.3 = and i32 %26, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.3)
  %cmp24.not.3 = icmp eq i32 %conv23.3, 0
  br i1 %cmp24.not.3, label %for.cond.4, label %for.cond.3.for.body34.preheader_crit_edge

for.cond.3.for.body34.preheader_crit_edge:        ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx21.4 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx21.4, align 4
  %conv23.4 = and i32 %28, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.4)
  %cmp24.not.4 = icmp eq i32 %conv23.4, 0
  br i1 %cmp24.not.4, label %for.cond.5, label %for.cond.4.for.body34.preheader_crit_edge

for.cond.4.for.body34.preheader_crit_edge:        ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx21.5 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx21.5, align 4
  %conv23.5 = and i32 %30, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.5)
  %cmp24.not.5 = icmp eq i32 %conv23.5, 0
  br i1 %cmp24.not.5, label %for.cond.6, label %for.cond.5.for.body34.preheader_crit_edge

for.cond.5.for.body34.preheader_crit_edge:        ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx21.6 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx21.6, align 4
  %conv23.6 = and i32 %32, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.6)
  %cmp24.not.6 = icmp eq i32 %conv23.6, 0
  br i1 %cmp24.not.6, label %for.cond.7, label %for.cond.6.for.body34.preheader_crit_edge

for.cond.6.for.body34.preheader_crit_edge:        ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx21.7 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 8
  %33 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx21.7, align 4
  %conv23.7 = and i32 %34, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.7)
  %cmp24.not.7 = icmp eq i32 %conv23.7, 0
  br i1 %cmp24.not.7, label %for.cond.8, label %for.cond.7.for.body34.preheader_crit_edge

for.cond.7.for.body34.preheader_crit_edge:        ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx21.8 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 9
  %35 = ptrtoint ptr %arrayidx21.8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx21.8, align 4
  %conv23.8 = and i32 %36, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.8)
  %cmp24.not.8 = icmp eq i32 %conv23.8, 0
  br i1 %cmp24.not.8, label %for.cond.9, label %for.cond.8.for.body34.preheader_crit_edge

for.cond.8.for.body34.preheader_crit_edge:        ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx21.9 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 10
  %37 = ptrtoint ptr %arrayidx21.9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx21.9, align 4
  %conv23.9 = and i32 %38, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.9)
  %cmp24.not.9 = icmp eq i32 %conv23.9, 0
  br i1 %cmp24.not.9, label %for.cond.9.if.end43_crit_edge, label %for.cond.9.for.body34.preheader_crit_edge

for.cond.9.for.body34.preheader_crit_edge:        ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34.preheader

for.cond.9.if.end43_crit_edge:                    ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

for.body34.preheader:                             ; preds = %for.cond.9.for.body34.preheader_crit_edge, %for.cond.8.for.body34.preheader_crit_edge, %for.cond.7.for.body34.preheader_crit_edge, %for.cond.6.for.body34.preheader_crit_edge, %for.cond.5.for.body34.preheader_crit_edge, %for.cond.4.for.body34.preheader_crit_edge, %for.cond.3.for.body34.preheader_crit_edge, %for.cond.2.for.body34.preheader_crit_edge, %for.cond.1.for.body34.preheader_crit_edge, %for.cond.preheader.for.body34.preheader_crit_edge
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx21, align 4
  %conv37 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %custom_pattern to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv37, ptr %custom_pattern, align 1
  %arrayidx36.1 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx36.1, align 4
  %conv37.1 = trunc i32 %43 to i8
  %arrayidx38.1 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv37.1, ptr %arrayidx38.1, align 1
  %arrayidx36.2 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx36.2, align 4
  %conv37.2 = trunc i32 %46 to i8
  %arrayidx38.2 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv37.2, ptr %arrayidx38.2, align 1
  %arrayidx36.3 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 4
  %48 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx36.3, align 4
  %conv37.3 = trunc i32 %49 to i8
  %arrayidx38.3 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv37.3, ptr %arrayidx38.3, align 1
  %arrayidx36.4 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 5
  %51 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx36.4, align 4
  %conv37.4 = trunc i32 %52 to i8
  %arrayidx38.4 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv37.4, ptr %arrayidx38.4, align 1
  %arrayidx36.5 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 6
  %54 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx36.5, align 4
  %conv37.5 = trunc i32 %55 to i8
  %arrayidx38.5 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 5
  %56 = ptrtoint ptr %arrayidx38.5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv37.5, ptr %arrayidx38.5, align 1
  %arrayidx36.6 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 7
  %57 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx36.6, align 4
  %conv37.6 = trunc i32 %58 to i8
  %arrayidx38.6 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 6
  %59 = ptrtoint ptr %arrayidx38.6 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv37.6, ptr %arrayidx38.6, align 1
  %arrayidx36.7 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 8
  %60 = ptrtoint ptr %arrayidx36.7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx36.7, align 4
  %conv37.7 = trunc i32 %61 to i8
  %arrayidx38.7 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 7
  %62 = ptrtoint ptr %arrayidx38.7 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv37.7, ptr %arrayidx38.7, align 1
  %arrayidx36.8 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 9
  %63 = ptrtoint ptr %arrayidx36.8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx36.8, align 4
  %conv37.8 = trunc i32 %64 to i8
  %arrayidx38.8 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 8
  %65 = ptrtoint ptr %arrayidx38.8 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv37.8, ptr %arrayidx38.8, align 1
  %arrayidx36.9 = getelementptr inbounds [11 x i32], ptr %param, i32 0, i32 10
  %66 = ptrtoint ptr %arrayidx36.9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx36.9, align 4
  %conv37.9 = trunc i32 %67 to i8
  %arrayidx38.9 = getelementptr inbounds [10 x i8], ptr %custom_pattern, i32 0, i32 9
  %68 = ptrtoint ptr %arrayidx38.9 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv37.9, ptr %arrayidx38.9, align 1
  br label %if.end43

if.end43:                                         ; preds = %for.body34.preheader, %for.cond.9.if.end43_crit_edge, %switch.lookup.if.end43_crit_edge
  br i1 %switch.masked.not, label %if.then45, label %if.end43.if.end46_crit_edge

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void @dc_link_enable_hpd(ptr noundef %5) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43.if.end46_crit_edge
  %verified_link_cap = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 20
  %69 = ptrtoint ptr %verified_link_cap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %verified_link_cap, align 8
  %link_rate = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 20, i32 1
  %71 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %link_rate, align 4
  %link_spread = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 20, i32 2
  %73 = ptrtoint ptr %link_spread to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %link_spread, align 8
  %cur_link_settings52 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21
  %75 = ptrtoint ptr %cur_link_settings52 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cur_link_settings52, align 8
  %link_rate56 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21, i32 1
  %77 = ptrtoint ptr %link_rate56 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %link_rate56, align 4
  %link_spread59 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21, i32 2
  %79 = ptrtoint ptr %link_spread59 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %link_spread59, align 8
  %81 = ptrtoint ptr %link_training_settings to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %76, ptr %link_training_settings, align 4
  %cur_link_settings.sroa.6.0.link_settings.sroa_idx = getelementptr inbounds i8, ptr %link_training_settings, i32 4
  %82 = ptrtoint ptr %cur_link_settings.sroa.6.0.link_settings.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %78, ptr %cur_link_settings.sroa.6.0.link_settings.sroa_idx, align 4
  %cur_link_settings.sroa.8.0.link_settings.sroa_idx = getelementptr inbounds i8, ptr %link_training_settings, i32 8
  %83 = ptrtoint ptr %cur_link_settings.sroa.8.0.link_settings.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %cur_link_settings.sroa.8.0.link_settings.sroa_idx, align 4
  %cur_link_settings.sroa.9.0.link_settings.sroa_idx = getelementptr inbounds i8, ptr %link_training_settings, i32 12
  %84 = ptrtoint ptr %cur_link_settings.sroa.9.0.link_settings.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %cur_link_settings.sroa.9.0.link_settings.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp61.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp65.not = icmp eq i32 %70, 0
  %or.cond = select i1 %cmp61.not, i1 true, i1 %cmp65.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp68.not = icmp eq i32 %72, 0
  %or.cond158 = select i1 %or.cond, i1 true, i1 %cmp68.not
  br i1 %or.cond158, label %if.end46.if.end82_crit_edge, label %land.lhs.true70

if.end46.if.end82_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true70:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %76)
  %cmp73.not = icmp eq i32 %70, %76
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %78)
  %cmp77.not = icmp eq i32 %72, %78
  %or.cond159 = select i1 %cmp73.not, i1 %cmp77.not, i1 false
  br i1 %or.cond159, label %land.lhs.true70.if.end82_crit_edge, label %if.end82.thread

land.lhs.true70.if.end82_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.end82.thread:                                  ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %link_training_settings to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %70, ptr %link_training_settings, align 4
  %86 = ptrtoint ptr %cur_link_settings.sroa.6.0.link_settings.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %72, ptr %cur_link_settings.sroa.6.0.link_settings.sroa_idx, align 4
  %87 = ptrtoint ptr %cur_link_settings.sroa.8.0.link_settings.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %74, ptr %cur_link_settings.sroa.8.0.link_settings.sroa_idx, align 4
  br label %for.body88.preheader

if.end82:                                         ; preds = %land.lhs.true70.if.end82_crit_edge, %if.end46.if.end82_crit_edge
  %88 = ptrtoint ptr %link_training_settings to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr = load i32, ptr %link_training_settings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp86167.not = icmp eq i32 %.pr, 0
  br i1 %cmp86167.not, label %if.end82.for.end93_crit_edge, label %if.end82.for.body88.preheader_crit_edge

if.end82.for.body88.preheader_crit_edge:          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body88.preheader

if.end82.for.end93_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end93

for.body88.preheader:                             ; preds = %if.end82.for.body88.preheader_crit_edge, %if.end82.thread
  br label %for.body88

for.body88:                                       ; preds = %for.body88.for.body88_crit_edge, %for.body88.preheader
  %i.2168 = phi i32 [ %inc92, %for.body88.for.body88_crit_edge ], [ 0, %for.body88.preheader ]
  %arrayidx89 = getelementptr %struct.link_training_settings, ptr %link_training_settings, i32 0, i32 1, i32 %i.2168
  %arrayidx90 = getelementptr %struct.dc_link, ptr %5, i32 0, i32 22, i32 %i.2168
  %89 = call ptr @memcpy(ptr %arrayidx89, ptr %arrayidx90, i32 12)
  %inc92 = add nuw i32 %i.2168, 1
  %90 = ptrtoint ptr %link_training_settings to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %link_training_settings, align 4
  %cmp86 = icmp ult i32 %inc92, %91
  br i1 %cmp86, label %for.body88.for.body88_crit_edge, label %for.body88.for.end93_crit_edge

for.body88.for.end93_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end93

for.body88.for.body88_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body88

for.end93:                                        ; preds = %for.body88.for.end93_crit_edge, %if.end82.for.end93_crit_edge
  call void @dc_link_set_test_pattern(ptr noundef %5, i32 noundef %15, i32 noundef 0, ptr noundef nonnull %link_training_settings, ptr noundef nonnull %custom_pattern, i32 noundef 10) #12
  br i1 %switch.masked.not, label %for.end93.if.end101_crit_edge, label %if.then100

for.end93.if.end101_crit_edge:                    ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then100:                                       ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #14
  call void @dc_link_disable_hpd(ptr noundef %5) #12
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %for.end93.if.end101_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then14, %if.then10, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then10 ], [ %size, %if.end101 ], [ %size, %if.then14 ], [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %link_training_settings) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %custom_pattern) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_enable_hpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_set_test_pattern(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_disable_hpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcp_sink_capability_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @hdcp_sink_capability_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcp_sink_capability_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %status = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %base = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, ptr noundef %5, i32 noundef %7) #12
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc_link, align 8
  %dc_sink = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dc_sink, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call = tail call zeroext i1 @dc_link_is_hdcp14(ptr noundef %9, i32 noundef %13) #12
  %14 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dc_link, align 8
  %16 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dc_sink, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %call4 = tail call zeroext i1 @dc_link_is_hdcp22(ptr noundef %15, i32 noundef %19) #12
  br i1 %call, label %if.end7, label %if.end7.thread

if.end7:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #12
  br i1 %call4, label %if.end7.if.end14.sink.split_crit_edge, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end7.if.end14.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.sink.split

if.end7.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select = select i1 %call4, ptr @.str.58, ptr @.str.59
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.end7.thread, %if.end7.if.end14.sink.split_crit_edge
  %.str.58.sink = phi ptr [ @.str.58, %if.end7.if.end14.sink.split_crit_edge ], [ %spec.select, %if.end7.thread ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull %.str.58.sink) #12
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.end7.if.end14_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.60) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_is_hdcp14(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_is_hdcp22(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_sdp_message_debugfs_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %data = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %data) #12
  %0 = call ptr @memset(ptr %data, i32 255, i32 36)
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_private, align 4
  %status = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 52
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtc, align 4
  %state5 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state5, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end3.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end3.if.then11.i.i_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end3
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 36, i32 -1226833920) #15, !srcloc !277
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !268

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef 36) #12
  %14 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !271
  %and.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %buf, i32 noundef 36) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !268

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end3.if.then11.i.i_crit_edge
  %res.0.i.i19 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 36, %if.end3.if.then11.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 36, %res.0.i.i19
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i19)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %res.0.i.i19, %if.then11.i.i ], [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ]
  %sub = sub i32 36, %n.addr.0.i
  %stream = getelementptr inbounds %struct.dm_crtc_state, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream, align 4
  %call8 = call zeroext i1 @dc_stream_send_dp_sdp(ptr noundef %19, ptr noundef nonnull %data, i32 noundef %sub) #12
  br label %cleanup

cleanup:                                          ; preds = %copy_from_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %copy_from_user.exit ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_stream_send_dp_sdp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dpcd_address_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ult i32 %size, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %debugfs_dpcd_address = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 20
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #15, !srcloc !277
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !268

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %debugfs_dpcd_address, i32 noundef 4) #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !271
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %debugfs_dpcd_address, ptr noundef %buf, i32 noundef 4) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !268

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i6 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i6
  %add.ptr.i.i = getelementptr i8, ptr %debugfs_dpcd_address, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i6)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ %res.0.i.i6, %if.then11.i.i ]
  %sub = sub i32 %size, %n.addr.0.i
  br label %cleanup

cleanup:                                          ; preds = %copy_from_user.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %copy_from_user.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dpcd_size_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ult i32 %size, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %debugfs_dpcd_size = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 21
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #15, !srcloc !277
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !268

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %debugfs_dpcd_size, i32 noundef 4) #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !271
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %debugfs_dpcd_size, ptr noundef %buf, i32 noundef 4) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !268

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i13 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i13
  %add.ptr.i.i = getelementptr i8, ptr %debugfs_dpcd_size, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i13)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ %res.0.i.i13, %if.then11.i.i ]
  %9 = ptrtoint ptr %debugfs_dpcd_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debugfs_dpcd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp3 = icmp ugt i32 %10, 256
  br i1 %cmp3, label %if.then4, label %copy_from_user.exit.if.end6_crit_edge

copy_from_user.exit.if.end6_crit_edge:            ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %debugfs_dpcd_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %debugfs_dpcd_size, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %copy_from_user.exit.if.end6_crit_edge
  %sub = sub i32 %size, %n.addr.0.i
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dpcd_data_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_link, align 8
  %debugfs_dpcd_size = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %debugfs_dpcd_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debugfs_dpcd_size, align 4
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %size)
  %.not = icmp ult i32 %8, %size
  br i1 %.not, label %if.end8.i.i25, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i25:                                    ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #16
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end8.i.i25.cleanup_crit_edge, label %if.end4

if.end8.i.i25.cleanup_crit_edge:                  ; preds = %if.end8.i.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end8.i.i25
  %ctx = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 36
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 8
  %debugfs_dpcd_address = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 20
  %11 = ptrtoint ptr %debugfs_dpcd_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debugfs_dpcd_address, align 8
  %call5 = tail call zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef %10, ptr noundef %5, i32 noundef %12, ptr noundef nonnull %call9.i.i, i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.i.i = icmp slt i32 %7, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end4
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !268

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %if.end4
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %7, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %7, i32 -1226833920) #15, !srcloc !269
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i, i32 noundef %7) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call9.i.i, i32 noundef %7) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %7, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %7, %if.end.i.i.copy_to_user.exit_crit_edge ], [ %7, %if.then27.i.i ], [ %7, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  %sub = sub i32 %7, %n.addr.0.i
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %copy_to_user.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end8.i.i25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dpcd_data_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_link, align 8
  %debugfs_dpcd_size = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %debugfs_dpcd_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debugfs_dpcd_size, align 4
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %size)
  %.not = icmp ult i32 %8, %size
  br i1 %.not, label %if.end8.i.i28, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i28:                                    ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #16
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end8.i.i28.cleanup_crit_edge, label %if.end8.i.i

if.end8.i.i28.cleanup_crit_edge:                  ; preds = %if.end8.i.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end8.i.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.i.i = icmp slt i32 %7, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_from_user.exit_crit_edge, label %if.then27.i.i, !prof !268

land.rhs16.i.i.copy_from_user.exit_crit_edge:     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %copy_from_user.exit

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %7, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %7, i32 -1226833920) #15, !srcloc !277
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !268

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef %7) #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !271
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i, ptr noundef %buf, i32 noundef %7) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !268

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i31 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %7, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %7, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %7, %res.0.i.i31
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i31)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ %res.0.i.i31, %if.then11.i.i ], [ %7, %if.then27.i.i ], [ %7, %land.rhs16.i.i.copy_from_user.exit_crit_edge ]
  %ctx = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 36
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %debugfs_dpcd_address = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 20
  %16 = ptrtoint ptr %debugfs_dpcd_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debugfs_dpcd_address, align 8
  %sub = sub i32 %7, %n.addr.0.i
  %call6 = tail call zeroext i1 @dm_helpers_dp_write_dpcd(ptr noundef %15, ptr noundef %5, i32 noundef %17, ptr noundef nonnull %call9.i.i, i32 noundef %sub) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %copy_from_user.exit, %if.end8.i.i28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %copy_from_user.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end8.i.i28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_helpers_dp_write_dpcd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_clock_en_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %dsc_state = alloca %struct.dcn_dsc_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dsc_state) #12
  %4 = call ptr @memset(ptr %dsc_state, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 10) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %11, i32 3520
  %tobool3.not = icmp eq ptr %res_ctx, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %cmp8 = icmp eq ptr %15, %7
  br i1 %cmp8, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tobool3.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true5.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.1, align 4
  %cmp8.1 = icmp eq ptr %19, %7
  br i1 %cmp8.1, label %land.lhs.true5.1.if.end13_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1.if.end13_crit_edge:              ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2
  %tobool3.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.2, align 4
  %tobool4.not.2 = icmp eq ptr %21, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true5.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.2, align 4
  %cmp8.2 = icmp eq ptr %23, %7
  br i1 %cmp8.2, label %land.lhs.true5.2.if.end13_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2.if.end13_crit_edge:              ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3
  %tobool3.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.3, align 4
  %tobool4.not.3 = icmp eq ptr %25, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true5.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.3, align 4
  %cmp8.3 = icmp eq ptr %27, %7
  br i1 %cmp8.3, label %land.lhs.true5.3.if.end13_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3.if.end13_crit_edge:              ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4
  %tobool3.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool4.not.4 = icmp eq ptr %29, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true5.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.4, align 4
  %cmp8.4 = icmp eq ptr %31, %7
  br i1 %cmp8.4, label %land.lhs.true5.4.if.end13_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4.if.end13_crit_edge:              ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5
  %tobool3.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream.5, align 4
  %tobool4.not.5 = icmp eq ptr %33, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true5.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.5, align 4
  %cmp8.5 = icmp ne ptr %35, %7
  %tobool11.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp8.5, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %land.lhs.true5.5.cleanup_crit_edge, label %land.lhs.true5.5.if.end13_crit_edge

land.lhs.true5.5.if.end13_crit_edge:              ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool11.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool11.not.old, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end13_crit_edge

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.5.if.end13_crit_edge, %land.lhs.true5.5.if.end13_crit_edge, %land.lhs.true5.4.if.end13_crit_edge, %land.lhs.true5.3.if.end13_crit_edge, %land.lhs.true5.2.if.end13_crit_edge, %land.lhs.true5.1.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge
  %i.06877 = phi i32 [ 5, %for.inc.5.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 1, %land.lhs.true5.1.if.end13_crit_edge ], [ 2, %land.lhs.true5.2.if.end13_crit_edge ], [ 3, %land.lhs.true5.3.if.end13_crit_edge ], [ 4, %land.lhs.true5.4.if.end13_crit_edge ], [ 5, %land.lhs.true5.5.if.end13_crit_edge ]
  %dsc14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.06877, i32 3, i32 1
  %36 = ptrtoint ptr %dsc14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc14, align 4
  %tobool15.not = icmp eq ptr %37, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dsc_read_state = getelementptr inbounds %struct.dsc_funcs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dsc_read_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsc_read_state, align 4
  call void %41(ptr noundef nonnull %37, ptr noundef nonnull %dsc_state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %42 = ptrtoint ptr %dsc_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsc_state, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 30, ptr noundef nonnull @.str.61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not70 = icmp eq i32 %size, 0
  br i1 %tobool19.not70, label %if.end17.while.end_crit_edge, label %while.body.preheader

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.preheader
  %45 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end28.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr29, %if.end28.while.body_crit_edge ]
  %size.addr.072 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end28.while.body_crit_edge ]
  %result.071 = phi i32 [ 0, %while.body.preheader ], [ %add30, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 9, i64 %45)
  %cmp20 = icmp sgt i64 %45, 9
  br i1 %cmp20, label %while.body.while.end_crit_edge, label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end22:                                         ; preds = %while.body
  %add.ptr23 = getelementptr i8, ptr %call7.i.i.i, i32 %result.071
  %46 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 1378) #12
  %48 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %51 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.073, i8 %47, i32 -1226833921) #12, !srcloc !280
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not = icmp eq i32 %51, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %add.ptr29 = getelementptr i8, ptr %buf.addr.073, i32 1
  %sub = add i32 %size.addr.072, -1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  %add = add i64 %53, 1
  store i64 %add, ptr %pos, align 8
  %add30 = add nuw i32 %result.071, 1
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %result.071, %while.body.while.end_crit_edge ], [ %size, %if.end28.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end22.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true5.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %for.inc.5.cleanup_crit_edge ], [ -6, %land.lhs.true5.5.cleanup_crit_edge ], [ %51, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dsc_state) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_clock_en_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %param = alloca [1 x i32], align 4
  %param_nums = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %param, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %7 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 42) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 42, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 1, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp9 = icmp eq i8 %10, 0
  br i1 %cmp9, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %16, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %16, i32 3520
  %tobool16.not = icmp eq ptr %res_ctx, null
  br i1 %tobool16.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link, align 4
  %cmp21 = icmp eq ptr %20, %12
  br i1 %cmp21, label %land.lhs.true18.lor.lhs.false_crit_edge, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc:                                          ; preds = %land.lhs.true18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 1
  %tobool16.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool16.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream.1, align 4
  %tobool17.not.1 = icmp eq ptr %22, null
  br i1 %tobool17.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true18.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true18.1:                                ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link.1, align 4
  %cmp21.1 = icmp eq ptr %24, %12
  br i1 %cmp21.1, label %land.lhs.true18.1.lor.lhs.false_crit_edge, label %land.lhs.true18.1.for.inc.1_crit_edge

land.lhs.true18.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true18.1.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.1:                                        ; preds = %land.lhs.true18.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 2
  %tobool16.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool16.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream.2, align 4
  %tobool17.not.2 = icmp eq ptr %26, null
  br i1 %tobool17.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true18.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true18.2:                                ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.2, align 4
  %cmp21.2 = icmp eq ptr %28, %12
  br i1 %cmp21.2, label %land.lhs.true18.2.lor.lhs.false_crit_edge, label %land.lhs.true18.2.for.inc.2_crit_edge

land.lhs.true18.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true18.2.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.2:                                        ; preds = %land.lhs.true18.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 3
  %tobool16.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool16.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream.3, align 4
  %tobool17.not.3 = icmp eq ptr %30, null
  br i1 %tobool17.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true18.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true18.3:                                ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.3, align 4
  %cmp21.3 = icmp eq ptr %32, %12
  br i1 %cmp21.3, label %land.lhs.true18.3.lor.lhs.false_crit_edge, label %land.lhs.true18.3.for.inc.3_crit_edge

land.lhs.true18.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true18.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true18.3.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.3:                                        ; preds = %land.lhs.true18.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 4
  %tobool16.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool16.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream.4, align 4
  %tobool17.not.4 = icmp eq ptr %34, null
  br i1 %tobool17.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true18.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true18.4:                                ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link.4, align 4
  %cmp21.4 = icmp eq ptr %36, %12
  br i1 %cmp21.4, label %land.lhs.true18.4.lor.lhs.false_crit_edge, label %land.lhs.true18.4.for.inc.4_crit_edge

land.lhs.true18.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true18.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true18.4.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.4:                                        ; preds = %land.lhs.true18.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 5
  %tobool16.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool16.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stream.5, align 4
  %tobool17.not.5 = icmp eq ptr %38, null
  br i1 %tobool17.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true18.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true18.5:                                ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link.5, align 4
  %cmp21.5 = icmp ne ptr %40, %12
  %tobool25.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp21.5, i1 %tobool25.not, i1 false
  br i1 %or.cond, label %land.lhs.true18.5.done_crit_edge, label %land.lhs.true18.5.lor.lhs.false_crit_edge

land.lhs.true18.5.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true18.5.done_crit_edge:                 ; preds = %land.lhs.true18.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool25.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool25.not.old, label %for.inc.5.done_crit_edge, label %for.inc.5.lor.lhs.false_crit_edge

for.inc.5.lor.lhs.false_crit_edge:                ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.5.done_crit_edge:                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

lor.lhs.false:                                    ; preds = %for.inc.5.lor.lhs.false_crit_edge, %land.lhs.true18.5.lor.lhs.false_crit_edge, %land.lhs.true18.4.lor.lhs.false_crit_edge, %land.lhs.true18.3.lor.lhs.false_crit_edge, %land.lhs.true18.2.lor.lhs.false_crit_edge, %land.lhs.true18.1.lor.lhs.false_crit_edge, %land.lhs.true18.lor.lhs.false_crit_edge
  %i.0128132 = phi i32 [ 5, %for.inc.5.lor.lhs.false_crit_edge ], [ 0, %land.lhs.true18.lor.lhs.false_crit_edge ], [ 1, %land.lhs.true18.1.lor.lhs.false_crit_edge ], [ 2, %land.lhs.true18.2.lor.lhs.false_crit_edge ], [ 3, %land.lhs.true18.3.lor.lhs.false_crit_edge ], [ 4, %land.lhs.true18.4.lor.lhs.false_crit_edge ], [ 5, %land.lhs.true18.5.lor.lhs.false_crit_edge ]
  %stream26 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0128132, i32 1
  %41 = ptrtoint ptr %stream26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream26, align 4
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %lor.lhs.false.done_crit_edge, label %if.end29

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end29:                                         ; preds = %lor.lhs.false
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #12
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %call31 = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #12
  %state = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 52
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state, align 8
  %cmp32 = icmp eq ptr %44, null
  br i1 %cmp32, label %if.end29.if.end73_crit_edge, label %if.end35

if.end29.if.end73_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.end35:                                         ; preds = %if.end29
  %crtc37 = getelementptr inbounds %struct.drm_connector_state, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %crtc37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crtc37, align 4
  %cmp38 = icmp eq ptr %46, null
  br i1 %cmp38, label %if.end35.if.end73_crit_edge, label %if.end41

if.end35.if.end73_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.end41:                                         ; preds = %if.end35
  %mutex42 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 4
  %call43 = call i32 @drm_modeset_lock(ptr noundef %mutex42, ptr noundef null) #12
  %state44 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state44, align 4
  %cmp45 = icmp eq ptr %48, null
  br i1 %cmp45, label %if.end41.if.then71_crit_edge, label %if.end48

if.end41.if.then71_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71

if.end48:                                         ; preds = %if.end41
  %stream50 = getelementptr inbounds %struct.dm_crtc_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %stream50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stream50, align 4
  %cmp51 = icmp eq ptr %50, null
  br i1 %cmp51, label %if.end48.if.then71_crit_edge, label %if.end54

if.end48.if.then71_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71

if.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %switch.selectcmp = icmp eq i32 %52, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %switch.selectcmp133 = icmp eq i32 %52, 1
  %switch.select134 = select i1 %switch.selectcmp133, i32 1, i32 %switch.select
  %dsc_settings63 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 23
  %53 = ptrtoint ptr %dsc_settings63 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %switch.select134, ptr %dsc_settings63, align 4
  %dsc_force_changed = getelementptr inbounds %struct.dm_crtc_state, ptr %48, i32 0, i32 10
  %54 = ptrtoint ptr %dsc_force_changed to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %dsc_force_changed, align 2
  br label %if.then71

if.then71:                                        ; preds = %if.end54, %if.end48.if.then71_crit_edge, %if.end41.if.then71_crit_edge
  call void @drm_modeset_unlock(ptr noundef %mutex42) #12
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end35.if.end73_crit_edge, %if.end29.if.end73_crit_edge
  call void @drm_modeset_unlock(ptr noundef %connection_mutex) #12
  call void @mutex_unlock(ptr noundef %mode_config) #12
  br label %done

done:                                             ; preds = %if.end73, %lor.lhs.false.done_crit_edge, %for.inc.5.done_crit_edge, %land.lhs.true18.5.done_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then11, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then11 ], [ %size, %done ], [ -28, %if.then3 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_slice_width_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %dsc_state = alloca %struct.dcn_dsc_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dsc_state) #12
  %4 = call ptr @memset(ptr %dsc_state, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 100) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %11, i32 3520
  %tobool3.not = icmp eq ptr %res_ctx, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %cmp8 = icmp eq ptr %15, %7
  br i1 %cmp8, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tobool3.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true5.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.1, align 4
  %cmp8.1 = icmp eq ptr %19, %7
  br i1 %cmp8.1, label %land.lhs.true5.1.if.end13_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1.if.end13_crit_edge:              ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2
  %tobool3.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.2, align 4
  %tobool4.not.2 = icmp eq ptr %21, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true5.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.2, align 4
  %cmp8.2 = icmp eq ptr %23, %7
  br i1 %cmp8.2, label %land.lhs.true5.2.if.end13_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2.if.end13_crit_edge:              ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3
  %tobool3.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.3, align 4
  %tobool4.not.3 = icmp eq ptr %25, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true5.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.3, align 4
  %cmp8.3 = icmp eq ptr %27, %7
  br i1 %cmp8.3, label %land.lhs.true5.3.if.end13_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3.if.end13_crit_edge:              ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4
  %tobool3.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool4.not.4 = icmp eq ptr %29, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true5.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.4, align 4
  %cmp8.4 = icmp eq ptr %31, %7
  br i1 %cmp8.4, label %land.lhs.true5.4.if.end13_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4.if.end13_crit_edge:              ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5
  %tobool3.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream.5, align 4
  %tobool4.not.5 = icmp eq ptr %33, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true5.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.5, align 4
  %cmp8.5 = icmp ne ptr %35, %7
  %tobool11.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp8.5, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %land.lhs.true5.5.cleanup_crit_edge, label %land.lhs.true5.5.if.end13_crit_edge

land.lhs.true5.5.if.end13_crit_edge:              ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool11.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool11.not.old, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end13_crit_edge

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.5.if.end13_crit_edge, %land.lhs.true5.5.if.end13_crit_edge, %land.lhs.true5.4.if.end13_crit_edge, %land.lhs.true5.3.if.end13_crit_edge, %land.lhs.true5.2.if.end13_crit_edge, %land.lhs.true5.1.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge
  %i.06877 = phi i32 [ 5, %for.inc.5.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 1, %land.lhs.true5.1.if.end13_crit_edge ], [ 2, %land.lhs.true5.2.if.end13_crit_edge ], [ 3, %land.lhs.true5.3.if.end13_crit_edge ], [ 4, %land.lhs.true5.4.if.end13_crit_edge ], [ 5, %land.lhs.true5.5.if.end13_crit_edge ]
  %dsc14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.06877, i32 3, i32 1
  %36 = ptrtoint ptr %dsc14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc14, align 4
  %tobool15.not = icmp eq ptr %37, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dsc_read_state = getelementptr inbounds %struct.dsc_funcs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dsc_read_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsc_read_state, align 4
  call void %41(ptr noundef nonnull %37, ptr noundef nonnull %dsc_state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %dsc_slice_width = getelementptr inbounds %struct.dcn_dsc_state, ptr %dsc_state, i32 0, i32 1
  %42 = ptrtoint ptr %dsc_slice_width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsc_slice_width, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 30, ptr noundef nonnull @.str.61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not70 = icmp eq i32 %size, 0
  br i1 %tobool19.not70, label %if.end17.while.end_crit_edge, label %while.body.preheader

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.preheader
  %45 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end28.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr29, %if.end28.while.body_crit_edge ]
  %size.addr.072 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end28.while.body_crit_edge ]
  %result.071 = phi i32 [ 0, %while.body.preheader ], [ %add30, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %45)
  %cmp20 = icmp sgt i64 %45, 99
  br i1 %cmp20, label %while.body.while.end_crit_edge, label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end22:                                         ; preds = %while.body
  %add.ptr23 = getelementptr i8, ptr %call7.i.i.i, i32 %result.071
  %46 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 1565) #12
  %48 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %51 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.073, i8 %47, i32 -1226833921) #12, !srcloc !281
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not = icmp eq i32 %51, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %add.ptr29 = getelementptr i8, ptr %buf.addr.073, i32 1
  %sub = add i32 %size.addr.072, -1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  %add = add i64 %53, 1
  store i64 %add, ptr %pos, align 8
  %add30 = add nuw i32 %result.071, 1
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %result.071, %while.body.while.end_crit_edge ], [ %size, %if.end28.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end22.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true5.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %for.inc.5.cleanup_crit_edge ], [ -6, %land.lhs.true5.5.cleanup_crit_edge ], [ %51, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dsc_state) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_slice_width_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %param = alloca [1 x i32], align 4
  %param_nums = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %param, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %7 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 42) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 42, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 1, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp9 = icmp eq i8 %10, 0
  br i1 %cmp9, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %16, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %16, i32 3520
  %tobool16.not = icmp eq ptr %res_ctx, null
  br i1 %tobool16.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link, align 4
  %cmp21 = icmp eq ptr %20, %12
  br i1 %cmp21, label %land.lhs.true18.lor.lhs.false_crit_edge, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc:                                          ; preds = %land.lhs.true18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 1
  %tobool16.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool16.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream.1, align 4
  %tobool17.not.1 = icmp eq ptr %22, null
  br i1 %tobool17.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true18.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true18.1:                                ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link.1, align 4
  %cmp21.1 = icmp eq ptr %24, %12
  br i1 %cmp21.1, label %land.lhs.true18.1.lor.lhs.false_crit_edge, label %land.lhs.true18.1.for.inc.1_crit_edge

land.lhs.true18.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true18.1.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.1:                                        ; preds = %land.lhs.true18.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 2
  %tobool16.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool16.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream.2, align 4
  %tobool17.not.2 = icmp eq ptr %26, null
  br i1 %tobool17.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true18.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true18.2:                                ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.2, align 4
  %cmp21.2 = icmp eq ptr %28, %12
  br i1 %cmp21.2, label %land.lhs.true18.2.lor.lhs.false_crit_edge, label %land.lhs.true18.2.for.inc.2_crit_edge

land.lhs.true18.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true18.2.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.2:                                        ; preds = %land.lhs.true18.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 3
  %tobool16.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool16.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream.3, align 4
  %tobool17.not.3 = icmp eq ptr %30, null
  br i1 %tobool17.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true18.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true18.3:                                ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.3, align 4
  %cmp21.3 = icmp eq ptr %32, %12
  br i1 %cmp21.3, label %land.lhs.true18.3.lor.lhs.false_crit_edge, label %land.lhs.true18.3.for.inc.3_crit_edge

land.lhs.true18.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true18.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true18.3.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.3:                                        ; preds = %land.lhs.true18.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 4
  %tobool16.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool16.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream.4, align 4
  %tobool17.not.4 = icmp eq ptr %34, null
  br i1 %tobool17.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true18.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true18.4:                                ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link.4, align 4
  %cmp21.4 = icmp eq ptr %36, %12
  br i1 %cmp21.4, label %land.lhs.true18.4.lor.lhs.false_crit_edge, label %land.lhs.true18.4.for.inc.4_crit_edge

land.lhs.true18.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true18.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true18.4.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.4:                                        ; preds = %land.lhs.true18.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 5
  %tobool16.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool16.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stream.5, align 4
  %tobool17.not.5 = icmp eq ptr %38, null
  br i1 %tobool17.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true18.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true18.5:                                ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link.5, align 4
  %cmp21.5 = icmp ne ptr %40, %12
  %tobool25.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp21.5, i1 %tobool25.not, i1 false
  br i1 %or.cond, label %land.lhs.true18.5.done_crit_edge, label %land.lhs.true18.5.lor.lhs.false_crit_edge

land.lhs.true18.5.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true18.5.done_crit_edge:                 ; preds = %land.lhs.true18.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool25.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool25.not.old, label %for.inc.5.done_crit_edge, label %for.inc.5.lor.lhs.false_crit_edge

for.inc.5.lor.lhs.false_crit_edge:                ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.5.done_crit_edge:                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

lor.lhs.false:                                    ; preds = %for.inc.5.lor.lhs.false_crit_edge, %land.lhs.true18.5.lor.lhs.false_crit_edge, %land.lhs.true18.4.lor.lhs.false_crit_edge, %land.lhs.true18.3.lor.lhs.false_crit_edge, %land.lhs.true18.2.lor.lhs.false_crit_edge, %land.lhs.true18.1.lor.lhs.false_crit_edge, %land.lhs.true18.lor.lhs.false_crit_edge
  %i.0123127 = phi i32 [ 5, %for.inc.5.lor.lhs.false_crit_edge ], [ 0, %land.lhs.true18.lor.lhs.false_crit_edge ], [ 1, %land.lhs.true18.1.lor.lhs.false_crit_edge ], [ 2, %land.lhs.true18.2.lor.lhs.false_crit_edge ], [ 3, %land.lhs.true18.3.lor.lhs.false_crit_edge ], [ 4, %land.lhs.true18.4.lor.lhs.false_crit_edge ], [ 5, %land.lhs.true18.5.lor.lhs.false_crit_edge ]
  %stream26 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0123127, i32 1
  %41 = ptrtoint ptr %stream26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream26, align 4
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %lor.lhs.false.done_crit_edge, label %if.end29

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end29:                                         ; preds = %lor.lhs.false
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #12
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %call31 = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #12
  %state = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 52
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state, align 8
  %cmp32 = icmp eq ptr %44, null
  br i1 %cmp32, label %if.end29.if.end68_crit_edge, label %if.end35

if.end29.if.end68_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end35:                                         ; preds = %if.end29
  %crtc37 = getelementptr inbounds %struct.drm_connector_state, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %crtc37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crtc37, align 4
  %cmp38 = icmp eq ptr %46, null
  br i1 %cmp38, label %if.end35.if.end68_crit_edge, label %if.end41

if.end35.if.end68_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end41:                                         ; preds = %if.end35
  %mutex42 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 4
  %call43 = call i32 @drm_modeset_lock(ptr noundef %mutex42, ptr noundef null) #12
  %state44 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state44, align 4
  %cmp45 = icmp eq ptr %48, null
  br i1 %cmp45, label %if.end41.if.then66_crit_edge, label %if.end48

if.end41.if.then66_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.end48:                                         ; preds = %if.end41
  %stream50 = getelementptr inbounds %struct.dm_crtc_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %stream50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stream50, align 4
  %cmp51 = icmp eq ptr %50, null
  br i1 %cmp51, label %if.end48.if.then66_crit_edge, label %if.end54

if.end48.if.then66_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.end54:                                         ; preds = %if.end48
  %51 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp56 = icmp sgt i32 %52, 0
  br i1 %cmp56, label %if.then58, label %if.end54.if.end64_crit_edge

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %stream26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stream26, align 4
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %54, i32 0, i32 5, i32 2
  %55 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %h_addressable, align 8
  %add = add nsw i32 %52, -1
  %sub = add i32 %add, %56
  %div = udiv i32 %sub, %52
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.end54.if.end64_crit_edge
  %.sink = phi i32 [ %div, %if.then58 ], [ 0, %if.end54.if.end64_crit_edge ]
  %57 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 23, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %57, align 4
  %dsc_force_changed = getelementptr inbounds %struct.dm_crtc_state, ptr %48, i32 0, i32 10
  %59 = ptrtoint ptr %dsc_force_changed to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %dsc_force_changed, align 2
  br label %if.then66

if.then66:                                        ; preds = %if.end64, %if.end48.if.then66_crit_edge, %if.end41.if.then66_crit_edge
  call void @drm_modeset_unlock(ptr noundef %mutex42) #12
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end35.if.end68_crit_edge, %if.end29.if.end68_crit_edge
  call void @drm_modeset_unlock(ptr noundef %connection_mutex) #12
  call void @mutex_unlock(ptr noundef %mode_config) #12
  br label %done

done:                                             ; preds = %if.end68, %lor.lhs.false.done_crit_edge, %for.inc.5.done_crit_edge, %land.lhs.true18.5.done_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then11, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then11 ], [ %size, %done ], [ -28, %if.then3 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_slice_height_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %dsc_state = alloca %struct.dcn_dsc_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dsc_state) #12
  %4 = call ptr @memset(ptr %dsc_state, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 100) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %11, i32 3520
  %tobool3.not = icmp eq ptr %res_ctx, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %cmp8 = icmp eq ptr %15, %7
  br i1 %cmp8, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tobool3.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true5.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.1, align 4
  %cmp8.1 = icmp eq ptr %19, %7
  br i1 %cmp8.1, label %land.lhs.true5.1.if.end13_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1.if.end13_crit_edge:              ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2
  %tobool3.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.2, align 4
  %tobool4.not.2 = icmp eq ptr %21, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true5.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.2, align 4
  %cmp8.2 = icmp eq ptr %23, %7
  br i1 %cmp8.2, label %land.lhs.true5.2.if.end13_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2.if.end13_crit_edge:              ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3
  %tobool3.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.3, align 4
  %tobool4.not.3 = icmp eq ptr %25, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true5.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.3, align 4
  %cmp8.3 = icmp eq ptr %27, %7
  br i1 %cmp8.3, label %land.lhs.true5.3.if.end13_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3.if.end13_crit_edge:              ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4
  %tobool3.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool4.not.4 = icmp eq ptr %29, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true5.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.4, align 4
  %cmp8.4 = icmp eq ptr %31, %7
  br i1 %cmp8.4, label %land.lhs.true5.4.if.end13_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4.if.end13_crit_edge:              ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5
  %tobool3.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream.5, align 4
  %tobool4.not.5 = icmp eq ptr %33, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true5.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.5, align 4
  %cmp8.5 = icmp ne ptr %35, %7
  %tobool11.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp8.5, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %land.lhs.true5.5.cleanup_crit_edge, label %land.lhs.true5.5.if.end13_crit_edge

land.lhs.true5.5.if.end13_crit_edge:              ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool11.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool11.not.old, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end13_crit_edge

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.5.if.end13_crit_edge, %land.lhs.true5.5.if.end13_crit_edge, %land.lhs.true5.4.if.end13_crit_edge, %land.lhs.true5.3.if.end13_crit_edge, %land.lhs.true5.2.if.end13_crit_edge, %land.lhs.true5.1.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge
  %i.06877 = phi i32 [ 5, %for.inc.5.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 1, %land.lhs.true5.1.if.end13_crit_edge ], [ 2, %land.lhs.true5.2.if.end13_crit_edge ], [ 3, %land.lhs.true5.3.if.end13_crit_edge ], [ 4, %land.lhs.true5.4.if.end13_crit_edge ], [ 5, %land.lhs.true5.5.if.end13_crit_edge ]
  %dsc14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.06877, i32 3, i32 1
  %36 = ptrtoint ptr %dsc14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc14, align 4
  %tobool15.not = icmp eq ptr %37, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dsc_read_state = getelementptr inbounds %struct.dsc_funcs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dsc_read_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsc_read_state, align 4
  call void %41(ptr noundef nonnull %37, ptr noundef nonnull %dsc_state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %dsc_slice_height = getelementptr inbounds %struct.dcn_dsc_state, ptr %dsc_state, i32 0, i32 3
  %42 = ptrtoint ptr %dsc_slice_height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsc_slice_height, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 30, ptr noundef nonnull @.str.61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not70 = icmp eq i32 %size, 0
  br i1 %tobool19.not70, label %if.end17.while.end_crit_edge, label %while.body.preheader

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.preheader
  %45 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end28.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr29, %if.end28.while.body_crit_edge ]
  %size.addr.072 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end28.while.body_crit_edge ]
  %result.071 = phi i32 [ 0, %while.body.preheader ], [ %add30, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %45)
  %cmp20 = icmp sgt i64 %45, 99
  br i1 %cmp20, label %while.body.while.end_crit_edge, label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end22:                                         ; preds = %while.body
  %add.ptr23 = getelementptr i8, ptr %call7.i.i.i, i32 %result.071
  %46 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 1750) #12
  %48 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %51 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.073, i8 %47, i32 -1226833921) #12, !srcloc !282
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not = icmp eq i32 %51, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %add.ptr29 = getelementptr i8, ptr %buf.addr.073, i32 1
  %sub = add i32 %size.addr.072, -1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  %add = add i64 %53, 1
  store i64 %add, ptr %pos, align 8
  %add30 = add nuw i32 %result.071, 1
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %result.071, %while.body.while.end_crit_edge ], [ %size, %if.end28.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end22.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true5.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %for.inc.5.cleanup_crit_edge ], [ -6, %land.lhs.true5.5.cleanup_crit_edge ], [ %51, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dsc_state) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_slice_height_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %param_nums = alloca i8, align 1
  %param = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %6 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %param_nums, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 42) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 42, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 1, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp9 = icmp eq i8 %10, 0
  br i1 %cmp9, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %16, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %16, i32 3520
  %tobool16.not = icmp eq ptr %res_ctx, null
  br i1 %tobool16.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link, align 4
  %cmp21 = icmp eq ptr %20, %12
  br i1 %cmp21, label %land.lhs.true18.lor.lhs.false_crit_edge, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc:                                          ; preds = %land.lhs.true18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 1
  %tobool16.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool16.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream.1, align 4
  %tobool17.not.1 = icmp eq ptr %22, null
  br i1 %tobool17.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true18.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true18.1:                                ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link.1, align 4
  %cmp21.1 = icmp eq ptr %24, %12
  br i1 %cmp21.1, label %land.lhs.true18.1.lor.lhs.false_crit_edge, label %land.lhs.true18.1.for.inc.1_crit_edge

land.lhs.true18.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true18.1.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.1:                                        ; preds = %land.lhs.true18.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 2
  %tobool16.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool16.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream.2, align 4
  %tobool17.not.2 = icmp eq ptr %26, null
  br i1 %tobool17.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true18.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true18.2:                                ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.2, align 4
  %cmp21.2 = icmp eq ptr %28, %12
  br i1 %cmp21.2, label %land.lhs.true18.2.lor.lhs.false_crit_edge, label %land.lhs.true18.2.for.inc.2_crit_edge

land.lhs.true18.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true18.2.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.2:                                        ; preds = %land.lhs.true18.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 3
  %tobool16.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool16.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream.3, align 4
  %tobool17.not.3 = icmp eq ptr %30, null
  br i1 %tobool17.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true18.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true18.3:                                ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.3, align 4
  %cmp21.3 = icmp eq ptr %32, %12
  br i1 %cmp21.3, label %land.lhs.true18.3.lor.lhs.false_crit_edge, label %land.lhs.true18.3.for.inc.3_crit_edge

land.lhs.true18.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true18.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true18.3.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.3:                                        ; preds = %land.lhs.true18.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 4
  %tobool16.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool16.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream.4, align 4
  %tobool17.not.4 = icmp eq ptr %34, null
  br i1 %tobool17.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true18.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true18.4:                                ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link.4, align 4
  %cmp21.4 = icmp eq ptr %36, %12
  br i1 %cmp21.4, label %land.lhs.true18.4.lor.lhs.false_crit_edge, label %land.lhs.true18.4.for.inc.4_crit_edge

land.lhs.true18.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true18.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true18.4.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.4:                                        ; preds = %land.lhs.true18.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 5
  %tobool16.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool16.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stream.5, align 4
  %tobool17.not.5 = icmp eq ptr %38, null
  br i1 %tobool17.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true18.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true18.5:                                ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link.5, align 4
  %cmp21.5 = icmp ne ptr %40, %12
  %tobool25.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp21.5, i1 %tobool25.not, i1 false
  br i1 %or.cond, label %land.lhs.true18.5.done_crit_edge, label %land.lhs.true18.5.lor.lhs.false_crit_edge

land.lhs.true18.5.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true18.5.done_crit_edge:                 ; preds = %land.lhs.true18.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool25.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool25.not.old, label %for.inc.5.done_crit_edge, label %for.inc.5.lor.lhs.false_crit_edge

for.inc.5.lor.lhs.false_crit_edge:                ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.5.done_crit_edge:                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

lor.lhs.false:                                    ; preds = %for.inc.5.lor.lhs.false_crit_edge, %land.lhs.true18.5.lor.lhs.false_crit_edge, %land.lhs.true18.4.lor.lhs.false_crit_edge, %land.lhs.true18.3.lor.lhs.false_crit_edge, %land.lhs.true18.2.lor.lhs.false_crit_edge, %land.lhs.true18.1.lor.lhs.false_crit_edge, %land.lhs.true18.lor.lhs.false_crit_edge
  %i.0123127 = phi i32 [ 5, %for.inc.5.lor.lhs.false_crit_edge ], [ 0, %land.lhs.true18.lor.lhs.false_crit_edge ], [ 1, %land.lhs.true18.1.lor.lhs.false_crit_edge ], [ 2, %land.lhs.true18.2.lor.lhs.false_crit_edge ], [ 3, %land.lhs.true18.3.lor.lhs.false_crit_edge ], [ 4, %land.lhs.true18.4.lor.lhs.false_crit_edge ], [ 5, %land.lhs.true18.5.lor.lhs.false_crit_edge ]
  %stream26 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0123127, i32 1
  %41 = ptrtoint ptr %stream26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream26, align 4
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %lor.lhs.false.done_crit_edge, label %if.end29

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end29:                                         ; preds = %lor.lhs.false
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #12
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %call31 = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #12
  %state = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 52
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state, align 8
  %cmp32 = icmp eq ptr %44, null
  br i1 %cmp32, label %if.end29.if.end68_crit_edge, label %if.end35

if.end29.if.end68_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end35:                                         ; preds = %if.end29
  %crtc37 = getelementptr inbounds %struct.drm_connector_state, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %crtc37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crtc37, align 4
  %cmp38 = icmp eq ptr %46, null
  br i1 %cmp38, label %if.end35.if.end68_crit_edge, label %if.end41

if.end35.if.end68_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end41:                                         ; preds = %if.end35
  %mutex42 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 4
  %call43 = call i32 @drm_modeset_lock(ptr noundef %mutex42, ptr noundef null) #12
  %state44 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state44, align 4
  %cmp45 = icmp eq ptr %48, null
  br i1 %cmp45, label %if.end41.if.then66_crit_edge, label %if.end48

if.end41.if.then66_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.end48:                                         ; preds = %if.end41
  %stream50 = getelementptr inbounds %struct.dm_crtc_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %stream50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stream50, align 4
  %cmp51 = icmp eq ptr %50, null
  br i1 %cmp51, label %if.end48.if.then66_crit_edge, label %if.end54

if.end48.if.then66_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.end54:                                         ; preds = %if.end48
  %51 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp56 = icmp sgt i32 %52, 0
  br i1 %cmp56, label %if.then58, label %if.end54.if.end64_crit_edge

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %stream26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stream26, align 4
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %54, i32 0, i32 5, i32 8
  %55 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %v_addressable, align 8
  %add = add nsw i32 %52, -1
  %sub = add i32 %add, %56
  %div = udiv i32 %sub, %52
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.end54.if.end64_crit_edge
  %.sink = phi i32 [ %div, %if.then58 ], [ 0, %if.end54.if.end64_crit_edge ]
  %57 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 23, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %57, align 4
  %dsc_force_changed = getelementptr inbounds %struct.dm_crtc_state, ptr %48, i32 0, i32 10
  %59 = ptrtoint ptr %dsc_force_changed to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %dsc_force_changed, align 2
  br label %if.then66

if.then66:                                        ; preds = %if.end64, %if.end48.if.then66_crit_edge, %if.end41.if.then66_crit_edge
  call void @drm_modeset_unlock(ptr noundef %mutex42) #12
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end35.if.end68_crit_edge, %if.end29.if.end68_crit_edge
  call void @drm_modeset_unlock(ptr noundef %connection_mutex) #12
  call void @mutex_unlock(ptr noundef %mode_config) #12
  br label %done

done:                                             ; preds = %if.end68, %lor.lhs.false.done_crit_edge, %for.inc.5.done_crit_edge, %land.lhs.true18.5.done_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then11, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then11 ], [ %size, %done ], [ -28, %if.then3 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_bits_per_pixel_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %dsc_state = alloca %struct.dcn_dsc_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dsc_state) #12
  %4 = call ptr @memset(ptr %dsc_state, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 100) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %11, i32 3520
  %tobool3.not = icmp eq ptr %res_ctx, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %cmp8 = icmp eq ptr %15, %7
  br i1 %cmp8, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tobool3.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true5.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.1, align 4
  %cmp8.1 = icmp eq ptr %19, %7
  br i1 %cmp8.1, label %land.lhs.true5.1.if.end13_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1.if.end13_crit_edge:              ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2
  %tobool3.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.2, align 4
  %tobool4.not.2 = icmp eq ptr %21, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true5.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.2, align 4
  %cmp8.2 = icmp eq ptr %23, %7
  br i1 %cmp8.2, label %land.lhs.true5.2.if.end13_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2.if.end13_crit_edge:              ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3
  %tobool3.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.3, align 4
  %tobool4.not.3 = icmp eq ptr %25, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true5.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.3, align 4
  %cmp8.3 = icmp eq ptr %27, %7
  br i1 %cmp8.3, label %land.lhs.true5.3.if.end13_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3.if.end13_crit_edge:              ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4
  %tobool3.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool4.not.4 = icmp eq ptr %29, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true5.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.4, align 4
  %cmp8.4 = icmp eq ptr %31, %7
  br i1 %cmp8.4, label %land.lhs.true5.4.if.end13_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4.if.end13_crit_edge:              ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5
  %tobool3.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream.5, align 4
  %tobool4.not.5 = icmp eq ptr %33, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true5.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.5, align 4
  %cmp8.5 = icmp ne ptr %35, %7
  %tobool11.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp8.5, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %land.lhs.true5.5.cleanup_crit_edge, label %land.lhs.true5.5.if.end13_crit_edge

land.lhs.true5.5.if.end13_crit_edge:              ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool11.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool11.not.old, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end13_crit_edge

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.5.if.end13_crit_edge, %land.lhs.true5.5.if.end13_crit_edge, %land.lhs.true5.4.if.end13_crit_edge, %land.lhs.true5.3.if.end13_crit_edge, %land.lhs.true5.2.if.end13_crit_edge, %land.lhs.true5.1.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge
  %i.06877 = phi i32 [ 5, %for.inc.5.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 1, %land.lhs.true5.1.if.end13_crit_edge ], [ 2, %land.lhs.true5.2.if.end13_crit_edge ], [ 3, %land.lhs.true5.3.if.end13_crit_edge ], [ 4, %land.lhs.true5.4.if.end13_crit_edge ], [ 5, %land.lhs.true5.5.if.end13_crit_edge ]
  %dsc14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.06877, i32 3, i32 1
  %36 = ptrtoint ptr %dsc14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc14, align 4
  %tobool15.not = icmp eq ptr %37, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dsc_read_state = getelementptr inbounds %struct.dsc_funcs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dsc_read_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsc_read_state, align 4
  call void %41(ptr noundef nonnull %37, ptr noundef nonnull %dsc_state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %dsc_bits_per_pixel = getelementptr inbounds %struct.dcn_dsc_state, ptr %dsc_state, i32 0, i32 2
  %42 = ptrtoint ptr %dsc_bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsc_bits_per_pixel, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 30, ptr noundef nonnull @.str.61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not70 = icmp eq i32 %size, 0
  br i1 %tobool19.not70, label %if.end17.while.end_crit_edge, label %while.body.preheader

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.preheader
  %45 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end28.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr29, %if.end28.while.body_crit_edge ]
  %size.addr.072 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end28.while.body_crit_edge ]
  %result.071 = phi i32 [ 0, %while.body.preheader ], [ %add30, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %45)
  %cmp20 = icmp sgt i64 %45, 99
  br i1 %cmp20, label %while.body.while.end_crit_edge, label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end22:                                         ; preds = %while.body
  %add.ptr23 = getelementptr i8, ptr %call7.i.i.i, i32 %result.071
  %46 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 1931) #12
  %48 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %51 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.073, i8 %47, i32 -1226833921) #12, !srcloc !283
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not = icmp eq i32 %51, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %add.ptr29 = getelementptr i8, ptr %buf.addr.073, i32 1
  %sub = add i32 %size.addr.072, -1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  %add = add i64 %53, 1
  store i64 %add, ptr %pos, align 8
  %add30 = add nuw i32 %result.071, 1
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %result.071, %while.body.while.end_crit_edge ], [ %size, %if.end28.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end22.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true5.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %for.inc.5.cleanup_crit_edge ], [ -6, %land.lhs.true5.5.cleanup_crit_edge ], [ %51, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dsc_state) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_bits_per_pixel_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %param_nums = alloca i8, align 1
  %param = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %6 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %param_nums, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 42) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 42, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 1, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp9 = icmp eq i8 %10, 0
  br i1 %cmp9, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %16, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %16, i32 3520
  %tobool16.not = icmp eq ptr %res_ctx, null
  br i1 %tobool16.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link, align 4
  %cmp21 = icmp eq ptr %20, %12
  br i1 %cmp21, label %land.lhs.true18.lor.lhs.false_crit_edge, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc:                                          ; preds = %land.lhs.true18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 1
  %tobool16.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool16.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stream.1, align 4
  %tobool17.not.1 = icmp eq ptr %22, null
  br i1 %tobool17.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true18.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true18.1:                                ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link.1, align 4
  %cmp21.1 = icmp eq ptr %24, %12
  br i1 %cmp21.1, label %land.lhs.true18.1.lor.lhs.false_crit_edge, label %land.lhs.true18.1.for.inc.1_crit_edge

land.lhs.true18.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true18.1.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.1:                                        ; preds = %land.lhs.true18.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 2
  %tobool16.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool16.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream.2, align 4
  %tobool17.not.2 = icmp eq ptr %26, null
  br i1 %tobool17.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true18.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true18.2:                                ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.2, align 4
  %cmp21.2 = icmp eq ptr %28, %12
  br i1 %cmp21.2, label %land.lhs.true18.2.lor.lhs.false_crit_edge, label %land.lhs.true18.2.for.inc.2_crit_edge

land.lhs.true18.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true18.2.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.2:                                        ; preds = %land.lhs.true18.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 3
  %tobool16.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool16.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream.3, align 4
  %tobool17.not.3 = icmp eq ptr %30, null
  br i1 %tobool17.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true18.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true18.3:                                ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.3, align 4
  %cmp21.3 = icmp eq ptr %32, %12
  br i1 %cmp21.3, label %land.lhs.true18.3.lor.lhs.false_crit_edge, label %land.lhs.true18.3.for.inc.3_crit_edge

land.lhs.true18.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true18.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true18.3.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.3:                                        ; preds = %land.lhs.true18.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 4
  %tobool16.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool16.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stream.4, align 4
  %tobool17.not.4 = icmp eq ptr %34, null
  br i1 %tobool17.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true18.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true18.4:                                ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link.4, align 4
  %cmp21.4 = icmp eq ptr %36, %12
  br i1 %cmp21.4, label %land.lhs.true18.4.lor.lhs.false_crit_edge, label %land.lhs.true18.4.for.inc.4_crit_edge

land.lhs.true18.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true18.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true18.4.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.4:                                        ; preds = %land.lhs.true18.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 5
  %tobool16.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool16.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %16, i32 0, i32 4, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stream.5, align 4
  %tobool17.not.5 = icmp eq ptr %38, null
  br i1 %tobool17.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true18.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true18.5:                                ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link.5, align 4
  %cmp21.5 = icmp ne ptr %40, %12
  %tobool25.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp21.5, i1 %tobool25.not, i1 false
  br i1 %or.cond, label %land.lhs.true18.5.done_crit_edge, label %land.lhs.true18.5.lor.lhs.false_crit_edge

land.lhs.true18.5.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true18.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true18.5.done_crit_edge:                 ; preds = %land.lhs.true18.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool25.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool25.not.old, label %for.inc.5.done_crit_edge, label %for.inc.5.lor.lhs.false_crit_edge

for.inc.5.lor.lhs.false_crit_edge:                ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

for.inc.5.done_crit_edge:                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

lor.lhs.false:                                    ; preds = %for.inc.5.lor.lhs.false_crit_edge, %land.lhs.true18.5.lor.lhs.false_crit_edge, %land.lhs.true18.4.lor.lhs.false_crit_edge, %land.lhs.true18.3.lor.lhs.false_crit_edge, %land.lhs.true18.2.lor.lhs.false_crit_edge, %land.lhs.true18.1.lor.lhs.false_crit_edge, %land.lhs.true18.lor.lhs.false_crit_edge
  %i.0111115 = phi i32 [ 5, %for.inc.5.lor.lhs.false_crit_edge ], [ 0, %land.lhs.true18.lor.lhs.false_crit_edge ], [ 1, %land.lhs.true18.1.lor.lhs.false_crit_edge ], [ 2, %land.lhs.true18.2.lor.lhs.false_crit_edge ], [ 3, %land.lhs.true18.3.lor.lhs.false_crit_edge ], [ 4, %land.lhs.true18.4.lor.lhs.false_crit_edge ], [ 5, %land.lhs.true18.5.lor.lhs.false_crit_edge ]
  %stream26 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.0111115, i32 1
  %41 = ptrtoint ptr %stream26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream26, align 4
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %lor.lhs.false.done_crit_edge, label %if.end29

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end29:                                         ; preds = %lor.lhs.false
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #12
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %call31 = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #12
  %state = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 52
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %state, align 8
  %cmp32 = icmp eq ptr %44, null
  br i1 %cmp32, label %if.end29.if.end59_crit_edge, label %if.end35

if.end29.if.end59_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end35:                                         ; preds = %if.end29
  %crtc37 = getelementptr inbounds %struct.drm_connector_state, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %crtc37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crtc37, align 4
  %cmp38 = icmp eq ptr %46, null
  br i1 %cmp38, label %if.end35.if.end59_crit_edge, label %if.end41

if.end35.if.end59_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end41:                                         ; preds = %if.end35
  %mutex42 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 4
  %call43 = call i32 @drm_modeset_lock(ptr noundef %mutex42, ptr noundef null) #12
  %state44 = getelementptr inbounds %struct.drm_crtc, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %state44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state44, align 4
  %cmp45 = icmp eq ptr %48, null
  br i1 %cmp45, label %if.end41.if.then57_crit_edge, label %if.end48

if.end41.if.then57_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

if.end48:                                         ; preds = %if.end41
  %stream50 = getelementptr inbounds %struct.dm_crtc_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %stream50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stream50, align 4
  %cmp51 = icmp eq ptr %50, null
  br i1 %cmp51, label %if.end48.if.then57_crit_edge, label %if.end54

if.end48.if.then57_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57

if.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %param, align 4
  %dsc_bits_per_pixel = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 23, i32 3
  %53 = ptrtoint ptr %dsc_bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dsc_bits_per_pixel, align 4
  %dsc_force_changed = getelementptr inbounds %struct.dm_crtc_state, ptr %48, i32 0, i32 10
  %54 = ptrtoint ptr %dsc_force_changed to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %dsc_force_changed, align 2
  br label %if.then57

if.then57:                                        ; preds = %if.end54, %if.end48.if.then57_crit_edge, %if.end41.if.then57_crit_edge
  call void @drm_modeset_unlock(ptr noundef %mutex42) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end35.if.end59_crit_edge, %if.end29.if.end59_crit_edge
  call void @drm_modeset_unlock(ptr noundef %connection_mutex) #12
  call void @mutex_unlock(ptr noundef %mode_config) #12
  br label %done

done:                                             ; preds = %if.end59, %lor.lhs.false.done_crit_edge, %for.inc.5.done_crit_edge, %land.lhs.true18.5.done_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then11, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then11 ], [ %size, %done ], [ -28, %if.then3 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_pic_width_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %dsc_state = alloca %struct.dcn_dsc_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dsc_state) #12
  %4 = call ptr @memset(ptr %dsc_state, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 100) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %11, i32 3520
  %tobool3.not = icmp eq ptr %res_ctx, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %cmp8 = icmp eq ptr %15, %7
  br i1 %cmp8, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tobool3.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true5.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.1, align 4
  %cmp8.1 = icmp eq ptr %19, %7
  br i1 %cmp8.1, label %land.lhs.true5.1.if.end13_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1.if.end13_crit_edge:              ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2
  %tobool3.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.2, align 4
  %tobool4.not.2 = icmp eq ptr %21, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true5.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.2, align 4
  %cmp8.2 = icmp eq ptr %23, %7
  br i1 %cmp8.2, label %land.lhs.true5.2.if.end13_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2.if.end13_crit_edge:              ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3
  %tobool3.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.3, align 4
  %tobool4.not.3 = icmp eq ptr %25, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true5.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.3, align 4
  %cmp8.3 = icmp eq ptr %27, %7
  br i1 %cmp8.3, label %land.lhs.true5.3.if.end13_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3.if.end13_crit_edge:              ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4
  %tobool3.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool4.not.4 = icmp eq ptr %29, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true5.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.4, align 4
  %cmp8.4 = icmp eq ptr %31, %7
  br i1 %cmp8.4, label %land.lhs.true5.4.if.end13_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4.if.end13_crit_edge:              ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5
  %tobool3.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream.5, align 4
  %tobool4.not.5 = icmp eq ptr %33, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true5.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.5, align 4
  %cmp8.5 = icmp ne ptr %35, %7
  %tobool11.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp8.5, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %land.lhs.true5.5.cleanup_crit_edge, label %land.lhs.true5.5.if.end13_crit_edge

land.lhs.true5.5.if.end13_crit_edge:              ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool11.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool11.not.old, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end13_crit_edge

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.5.if.end13_crit_edge, %land.lhs.true5.5.if.end13_crit_edge, %land.lhs.true5.4.if.end13_crit_edge, %land.lhs.true5.3.if.end13_crit_edge, %land.lhs.true5.2.if.end13_crit_edge, %land.lhs.true5.1.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge
  %i.06877 = phi i32 [ 5, %for.inc.5.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 1, %land.lhs.true5.1.if.end13_crit_edge ], [ 2, %land.lhs.true5.2.if.end13_crit_edge ], [ 3, %land.lhs.true5.3.if.end13_crit_edge ], [ 4, %land.lhs.true5.4.if.end13_crit_edge ], [ 5, %land.lhs.true5.5.if.end13_crit_edge ]
  %dsc14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.06877, i32 3, i32 1
  %36 = ptrtoint ptr %dsc14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc14, align 4
  %tobool15.not = icmp eq ptr %37, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dsc_read_state = getelementptr inbounds %struct.dsc_funcs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dsc_read_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsc_read_state, align 4
  call void %41(ptr noundef nonnull %37, ptr noundef nonnull %dsc_state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %dsc_pic_width = getelementptr inbounds %struct.dcn_dsc_state, ptr %dsc_state, i32 0, i32 4
  %42 = ptrtoint ptr %dsc_pic_width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsc_pic_width, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 30, ptr noundef nonnull @.str.61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not70 = icmp eq i32 %size, 0
  br i1 %tobool19.not70, label %if.end17.while.end_crit_edge, label %while.body.preheader

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.preheader
  %45 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end28.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr29, %if.end28.while.body_crit_edge ]
  %size.addr.072 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end28.while.body_crit_edge ]
  %result.071 = phi i32 [ 0, %while.body.preheader ], [ %add30, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %45)
  %cmp20 = icmp sgt i64 %45, 99
  br i1 %cmp20, label %while.body.while.end_crit_edge, label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end22:                                         ; preds = %while.body
  %add.ptr23 = getelementptr i8, ptr %call7.i.i.i, i32 %result.071
  %46 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 2107) #12
  %48 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %51 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.073, i8 %47, i32 -1226833921) #12, !srcloc !284
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not = icmp eq i32 %51, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %add.ptr29 = getelementptr i8, ptr %buf.addr.073, i32 1
  %sub = add i32 %size.addr.072, -1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  %add = add i64 %53, 1
  store i64 %add, ptr %pos, align 8
  %add30 = add nuw i32 %result.071, 1
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %result.071, %while.body.while.end_crit_edge ], [ %size, %if.end28.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end22.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true5.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %for.inc.5.cleanup_crit_edge ], [ -6, %land.lhs.true5.5.cleanup_crit_edge ], [ %51, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dsc_state) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_pic_height_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %dsc_state = alloca %struct.dcn_dsc_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dsc_state) #12
  %4 = call ptr @memset(ptr %dsc_state, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 100) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %11, i32 3520
  %tobool3.not = icmp eq ptr %res_ctx, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %cmp8 = icmp eq ptr %15, %7
  br i1 %cmp8, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tobool3.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true5.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.1, align 4
  %cmp8.1 = icmp eq ptr %19, %7
  br i1 %cmp8.1, label %land.lhs.true5.1.if.end13_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1.if.end13_crit_edge:              ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2
  %tobool3.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.2, align 4
  %tobool4.not.2 = icmp eq ptr %21, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true5.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.2, align 4
  %cmp8.2 = icmp eq ptr %23, %7
  br i1 %cmp8.2, label %land.lhs.true5.2.if.end13_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2.if.end13_crit_edge:              ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3
  %tobool3.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.3, align 4
  %tobool4.not.3 = icmp eq ptr %25, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true5.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.3, align 4
  %cmp8.3 = icmp eq ptr %27, %7
  br i1 %cmp8.3, label %land.lhs.true5.3.if.end13_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3.if.end13_crit_edge:              ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4
  %tobool3.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool4.not.4 = icmp eq ptr %29, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true5.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.4, align 4
  %cmp8.4 = icmp eq ptr %31, %7
  br i1 %cmp8.4, label %land.lhs.true5.4.if.end13_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4.if.end13_crit_edge:              ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5
  %tobool3.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream.5, align 4
  %tobool4.not.5 = icmp eq ptr %33, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true5.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.5, align 4
  %cmp8.5 = icmp ne ptr %35, %7
  %tobool11.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp8.5, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %land.lhs.true5.5.cleanup_crit_edge, label %land.lhs.true5.5.if.end13_crit_edge

land.lhs.true5.5.if.end13_crit_edge:              ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool11.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool11.not.old, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end13_crit_edge

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.5.if.end13_crit_edge, %land.lhs.true5.5.if.end13_crit_edge, %land.lhs.true5.4.if.end13_crit_edge, %land.lhs.true5.3.if.end13_crit_edge, %land.lhs.true5.2.if.end13_crit_edge, %land.lhs.true5.1.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge
  %i.06877 = phi i32 [ 5, %for.inc.5.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 1, %land.lhs.true5.1.if.end13_crit_edge ], [ 2, %land.lhs.true5.2.if.end13_crit_edge ], [ 3, %land.lhs.true5.3.if.end13_crit_edge ], [ 4, %land.lhs.true5.4.if.end13_crit_edge ], [ 5, %land.lhs.true5.5.if.end13_crit_edge ]
  %dsc14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.06877, i32 3, i32 1
  %36 = ptrtoint ptr %dsc14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc14, align 4
  %tobool15.not = icmp eq ptr %37, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dsc_read_state = getelementptr inbounds %struct.dsc_funcs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dsc_read_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsc_read_state, align 4
  call void %41(ptr noundef nonnull %37, ptr noundef nonnull %dsc_state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %dsc_pic_height = getelementptr inbounds %struct.dcn_dsc_state, ptr %dsc_state, i32 0, i32 5
  %42 = ptrtoint ptr %dsc_pic_height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsc_pic_height, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 30, ptr noundef nonnull @.str.61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not70 = icmp eq i32 %size, 0
  br i1 %tobool19.not70, label %if.end17.while.end_crit_edge, label %while.body.preheader

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.preheader
  %45 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end28.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr29, %if.end28.while.body_crit_edge ]
  %size.addr.072 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end28.while.body_crit_edge ]
  %result.071 = phi i32 [ 0, %while.body.preheader ], [ %add30, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %45)
  %cmp20 = icmp sgt i64 %45, 99
  br i1 %cmp20, label %while.body.while.end_crit_edge, label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end22:                                         ; preds = %while.body
  %add.ptr23 = getelementptr i8, ptr %call7.i.i.i, i32 %result.071
  %46 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 2164) #12
  %48 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %51 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.073, i8 %47, i32 -1226833921) #12, !srcloc !285
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not = icmp eq i32 %51, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %add.ptr29 = getelementptr i8, ptr %buf.addr.073, i32 1
  %sub = add i32 %size.addr.072, -1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  %add = add i64 %53, 1
  store i64 %add, ptr %pos, align 8
  %add30 = add nuw i32 %result.071, 1
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %result.071, %while.body.while.end_crit_edge ], [ %size, %if.end28.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end22.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true5.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %for.inc.5.cleanup_crit_edge ], [ -6, %land.lhs.true5.5.cleanup_crit_edge ], [ %51, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dsc_state) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_chunk_size_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %dsc_state = alloca %struct.dcn_dsc_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dsc_state) #12
  %4 = call ptr @memset(ptr %dsc_state, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 100) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %11, i32 3520
  %tobool3.not = icmp eq ptr %res_ctx, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %cmp8 = icmp eq ptr %15, %7
  br i1 %cmp8, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tobool3.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true5.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.1, align 4
  %cmp8.1 = icmp eq ptr %19, %7
  br i1 %cmp8.1, label %land.lhs.true5.1.if.end13_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1.if.end13_crit_edge:              ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2
  %tobool3.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.2, align 4
  %tobool4.not.2 = icmp eq ptr %21, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true5.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.2, align 4
  %cmp8.2 = icmp eq ptr %23, %7
  br i1 %cmp8.2, label %land.lhs.true5.2.if.end13_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2.if.end13_crit_edge:              ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3
  %tobool3.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.3, align 4
  %tobool4.not.3 = icmp eq ptr %25, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true5.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.3, align 4
  %cmp8.3 = icmp eq ptr %27, %7
  br i1 %cmp8.3, label %land.lhs.true5.3.if.end13_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3.if.end13_crit_edge:              ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4
  %tobool3.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool4.not.4 = icmp eq ptr %29, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true5.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.4, align 4
  %cmp8.4 = icmp eq ptr %31, %7
  br i1 %cmp8.4, label %land.lhs.true5.4.if.end13_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4.if.end13_crit_edge:              ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5
  %tobool3.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream.5, align 4
  %tobool4.not.5 = icmp eq ptr %33, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true5.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.5, align 4
  %cmp8.5 = icmp ne ptr %35, %7
  %tobool11.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp8.5, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %land.lhs.true5.5.cleanup_crit_edge, label %land.lhs.true5.5.if.end13_crit_edge

land.lhs.true5.5.if.end13_crit_edge:              ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool11.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool11.not.old, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end13_crit_edge

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.5.if.end13_crit_edge, %land.lhs.true5.5.if.end13_crit_edge, %land.lhs.true5.4.if.end13_crit_edge, %land.lhs.true5.3.if.end13_crit_edge, %land.lhs.true5.2.if.end13_crit_edge, %land.lhs.true5.1.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge
  %i.06877 = phi i32 [ 5, %for.inc.5.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 1, %land.lhs.true5.1.if.end13_crit_edge ], [ 2, %land.lhs.true5.2.if.end13_crit_edge ], [ 3, %land.lhs.true5.3.if.end13_crit_edge ], [ 4, %land.lhs.true5.4.if.end13_crit_edge ], [ 5, %land.lhs.true5.5.if.end13_crit_edge ]
  %dsc14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.06877, i32 3, i32 1
  %36 = ptrtoint ptr %dsc14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc14, align 4
  %tobool15.not = icmp eq ptr %37, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dsc_read_state = getelementptr inbounds %struct.dsc_funcs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dsc_read_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsc_read_state, align 4
  call void %41(ptr noundef nonnull %37, ptr noundef nonnull %dsc_state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %dsc_chunk_size = getelementptr inbounds %struct.dcn_dsc_state, ptr %dsc_state, i32 0, i32 7
  %42 = ptrtoint ptr %dsc_chunk_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsc_chunk_size, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 30, ptr noundef nonnull @.str.61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not70 = icmp eq i32 %size, 0
  br i1 %tobool19.not70, label %if.end17.while.end_crit_edge, label %while.body.preheader

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.preheader
  %45 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end28.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr29, %if.end28.while.body_crit_edge ]
  %size.addr.072 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end28.while.body_crit_edge ]
  %result.071 = phi i32 [ 0, %while.body.preheader ], [ %add30, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %45)
  %cmp20 = icmp sgt i64 %45, 99
  br i1 %cmp20, label %while.body.while.end_crit_edge, label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end22:                                         ; preds = %while.body
  %add.ptr23 = getelementptr i8, ptr %call7.i.i.i, i32 %result.071
  %46 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 2236) #12
  %48 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %51 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.073, i8 %47, i32 -1226833921) #12, !srcloc !286
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not = icmp eq i32 %51, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %add.ptr29 = getelementptr i8, ptr %buf.addr.073, i32 1
  %sub = add i32 %size.addr.072, -1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  %add = add i64 %53, 1
  store i64 %add, ptr %pos, align 8
  %add30 = add nuw i32 %result.071, 1
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %result.071, %while.body.while.end_crit_edge ], [ %size, %if.end28.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end22.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true5.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %for.inc.5.cleanup_crit_edge ], [ -6, %land.lhs.true5.5.cleanup_crit_edge ], [ %51, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dsc_state) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_slice_bpg_offset_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %dsc_state = alloca %struct.dcn_dsc_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dsc_state) #12
  %4 = call ptr @memset(ptr %dsc_state, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 100) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc_link, align 8
  %dc = getelementptr inbounds %struct.dc_link, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_state, align 4
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %11, i32 0, i32 4
  %uglygep = getelementptr i8, ptr %11, i32 3520
  %tobool3.not = icmp eq ptr %res_ctx, null
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %stream = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %cmp8 = icmp eq ptr %15, %7
  br i1 %cmp8, label %land.lhs.true5.if.end13_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1
  %tobool3.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %stream.1 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %stream.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream.1, align 4
  %tobool4.not.1 = icmp eq ptr %17, null
  br i1 %tobool4.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true5.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %land.lhs.true.1
  %link.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link.1, align 4
  %cmp8.1 = icmp eq ptr %19, %7
  br i1 %cmp8.1, label %land.lhs.true5.1.if.end13_crit_edge, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true5.1.if.end13_crit_edge:              ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.1:                                        ; preds = %land.lhs.true5.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2
  %tobool3.not.2 = icmp eq ptr %arrayidx.2, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %stream.2 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %stream.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream.2, align 4
  %tobool4.not.2 = icmp eq ptr %21, null
  br i1 %tobool4.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true5.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %land.lhs.true.2
  %link.2 = getelementptr inbounds %struct.dc_stream_state, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %link.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link.2, align 4
  %cmp8.2 = icmp eq ptr %23, %7
  br i1 %cmp8.2, label %land.lhs.true5.2.if.end13_crit_edge, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true5.2.if.end13_crit_edge:              ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.2:                                        ; preds = %land.lhs.true5.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3
  %tobool3.not.3 = icmp eq ptr %arrayidx.3, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %stream.3 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %stream.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream.3, align 4
  %tobool4.not.3 = icmp eq ptr %25, null
  br i1 %tobool4.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true5.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3:                                 ; preds = %land.lhs.true.3
  %link.3 = getelementptr inbounds %struct.dc_stream_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %link.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link.3, align 4
  %cmp8.3 = icmp eq ptr %27, %7
  br i1 %cmp8.3, label %land.lhs.true5.3.if.end13_crit_edge, label %land.lhs.true5.3.for.inc.3_crit_edge

land.lhs.true5.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

land.lhs.true5.3.if.end13_crit_edge:              ; preds = %land.lhs.true5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.3:                                        ; preds = %land.lhs.true5.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4
  %tobool3.not.4 = icmp eq ptr %arrayidx.4, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %stream.4 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %stream.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stream.4, align 4
  %tobool4.not.4 = icmp eq ptr %29, null
  br i1 %tobool4.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true5.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4:                                 ; preds = %land.lhs.true.4
  %link.4 = getelementptr inbounds %struct.dc_stream_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link.4, align 4
  %cmp8.4 = icmp eq ptr %31, %7
  br i1 %cmp8.4, label %land.lhs.true5.4.if.end13_crit_edge, label %land.lhs.true5.4.for.inc.4_crit_edge

land.lhs.true5.4.for.inc.4_crit_edge:             ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

land.lhs.true5.4.if.end13_crit_edge:              ; preds = %land.lhs.true5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.4:                                        ; preds = %land.lhs.true5.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5
  %tobool3.not.5 = icmp eq ptr %arrayidx.5, null
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %stream.5 = getelementptr %struct.dc_state, ptr %11, i32 0, i32 4, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %stream.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream.5, align 4
  %tobool4.not.5 = icmp eq ptr %33, null
  br i1 %tobool4.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true5.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

land.lhs.true5.5:                                 ; preds = %land.lhs.true.5
  %link.5 = getelementptr inbounds %struct.dc_stream_state, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link.5, align 4
  %cmp8.5 = icmp ne ptr %35, %7
  %tobool11.not = icmp eq ptr %uglygep, null
  %or.cond = select i1 %cmp8.5, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %land.lhs.true5.5.cleanup_crit_edge, label %land.lhs.true5.5.if.end13_crit_edge

land.lhs.true5.5.if.end13_crit_edge:              ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true5.5.cleanup_crit_edge:               ; preds = %land.lhs.true5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %tobool11.not.old = icmp eq ptr %uglygep, null
  br i1 %tobool11.not.old, label %for.inc.5.cleanup_crit_edge, label %for.inc.5.if.end13_crit_edge

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.5.if.end13_crit_edge, %land.lhs.true5.5.if.end13_crit_edge, %land.lhs.true5.4.if.end13_crit_edge, %land.lhs.true5.3.if.end13_crit_edge, %land.lhs.true5.2.if.end13_crit_edge, %land.lhs.true5.1.if.end13_crit_edge, %land.lhs.true5.if.end13_crit_edge
  %i.06877 = phi i32 [ 5, %for.inc.5.if.end13_crit_edge ], [ 0, %land.lhs.true5.if.end13_crit_edge ], [ 1, %land.lhs.true5.1.if.end13_crit_edge ], [ 2, %land.lhs.true5.2.if.end13_crit_edge ], [ 3, %land.lhs.true5.3.if.end13_crit_edge ], [ 4, %land.lhs.true5.4.if.end13_crit_edge ], [ 5, %land.lhs.true5.5.if.end13_crit_edge ]
  %dsc14 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.06877, i32 3, i32 1
  %36 = ptrtoint ptr %dsc14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsc14, align 4
  %tobool15.not = icmp eq ptr %37, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dsc_read_state = getelementptr inbounds %struct.dsc_funcs, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %dsc_read_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsc_read_state, align 4
  call void %41(ptr noundef nonnull %37, ptr noundef nonnull %dsc_state) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %dsc_slice_bpg_offset = getelementptr inbounds %struct.dcn_dsc_state, ptr %dsc_state, i32 0, i32 6
  %42 = ptrtoint ptr %dsc_slice_bpg_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsc_slice_bpg_offset, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 30, ptr noundef nonnull @.str.61, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool19.not70 = icmp eq i32 %size, 0
  br i1 %tobool19.not70, label %if.end17.while.end_crit_edge, label %while.body.preheader

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.preheader
  %45 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end28.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr29, %if.end28.while.body_crit_edge ]
  %size.addr.072 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end28.while.body_crit_edge ]
  %result.071 = phi i32 [ 0, %while.body.preheader ], [ %add30, %if.end28.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %45)
  %cmp20 = icmp sgt i64 %45, 99
  br i1 %cmp20, label %while.body.while.end_crit_edge, label %if.end22

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end22:                                         ; preds = %while.body
  %add.ptr23 = getelementptr i8, ptr %call7.i.i.i, i32 %result.071
  %46 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr23, align 1
  call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 2308) #12
  %48 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %51 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.073, i8 %47, i32 -1226833921) #12, !srcloc !287
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !272
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool26.not = icmp eq i32 %51, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %add.ptr29 = getelementptr i8, ptr %buf.addr.073, i32 1
  %sub = add i32 %size.addr.072, -1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pos, align 8
  %add = add i64 %53, 1
  store i64 %add, ptr %pos, align 8
  %add30 = add nuw i32 %result.071, 1
  %tobool19.not = icmp eq i32 %sub, 0
  br i1 %tobool19.not, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %result.071, %while.body.while.end_crit_edge ], [ %size, %if.end28.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end22.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %land.lhs.true5.5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0.lcssa, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %for.inc.5.cleanup_crit_edge ], [ -6, %land.lhs.true5.5.cleanup_crit_edge ], [ %51, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dsc_state) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_fec_support_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dp_dsc_fec_support_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_fec_support_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #12
  %2 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 1) #12
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 1
  br label %do.body

do.body:                                          ; preds = %if.then2.do.body_crit_edge, %entry
  %call = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef nonnull %ctx) #12
  %5 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call, label %do.body.do.end_crit_edge [
    i32 0, label %if.end7
    i32 -35, label %if.then2
  ]

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then2:                                         ; preds = %do.body
  %call3 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #12
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.do.body_crit_edge, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then2.do.body_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end7:                                          ; preds = %do.body
  %status = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp8.not = icmp eq i32 %7, 1
  br i1 %cmp8.not, label %if.end10, label %if.end7.do.end_crit_edge

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end10:                                         ; preds = %if.end7
  %port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 8
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %dsc_aux = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %dsc_aux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsc_aux, align 8
  %tobool14.not = icmp ne ptr %11, null
  br label %do.end

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dc_link, align 8
  %dpcd_caps.sroa.5.0.dpcd_caps11.sroa_idx = getelementptr inbounds %struct.dc_link, ptr %13, i32 0, i32 43, i32 24
  %14 = ptrtoint ptr %dpcd_caps.sroa.5.0.dpcd_caps11.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %dpcd_caps.sroa.5.0.copyload = load i8, ptr %dpcd_caps.sroa.5.0.dpcd_caps11.sroa_idx, align 1
  %dpcd_caps.sroa.4.0.dpcd_caps11.sroa_idx = getelementptr inbounds %struct.dc_link, ptr %13, i32 0, i32 43, i32 23
  %15 = ptrtoint ptr %dpcd_caps.sroa.4.0.dpcd_caps11.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %dpcd_caps.sroa.4.0.copyload = load i8, ptr %dpcd_caps.sroa.4.0.dpcd_caps11.sroa_idx, align 2
  %16 = and i8 %dpcd_caps.sroa.4.0.copyload, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17 = icmp ne i8 %16, 0
  %17 = and i8 %dpcd_caps.sroa.5.0.copyload, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20 = icmp ne i8 %17, 0
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then13, %if.end7.do.end_crit_edge, %if.then2.do.end_crit_edge, %do.body.do.end_crit_edge
  %ret.1 = phi i32 [ -19, %if.end7.do.end_crit_edge ], [ 0, %if.then13 ], [ 0, %if.else ], [ %call, %do.body.do.end_crit_edge ], [ %call3, %if.then2.do.end_crit_edge ]
  %is_fec_supported.2.off0 = phi i1 [ false, %if.end7.do.end_crit_edge ], [ %tobool14.not, %if.then13 ], [ %tobool17, %if.else ], [ false, %if.then2.do.end_crit_edge ], [ false, %do.body.do.end_crit_edge ]
  %is_dsc_supported.2.off0 = phi i1 [ false, %if.end7.do.end_crit_edge ], [ %tobool14.not, %if.then13 ], [ %tobool20, %if.else ], [ false, %if.then2.do.end_crit_edge ], [ false, %do.body.do.end_crit_edge ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #12
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #12
  %spec.select = select i1 %is_fec_supported.2.off0, ptr @.str.65, ptr @.str.66
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull %spec.select) #12
  %cond.i52 = select i1 %is_dsc_supported.2.off0, ptr @.str.65, ptr @.str.66
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond.i52) #12
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #12
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_max_bpc_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 10) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #12
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %call4 = tail call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #12
  %state5 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 52
  %7 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state5, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.end.unlock_crit_edge, label %if.end7

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end7:                                          ; preds = %if.end
  %max_requested_bpc = getelementptr inbounds %struct.drm_connector_state, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %max_requested_bpc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_requested_bpc, align 8
  %conv = zext i8 %10 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 10, ptr noundef nonnull @.str.67, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool11.not52 = icmp eq i32 %size, 0
  br i1 %tobool11.not52, label %if.end7.unlock_crit_edge, label %while.body.preheader

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

while.body.preheader:                             ; preds = %if.end7
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %.pr = load i64, ptr %pos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.preheader
  %12 = phi i64 [ %.pr, %while.body.preheader ], [ %add, %if.end22.while.body_crit_edge ]
  %buf.addr.055 = phi ptr [ %buf, %while.body.preheader ], [ %add.ptr23, %if.end22.while.body_crit_edge ]
  %size.addr.054 = phi i32 [ %size, %while.body.preheader ], [ %sub, %if.end22.while.body_crit_edge ]
  %result.053 = phi i32 [ 0, %while.body.preheader ], [ %add24, %if.end22.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 9, i64 %12)
  %cmp12 = icmp sgt i64 %12, 9
  br i1 %cmp12, label %while.body.unlock_crit_edge, label %if.end15

while.body.unlock_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end15:                                         ; preds = %while.body
  %add.ptr16 = getelementptr i8, ptr %call7.i.i.i, i32 %result.053
  %13 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr16, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 2366) #12
  %15 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !271
  %and.i = and i32 %17, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.055, i8 %14, i32 -1226833921) #12, !srcloc !288
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %if.end22, label %if.end15.unlock_crit_edge

if.end15.unlock_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end22:                                         ; preds = %if.end15
  %add.ptr23 = getelementptr i8, ptr %buf.addr.055, i32 1
  %sub = add i32 %size.addr.054, -1
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %pos, align 8
  %add = add i64 %20, 1
  store i64 %add, ptr %pos, align 8
  %add24 = add nuw i32 %result.053, 1
  %tobool11.not = icmp eq i32 %sub, 0
  br i1 %tobool11.not, label %if.end22.unlock_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end22.unlock_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

unlock:                                           ; preds = %if.end22.unlock_crit_edge, %if.end15.unlock_crit_edge, %while.body.unlock_crit_edge, %if.end7.unlock_crit_edge, %if.end.unlock_crit_edge
  %result.1 = phi i32 [ 0, %if.end.unlock_crit_edge ], [ 0, %if.end7.unlock_crit_edge ], [ %result.053, %while.body.unlock_crit_edge ], [ %size, %if.end22.unlock_crit_edge ], [ %18, %if.end15.unlock_crit_edge ]
  tail call void @drm_modeset_unlock(ptr noundef %connection_mutex) #12
  tail call void @mutex_unlock(ptr noundef %mode_config) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1, %unlock ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_max_bpc_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %param = alloca [1 x i32], align 4
  %param_nums = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %param, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %7 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 42) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 42, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 1, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp9 = icmp eq i8 %10, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %param, align 4
  %13 = add i32 %12, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %13)
  %14 = icmp ult i32 %13, -11
  br i1 %14, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.68) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #12
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 1
  %call21 = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #12
  %state22 = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 52
  %15 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state22, align 8
  %cmp23 = icmp eq ptr %16, null
  br i1 %cmp23, label %if.end19.unlock_crit_edge, label %if.end26

if.end19.unlock_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param, align 4
  %conv29 = trunc i32 %18 to i8
  %max_requested_bpc = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 15
  %19 = ptrtoint ptr %max_requested_bpc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv29, ptr %max_requested_bpc, align 8
  br label %unlock

unlock:                                           ; preds = %if.end26, %if.end19.unlock_crit_edge
  call void @drm_modeset_unlock(ptr noundef %connection_mutex) #12
  call void @mutex_unlock(ptr noundef %mode_config) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then18, %if.then11, %if.then7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then11 ], [ -22, %if.then18 ], [ %size, %unlock ], [ -28, %if.then3 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_dsc_passthrough_set(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %param = alloca i32, align 4
  %param_nums = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %param, align 4, !annotation !276
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %5 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 42) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 42, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 1, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8 = icmp ne i32 %8, 0
  %dsc_force_disable_passthrough = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 23, i32 4
  %frombool = zext i1 %tobool8 to i8
  %9 = ptrtoint ptr %dsc_force_disable_passthrough to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %dsc_force_disable_passthrough, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then6 ], [ 0, %if.end7 ], [ -28, %if.then2 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psr_capability_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @psr_capability_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psr_capability_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_link, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %connector_signal = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %connector_signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connector_signal, align 8
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %psr_caps = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 43, i32 26
  %8 = ptrtoint ptr %psr_caps to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %psr_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6.not = icmp eq i8 %9, 0
  %cond.i = select i1 %cmp6.not, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, ptr noundef nonnull %cond.i) #12
  %10 = ptrtoint ptr %psr_caps to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %psr_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.end5.if.end17_crit_edge, label %if.then12

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %conv16 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.70, i32 noundef %conv16) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end5.if.end17_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.60) #12
  %psr_settings = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 50
  %12 = ptrtoint ptr %psr_settings to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %psr_settings, align 4, !range !279
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool18.not = icmp eq i8 %13, 0
  %cond.i45 = select i1 %tobool18.not, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond.i45) #12
  %psr_version21 = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 50, i32 2
  %14 = ptrtoint ptr %psr_version21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %psr_version21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool22.not = icmp eq i32 %15, 0
  br i1 %tobool22.not, label %if.end17.if.end26_crit_edge, label %if.then23

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.70, i32 noundef %15) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end17.if.end26_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.60) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psr_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @psr_get, ptr noundef null, ptr noundef nonnull @.str.72) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psr_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc_link, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %call = call zeroext i1 @dc_link_get_psr_state(ptr noundef %1, ptr noundef nonnull %state) #12
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_get_psr_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_backlight_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @current_backlight_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_backlight_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_link, align 8
  %call = tail call i32 @dc_link_get_backlight_level(ptr noundef %3) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, i32 noundef %call) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_link_get_backlight_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_backlight_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @target_backlight_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_backlight_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_link, align 8
  %call = tail call i32 @dc_link_get_target_backlight_pwm(ptr noundef %3) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, i32 noundef %call) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_link_get_target_backlight_pwm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edp_ilr_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %prefer_link_settings = alloca %struct.dc_link_settings, align 4
  %param_nums = alloca i8, align 1
  %param = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dc_link, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dc2 = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 35
  %8 = ptrtoint ptr %dc2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dc2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prefer_link_settings) #12
  %10 = getelementptr inbounds i8, ptr %prefer_link_settings, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %12 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %param_nums, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param) #12
  %13 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %param, align 4, !annotation !276
  %14 = getelementptr inbounds [2 x i32], ptr %param, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 40) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 40, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 2, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %17 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp10 = icmp eq i8 %18, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %param, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %20, label %if.end13.if.then21_crit_edge [
    i32 1, label %if.end13.sw.epilog_crit_edge
    i32 2, label %if.end13.sw.epilog_crit_edge63
    i32 4, label %if.end13.sw.epilog_crit_edge64
  ]

if.end13.sw.epilog_crit_edge64:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end13.sw.epilog_crit_edge63:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end13.if.then21_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

sw.epilog:                                        ; preds = %if.end13.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge63, %if.end13.sw.epilog_crit_edge64
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %14, align 4
  %edp_supported_link_rates_count = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 43, i32 4
  %24 = ptrtoint ptr %edp_supported_link_rates_count to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %edp_supported_link_rates_count, align 4
  %conv15 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv15)
  %cmp16.not = icmp slt i32 %23, %conv15
  br i1 %cmp16.not, label %if.end22, label %sw.epilog.if.then21_crit_edge

sw.epilog.if.then21_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then21:                                        ; preds = %sw.epilog.if.then21_crit_edge, %if.end13.if.then21_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.74) #12
  %use_link_rate_set = getelementptr inbounds %struct.dc_link_settings, ptr %prefer_link_settings, i32 0, i32 3
  %26 = ptrtoint ptr %use_link_rate_set to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %use_link_rate_set, align 4
  call void @dc_link_set_preferred_training_settings(ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef %5, i1 noundef zeroext true) #12
  br label %cleanup

if.end22:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %link_spread = getelementptr inbounds %struct.dc_link, ptr %5, i32 0, i32 21, i32 2
  %27 = ptrtoint ptr %link_spread to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_spread, align 8
  %link_spread23 = getelementptr inbounds %struct.dc_link_settings, ptr %prefer_link_settings, i32 0, i32 2
  %29 = ptrtoint ptr %link_spread23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %link_spread23, align 4
  %30 = ptrtoint ptr %prefer_link_settings to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %20, ptr %prefer_link_settings, align 4
  %use_link_rate_set25 = getelementptr inbounds %struct.dc_link_settings, ptr %prefer_link_settings, i32 0, i32 3
  %31 = ptrtoint ptr %use_link_rate_set25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %use_link_rate_set25, align 4
  %conv27 = trunc i32 %23 to i8
  %link_rate_set = getelementptr inbounds %struct.dc_link_settings, ptr %prefer_link_settings, i32 0, i32 4
  %32 = ptrtoint ptr %link_rate_set to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv27, ptr %link_rate_set, align 1
  %arrayidx30 = getelementptr %struct.dc_link, ptr %5, i32 0, i32 43, i32 5, i32 %23
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx30, align 4
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %prefer_link_settings, i32 0, i32 1
  %35 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %link_rate, align 4
  %dc_lock = getelementptr i8, ptr %7, i32 83052
  call void @mutex_lock_nested(ptr noundef %dc_lock, i32 noundef 0) #12
  call void @dc_link_set_preferred_training_settings(ptr noundef %9, ptr noundef nonnull %prefer_link_settings, ptr noundef null, ptr noundef %5, i1 noundef zeroext false) #12
  call void @mutex_unlock(ptr noundef %dc_lock) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then12, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %if.then12 ], [ %size, %if.end22 ], [ %size, %if.then21 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prefer_link_settings) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edp_ilr_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @edp_ilr_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edp_ilr_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %supported_link_rates = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_link, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %supported_link_rates) #12
  %4 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 1
  %5 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 2
  %6 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 3
  %7 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 4
  %8 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 5
  %9 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 6
  %10 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 7
  %11 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 8
  %12 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 9
  %13 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 10
  %14 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 11
  %15 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 12
  %16 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 13
  %17 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 14
  %18 = getelementptr inbounds [16 x i8], ptr %supported_link_rates, i32 0, i32 15
  %19 = call ptr @memset(ptr %supported_link_rates, i32 0, i32 16)
  %ctx = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 36
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 8
  %call = call zeroext i1 @dm_helpers_dp_read_dpcd(ptr noundef %21, ptr noundef %3, i32 noundef 16, ptr noundef nonnull %supported_link_rates, i32 noundef 16) #12
  %dpcd_caps = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 43
  %22 = ptrtoint ptr %dpcd_caps to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dpcd_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %23)
  %cmp = icmp ugt i8 %23, 18
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp6.not = icmp eq i8 %25, 0
  br i1 %cmp6.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %26 = ptrtoint ptr %supported_link_rates to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %supported_link_rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp10.not = icmp eq i8 %27, 0
  br i1 %cmp10.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %conv16 = zext i8 %29 to i32
  %mul = shl nuw nsw i32 %conv16, 8
  %30 = ptrtoint ptr %supported_link_rates to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %supported_link_rates, align 1
  %conv18 = zext i8 %31 to i32
  %add19 = or i32 %mul, %conv18
  %mul20 = mul nuw nsw i32 %add19, 200
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef %mul20) #12
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %conv16.1 = zext i8 %33 to i32
  %mul.1 = shl nuw nsw i32 %conv16.1, 8
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 1
  %conv18.1 = zext i8 %35 to i32
  %add19.1 = or i32 %mul.1, %conv18.1
  %mul20.1 = mul nuw nsw i32 %add19.1, 200
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef %mul20.1) #12
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %8, align 1
  %conv16.2 = zext i8 %37 to i32
  %mul.2 = shl nuw nsw i32 %conv16.2, 8
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %7, align 1
  %conv18.2 = zext i8 %39 to i32
  %add19.2 = or i32 %mul.2, %conv18.2
  %mul20.2 = mul nuw nsw i32 %add19.2, 200
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef 2, i32 noundef %mul20.2) #12
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %10, align 1
  %conv16.3 = zext i8 %41 to i32
  %mul.3 = shl nuw nsw i32 %conv16.3, 8
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %9, align 1
  %conv18.3 = zext i8 %43 to i32
  %add19.3 = or i32 %mul.3, %conv18.3
  %mul20.3 = mul nuw nsw i32 %add19.3, 200
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef 3, i32 noundef %mul20.3) #12
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %12, align 1
  %conv16.4 = zext i8 %45 to i32
  %mul.4 = shl nuw nsw i32 %conv16.4, 8
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %11, align 1
  %conv18.4 = zext i8 %47 to i32
  %add19.4 = or i32 %mul.4, %conv18.4
  %mul20.4 = mul nuw nsw i32 %add19.4, 200
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef 4, i32 noundef %mul20.4) #12
  %48 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %14, align 1
  %conv16.5 = zext i8 %49 to i32
  %mul.5 = shl nuw nsw i32 %conv16.5, 8
  %50 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %13, align 1
  %conv18.5 = zext i8 %51 to i32
  %add19.5 = or i32 %mul.5, %conv18.5
  %mul20.5 = mul nuw nsw i32 %add19.5, 200
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef 5, i32 noundef %mul20.5) #12
  %52 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %16, align 1
  %conv16.6 = zext i8 %53 to i32
  %mul.6 = shl nuw nsw i32 %conv16.6, 8
  %54 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %15, align 1
  %conv18.6 = zext i8 %55 to i32
  %add19.6 = or i32 %mul.6, %conv18.6
  %mul20.6 = mul nuw nsw i32 %add19.6, 200
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef 6, i32 noundef %mul20.6) #12
  %56 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %18, align 1
  %conv16.7 = zext i8 %57 to i32
  %mul.7 = shl nuw nsw i32 %conv16.7, 8
  %58 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %17, align 1
  %conv18.7 = zext i8 %59 to i32
  %add19.7 = or i32 %mul.7, %conv18.7
  %mul20.7 = mul nuw nsw i32 %add19.7, 200
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef 7, i32 noundef %mul20.7) #12
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %entry.if.else_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.76) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %supported_link_rates) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_yuv420_output_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @force_yuv420_output_get, ptr noundef nonnull @force_yuv420_output_set, ptr noundef nonnull @.str.72) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @force_yuv420_output_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %force_yuv420_output = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %data, i32 0, i32 22
  %0 = ptrtoint ptr %force_yuv420_output to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %force_yuv420_output, align 8, !range !279
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @force_yuv420_output_set(ptr nocapture noundef writeonly %data, i64 noundef %val) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  %force_yuv420_output = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %data, i32 0, i32 22
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %force_yuv420_output to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %force_yuv420_output, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_bpc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @output_bpc_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_bpc_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #12
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 1
  %call = tail call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #12
  %state = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 52
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.if.end26_crit_edge, label %if.end

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end:                                           ; preds = %entry
  %crtc4 = getelementptr inbounds %struct.drm_connector_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc4, align 4
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.end.if.end26_crit_edge, label %if.end7

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end7:                                          ; preds = %if.end
  %mutex8 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 4
  %call9 = tail call i32 @drm_modeset_lock(ptr noundef %mutex8, ptr noundef null) #12
  %state10 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state10, align 4
  %cmp11 = icmp eq ptr %9, null
  br i1 %cmp11, label %if.end7.if.then24_crit_edge, label %if.end13

if.end7.if.then24_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end13:                                         ; preds = %if.end7
  %stream = getelementptr inbounds %struct.dm_crtc_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream, align 4
  %cmp15 = icmp eq ptr %11, null
  br i1 %cmp15, label %if.end13.if.then24_crit_edge, label %if.end17

if.end13.if.then24_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end17:                                         ; preds = %if.end13
  %display_color_depth = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 5, i32 16
  %12 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %display_color_depth, align 8
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 6
  br i1 %14, label %switch.hole_check, label %if.end17.if.then24_crit_edge

if.end17.if.then24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

switch.hole_check:                                ; preds = %if.end17
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 47, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then24_crit_edge, label %switch.lookup

switch.hole_check.if.then24_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.output_bpc_show, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.81, i32 noundef %switch.load) #12
  %bpc23 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  %17 = ptrtoint ptr %bpc23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bpc23, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.82, i32 noundef %18) #12
  br label %if.then24

if.then24:                                        ; preds = %switch.lookup, %switch.hole_check.if.then24_crit_edge, %if.end17.if.then24_crit_edge, %if.end13.if.then24_crit_edge, %if.end7.if.then24_crit_edge
  %res.0.ph = phi i32 [ 0, %switch.lookup ], [ -19, %if.end17.if.then24_crit_edge ], [ -19, %if.end13.if.then24_crit_edge ], [ -19, %if.end7.if.then24_crit_edge ], [ -19, %switch.hole_check.if.then24_crit_edge ]
  tail call void @drm_modeset_unlock(ptr noundef %mutex8) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  %res.053 = phi i32 [ %res.0.ph, %if.then24 ], [ -19, %entry.if.end26_crit_edge ], [ -19, %if.end.if.end26_crit_edge ]
  tail call void @drm_modeset_unlock(ptr noundef %connection_mutex) #12
  tail call void @mutex_unlock(ptr noundef %mode_config) #12
  ret i32 %res.053
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_hotplug(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %new_connection_type = alloca i32, align 4
  %param = alloca [1 x i32], align 4
  %param_nums = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_connection_type) #12
  %6 = ptrtoint ptr %new_connection_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %new_connection_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #12
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %param, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param_nums) #12
  %8 = ptrtoint ptr %param_nums to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %param_nums, align 1
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dc_link, align 8
  %tobool2.not = icmp eq ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp, %tobool2.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 42) #17
  %tobool6.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @parse_write_buffer_into_params(ptr noundef nonnull %call7.i.i.i, i32 noundef 42, ptr noundef nonnull %param, ptr noundef %buf, i32 noundef 1, ptr noundef nonnull %param_nums)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %param_nums to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %param_nums, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13 = icmp eq i8 %13, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %15, label %if.end16.unlock_crit_edge [
    i32 1, label %if.then19
    i32 0, label %if.then33
  ]

if.end16.unlock_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then19:                                        ; preds = %if.end16
  %hpd_lock = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %hpd_lock, i32 noundef 0) #12
  %17 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dc_link, align 8
  %call21 = call zeroext i1 @dc_link_detect_sink(ptr noundef %18, ptr noundef nonnull %new_connection_type) #12
  br i1 %call21, label %if.then19.if.end25_crit_edge, label %land.lhs.true

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then19
  %19 = ptrtoint ptr %new_connection_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_connection_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22.not = icmp eq i32 %20, 0
  br i1 %cmp22.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.then19.if.end25_crit_edge
  %21 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dc_link, align 8
  %call27 = call zeroext i1 @dc_link_detect(ptr noundef %22, i32 noundef 1) #12
  br i1 %call27, label %if.end25.unlock.sink.split_crit_edge, label %if.end25.unlock_crit_edge

if.end25.unlock_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end25.unlock.sink.split_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.sink.split

if.then33:                                        ; preds = %if.end16
  %23 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dc_link, align 8
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %if.then33.unlock_crit_edge, label %if.end37

if.then33.unlock_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end37:                                         ; preds = %if.then33
  %local_sink = getelementptr inbounds %struct.dc_link, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %local_sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %local_sink, align 4
  %tobool39.not = icmp eq ptr %26, null
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void @dc_sink_release(ptr noundef nonnull %26) #12
  %27 = ptrtoint ptr %local_sink to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %local_sink, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %dpcd_sink_count = getelementptr inbounds %struct.dc_link, ptr %24, i32 0, i32 46
  %28 = ptrtoint ptr %dpcd_sink_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dpcd_sink_count, align 4
  %type = getelementptr inbounds %struct.dc_link, ptr %24, i32 0, i32 4
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %type, align 4
  %dongle_max_pix_clk = getelementptr inbounds %struct.dc_link, ptr %24, i32 0, i32 44
  %30 = ptrtoint ptr %dongle_max_pix_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dongle_max_pix_clk, align 4
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %if.end43, %if.end25.unlock.sink.split_crit_edge
  call void @amdgpu_dm_update_connector_after_detect(ptr noundef nonnull %3) #12
  call void @drm_modeset_lock_all(ptr noundef %5) #12
  call void @dm_restore_drm_connector_state(ptr noundef %5, ptr noundef nonnull %3) #12
  call void @drm_modeset_unlock_all(ptr noundef %5) #12
  call void @drm_kms_helper_connector_hotplug_event(ptr noundef nonnull %3) #12
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.then33.unlock_crit_edge, %if.end25.unlock_crit_edge, %land.lhs.true.unlock_crit_edge, %if.end16.unlock_crit_edge
  %hpd_lock46 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %hpd_lock46) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then15, %if.then11, %if.then7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -22, %if.then15 ], [ %size, %unlock ], [ -28, %if.then7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param_nums) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_connection_type) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_detect_sink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_detect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dm_update_connector_after_detect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_restore_drm_connector_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_connector_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @internal_display_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @internal_display_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @internal_display_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dc_link, align 8
  %is_internal_display = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_internal_display to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_internal_display, align 8, !range !279
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83, i32 noundef %6) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mst_topo_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mst_topo_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mst_topo_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #12
  %2 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !276
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !276
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %conn_iter) #12
  %call110 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #12
  %tobool.not11 = icmp eq ptr %call110, null
  br i1 %tobool.not11, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call112 = phi ptr [ %call1, %while.cond.backedge.while.body_crit_edge ], [ %call110, %entry.while.body_crit_edge ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call112, i32 0, i32 10
  %5 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp.not = icmp eq i32 %6, 10
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %mst_state = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call112, i32 0, i32 8, i32 13
  %7 = ptrtoint ptr %mst_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %mst_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end.while.cond.backedge_crit_edge, label %if.end3

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mst_mgr = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call112, i32 0, i32 8
  %connector_id = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call112, i32 0, i32 1
  %8 = ptrtoint ptr %connector_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connector_id, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.85, i32 noundef %9) #12
  call void @drm_dp_mst_dump_topology(ptr noundef %m, ptr noundef %mst_mgr) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end3, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call1 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_dump_topology(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visual_confirm_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @visual_confirm_get, ptr noundef nonnull @visual_confirm_set, ptr noundef nonnull @.str.72) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @visual_confirm_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 8
  %visual_confirm = getelementptr inbounds %struct.dc_debug_options, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %visual_confirm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %visual_confirm, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @visual_confirm_set(ptr nocapture noundef readonly %data, i64 noundef %val) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 8
  %visual_confirm = getelementptr inbounds %struct.dc_debug_options, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %visual_confirm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %visual_confirm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmub_tracebuffer_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dmub_tracebuffer_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmub_tracebuffer_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dmub_fb_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 117, i32 5
  %2 = ptrtoint ptr %dmub_fb_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmub_fb_info, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.dmub_srv_fb_info, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %size = getelementptr %struct.dmub_srv_fb_info, ptr %3, i32 0, i32 1, i32 5, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %sub = add i32 %7, -16
  %div31 = lshr i32 %sub, 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %div31)
  %add.ptr = getelementptr i8, ptr %5, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp632.not = icmp eq i32 %10, 0
  br i1 %cmp632.not, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %arrayidx8 = getelementptr %struct.dmub_debugfs_trace_entry, ptr %add.ptr, i32 %i.033
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %tick_count = getelementptr inbounds %struct.dmub_debugfs_trace_entry, ptr %arrayidx8, i32 0, i32 1
  %13 = ptrtoint ptr %tick_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tick_count, align 4
  %param0 = getelementptr inbounds %struct.dmub_debugfs_trace_entry, ptr %arrayidx8, i32 0, i32 2
  %15 = ptrtoint ptr %param0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %param0, align 4
  %param1 = getelementptr inbounds %struct.dmub_debugfs_trace_entry, ptr %arrayidx8, i32 0, i32 3
  %17 = ptrtoint ptr %param1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #12
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmub_fw_state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dmub_fw_state_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmub_fw_state_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dmub_fb_info = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 117, i32 5
  %2 = ptrtoint ptr %dmub_fb_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmub_fb_info, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.dmub_srv_fb_info, ptr %3, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr %struct.dmub_srv_fb_info, ptr %3, i32 0, i32 1, i32 6, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %call = tail call i32 @seq_write(ptr noundef %m, ptr noundef nonnull %5, i32 noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_timing_sync_ops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @force_timing_sync_get, ptr noundef nonnull @force_timing_sync_set, ptr noundef nonnull @.str.72) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @force_timing_sync_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %force_timing_sync = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117, i32 43
  %0 = ptrtoint ptr %force_timing_sync to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %force_timing_sync, align 8, !range !279
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_timing_sync_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  %force_timing_sync = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117, i32 43
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %force_timing_sync to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %force_timing_sync, align 8
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 2
  tail call void @amdgpu_dm_trigger_timing_sync(ptr noundef %ddev.i) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dm_trigger_timing_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmcub_trace_event_state_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @dmcub_trace_event_state_get, ptr noundef nonnull @dmcub_trace_event_state_set, ptr noundef nonnull @.str.72) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dmcub_trace_event_state_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dmcub_trace_event_en = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117, i32 45
  %0 = ptrtoint ptr %dmcub_trace_event_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dmcub_trace_event_en, align 2, !range !279
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmcub_trace_event_state_set(ptr nocapture noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %val)
  %switch = icmp ult i64 %val, 2
  br i1 %switch, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dm = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  tail call void @dc_dmub_trace_event_control(ptr noundef %1, i1 noundef zeroext %tobool) #12
  %dmcub_trace_event_en = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117, i32 45
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %dmcub_trace_event_en to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %dmcub_trace_event_en, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_dmub_trace_event_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_hpd_mst_ops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @trigger_hpd_mst_get, ptr noundef nonnull @trigger_hpd_mst_set, ptr noundef nonnull @.str.72) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @trigger_hpd_mst_get(ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %val) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_hpd_mst_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  %iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #12
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !276
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !276
  call void @__sanitizer_cov_trace_switch(i64 %val, ptr @__sancov_gen_cov_switch_values.93)
  switch i64 %val, label %entry.cleanup_crit_edge [
    i64 1, label %if.then
    i64 0, label %if.then10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %iter) #12
  %call156 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #12
  %tobool.not57 = icmp eq ptr %call156, null
  br i1 %tobool.not57, label %if.then.if.end33_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %call158 = phi ptr [ %call1, %if.end.while.body_crit_edge ], [ %call156, %if.then.while.body_crit_edge ]
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call158, i32 0, i32 6
  %3 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_link, align 8
  %type = getelementptr inbounds %struct.dc_link, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %aux = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call158, i32 0, i32 8, i32 4
  %7 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aux, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %mst_mgr = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call158, i32 0, i32 8
  %call6 = call zeroext i1 @dc_link_detect(ptr noundef %4, i32 noundef 1) #12
  %call8 = call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mst_mgr, i1 noundef zeroext true) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %call1 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.if.end33_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then10:                                        ; preds = %entry
  call void @drm_connector_list_iter_begin(ptr noundef %ddev.i, ptr noundef nonnull %iter) #12
  %call1253 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #12
  %tobool13.not54 = icmp eq ptr %call1253, null
  br i1 %tobool13.not54, label %if.then10.if.end33_crit_edge, label %if.then10.while.body14_crit_edge

if.then10.while.body14_crit_edge:                 ; preds = %if.then10
  br label %while.body14

if.then10.if.end33_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

while.body14:                                     ; preds = %while.cond11.backedge.while.body14_crit_edge, %if.then10.while.body14_crit_edge
  %call1255 = phi ptr [ %call12, %while.cond11.backedge.while.body14_crit_edge ], [ %call1253, %if.then10.while.body14_crit_edge ]
  %dc_link18 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call1255, i32 0, i32 6
  %9 = ptrtoint ptr %dc_link18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dc_link18, align 8
  %tobool19.not = icmp eq ptr %10, null
  br i1 %tobool19.not, label %while.body14.while.cond11.backedge_crit_edge, label %if.end21

while.body14.while.cond11.backedge_crit_edge:     ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.backedge

if.end21:                                         ; preds = %while.body14
  %mst_port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %call1255, i32 0, i32 11
  %11 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mst_port, align 4
  %tobool22.not = icmp eq ptr %12, null
  br i1 %tobool22.not, label %if.end21.while.cond11.backedge_crit_edge, label %if.end24

if.end21.while.cond11.backedge_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond11.backedge

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @dp_receiver_power_ctrl(ptr noundef nonnull %10, i1 noundef zeroext false) #12
  %13 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mst_port, align 4
  %mst_mgr27 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %14, i32 0, i32 8
  %call28 = call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mst_mgr27, i1 noundef zeroext false) #12
  %mst_stream_alloc_table = getelementptr inbounds %struct.dc_link, ptr %10, i32 0, i32 55
  %15 = call ptr @memset(ptr %mst_stream_alloc_table, i32 0, i32 52)
  br label %while.cond11.backedge

while.cond11.backedge:                            ; preds = %if.end24, %if.end21.while.cond11.backedge_crit_edge, %while.body14.while.cond11.backedge_crit_edge
  %call12 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %while.cond11.backedge.if.end33_crit_edge, label %while.cond11.backedge.while.body14_crit_edge

while.cond11.backedge.while.body14_crit_edge:     ; preds = %while.cond11.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body14

while.cond11.backedge.if.end33_crit_edge:         ; preds = %while.cond11.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33:                                         ; preds = %while.cond11.backedge.if.end33_crit_edge, %if.then10.if.end33_crit_edge, %if.end.if.end33_crit_edge, %if.then.if.end33_crit_edge
  call void @drm_kms_helper_hotplug_event(ptr noundef %ddev.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_receiver_power_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disable_hpd_ops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @disable_hpd_get, ptr noundef nonnull @disable_hpd_set, ptr noundef nonnull @.str.72) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @disable_hpd_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_hpd_irq = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117, i32 44
  %0 = ptrtoint ptr %disable_hpd_irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disable_hpd_irq, align 1, !range !279
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @disable_hpd_set(ptr nocapture noundef writeonly %data, i64 noundef %val) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool = icmp ne i64 %val, 0
  %disable_hpd_irq = getelementptr inbounds %struct.amdgpu_device, ptr %data, i32 0, i32 117, i32 44
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %disable_hpd_irq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %disable_hpd_irq, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256}
!llvm.named.register.sp = !{!258}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2904, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2905, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2906, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2908, i32 23}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2910, i32 23}
!10 = !{ptr @dtn_debugfs_init.dtn_log_fops, !11, !"dtn_log_fops", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3490, i32 38}
!12 = !{ptr @dtn_debugfs_init.dcc_en_bits_fops, !13, !"dcc_en_bits_fops", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3496, i32 38}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3505, i32 22}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3507, i32 22}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3514, i32 29}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3517, i32 29}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3520, i32 29}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3523, i32 29}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3526, i32 29}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3529, i32 29}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3532, i32 29}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3535, i32 29}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2634, i32 4}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2635, i32 4}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2636, i32 4}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2637, i32 4}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2639, i32 4}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2641, i32 4}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2642, i32 4}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2643, i32 4}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2644, i32 4}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2645, i32 4}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2646, i32 4}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2647, i32 4}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2648, i32 4}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2649, i32 4}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2650, i32 4}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2651, i32 4}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2652, i32 4}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2653, i32 4}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2654, i32 4}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2655, i32 4}
!74 = !{ptr @dp_debugfs_entries, !75, !"dp_debugfs_entries", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2633, i32 3}
!76 = !{ptr @dp_link_settings_debugfs_fops, !77, !"dp_link_settings_debugfs_fops", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2572, i32 37}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 199, i32 32}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 206, i32 32}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 213, i32 32}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 220, i32 32}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 229, i32 7}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 275, i32 3}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 306, i32 3}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 83, i32 3}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 128, i32 4}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!103 = !{ptr @dp_phy_settings_debugfs_fop, !104, !"dp_phy_settings_debugfs_fop", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2579, i32 37}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 382, i32 32}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 510, i32 3}
!109 = !{ptr @dp_lttpr_status_fops, !110, !"dp_lttpr_status_fops", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2507, i32 1}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 452, i32 16}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 457, i32 17}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 459, i32 17}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 461, i32 17}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 463, i32 17}
!121 = !{ptr @dp_phy_test_pattern_fops, !122, !"dp_phy_test_pattern_fops", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2586, i32 37}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 689, i32 3}
!125 = !{ptr @hdcp_sink_capability_fops, !126, !"hdcp_sink_capability_fops", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2509, i32 1}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 994, i32 16}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1001, i32 17}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1001, i32 24}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1003, i32 24}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1006, i32 24}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1008, i32 14}
!139 = !{ptr @sdp_message_fops, !140, !"sdp_message_fops", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2592, i32 37}
!141 = !{ptr @dp_dpcd_address_debugfs_fops, !142, !"dp_dpcd_address_debugfs_fops", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2598, i32 37}
!143 = !{ptr @dp_dpcd_size_debugfs_fops, !144, !"dp_dpcd_size_debugfs_fops", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2604, i32 37}
!145 = !{ptr @dp_dpcd_data_debugfs_fops, !146, !"dp_dpcd_data_debugfs_fops", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2610, i32 37}
!147 = !{ptr @dp_dsc_clock_en_debugfs_fops, !148, !"dp_dsc_clock_en_debugfs_fops", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2514, i32 37}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1370, i32 3}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1439, i32 3}
!153 = !{ptr @dp_dsc_slice_width_debugfs_fops, !154, !"dp_dsc_slice_width_debugfs_fops", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2521, i32 37}
!155 = !{ptr @dp_dsc_slice_height_debugfs_fops, !156, !"dp_dsc_slice_height_debugfs_fops", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2528, i32 37}
!157 = !{ptr @dp_dsc_bits_per_pixel_debugfs_fops, !158, !"dp_dsc_bits_per_pixel_debugfs_fops", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2535, i32 37}
!159 = !{ptr @dp_dsc_pic_width_debugfs_fops, !160, !"dp_dsc_pic_width_debugfs_fops", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2542, i32 37}
!161 = !{ptr @dp_dsc_pic_height_debugfs_fops, !162, !"dp_dsc_pic_height_debugfs_fops", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2548, i32 37}
!163 = !{ptr @dp_dsc_chunk_size_debugfs_fops, !164, !"dp_dsc_chunk_size_debugfs_fops", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2554, i32 37}
!165 = !{ptr @dp_dsc_slice_bpg_offset_debugfs_fops, !166, !"dp_dsc_slice_bpg_offset_debugfs_fops", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2560, i32 37}
!167 = !{ptr @dp_dsc_fec_support_fops, !168, !"dp_dsc_fec_support_fops", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2503, i32 1}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1210, i32 16}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1211, i32 16}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 54, i32 13}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 54, i32 21}
!177 = !{ptr @dp_max_bpc_debugfs_fops, !178, !"dp_max_bpc_debugfs_fops", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2617, i32 37}
!179 = !{ptr @.str.67, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2359, i32 3}
!181 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2444, i32 3}
!183 = !{ptr @dp_dsc_disable_passthrough_debugfs_fops, !184, !"dp_dsc_disable_passthrough_debugfs_fops", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2624, i32 37}
!185 = !{ptr @psr_capability_fops, !186, !"psr_capability_fops", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2512, i32 1}
!187 = !{ptr @.str.69, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 856, i32 16}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 858, i32 17}
!191 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 861, i32 16}
!193 = !{ptr @psr_fops, !194, !"psr_fops", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2743, i32 1}
!195 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @current_backlight_fops, !197, !"current_backlight_fops", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2745, i32 1}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2479, i32 16}
!200 = !{ptr @target_backlight_fops, !201, !"target_backlight_fops", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2746, i32 1}
!202 = !{ptr @edp_ilr_debugfs_fops, !203, !"edp_ilr_debugfs_fops", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2881, i32 37}
!204 = !{ptr @.str.74, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2852, i32 3}
!206 = !{ptr @.str.75, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2783, i32 18}
!208 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2786, i32 17}
!210 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2752, i32 4}
!212 = !{ptr @.str.78, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2753, i32 4}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2754, i32 4}
!216 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2755, i32 4}
!218 = distinct !{null, !219, !"connector_debugfs_entries", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2751, i32 3}
!220 = !{ptr @force_yuv420_output_fops, !221, !"force_yuv420_output_fops", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2690, i32 1}
!222 = !{ptr @output_bpc_fops, !223, !"output_bpc_fops", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2506, i32 1}
!224 = !{ptr @.str.81, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 920, i32 16}
!226 = !{ptr @.str.82, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 921, i32 16}
!228 = !{ptr @trigger_hotplug_debugfs_fops, !229, !"trigger_hotplug_debugfs_fops", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2566, i32 37}
!230 = !{ptr @internal_display_fops, !231, !"internal_display_fops", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2511, i32 1}
!232 = !{ptr @.str.83, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 1024, i32 16}
!234 = distinct !{null, !235, !"hdmi_debugfs_entries", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2662, i32 3}
!236 = !{ptr @.str.84, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3467, i32 8}
!238 = !{ptr @mst_topo_fops, !239, !"mst_topo_fops", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3426, i32 1}
!240 = !{ptr @.str.85, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3237, i32 17}
!242 = !{ptr @visual_confirm_fops, !243, !"visual_confirm_fops", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3427, i32 1}
!244 = !{ptr @dmub_tracebuffer_fops, !245, !"dmub_tracebuffer_fops", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2505, i32 1}
!246 = !{ptr @.str.86, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 796, i32 7}
!248 = !{ptr @dmub_fw_state_fops, !249, !"dmub_fw_state_fops", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2504, i32 1}
!250 = !{ptr @force_timing_sync_ops, !251, !"force_timing_sync_ops", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3340, i32 1}
!252 = !{ptr @dmcub_trace_event_state_fops, !253, !"dmcub_trace_event_state_fops", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 2740, i32 1}
!254 = !{ptr @trigger_hpd_mst_ops, !255, !"trigger_hpd_mst_ops", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3307, i32 1}
!256 = !{ptr @disable_hpd_ops, !257, !"disable_hpd_ops", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_debugfs.c", i32 3371, i32 1}
!258 = !{!"sp"}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 1, !"min_enum_size", i32 4}
!261 = !{i32 8, !"branch-target-enforcement", i32 0}
!262 = !{i32 8, !"sign-return-address", i32 0}
!263 = !{i32 8, !"sign-return-address-all", i32 0}
!264 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!268 = !{!"branch_weights", i32 2000, i32 1}
!269 = !{i64 2150588204, i64 2150588229}
!270 = !{!"branch_weights", i32 1, i32 2000}
!271 = !{i64 3083078}
!272 = !{i64 3083275}
!273 = !{i64 2150568508}
!274 = !{i64 2159760417, i64 2159760697, i64 2159761031, i64 2159761365}
!275 = !{i64 2159610574, i64 2159610854, i64 2159611188, i64 2159611522}
!276 = !{!"auto-init"}
!277 = !{i64 2150587523, i64 2150587548}
!278 = !{i64 2159620004, i64 2159620284, i64 2159620618, i64 2159620952}
!279 = !{i8 0, i8 2}
!280 = !{i64 2159641094, i64 2159641374, i64 2159641708, i64 2159642042}
!281 = !{i64 2159651978, i64 2159652258, i64 2159652592, i64 2159652926}
!282 = !{i64 2159662965, i64 2159663245, i64 2159663579, i64 2159663913}
!283 = !{i64 2159673952, i64 2159674232, i64 2159674566, i64 2159674900}
!284 = !{i64 2159684836, i64 2159685116, i64 2159685450, i64 2159685784}
!285 = !{i64 2159693894, i64 2159694174, i64 2159694508, i64 2159694842}
!286 = !{i64 2159702952, i64 2159703232, i64 2159703566, i64 2159703900}
!287 = !{i64 2159712010, i64 2159712290, i64 2159712624, i64 2159712958}
!288 = !{i64 2159722608, i64 2159722888, i64 2159723222, i64 2159723556}
