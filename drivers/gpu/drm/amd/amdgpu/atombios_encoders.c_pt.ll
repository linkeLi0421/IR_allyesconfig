; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/atombios_encoders.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.amdgpu_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr }
%union.dig_transmitter_control = type { %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6 }
%struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6 = type { i8, i8, %union.anon.124, i8, i32, i8, i8, i8, i8, i32 }
%union.anon.124 = type { i8 }
%struct.amdgpu_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i16, %struct.amdgpu_hpd, %struct.amdgpu_router, ptr, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_connector_atom_dig = type { [15 x i8], [16 x i8], i8, i32, i32, i8 }
%struct.amdgpu_crtc = type { %struct.drm_crtc, i32, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, i32, i32, %struct.dm_irq_params, %struct.amdgpu_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, %struct.hrtimer, i32, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.dfixed = type { i32 }
%struct.dm_irq_params = type { i32, %struct.mod_vrr_params, ptr, i32, i8, %struct.mod_freesync_config, i32 }
%struct.mod_vrr_params = type { i8, i8, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_adjust, %struct.mod_vrr_params_fixed_refresh, %struct.mod_vrr_params_btr }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.mod_vrr_params_fixed_refresh = type { i8, i8, i8, i32, i32 }
%struct.mod_vrr_params_btr = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.mod_freesync_config = type { i32, i8, i8, i8, i32, i32, i32 }
%struct.amdgpu_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5 = type { i16, i8, i8, i8, i8, i8, %union.anon.123, i8, i8, i8, i8 }
%union.anon.123 = type { %struct._ATOM_DIG_TRANSMITTER_CONFIG_V5 }
%struct._ATOM_DIG_TRANSMITTER_CONFIG_V5 = type { i8 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%union.dig_encoder_control = type { %union._DIG_ENCODER_CONTROL_PARAMETERS_V5 }
%union._DIG_ENCODER_CONTROL_PARAMETERS_V5 = type { %struct._ENCODER_GENERIC_CMD_PARAMETERS_V5 }
%struct._ENCODER_GENERIC_CMD_PARAMETERS_V5 = type { i8, i8, [2 x i8], [2 x i32] }
%struct._DIG_ENCODER_CONTROL_PARAMETERS = type { i16, i8, i8, i8, i8, [2 x i8] }
%struct._DIG_ENCODER_CONTROL_PARAMETERS_V3 = type { i16, %struct._ATOM_DIG_ENCODER_CONFIG_V3, i8, %union.anon.113, i8, i8, i8 }
%struct._ATOM_DIG_ENCODER_CONFIG_V3 = type { i8 }
%union.anon.113 = type { i8 }
%struct._DIG_ENCODER_CONTROL_PARAMETERS_V4 = type { i16, %union.anon.114, i8, %union.anon.115, i8, i8, i8 }
%union.anon.114 = type { %struct._ATOM_DIG_ENCODER_CONFIG_V4 }
%struct._ATOM_DIG_ENCODER_CONFIG_V4 = type { i8 }
%union.anon.115 = type { i8 }
%struct._ENCODER_STREAM_SETUP_PARAMETERS_V5 = type { i8, i8, i8, i8, i32, i8, i8, [2 x i8] }
%struct.amdgpu_display_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._DAC_ENCODER_CONTROL_PARAMETERS = type { i16, i8, i8 }
%union.dvo_encoder_control = type { %struct._DVO_ENCODER_CONTROL_PS_ALLOCATION }
%struct._DVO_ENCODER_CONTROL_PS_ALLOCATION = type { %struct._DVO_ENCODER_CONTROL_PARAMETERS, %struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS }
%struct._DVO_ENCODER_CONTROL_PARAMETERS = type { i16, i16, i8, i8, %union._ATOM_ENCODER_ATTRIBUTE }
%union._ATOM_ENCODER_ATTRIBUTE = type { %struct._ATOM_ENCODER_ANALOG_ATTRIBUTE }
%struct._ATOM_ENCODER_ANALOG_ATTRIBUTE = type { i8, [1 x i8] }
%struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS = type { i16, i16, i8, i8, i8, i8 }
%struct._ENABLE_EXTERNAL_TMDS_ENCODER_PARAMETERS = type { i8, i8, [2 x i8] }
%struct._DVO_ENCODER_CONTROL_PARAMETERS_V3 = type { i16, i8, i8, [4 x i8] }
%struct._DVO_ENCODER_CONTROL_PARAMETERS_V1_4 = type { i16, i8, i8, i8, [3 x i8] }
%union.crtc_source_param = type { %struct._SELECT_CRTC_SOURCE_PARAMETERS }
%struct._SELECT_CRTC_SOURCE_PARAMETERS = type { i8, i8, [2 x i8] }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.97, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
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
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
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
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.common_irq_params = type { ptr, i32, %struct.atomic64_t }
%struct.amdgpu_dm_backlight_caps = type { ptr, i32, i32, i32, i32, i8, i8 }
%struct.dm_compressor_info = type { ptr, ptr, i64 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%union.external_encoder_control = type { %struct._EXTERNAL_ENCODER_CONTROL_PS_ALLOCATION_V3 }
%struct._EXTERNAL_ENCODER_CONTROL_PS_ALLOCATION_V3 = type { %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, [2 x i32] }
%struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3 = type { %union.anon.125, i8, i8, i8, i8, i8, i8 }
%union.anon.125 = type { i16 }
%struct._DAC_LOAD_DETECTION_PS_ALLOCATION = type { %struct._DAC_LOAD_DETECTION_PARAMETERS, [2 x i32] }
%struct._DAC_LOAD_DETECTION_PARAMETERS = type { i16, i8, i8 }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct._ATOM_LVDS_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, %struct._ATOM_DTD_FORMAT, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_DTD_FORMAT = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %union._ATOM_MODE_MISC_INFO_ACCESS, i8, i8 }
%union._ATOM_MODE_MISC_INFO_ACCESS = type { %struct._ATOM_MODE_MISC_INFO }
%struct._ATOM_MODE_MISC_INFO = type { i16 }
%struct._ATOM_FAKE_EDID_PATCH_RECORD = type { i8, i8, [1 x i8] }
%struct._ATOM_PANEL_RESOLUTION_PATCH_RECORD = type <{ i8, i16, i16 }>

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Memory allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amdgpu_bl%d\00", [20 x i8] zeroinitializer }, align 32
@amdgpu_atombios_encoder_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @amdgpu_atombios_encoder_update_backlight_status, ptr @amdgpu_atombios_encoder_get_backlight_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Backlight registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_atombios_encoder_init_backlight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] amdgpu atom DIG backlight initialized\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu_atombios_encoder_init_backlight\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/amd/amdgpu/atombios_encoders.c\00", [49 x i8] zeroinitializer }, align 32
@amdgpu_atombios_encoder_init_backlight._entry_ptr = internal global ptr @amdgpu_atombios_encoder_init_backlight._entry, section ".printk_index", align 4
@amdgpu_atombios_encoder_fini_backlight._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016[drm] amdgpu atom LVDS backlight unloaded\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu_atombios_encoder_fini_backlight\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_atombios_encoder_fini_backlight._entry_ptr = internal global ptr @amdgpu_atombios_encoder_fini_backlight._entry, section ".printk_index", align 4
@amdgpu_audio = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported action 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown table version %d, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"encoder dpms %d to mode %d, devices %08x, active_devices %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown table version: %d, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"detect returned false \0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bios 0 scratch %x %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LCD1 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LCD1 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CRT1 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CRT1 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CRT2 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CRT2 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP1 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP1 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP2 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP2 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP3 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP3 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP4 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP4 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP5 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP5 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP6 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP6 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad LCD record %d\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.amdgpu_atombios_encoder_setup_dig_encoder = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_atombios_encoder_setup_dig_encoder.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_atombios_encoder_get_bpc = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_atombios_encoder_setup_dvo = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_atombios_encoder_set_crtc_source = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\09\0A\0B\0C\0D\0E", [25 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_atombios_encoder_set_crtc_source.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_atombios_encoder_set_crtc_source.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\09\0A\0B\0C\0D\0E", [25 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_atombios_encoder_setup_external_encoder = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 20, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 30, i64 32, i64 33]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 30, i64 32, i64 33]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 30, i64 32, i64 33]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 20]
@__sancov_gen_cov_switch_values.44 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 270000, i64 324000, i64 540000]
@__sancov_gen_cov_switch_values.53 = internal global [12 x i64] [i64 10, i64 32, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 15, i64 16, i64 19, i64 20]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 20, i64 21, i64 30, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 5, i64 11, i64 15, i64 19, i64 20, i64 21, i64 22, i64 25]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [10 x i64] [i64 8, i64 32, i64 20, i64 21, i64 22, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.65 = internal global [10 x i64] [i64 8, i64 32, i64 20, i64 21, i64 22, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 270000, i64 540000]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 255]
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 191, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 199, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [38 x i8] c"amdgpu_atombios_encoder_backlight_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 160, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 203, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 216, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 250, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 724, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 729, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1402, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1656, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1751, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1757, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1855, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1860, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1869, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1874, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1883, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1888, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1897, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1902, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1911, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1916, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1925, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1930, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1939, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1944, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1953, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1958, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1967, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1972, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [50 x i8] c"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 2117, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant [55 x i8] c"switch.table.amdgpu_atombios_encoder_setup_dig_encoder\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [58 x i8] c"switch.table.amdgpu_atombios_encoder_setup_dig_encoder.33\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [45 x i8] c"switch.table.amdgpu_atombios_encoder_get_bpc\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [47 x i8] c"switch.table.amdgpu_atombios_encoder_setup_dvo\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [53 x i8] c"switch.table.amdgpu_atombios_encoder_set_crtc_source\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [56 x i8] c"switch.table.amdgpu_atombios_encoder_set_crtc_source.34\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [56 x i8] c"switch.table.amdgpu_atombios_encoder_set_crtc_source.35\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [60 x i8] c"switch.table.amdgpu_atombios_encoder_setup_external_encoder\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @amdgpu_atombios_encoder_fini_backlight._entry, ptr @amdgpu_atombios_encoder_fini_backlight._entry_ptr, ptr @amdgpu_atombios_encoder_init_backlight._entry, ptr @amdgpu_atombios_encoder_init_backlight._entry_ptr, ptr @.str, ptr @.str.1, ptr @amdgpu_atombios_encoder_backlight_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.amdgpu_atombios_encoder_setup_dig_encoder, ptr @switch.table.amdgpu_atombios_encoder_setup_dig_encoder.33, ptr @switch.table.amdgpu_atombios_encoder_get_bpc, ptr @switch.table.amdgpu_atombios_encoder_setup_dvo, ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source, ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source.34, ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source.35, ptr @switch.table.amdgpu_atombios_encoder_setup_external_encoder], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atombios_encoder_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atombios_encoder_init_backlight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atombios_encoder_fini_backlight._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_encoder_setup_dig_encoder to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_encoder_setup_dig_encoder.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_encoder_get_bpc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_encoder_setup_dvo to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_atombios_encoder_setup_external_encoder to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @amdgpu_atombios_encoder_get_backlight_level_from_reg(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1483, i32 noundef 0) #11
  %and = lshr i32 %call, 8
  %conv = trunc i32 %and to i8
  ret i8 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_set_backlight_level_to_reg(ptr noundef %adev, i8 noundef zeroext %backlight_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 1483, i32 noundef 0) #11
  %and = and i32 %call, -65281
  %conv = zext i8 %backlight_level to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %and, %shl
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 1483, i32 noundef %or, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @amdgpu_atombios_encoder_get_backlight_level(ptr nocapture noundef readonly %amdgpu_encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %amdgpu_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amdgpu_encoder, align 4
  %firmware_flags = getelementptr i8, ptr %1, i32 22128
  %2 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 1483, i32 noundef 0) #11
  %and.i = lshr i32 %call.i, 8
  %conv.i = trunc i32 %and.i to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_set_backlight_level(ptr noundef %amdgpu_encoder, i8 noundef zeroext %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %amdgpu_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amdgpu_encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %firmware_flags = getelementptr i8, ptr %1, i32 22128
  %2 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder, i32 0, i32 3
  %4 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devices, align 4
  %and3 = and i32 %5, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder, i32 0, i32 12
  %6 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_priv, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %backlight_level = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %backlight_level to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %level, ptr %backlight_level, align 4
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 1483, i32 noundef 0) #11
  %and.i = and i32 %call.i, -65281
  %conv.i = zext i8 %level to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %and.i, %shl.i
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef 1483, i32 noundef %or.i, i32 noundef 0) #11
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder, i32 0, i32 2
  %9 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_id, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.then6.cleanup_crit_edge [
    i32 30, label %if.then6.sw.bb_crit_edge
    i32 31, label %if.then6.sw.bb_crit_edge27
    i32 32, label %if.then6.sw.bb_crit_edge28
    i32 33, label %if.then6.sw.bb_crit_edge29
    i32 37, label %if.then6.sw.bb_crit_edge30
  ]

if.then6.sw.bb_crit_edge30:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then6.sw.bb_crit_edge29:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then6.sw.bb_crit_edge28:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then6.sw.bb_crit_edge27:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then6.sw.bb_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.then6.sw.bb_crit_edge, %if.then6.sw.bb_crit_edge27, %if.then6.sw.bb_crit_edge28, %if.then6.sw.bb_crit_edge29, %if.then6.sw.bb_crit_edge30
  %12 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %backlight_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  br i1 %cmp, label %sw.bb.cleanup.sink.split_crit_edge, label %if.else

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %amdgpu_encoder, i32 noundef 4, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.else ], [ 2, %sw.bb.cleanup.sink.split_crit_edge ]
  tail call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %amdgpu_encoder, i32 noundef %.sink, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %encoder, i32 noundef %action, i8 noundef zeroext %lane_num, i8 noundef zeroext %lane_set) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.dig_transmitter_control, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %2 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_priv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #11
  %4 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args, i32 0, i32 1
  %5 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args, i32 0, i32 2
  %6 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args, i32 0, i32 3
  %7 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args, i32 0, i32 4
  %8 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args, i32 0, i32 5
  %9 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args, i32 0, i32 6
  %10 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args, i32 0, i32 7
  %11 = call ptr @memset(ptr %args, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %frev, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %13 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %crev, align 1, !annotation !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %action)
  %cmp = icmp eq i32 %action, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call ptr @amdgpu_get_connector_for_encoder_init(ptr noundef %encoder) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dig_encoder2 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %dig_encoder2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dig_encoder2, align 4
  %call4 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dig_encoder.0 = phi i32 [ 0, %if.then ], [ %15, %if.else ]
  %connector.0 = phi ptr [ %call3, %if.then ], [ %call4, %if.else ]
  %tobool.not = icmp eq ptr %connector.0, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 7
  %16 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %con_priv, align 4
  %hpd = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 11
  %18 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hpd, align 4
  %dp_clock10 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %dp_clock10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dp_clock10, align 4
  %dp_lane_count11 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %dp_lane_count11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dp_lane_count11, align 4
  %connector_object_id12 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 10
  %24 = ptrtoint ptr %connector_object_id12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %connector_object_id12, align 2
  %26 = and i16 %25, 255
  %and = zext i16 %26 to i32
  %phi.cast = trunc i32 %23 to i8
  %phi.bo = sdiv i32 %21, 10
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end.if.end13_crit_edge
  %dp_clock.0 = phi i32 [ %phi.bo, %if.then5 ], [ 0, %if.end.if.end13_crit_edge ]
  %dp_lane_count.0 = phi i8 [ %phi.cast, %if.then5 ], [ 0, %if.end.if.end13_crit_edge ]
  %connector_object_id.0 = phi i32 [ %and, %if.then5 ], [ 0, %if.end.if.end13_crit_edge ]
  %hpd_id.0 = phi i32 [ %19, %if.then5 ], [ 255, %if.end.if.end13_crit_edge ]
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %27 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtc, align 4
  %tobool14.not = icmp eq ptr %28, null
  br i1 %tobool14.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %pll_id20 = getelementptr inbounds %struct.amdgpu_crtc, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %pll_id20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pll_id20, align 8
  %phi.cast889 = trunc i32 %30 to i8
  %phi.bo890 = and i8 %phi.cast889, 3
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13.if.end21_crit_edge
  %pll_id.0 = phi i8 [ %phi.bo890, %if.then15 ], [ 0, %if.end13.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dig_encoder.0)
  %cmp22 = icmp eq i32 %dig_encoder.0, -1
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.end25.if.then32_crit_edge, label %lor.lhs.false

if.end25.if.then32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end25
  %call29 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 5
  br i1 %cmp30, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end25.if.then32_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %lor.lhs.false.if.end33_crit_edge
  %is_dp.0.off0 = phi i1 [ true, %if.then32 ], [ false, %lor.lhs.false.if.end33_crit_edge ]
  %31 = call ptr @memset(ptr %args, i32 0, i32 16)
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %32 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %encoder_id, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %33, label %if.end33.sw.epilog_crit_edge [
    i32 20, label %sw.bb
    i32 30, label %if.end33.sw.bb34_crit_edge
    i32 32, label %if.end33.sw.bb34_crit_edge936
    i32 33, label %if.end33.sw.bb34_crit_edge937
    i32 37, label %if.end33.sw.bb34_crit_edge938
    i32 31, label %sw.bb35
  ]

if.end33.sw.bb34_crit_edge938:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34

if.end33.sw.bb34_crit_edge937:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34

if.end33.sw.bb34_crit_edge936:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34

if.end33.sw.bb34_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end33.sw.bb34_crit_edge, %if.end33.sw.bb34_crit_edge936, %if.end33.sw.bb34_crit_edge937, %if.end33.sw.bb34_crit_edge938
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb34, %sw.bb, %if.end33.sw.epilog_crit_edge
  %index.0 = phi i32 [ 0, %if.end33.sw.epilog_crit_edge ], [ 77, %sw.bb35 ], [ 76, %sw.bb34 ], [ 26, %sw.bb ]
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %35 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mode_info, align 8
  %call36 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %36, i32 noundef %index.0, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call36, label %if.end38, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog
  %37 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cond = icmp eq i8 %38, 1
  br i1 %cond, label %sw.bb40, label %sw.default712

sw.bb40:                                          ; preds = %if.end38
  %39 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %crev, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %40, label %sw.default [
    i8 1, label %sw.bb42
    i8 2, label %sw.bb188
    i8 3, label %sw.bb281
    i8 4, label %sw.bb407
    i8 5, label %sw.bb529
    i8 6, label %sw.bb637
  ]

sw.bb42:                                          ; preds = %sw.bb40
  %conv43 = trunc i32 %action to i8
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv43, ptr %6, align 1
  br i1 %cmp, label %if.then46, label %if.else48

if.then46:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  %conv47 = trunc i32 %connector_object_id.0 to i16
  %43 = shl nuw i16 %conv47, 8
  %44 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %args, align 2
  br label %if.end70

if.else48:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp49 = icmp eq i32 %action, 11
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %lane_num, ptr %args, align 2
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %lane_set, ptr %4, align 1
  br label %if.end70

if.else52:                                        ; preds = %if.else48
  br i1 %is_dp.0.off0, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #13
  %conv55 = trunc i32 %dp_clock.0 to i16
  %47 = call i16 @llvm.bswap.i16(i16 %conv55)
  %48 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %args, align 2
  br label %if.end70

if.else56:                                        ; preds = %if.else52
  %pixel_clock = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %49 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pixel_clock, align 4
  %call57 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %50) #11
  %51 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pixel_clock, align 4
  br i1 %call57, label %if.then58, label %if.else63

if.then58:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #13
  %div61 = udiv i32 %52, 20
  %conv62 = trunc i32 %div61 to i16
  %53 = call i16 @llvm.bswap.i16(i16 %conv62)
  %54 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %args, align 2
  br label %if.end70

if.else63:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #13
  %div65 = udiv i32 %52, 10
  %conv66 = trunc i32 %div65 to i16
  %55 = call i16 @llvm.bswap.i16(i16 %conv66)
  %56 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %args, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %if.then58, %if.then54, %if.then51, %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dig_encoder.0)
  %tobool71.not = icmp eq i32 %dig_encoder.0, 0
  %. = select i1 %tobool71.not, i8 0, i8 8
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %., ptr %5, align 2
  %flags = getelementptr i8, ptr %1, i32 2376
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 8
  %and82 = and i32 %59, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end70.if.end148_crit_edge, label %land.lhs.true

if.end70.if.end148_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

land.lhs.true:                                    ; preds = %if.end70
  %60 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %encoder_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %61)
  %cmp85 = icmp ne i32 %61, 30
  %brmerge = or i1 %is_dp.0.off0, %cmp85
  br i1 %brmerge, label %land.lhs.true.if.end148_crit_edge, label %lor.lhs.false90

land.lhs.true.if.end148_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

lor.lhs.false90:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %pixel_clock91 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %62 = ptrtoint ptr %pixel_clock91 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pixel_clock91, align 4
  %call92 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %63) #11
  br label %if.end148

if.end148:                                        ; preds = %lor.lhs.false90, %land.lhs.true.if.end148_crit_edge, %if.end70.if.end148_crit_edge
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool149.not = icmp eq i8 %65, 0
  br i1 %tobool149.not, label %if.end148.if.end160_crit_edge, label %if.then150

if.end148.if.end160_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then150:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %5, align 2
  %68 = or i8 %67, 4
  store i8 %68, ptr %5, align 2
  br label %if.end160

if.end160:                                        ; preds = %if.then150, %if.end148.if.end160_crit_edge
  br i1 %is_dp.0.off0, label %if.then162, label %if.else167

if.then162:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %5, align 2
  %71 = or i8 %70, 2
  store i8 %71, ptr %5, align 2
  br label %sw.epilog715

if.else167:                                       ; preds = %if.end160
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %72 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %devices, align 4
  %and168 = and i32 %73, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.else167.sw.epilog715_crit_edge, label %if.then170

if.else167.sw.epilog715_crit_edge:                ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog715

if.then170:                                       ; preds = %if.else167
  %coherent_mode = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 1
  %74 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %coherent_mode, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool171.not = icmp eq i8 %75, 0
  br i1 %tobool171.not, label %if.then170.if.end177_crit_edge, label %if.then172

if.then170.if.end177_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.then172:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %5, align 2
  %78 = or i8 %77, 2
  store i8 %78, ptr %5, align 2
  br label %if.end177

if.end177:                                        ; preds = %if.then172, %if.then170.if.end177_crit_edge
  %pixel_clock178 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %79 = ptrtoint ptr %pixel_clock178 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pixel_clock178, align 4
  %call179 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %80) #11
  br i1 %call179, label %if.then180, label %if.end177.sw.epilog715_crit_edge

if.end177.sw.epilog715_crit_edge:                 ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog715

if.then180:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %5, align 2
  %83 = or i8 %82, 1
  store i8 %83, ptr %5, align 2
  br label %sw.epilog715

sw.bb188:                                         ; preds = %sw.bb40
  %conv189 = trunc i32 %action to i8
  %84 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv189, ptr %6, align 1
  br i1 %cmp, label %if.then193, label %if.else195

if.then193:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #13
  %conv194 = trunc i32 %connector_object_id.0 to i16
  %85 = shl nuw i16 %conv194, 8
  %86 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %args, align 2
  br label %if.end221

if.else195:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp196 = icmp eq i32 %action, 11
  br i1 %cmp196, label %if.then198, label %if.else201

if.then198:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %lane_num, ptr %args, align 2
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %lane_set, ptr %4, align 1
  br label %if.end221

if.else201:                                       ; preds = %if.else195
  br i1 %is_dp.0.off0, label %if.then203, label %if.else206

if.then203:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #13
  %conv205 = trunc i32 %dp_clock.0 to i16
  %89 = call i16 @llvm.bswap.i16(i16 %conv205)
  %90 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %args, align 2
  br label %if.end221

if.else206:                                       ; preds = %if.else201
  %pixel_clock207 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %91 = ptrtoint ptr %pixel_clock207 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pixel_clock207, align 4
  %call208 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %92) #11
  %93 = ptrtoint ptr %pixel_clock207 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pixel_clock207, align 4
  br i1 %call208, label %if.then209, label %if.else214

if.then209:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #13
  %div212 = udiv i32 %94, 20
  %conv213 = trunc i32 %div212 to i16
  %95 = call i16 @llvm.bswap.i16(i16 %conv213)
  %96 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %args, align 2
  br label %if.end221

if.else214:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #13
  %div216 = udiv i32 %94, 10
  %conv217 = trunc i32 %div216 to i16
  %97 = call i16 @llvm.bswap.i16(i16 %conv217)
  %98 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %args, align 2
  br label %if.end221

if.end221:                                        ; preds = %if.else214, %if.then209, %if.then203, %if.then198, %if.then193
  %conv222 = trunc i32 %dig_encoder.0 to i8
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load = load i8, ptr %5, align 2
  %bf.value = shl i8 %conv222, 3
  %bf.shl = and i8 %bf.value, 8
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %5, align 2
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool224.not = icmp eq i8 %101, 0
  br i1 %tobool224.not, label %if.end221.if.end230_crit_edge, label %if.then225

if.end221.if.end230_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230

if.then225:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set229 = or i8 %bf.set, 4
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %bf.set229, ptr %5, align 2
  br label %if.end230

if.end230:                                        ; preds = %if.then225, %if.end221.if.end230_crit_edge
  %103 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %encoder_id, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %104, label %if.end230.sw.epilog247_crit_edge [
    i32 30, label %sw.bb232
    i32 32, label %sw.bb237
    i32 33, label %sw.bb242
  ]

if.end230.sw.epilog247_crit_edge:                 ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog247

sw.bb232:                                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load234 = load i8, ptr %5, align 2
  %bf.clear235 = and i8 %bf.load234, 63
  br label %sw.epilog247.sink.split

sw.bb237:                                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load239 = load i8, ptr %5, align 2
  %bf.clear240 = and i8 %bf.load239, 63
  %bf.set241 = or i8 %bf.clear240, 64
  br label %sw.epilog247.sink.split

sw.bb242:                                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load244 = load i8, ptr %5, align 2
  %bf.clear245 = and i8 %bf.load244, 63
  %bf.set246 = or i8 %bf.clear245, -128
  br label %sw.epilog247.sink.split

sw.epilog247.sink.split:                          ; preds = %sw.bb242, %sw.bb237, %sw.bb232
  %bf.set246.sink = phi i8 [ %bf.set246, %sw.bb242 ], [ %bf.set241, %sw.bb237 ], [ %bf.clear235, %sw.bb232 ]
  %109 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %bf.set246.sink, ptr %5, align 2
  br label %sw.epilog247

sw.epilog247:                                     ; preds = %sw.epilog247.sink.split, %if.end230.sw.epilog247_crit_edge
  br i1 %is_dp.0.off0, label %if.then249, label %if.else258

if.then249:                                       ; preds = %sw.epilog247
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load251 = load i8, ptr %5, align 2
  %bf.set257 = or i8 %bf.load251, 18
  store i8 %bf.set257, ptr %5, align 2
  br label %sw.epilog715

if.else258:                                       ; preds = %sw.epilog247
  %devices259 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %111 = ptrtoint ptr %devices259 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %devices259, align 4
  %and260 = and i32 %112, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.else258.sw.epilog715_crit_edge, label %if.then262

if.else258.sw.epilog715_crit_edge:                ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog715

if.then262:                                       ; preds = %if.else258
  %coherent_mode263 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 1
  %113 = ptrtoint ptr %coherent_mode263 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %coherent_mode263, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool264.not = icmp eq i8 %114, 0
  br i1 %tobool264.not, label %if.then262.if.end270_crit_edge, label %if.then265

if.then262.if.end270_crit_edge:                   ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

if.then265:                                       ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load267 = load i8, ptr %5, align 2
  %bf.set269 = or i8 %bf.load267, 2
  store i8 %bf.set269, ptr %5, align 2
  br label %if.end270

if.end270:                                        ; preds = %if.then265, %if.then262.if.end270_crit_edge
  %pixel_clock271 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %116 = ptrtoint ptr %pixel_clock271 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pixel_clock271, align 4
  %call272 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %117) #11
  br i1 %call272, label %if.then273, label %if.end270.sw.epilog715_crit_edge

if.end270.sw.epilog715_crit_edge:                 ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog715

if.then273:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load275 = load i8, ptr %5, align 2
  %bf.set277 = or i8 %bf.load275, 1
  store i8 %bf.set277, ptr %5, align 2
  br label %sw.epilog715

sw.bb281:                                         ; preds = %sw.bb40
  %conv282 = trunc i32 %action to i8
  %119 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv282, ptr %6, align 1
  br i1 %cmp, label %if.then286, label %if.else288

if.then286:                                       ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_pc() #13
  %conv287 = trunc i32 %connector_object_id.0 to i16
  %120 = shl nuw i16 %conv287, 8
  %121 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %args, align 2
  br label %if.end314

if.else288:                                       ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp289 = icmp eq i32 %action, 11
  br i1 %cmp289, label %if.then291, label %if.else294

if.then291:                                       ; preds = %if.else288
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %lane_num, ptr %args, align 2
  %123 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %lane_set, ptr %4, align 1
  br label %if.end314

if.else294:                                       ; preds = %if.else288
  br i1 %is_dp.0.off0, label %if.end314.thread918, label %if.else299

if.end314.thread918:                              ; preds = %if.else294
  call void @__sanitizer_cov_trace_pc() #13
  %conv298 = trunc i32 %dp_clock.0 to i16
  %124 = call i16 @llvm.bswap.i16(i16 %conv298)
  %125 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %args, align 2
  br label %if.end326

if.else299:                                       ; preds = %if.else294
  %pixel_clock300 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %126 = ptrtoint ptr %pixel_clock300 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pixel_clock300, align 4
  %call301 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %127) #11
  %128 = ptrtoint ptr %pixel_clock300 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pixel_clock300, align 4
  br i1 %call301, label %if.then302, label %if.else307

if.then302:                                       ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #13
  %div305 = udiv i32 %129, 20
  %conv306 = trunc i32 %div305 to i16
  %130 = call i16 @llvm.bswap.i16(i16 %conv306)
  %131 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %args, align 2
  br label %if.else318

if.else307:                                       ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #13
  %div309 = udiv i32 %129, 10
  %conv310 = trunc i32 %div309 to i16
  %132 = call i16 @llvm.bswap.i16(i16 %conv310)
  %133 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %args, align 2
  br label %if.else318

if.end314:                                        ; preds = %if.then291, %if.then286
  br i1 %is_dp.0.off0, label %if.end314.if.end326_crit_edge, label %if.end314.if.else318_crit_edge

if.end314.if.else318_crit_edge:                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else318

if.end314.if.end326_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end326

if.else318:                                       ; preds = %if.end314.if.else318_crit_edge, %if.else307, %if.then302
  %pixel_clock319 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %134 = ptrtoint ptr %pixel_clock319 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pixel_clock319, align 4
  %call320 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %135) #11
  %.928 = select i1 %call320, i8 8, i8 4
  br label %if.end326

if.end326:                                        ; preds = %if.else318, %if.end314.if.end326_crit_edge, %if.end314.thread918
  %.sink = phi i8 [ %dp_lane_count.0, %if.end314.thread918 ], [ %dp_lane_count.0, %if.end314.if.end326_crit_edge ], [ %.928, %if.else318 ]
  %136 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %.sink, ptr %7, align 2
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool328.not = icmp eq i8 %138, 0
  br i1 %tobool328.not, label %if.end326.if.end334_crit_edge, label %if.then329

if.end326.if.end334_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334

if.then329:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load331 = load i8, ptr %5, align 2
  %bf.set333 = or i8 %bf.load331, 4
  store i8 %bf.set333, ptr %5, align 2
  br label %if.end334

if.end334:                                        ; preds = %if.then329, %if.end326.if.end334_crit_edge
  %and335 = and i32 %dig_encoder.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  br i1 %tobool336.not, label %if.end334.if.end342_crit_edge, label %if.then337

if.end334.if.end342_crit_edge:                    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end342

if.then337:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load339 = load i8, ptr %5, align 2
  %bf.set341 = or i8 %bf.load339, 8
  store i8 %bf.set341, ptr %5, align 2
  br label %if.end342

if.end342:                                        ; preds = %if.then337, %if.end334.if.end342_crit_edge
  br i1 %is_dp.0.off0, label %land.lhs.true345, label %if.end342.if.else352_crit_edge

if.end342.if.else352_crit_edge:                   ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else352

land.lhs.true345:                                 ; preds = %if.end342
  %dp_extclk = getelementptr i8, ptr %1, i32 3740
  %141 = ptrtoint ptr %dp_extclk to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dp_extclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool346.not = icmp eq i32 %142, 0
  br i1 %tobool346.not, label %land.lhs.true345.if.else352_crit_edge, label %if.then347

land.lhs.true345.if.else352_crit_edge:            ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else352

if.then347:                                       ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load349 = load i8, ptr %5, align 2
  br label %if.end360

if.else352:                                       ; preds = %land.lhs.true345.if.else352_crit_edge, %if.end342.if.else352_crit_edge
  %144 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load355 = load i8, ptr %5, align 2
  %bf.shl357 = shl nuw nsw i8 %pll_id.0, 4
  br label %if.end360

if.end360:                                        ; preds = %if.else352, %if.then347
  %bf.load355.sink = phi i8 [ %bf.load355, %if.else352 ], [ %bf.load349, %if.then347 ]
  %bf.shl357.sink = phi i8 [ %bf.shl357, %if.else352 ], [ 32, %if.then347 ]
  %bf.clear358 = and i8 %bf.load355.sink, -49
  %bf.set359 = or i8 %bf.clear358, %bf.shl357.sink
  %145 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %bf.set359, ptr %5, align 2
  %146 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %encoder_id, align 4
  %148 = zext i32 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %147, label %if.end360.sw.epilog377_crit_edge [
    i32 30, label %sw.bb362
    i32 32, label %sw.bb367
    i32 33, label %sw.bb372
  ]

if.end360.sw.epilog377_crit_edge:                 ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog377

sw.bb362:                                         ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %149)
  %bf.load364 = load i8, ptr %5, align 2
  %bf.clear365 = and i8 %bf.load364, 63
  br label %sw.epilog377.sink.split

sw.bb367:                                         ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #13
  %150 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %150)
  %bf.load369 = load i8, ptr %5, align 2
  %bf.clear370 = and i8 %bf.load369, 63
  %bf.set371 = or i8 %bf.clear370, 64
  br label %sw.epilog377.sink.split

sw.bb372:                                         ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load374 = load i8, ptr %5, align 2
  %bf.clear375 = and i8 %bf.load374, 63
  %bf.set376 = or i8 %bf.clear375, -128
  br label %sw.epilog377.sink.split

sw.epilog377.sink.split:                          ; preds = %sw.bb372, %sw.bb367, %sw.bb362
  %bf.set376.sink = phi i8 [ %bf.set376, %sw.bb372 ], [ %bf.set371, %sw.bb367 ], [ %bf.clear365, %sw.bb362 ]
  %152 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %bf.set376.sink, ptr %5, align 2
  br label %sw.epilog377

sw.epilog377:                                     ; preds = %sw.epilog377.sink.split, %if.end360.sw.epilog377_crit_edge
  br i1 %is_dp.0.off0, label %if.then379, label %if.else384

if.then379:                                       ; preds = %sw.epilog377
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %153)
  %bf.load381 = load i8, ptr %5, align 2
  %bf.set383 = or i8 %bf.load381, 2
  store i8 %bf.set383, ptr %5, align 2
  br label %sw.epilog715

if.else384:                                       ; preds = %sw.epilog377
  %devices385 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %154 = ptrtoint ptr %devices385 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %devices385, align 4
  %and386 = and i32 %155, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and386)
  %tobool387.not = icmp eq i32 %and386, 0
  br i1 %tobool387.not, label %if.else384.sw.epilog715_crit_edge, label %if.then388

if.else384.sw.epilog715_crit_edge:                ; preds = %if.else384
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog715

if.then388:                                       ; preds = %if.else384
  %coherent_mode389 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 1
  %156 = ptrtoint ptr %coherent_mode389 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %coherent_mode389, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool390.not = icmp eq i8 %157, 0
  br i1 %tobool390.not, label %if.then388.if.end396_crit_edge, label %if.then391

if.then388.if.end396_crit_edge:                   ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end396

if.then391:                                       ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load393 = load i8, ptr %5, align 2
  %bf.set395 = or i8 %bf.load393, 2
  store i8 %bf.set395, ptr %5, align 2
  br label %if.end396

if.end396:                                        ; preds = %if.then391, %if.then388.if.end396_crit_edge
  %pixel_clock397 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %159 = ptrtoint ptr %pixel_clock397 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pixel_clock397, align 4
  %call398 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %160) #11
  br i1 %call398, label %if.then399, label %if.end396.sw.epilog715_crit_edge

if.end396.sw.epilog715_crit_edge:                 ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog715

if.then399:                                       ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load401 = load i8, ptr %5, align 2
  %bf.set403 = or i8 %bf.load401, 1
  store i8 %bf.set403, ptr %5, align 2
  br label %sw.epilog715

sw.bb407:                                         ; preds = %sw.bb40
  %conv408 = trunc i32 %action to i8
  %162 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv408, ptr %6, align 1
  br i1 %cmp, label %if.then412, label %if.else414

if.then412:                                       ; preds = %sw.bb407
  call void @__sanitizer_cov_trace_pc() #13
  %conv413 = trunc i32 %connector_object_id.0 to i16
  %163 = shl nuw i16 %conv413, 8
  %164 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %args, align 2
  br label %if.end439

if.else414:                                       ; preds = %sw.bb407
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp415 = icmp eq i32 %action, 11
  br i1 %cmp415, label %if.then417, label %if.else419

if.then417:                                       ; preds = %if.else414
  call void @__sanitizer_cov_trace_pc() #13
  %165 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %lane_num, ptr %args, align 2
  %166 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %lane_set, ptr %4, align 1
  br label %if.end439

if.else419:                                       ; preds = %if.else414
  br i1 %is_dp.0.off0, label %if.end439.thread919, label %if.else424

if.end439.thread919:                              ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #13
  %conv423 = trunc i32 %dp_clock.0 to i16
  %167 = call i16 @llvm.bswap.i16(i16 %conv423)
  %168 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %args, align 2
  br label %if.end452

if.else424:                                       ; preds = %if.else419
  %pixel_clock425 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %169 = ptrtoint ptr %pixel_clock425 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pixel_clock425, align 4
  %call426 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %170) #11
  %171 = ptrtoint ptr %pixel_clock425 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %pixel_clock425, align 4
  br i1 %call426, label %if.then427, label %if.else432

if.then427:                                       ; preds = %if.else424
  call void @__sanitizer_cov_trace_pc() #13
  %div430 = udiv i32 %172, 20
  %conv431 = trunc i32 %div430 to i16
  %173 = call i16 @llvm.bswap.i16(i16 %conv431)
  %174 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %args, align 2
  br label %if.else444

if.else432:                                       ; preds = %if.else424
  call void @__sanitizer_cov_trace_pc() #13
  %div434 = udiv i32 %172, 10
  %conv435 = trunc i32 %div434 to i16
  %175 = call i16 @llvm.bswap.i16(i16 %conv435)
  %176 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %args, align 2
  br label %if.else444

if.end439:                                        ; preds = %if.then417, %if.then412
  br i1 %is_dp.0.off0, label %if.end439.if.end452_crit_edge, label %if.end439.if.else444_crit_edge

if.end439.if.else444_crit_edge:                   ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else444

if.end439.if.end452_crit_edge:                    ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end452

if.else444:                                       ; preds = %if.end439.if.else444_crit_edge, %if.else432, %if.then427
  %pixel_clock445 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %177 = ptrtoint ptr %pixel_clock445 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %pixel_clock445, align 4
  %call446 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %178) #11
  %.929 = select i1 %call446, i8 8, i8 4
  br label %if.end452

if.end452:                                        ; preds = %if.else444, %if.end439.if.end452_crit_edge, %if.end439.thread919
  %.sink921 = phi i8 [ %dp_lane_count.0, %if.end439.thread919 ], [ %dp_lane_count.0, %if.end439.if.end452_crit_edge ], [ %.929, %if.else444 ]
  %179 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %.sink921, ptr %7, align 2
  %180 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool454.not = icmp eq i8 %181, 0
  br i1 %tobool454.not, label %if.end452.if.end459_crit_edge, label %if.then455

if.end452.if.end459_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end459

if.then455:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #13
  %182 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load456 = load i8, ptr %5, align 2
  %bf.set458 = or i8 %bf.load456, 4
  store i8 %bf.set458, ptr %5, align 2
  br label %if.end459

if.end459:                                        ; preds = %if.then455, %if.end452.if.end459_crit_edge
  %and460 = and i32 %dig_encoder.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and460)
  %tobool461.not = icmp eq i32 %and460, 0
  br i1 %tobool461.not, label %if.end459.if.end466_crit_edge, label %if.then462

if.end459.if.end466_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end466

if.then462:                                       ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load463 = load i8, ptr %5, align 2
  %bf.set465 = or i8 %bf.load463, 8
  store i8 %bf.set465, ptr %5, align 2
  br label %if.end466

if.end466:                                        ; preds = %if.then462, %if.end459.if.end466_crit_edge
  br i1 %is_dp.0.off0, label %if.then468, label %if.else481

if.then468:                                       ; preds = %if.end466
  %dp_extclk470 = getelementptr i8, ptr %1, i32 3740
  %184 = ptrtoint ptr %dp_extclk470 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %dp_extclk470, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool471.not = icmp eq i32 %185, 0
  %186 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %186)
  %bf.load477 = load i8, ptr %5, align 2
  br i1 %tobool471.not, label %if.else476, label %if.then472

if.then472:                                       ; preds = %if.then468
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set475 = or i8 %bf.load477, 48
  br label %if.end488

if.else476:                                       ; preds = %if.then468
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear478 = and i8 %bf.load477, -49
  %bf.set479 = or i8 %bf.clear478, 32
  br label %if.end488

if.else481:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #13
  %187 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %187)
  %bf.load483 = load i8, ptr %5, align 2
  %bf.shl485 = shl nuw nsw i8 %pll_id.0, 4
  %bf.clear486 = and i8 %bf.load483, -49
  %bf.set487 = or i8 %bf.clear486, %bf.shl485
  br label %if.end488

if.end488:                                        ; preds = %if.else481, %if.else476, %if.then472
  %bf.set475.sink = phi i8 [ %bf.set475, %if.then472 ], [ %bf.set479, %if.else476 ], [ %bf.set487, %if.else481 ]
  %188 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %bf.set475.sink, ptr %5, align 2
  %189 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %encoder_id, align 4
  %191 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %190, label %if.end488.sw.epilog502_crit_edge [
    i32 30, label %sw.bb490
    i32 32, label %sw.bb494
    i32 33, label %sw.bb498
  ]

if.end488.sw.epilog502_crit_edge:                 ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog502

sw.bb490:                                         ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #13
  %192 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %192)
  %bf.load491 = load i8, ptr %5, align 2
  %bf.clear492 = and i8 %bf.load491, 63
  br label %sw.epilog502.sink.split

sw.bb494:                                         ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load495 = load i8, ptr %5, align 2
  %bf.clear496 = and i8 %bf.load495, 63
  %bf.set497 = or i8 %bf.clear496, 64
  br label %sw.epilog502.sink.split

sw.bb498:                                         ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #13
  %194 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %194)
  %bf.load499 = load i8, ptr %5, align 2
  %bf.clear500 = and i8 %bf.load499, 63
  %bf.set501 = or i8 %bf.clear500, -128
  br label %sw.epilog502.sink.split

sw.epilog502.sink.split:                          ; preds = %sw.bb498, %sw.bb494, %sw.bb490
  %bf.set501.sink = phi i8 [ %bf.set501, %sw.bb498 ], [ %bf.set497, %sw.bb494 ], [ %bf.clear492, %sw.bb490 ]
  %195 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %bf.set501.sink, ptr %5, align 2
  br label %sw.epilog502

sw.epilog502:                                     ; preds = %sw.epilog502.sink.split, %if.end488.sw.epilog502_crit_edge
  br i1 %is_dp.0.off0, label %if.then504, label %if.else508

if.then504:                                       ; preds = %sw.epilog502
  call void @__sanitizer_cov_trace_pc() #13
  %196 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load505 = load i8, ptr %5, align 2
  %bf.set507 = or i8 %bf.load505, 2
  store i8 %bf.set507, ptr %5, align 2
  br label %sw.epilog715

if.else508:                                       ; preds = %sw.epilog502
  %devices509 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %197 = ptrtoint ptr %devices509 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %devices509, align 4
  %and510 = and i32 %198, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and510)
  %tobool511.not = icmp eq i32 %and510, 0
  br i1 %tobool511.not, label %if.else508.sw.epilog715_crit_edge, label %if.then512

if.else508.sw.epilog715_crit_edge:                ; preds = %if.else508
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog715

if.then512:                                       ; preds = %if.else508
  %coherent_mode513 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 1
  %199 = ptrtoint ptr %coherent_mode513 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %coherent_mode513, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool514.not = icmp eq i8 %200, 0
  br i1 %tobool514.not, label %if.then512.if.end519_crit_edge, label %if.then515

if.then512.if.end519_crit_edge:                   ; preds = %if.then512
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end519

if.then515:                                       ; preds = %if.then512
  call void @__sanitizer_cov_trace_pc() #13
  %201 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %201)
  %bf.load516 = load i8, ptr %5, align 2
  %bf.set518 = or i8 %bf.load516, 2
  store i8 %bf.set518, ptr %5, align 2
  br label %if.end519

if.end519:                                        ; preds = %if.then515, %if.then512.if.end519_crit_edge
  %pixel_clock520 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %202 = ptrtoint ptr %pixel_clock520 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pixel_clock520, align 4
  %call521 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %203) #11
  br i1 %call521, label %if.then522, label %if.end519.sw.epilog715_crit_edge

if.end519.sw.epilog715_crit_edge:                 ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog715

if.then522:                                       ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #13
  %204 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %204)
  %bf.load523 = load i8, ptr %5, align 2
  %bf.set525 = or i8 %bf.load523, 1
  store i8 %bf.set525, ptr %5, align 2
  br label %sw.epilog715

sw.bb529:                                         ; preds = %sw.bb40
  %conv530 = trunc i32 %action to i8
  %205 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv530, ptr %6, align 1
  br i1 %is_dp.0.off0, label %sw.bb529.if.end541_crit_edge, label %if.else536

sw.bb529.if.end541_crit_edge:                     ; preds = %sw.bb529
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end541

if.else536:                                       ; preds = %sw.bb529
  call void @__sanitizer_cov_trace_pc() #13
  %pixel_clock537 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %206 = ptrtoint ptr %pixel_clock537 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %pixel_clock537, align 4
  %div538 = udiv i32 %207, 10
  br label %if.end541

if.end541:                                        ; preds = %if.else536, %sw.bb529.if.end541_crit_edge
  %div538.sink = phi i32 [ %div538, %if.else536 ], [ %dp_clock.0, %sw.bb529.if.end541_crit_edge ]
  %conv539 = trunc i32 %div538.sink to i16
  %208 = call i16 @llvm.bswap.i16(i16 %conv539)
  %209 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %args, align 2
  %210 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %encoder_id, align 4
  %212 = zext i32 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %211, label %if.end541.sw.epilog568_crit_edge [
    i32 30, label %sw.bb543
    i32 32, label %sw.bb550
    i32 33, label %sw.bb558
    i32 37, label %if.end541.sw.epilog568.sink.split_crit_edge
  ]

if.end541.sw.epilog568.sink.split_crit_edge:      ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog568.sink.split

if.end541.sw.epilog568_crit_edge:                 ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog568

sw.bb543:                                         ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #13
  %213 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %3, align 4, !range !79
  br label %sw.epilog568.sink.split

sw.bb550:                                         ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #13
  %215 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool552.not = icmp eq i8 %216, 0
  %.931 = select i1 %tobool552.not, i8 2, i8 3
  br label %sw.epilog568.sink.split

sw.bb558:                                         ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #13
  %217 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool560.not = icmp eq i8 %218, 0
  %.932 = select i1 %tobool560.not, i8 4, i8 5
  br label %sw.epilog568.sink.split

sw.epilog568.sink.split:                          ; preds = %sw.bb558, %sw.bb550, %sw.bb543, %if.end541.sw.epilog568.sink.split_crit_edge
  %.sink922 = phi i8 [ %214, %sw.bb543 ], [ %.931, %sw.bb550 ], [ %.932, %sw.bb558 ], [ 6, %if.end541.sw.epilog568.sink.split_crit_edge ]
  %219 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %.sink922, ptr %5, align 2
  br label %sw.epilog568

sw.epilog568:                                     ; preds = %sw.epilog568.sink.split, %if.end541.sw.epilog568_crit_edge
  br i1 %is_dp.0.off0, label %if.then570, label %if.else573

if.then570:                                       ; preds = %sw.epilog568
  call void @__sanitizer_cov_trace_pc() #13
  %220 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %dp_lane_count.0, ptr %7, align 2
  %conv582.c903 = trunc i32 %connector_object_id.0 to i8
  %ucConnObjId.c904 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 4
  %221 = ptrtoint ptr %ucConnObjId.c904 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv582.c903, ptr %ucConnObjId.c904, align 1
  %call583.c905 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv584.c906 = trunc i32 %call583.c905 to i8
  %ucDigMode.c907 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 5
  %222 = ptrtoint ptr %ucDigMode.c907 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv584.c906, ptr %ucDigMode.c907, align 2
  %dp_extclk589 = getelementptr i8, ptr %1, i32 3740
  %223 = ptrtoint ptr %dp_extclk589 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %dp_extclk589, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool590.not = icmp eq i32 %224, 0
  %225 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 6
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load1_noabort(i32 %226)
  %bf.load597.c914 = load i8, ptr %225, align 1
  %bf.shl599.c915 = shl nuw nsw i8 %pll_id.0, 2
  %bf.clear600.c916 = and i8 %bf.load597.c914, -13
  %bf.set601.c917 = or i8 %bf.clear600.c916, %bf.shl599.c915
  %bf.set594 = or i8 %bf.load597.c914, 12
  %bf.set601.c917.sink = select i1 %tobool590.not, i8 %bf.set601.c917, i8 %bf.set594
  store i8 %bf.set601.c917.sink, ptr %225, align 1
  br label %if.end621.sink.split

if.else573:                                       ; preds = %sw.epilog568
  %pixel_clock574 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %227 = ptrtoint ptr %pixel_clock574 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %pixel_clock574, align 4
  %call575 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %228) #11
  %.935 = select i1 %call575, i8 8, i8 4
  %229 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %.935, ptr %7, align 2
  %conv582.c = trunc i32 %connector_object_id.0 to i8
  %ucConnObjId.c = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 4
  %230 = ptrtoint ptr %ucConnObjId.c to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv582.c, ptr %ucConnObjId.c, align 1
  %call583.c = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv584.c = trunc i32 %call583.c to i8
  %ucDigMode.c = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 5
  %231 = ptrtoint ptr %ucDigMode.c to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv584.c, ptr %ucDigMode.c, align 2
  %232 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 6
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load1_noabort(i32 %233)
  %bf.load597.c909 = load i8, ptr %232, align 1
  %bf.shl599.c910 = shl nuw nsw i8 %pll_id.0, 2
  %bf.clear600.c911 = and i8 %bf.load597.c909, -13
  %bf.set601.c912 = or i8 %bf.clear600.c911, %bf.shl599.c910
  store i8 %bf.set601.c912, ptr %232, align 1
  %devices609 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %234 = ptrtoint ptr %devices609 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %devices609, align 4
  %and610 = and i32 %235, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and610)
  %tobool611.not = icmp eq i32 %and610, 0
  br i1 %tobool611.not, label %if.else573.if.end621_crit_edge, label %if.then612

if.else573.if.end621_crit_edge:                   ; preds = %if.else573
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end621

if.then612:                                       ; preds = %if.else573
  %coherent_mode613 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 1
  %236 = ptrtoint ptr %coherent_mode613 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %coherent_mode613, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool614.not = icmp eq i8 %237, 0
  br i1 %tobool614.not, label %if.then612.if.end621_crit_edge, label %if.then612.if.end621.sink.split_crit_edge

if.then612.if.end621.sink.split_crit_edge:        ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end621.sink.split

if.then612.if.end621_crit_edge:                   ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end621

if.end621.sink.split:                             ; preds = %if.then612.if.end621.sink.split_crit_edge, %if.then570
  %238 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 6
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load616 = load i8, ptr %238, align 1
  %bf.set618 = or i8 %bf.load616, 2
  store i8 %bf.set618, ptr %238, align 1
  br label %if.end621

if.end621:                                        ; preds = %if.end621.sink.split, %if.then612.if.end621_crit_edge, %if.else573.if.end621_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %hpd_id.0)
  %cmp622 = icmp eq i32 %hpd_id.0, 255
  br i1 %cmp622, label %if.then624, label %if.else628

if.then624:                                       ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #13
  %240 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 6
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load1_noabort(i32 %241)
  %bf.load625 = load i8, ptr %240, align 1
  %bf.clear626 = and i8 %bf.load625, -113
  store i8 %bf.clear626, ptr %240, align 1
  br label %if.end635

if.else628:                                       ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #13
  %242 = trunc i32 %hpd_id.0 to i8
  %243 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 6
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load1_noabort(i32 %244)
  %bf.load630 = load i8, ptr %243, align 1
  %conv629 = shl i8 %242, 4
  %bf.value631 = add i8 %conv629, 16
  %bf.shl632 = and i8 %bf.value631, 112
  %bf.clear633 = and i8 %bf.load630, -113
  %bf.set634 = or i8 %bf.clear633, %bf.shl632
  store i8 %bf.set634, ptr %243, align 1
  br label %if.end635

if.end635:                                        ; preds = %if.else628, %if.then624
  %shl = shl nuw i32 1, %dig_encoder.0
  %conv636 = trunc i32 %shl to i8
  %245 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv636, ptr %8, align 2
  %246 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %lane_set, ptr %9, align 1
  br label %sw.epilog715

sw.bb637:                                         ; preds = %sw.bb40
  %conv638 = trunc i32 %action to i8
  %247 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv638, ptr %4, align 1
  br i1 %is_dp.0.off0, label %sw.bb637.if.end647_crit_edge, label %if.else643

sw.bb637.if.end647_crit_edge:                     ; preds = %sw.bb637
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end647

if.else643:                                       ; preds = %sw.bb637
  call void @__sanitizer_cov_trace_pc() #13
  %pixel_clock644 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %248 = ptrtoint ptr %pixel_clock644 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %pixel_clock644, align 4
  %div645 = udiv i32 %249, 10
  br label %if.end647

if.end647:                                        ; preds = %if.else643, %sw.bb637.if.end647_crit_edge
  %div645.sink = phi i32 [ %div645, %if.else643 ], [ %dp_clock.0, %sw.bb637.if.end647_crit_edge ]
  %250 = call i32 @llvm.bswap.i32(i32 %div645.sink)
  %251 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %251, i32 4)
  store i32 %250, ptr %7, align 2
  %252 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %encoder_id, align 4
  %254 = zext i32 %253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %254, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %253, label %if.end647.sw.epilog675_crit_edge [
    i32 30, label %sw.bb649
    i32 32, label %sw.bb657
    i32 33, label %sw.bb665
    i32 37, label %sw.bb673
  ]

if.end647.sw.epilog675_crit_edge:                 ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog675

sw.bb649:                                         ; preds = %if.end647
  %255 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool651.not = icmp eq i8 %256, 0
  br i1 %tobool651.not, label %if.else654, label %if.then652

if.then652:                                       ; preds = %sw.bb649
  call void @__sanitizer_cov_trace_pc() #13
  %257 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 1, ptr %args, align 2
  br label %sw.epilog675

if.else654:                                       ; preds = %sw.bb649
  call void @__sanitizer_cov_trace_pc() #13
  %258 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %args, align 2
  br label %sw.epilog675

sw.bb657:                                         ; preds = %if.end647
  %259 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool659.not = icmp eq i8 %260, 0
  br i1 %tobool659.not, label %if.else662, label %if.then660

if.then660:                                       ; preds = %sw.bb657
  call void @__sanitizer_cov_trace_pc() #13
  %261 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 3, ptr %args, align 2
  br label %sw.epilog675

if.else662:                                       ; preds = %sw.bb657
  call void @__sanitizer_cov_trace_pc() #13
  %262 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 2, ptr %args, align 2
  br label %sw.epilog675

sw.bb665:                                         ; preds = %if.end647
  %263 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool667.not = icmp eq i8 %264, 0
  br i1 %tobool667.not, label %if.else670, label %if.then668

if.then668:                                       ; preds = %sw.bb665
  call void @__sanitizer_cov_trace_pc() #13
  %265 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 5, ptr %args, align 2
  br label %sw.epilog675

if.else670:                                       ; preds = %sw.bb665
  call void @__sanitizer_cov_trace_pc() #13
  %266 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 4, ptr %args, align 2
  br label %sw.epilog675

sw.bb673:                                         ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #13
  %267 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 6, ptr %args, align 2
  br label %sw.epilog675

sw.epilog675:                                     ; preds = %sw.bb673, %if.else670, %if.then668, %if.else662, %if.then660, %if.else654, %if.then652, %if.end647.sw.epilog675_crit_edge
  br i1 %is_dp.0.off0, label %sw.epilog675.if.end688_crit_edge, label %if.else680

sw.epilog675.if.end688_crit_edge:                 ; preds = %sw.epilog675
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end688

if.else680:                                       ; preds = %sw.epilog675
  call void @__sanitizer_cov_trace_pc() #13
  %pixel_clock681 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %268 = ptrtoint ptr %pixel_clock681 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %pixel_clock681, align 4
  %call682 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %269) #11
  %.934 = select i1 %call682, i8 8, i8 4
  br label %if.end688

if.end688:                                        ; preds = %if.else680, %sw.epilog675.if.end688_crit_edge
  %.sink927 = phi i8 [ %dp_lane_count.0, %sw.epilog675.if.end688_crit_edge ], [ %.934, %if.else680 ]
  %270 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %.sink927, ptr %6, align 1
  %conv689 = trunc i32 %connector_object_id.0 to i8
  %271 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %conv689, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp691 = icmp eq i32 %action, 11
  br i1 %cmp691, label %if.end688.if.end697_crit_edge, label %if.else694

if.end688.if.end697_crit_edge:                    ; preds = %if.end688
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end697

if.else694:                                       ; preds = %if.end688
  call void @__sanitizer_cov_trace_pc() #13
  %call695 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv696 = trunc i32 %call695 to i8
  br label %if.end697

if.end697:                                        ; preds = %if.else694, %if.end688.if.end697_crit_edge
  %storemerge887 = phi i8 [ %conv696, %if.else694 ], [ %lane_set, %if.end688.if.end697_crit_edge ]
  %272 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %storemerge887, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %hpd_id.0)
  %cmp698 = icmp eq i32 %hpd_id.0, 255
  %273 = trunc i32 %hpd_id.0 to i8
  %conv703 = add i8 %273, 1
  %storemerge888 = select i1 %cmp698, i8 0, i8 %conv703
  %274 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %storemerge888, ptr %8, align 2
  %shl706 = shl nuw i32 1, %dig_encoder.0
  %conv707 = trunc i32 %shl706 to i8
  %275 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %conv707, ptr %9, align 1
  br label %sw.epilog715

sw.default:                                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  %conv41 = zext i8 %40 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %conv41) #11
  br label %sw.epilog715

sw.default712:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %conv39 = zext i8 %38 to i32
  %276 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %crev, align 1
  %conv714 = zext i8 %277 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %conv39, i32 noundef %conv714) #11
  br label %sw.epilog715

sw.epilog715:                                     ; preds = %sw.default712, %sw.default, %if.end697, %if.end635, %if.then522, %if.end519.sw.epilog715_crit_edge, %if.else508.sw.epilog715_crit_edge, %if.then504, %if.then399, %if.end396.sw.epilog715_crit_edge, %if.else384.sw.epilog715_crit_edge, %if.then379, %if.then273, %if.end270.sw.epilog715_crit_edge, %if.else258.sw.epilog715_crit_edge, %if.then249, %if.then180, %if.end177.sw.epilog715_crit_edge, %if.else167.sw.epilog715_crit_edge, %if.then162
  %278 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %mode_info, align 8
  %call718 = call i32 @amdgpu_atom_execute_table(ptr noundef %279, i32 noundef %index.0, ptr noundef nonnull %args) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog715, %sw.epilog.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_init_backlight(ptr noundef %amdgpu_encoder, ptr nocapture noundef readonly %drm_connector) local_unnamed_addr #0 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  %bl_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %amdgpu_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amdgpu_encoder, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #11
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %3 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %4 = call ptr @memset(ptr %props, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bl_name) #11
  %pdev = getelementptr i8, ptr %1, i32 -4
  %5 = call ptr @memset(ptr %bl_name, i32 255, i32 16)
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %9)
  %cmp = icmp eq i16 %9, 4203
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26433, i16 %11)
  %cmp5 = icmp eq i16 %11, 26433
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder, i32 0, i32 12
  %12 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %firmware_flags = getelementptr i8, ptr %1, i32 22128
  %14 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 8) #14
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #11
  br label %error

if.end15:                                         ; preds = %if.end11
  %17 = call ptr @memset(ptr %props, i32 0, i32 28)
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 255, ptr %2, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %3, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %primary, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bl_name, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %23)
  %kdev = getelementptr inbounds %struct.drm_connector, ptr %drm_connector, i32 0, i32 1
  %24 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kdev, align 4
  %call18 = call ptr @backlight_device_register(ptr noundef nonnull %bl_name, ptr noundef %25, ptr noundef nonnull %call7.i, ptr noundef nonnull @amdgpu_atombios_encoder_backlight_ops, ptr noundef nonnull %props) #11
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #11
  br label %error

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %amdgpu_encoder, ptr %call7.i, align 8
  %27 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enc_priv, align 4
  %bl_dev = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call18, ptr %bl_dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call18, i32 0, i32 6, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 -8
  %call.i.i = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef 1483, i32 noundef 0) #11
  %and.i.i = lshr i32 %call.i.i, 8
  %conv.i = and i32 %and.i.i, 255
  %36 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.i, ptr %call18, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call18, i32 0, i32 2
  %37 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %power, align 8
  call fastcc void @backlight_update_status(ptr noundef %call18)
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %cleanup

error:                                            ; preds = %if.then20, %if.then14
  call void @kfree(ptr noundef %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end21, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bl_name) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_atombios_encoder_get_backlight_brightness(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -8
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 1483, i32 noundef 0) #11
  %and.i = lshr i32 %call.i, 8
  %conv = and i32 %and.i, 255
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @backlight_update_status(ptr noundef %bd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %update_lock = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %ops = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %update_status = getelementptr inbounds %struct.backlight_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %update_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_status, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %bd) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_fini_backlight(ptr nocapture noundef readonly %amdgpu_encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %amdgpu_encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %amdgpu_encoder, align 4
  %firmware_flags = getelementptr i8, ptr %3, i32 22128
  %4 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %firmware_flags, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %bl_dev = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bl_dev, align 4
  store ptr null, ptr %bl_dev, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @backlight_device_unregister(ptr noundef nonnull %7) #11
  tail call void @kfree(ptr noundef %9) #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_encoder_is_digital(ptr nocapture noundef readonly %encoder) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_id, align 4
  %switch.tableidx = add i32 %1, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 18
  %switch.cast = trunc i32 %switch.tableidx to i18
  %switch.downshift = lshr i18 -117759, %switch.cast
  %3 = and i18 %switch.downshift, 1
  %switch.masked = icmp ne i18 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_encoder_mode_fixup(ptr noundef %encoder, ptr nocapture noundef readonly %mode, ptr noundef %adjusted_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_encoder_set_active_device(ptr noundef %encoder) #11
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 0) #11
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %2 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %crtc_vsync_start, align 4
  %conv = zext i16 %3 to i32
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %4 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %crtc_vdisplay, align 2
  %conv1 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %crtc_vdisplay3 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %6 = ptrtoint ptr %crtc_vdisplay3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %crtc_vdisplay3, align 2
  %add5 = add i16 %7, 2
  %crtc_vsync_start7 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %8 = ptrtoint ptr %crtc_vsync_start7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add5, ptr %crtc_vsync_start7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %crtc_vsync_start8 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %9 = ptrtoint ptr %crtc_vsync_start8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_vsync_start8, align 4
  %crtc_vdisplay10 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %11 = ptrtoint ptr %crtc_vdisplay10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_vdisplay10, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp12 = icmp eq i16 %10, %12
  br i1 %cmp12, label %if.then14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %crtc_vsync_start15 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %13 = ptrtoint ptr %crtc_vsync_start15 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_vsync_start15, align 4
  %inc = add i16 %14, 1
  store i16 %inc, ptr %crtc_vsync_start15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %15 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active_device, align 4
  %and17 = and i32 %16, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else, label %if.end16.if.end24.sink.split_crit_edge

if.end16.if.end24.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.end16
  %rmx_type = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 7
  %17 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.not = icmp eq i32 %18, 0
  br i1 %cmp20.not, label %if.else.if.end24_crit_edge, label %if.else.if.end24.sink.split_crit_edge

if.else.if.end24.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.sink.split

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24.sink.split:                              ; preds = %if.else.if.end24.sink.split_crit_edge, %if.end16.if.end24.sink.split_crit_edge
  tail call void @amdgpu_panel_mode_fixup(ptr noundef %encoder, ptr noundef %adjusted_mode) #11
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else.if.end24_crit_edge
  %19 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_device, align 4
  %and26 = and i32 %20, 3818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end24.if.then31_crit_edge

if.end24.if.then31_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end24
  %call = tail call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp29.not = icmp eq i16 %call, 0
  br i1 %cmp29.not, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.end24.if.then31_crit_edge
  %call32 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #11
  tail call void @amdgpu_atombios_dp_set_link_config(ptr noundef %call32, ptr noundef %adjusted_mode) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %lor.lhs.false.if.end33_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_encoder_set_active_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_panel_mode_fixup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_connector_for_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_dp_set_link_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp.not = icmp eq i16 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %1, label %if.end8 [
    i32 11, label %if.end.cleanup_crit_edge
    i32 20, label %if.end.cleanup_crit_edge122
  ]

if.end.cleanup_crit_edge122:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #11
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call ptr @amdgpu_get_connector_for_encoder_init(ptr noundef %encoder) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %connector.0 = phi ptr [ %call9, %if.end8.if.end12_crit_edge ], [ %call11, %if.then10 ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 10
  %3 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %connector_type, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %4, label %sw.default [
    i32 2, label %if.end12.sw.bb_crit_edge
    i32 12, label %if.end12.sw.bb_crit_edge123
    i32 9, label %if.end12.sw.bb94_crit_edge
    i32 6, label %if.end12.sw.bb94_crit_edge124
    i32 7, label %if.end12.cleanup_crit_edge
    i32 10, label %sw.bb62
    i32 14, label %sw.bb92
    i32 4, label %if.end12.sw.bb93_crit_edge
    i32 1, label %if.end12.sw.bb93_crit_edge125
    i32 5, label %if.end12.sw.bb94_crit_edge126
  ]

if.end12.sw.bb94_crit_edge126:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb94

if.end12.sw.bb93_crit_edge125:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb93

if.end12.sw.bb93_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb93

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12.sw.bb94_crit_edge124:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb94

if.end12.sw.bb94_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb94

if.end12.sw.bb_crit_edge123:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end12.sw.bb_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end12.sw.bb_crit_edge, %if.end12.sw.bb_crit_edge123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %6 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16.not = icmp eq i32 %6, 0
  %use_digital37 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 5
  %7 = ptrtoint ptr %use_digital37 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_digital37, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool38.not = icmp eq i8 %8, 0
  br i1 %cmp16.not, label %if.else36, label %if.then18

if.then18:                                        ; preds = %sw.bb
  br i1 %tobool38.not, label %if.then18.if.else_crit_edge, label %land.lhs.true

if.then18.if.else_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.then18
  %audio = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 14
  %9 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp21 = icmp eq i32 %10, 1
  br i1 %cmp21, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then18.if.else_crit_edge
  %is_hdmi = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 20, i32 11
  %11 = ptrtoint ptr %is_hdmi to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_hdmi, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool24.not = icmp eq i8 %12, 0
  br i1 %tobool24.not, label %if.else.if.else31_crit_edge, label %land.lhs.true26

if.else.if.else31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else31

land.lhs.true26:                                  ; preds = %if.else
  %audio27 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 14
  %13 = ptrtoint ptr %audio27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %audio27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp28 = icmp eq i32 %14, 2
  br i1 %cmp28, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true26.if.else31_crit_edge

land.lhs.true26.if.else31_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else31

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else31:                                        ; preds = %land.lhs.true26.if.else31_crit_edge, %if.else.if.else31_crit_edge
  %. = select i1 %tobool38.not, i32 15, i32 2
  br label %cleanup

if.else36:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %.119 = select i1 %tobool38.not, i32 15, i32 2
  br label %cleanup

sw.default:                                       ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %15 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp42.not = icmp eq i32 %15, 0
  br i1 %cmp42.not, label %sw.default.cleanup_crit_edge, label %if.then44

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then44:                                        ; preds = %sw.default
  %audio45 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 14
  %16 = ptrtoint ptr %audio45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %audio45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp46 = icmp eq i32 %17, 1
  br i1 %cmp46, label %if.then44.cleanup_crit_edge, label %if.else49

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %is_hdmi51 = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 20, i32 11
  %18 = ptrtoint ptr %is_hdmi51 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_hdmi51, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool52.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp56 = icmp eq i32 %17, 2
  %or.cond = select i1 %tobool52.not, i1 %cmp56, i1 false
  %spec.select = select i1 %or.cond, i32 3, i32 2
  br label %cleanup

sw.bb62:                                          ; preds = %if.end12
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 7
  %20 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %23, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb62.cleanup_crit_edge, label %if.else72

sw.bb62.cleanup_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else72:                                        ; preds = %sw.bb62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_audio to i32))
  %24 = load i32, ptr @amdgpu_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp73.not = icmp eq i32 %24, 0
  br i1 %cmp73.not, label %if.else72.cleanup_crit_edge, label %if.then75

if.else72.cleanup_crit_edge:                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then75:                                        ; preds = %if.else72
  %audio76 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 14
  %25 = ptrtoint ptr %audio76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %audio76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp77 = icmp eq i32 %26, 1
  br i1 %cmp77, label %if.then75.cleanup_crit_edge, label %if.else80

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %is_hdmi82 = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 20, i32 11
  %27 = ptrtoint ptr %is_hdmi82 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_hdmi82, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool83.not = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp87 = icmp eq i32 %26, 2
  %or.cond120 = select i1 %tobool83.not, i1 %cmp87, i1 false
  %spec.select121 = select i1 %or.cond120, i32 3, i32 2
  br label %cleanup

sw.bb92:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb93:                                          ; preds = %if.end12.sw.bb93_crit_edge, %if.end12.sw.bb93_crit_edge125
  br label %cleanup

sw.bb94:                                          ; preds = %if.end12.sw.bb94_crit_edge, %if.end12.sw.bb94_crit_edge124, %if.end12.sw.bb94_crit_edge126
  br label %cleanup

cleanup:                                          ; preds = %sw.bb94, %sw.bb93, %sw.bb92, %if.else80, %if.then75.cleanup_crit_edge, %if.else72.cleanup_crit_edge, %sw.bb62.cleanup_crit_edge, %if.else49, %if.then44.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.else36, %if.else31, %land.lhs.true26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge122, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %sw.bb93 ], [ 0, %sw.bb92 ], [ 13, %sw.bb94 ], [ 0, %entry.cleanup_crit_edge ], [ 16, %if.end.cleanup_crit_edge ], [ 16, %if.end.cleanup_crit_edge122 ], [ 3, %land.lhs.true.cleanup_crit_edge ], [ 3, %land.lhs.true26.cleanup_crit_edge ], [ %., %if.else31 ], [ %.119, %if.else36 ], [ 3, %if.then44.cleanup_crit_edge ], [ 2, %sw.default.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ], [ 0, %sw.bb62.cleanup_crit_edge ], [ 3, %if.then75.cleanup_crit_edge ], [ 2, %if.else72.cleanup_crit_edge ], [ %spec.select, %if.else49 ], [ %spec.select121, %if.else80 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_connector_for_encoder_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %encoder, i32 noundef %action, i32 noundef %panel_mode) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.dig_encoder_control, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %2 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_priv, align 4
  %call2 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %4 = getelementptr inbounds %struct._ENCODER_GENERIC_CMD_PARAMETERS_V5, ptr %args, i32 0, i32 1
  %5 = getelementptr inbounds %struct._ENCODER_GENERIC_CMD_PARAMETERS_V5, ptr %args, i32 0, i32 2
  %6 = getelementptr inbounds %struct._ENCODER_GENERIC_CMD_PARAMETERS_V5, ptr %args, i32 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct._ENCODER_GENERIC_CMD_PARAMETERS_V5, ptr %args, i32 0, i32 3
  %8 = getelementptr inbounds %struct._ENCODER_GENERIC_CMD_PARAMETERS_V5, ptr %args, i32 0, i32 3, i32 1
  %9 = call ptr @memset(ptr %args, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %10 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %frev, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %11 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %crev, align 1, !annotation !78
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %call2, i32 0, i32 7
  %12 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %con_priv, align 4
  %dp_clock6 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dp_clock6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dp_clock6, align 4
  %dp_lane_count7 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %dp_lane_count7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp_lane_count7, align 4
  %hpd = getelementptr inbounds %struct.amdgpu_connector, ptr %call2, i32 0, i32 11
  %18 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hpd, align 4
  %phi.cast = trunc i32 %17 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dp_clock.0 = phi i32 [ %15, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %dp_lane_count.0 = phi i8 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %hpd_id.0 = phi i32 [ %19, %if.then ], [ 255, %entry.if.end_crit_edge ]
  %dig_encoder = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp = icmp eq i32 %21, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %22 = call ptr @memset(ptr %args, i32 0, i32 12)
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %23 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mode_info, align 8
  %call11 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %24, i32 noundef 4, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call11, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %25 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cond = icmp eq i8 %26, 1
  br i1 %cond, label %sw.bb, label %sw.default273

sw.bb:                                            ; preds = %if.end13
  %27 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %crev, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %28, label %sw.default269 [
    i8 1, label %sw.bb15
    i8 2, label %sw.bb.sw.bb77_crit_edge
    i8 3, label %sw.bb.sw.bb77_crit_edge367
    i8 4, label %sw.bb130
    i8 5, label %sw.bb220
  ]

sw.bb.sw.bb77_crit_edge367:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb77

sw.bb.sw.bb77_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb77

sw.bb15:                                          ; preds = %sw.bb
  %conv16 = trunc i32 %action to i8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16, ptr %6, align 1
  %pixel_clock = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %31 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %32, 10
  %conv17 = trunc i32 %div to i16
  %33 = call i16 @llvm.bswap.i16(i16 %conv17)
  %34 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %args, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %action)
  %cmp18 = icmp eq i32 %action, 16
  br i1 %cmp18, label %sw.bb15.if.end24_crit_edge, label %if.else

sw.bb15.if.end24_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %sw.bb15.if.end24_crit_edge
  %storemerge.in = phi i32 [ %call22, %if.else ], [ %panel_mode, %sw.bb15.if.end24_crit_edge ]
  %storemerge = trunc i32 %storemerge.in to i8
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %storemerge, ptr %7, align 2
  %36 = zext i8 %storemerge to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %storemerge, label %if.else35 [
    i8 0, label %if.end24.if.then33_crit_edge
    i8 5, label %if.end24.if.then33_crit_edge368
  ]

if.end24.if.then33_crit_edge368:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.end24.if.then33_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then33:                                        ; preds = %if.end24.if.then33_crit_edge, %if.end24.if.then33_crit_edge368
  %ucLaneNum = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 4
  %37 = ptrtoint ptr %ucLaneNum to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %dp_lane_count.0, ptr %ucLaneNum, align 1
  br label %if.end43

if.else35:                                        ; preds = %if.end24
  %38 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pixel_clock, align 4
  %call37 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %39) #11
  %ucLaneNum39 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 4
  br i1 %call37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %ucLaneNum39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 8, ptr %ucLaneNum39, align 1
  br label %if.end43

if.else40:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %ucLaneNum39 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 4, ptr %ucLaneNum39, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then38, %if.then33
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %7, align 2
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %43, label %if.end43.if.end58_crit_edge [
    i8 0, label %if.end43.land.lhs.true_crit_edge
    i8 5, label %if.end43.land.lhs.true_crit_edge369
  ]

if.end43.land.lhs.true_crit_edge369:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end43.land.lhs.true_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end43.land.lhs.true_crit_edge, %if.end43.land.lhs.true_crit_edge369
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %dp_clock.0)
  %cmp53 = icmp eq i32 %dp_clock.0, 270000
  br i1 %cmp53, label %if.then55, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %5, align 2
  %47 = or i8 %46, 1
  store i8 %47, ptr %5, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %land.lhs.true.if.end58_crit_edge, %if.end43.if.end58_crit_edge
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %48 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %encoder_id, align 4
  %switch.tableidx = add i32 %49, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %50 = icmp ult i32 %switch.tableidx, 4
  br i1 %50, label %switch.lookup, label %if.end58.sw.epilog_crit_edge

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 268961792, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %switch.masked, ptr %5, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end58.sw.epilog_crit_edge
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %3, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool65.not = icmp eq i8 %53, 0
  br i1 %tobool65.not, label %sw.epilog.sw.epilog276_crit_edge, label %if.then66

sw.epilog.sw.epilog276_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog276

if.then66:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %5, align 2
  %56 = or i8 %55, 4
  store i8 %56, ptr %5, align 2
  br label %sw.epilog276

sw.bb77:                                          ; preds = %sw.bb.sw.bb77_crit_edge, %sw.bb.sw.bb77_crit_edge367
  %conv78 = trunc i32 %action to i8
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv78, ptr %6, align 1
  %pixel_clock80 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %58 = ptrtoint ptr %pixel_clock80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pixel_clock80, align 4
  %div81 = udiv i32 %59, 10
  %conv82 = trunc i32 %div81 to i16
  %60 = call i16 @llvm.bswap.i16(i16 %conv82)
  %61 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %args, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %action)
  %cmp84 = icmp eq i32 %action, 16
  br i1 %cmp84, label %sw.bb77.if.end91_crit_edge, label %if.else88

sw.bb77.if.end91_crit_edge:                       ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.else88:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #13
  %call89 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %sw.bb77.if.end91_crit_edge
  %conv90.sink.in = phi i32 [ %call89, %if.else88 ], [ %panel_mode, %sw.bb77.if.end91_crit_edge ]
  %conv90.sink = trunc i32 %conv90.sink.in to i8
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv90.sink, ptr %7, align 2
  %63 = zext i8 %conv90.sink to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %conv90.sink, label %if.else102 [
    i8 0, label %if.end91.if.then99_crit_edge
    i8 5, label %if.end91.if.then99_crit_edge370
  ]

if.end91.if.then99_crit_edge370:                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then99

if.end91.if.then99_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then99

if.then99:                                        ; preds = %if.end91.if.then99_crit_edge, %if.end91.if.then99_crit_edge370
  %ucLaneNum101 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 4
  %64 = ptrtoint ptr %ucLaneNum101 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %dp_lane_count.0, ptr %ucLaneNum101, align 1
  br label %if.end110

if.else102:                                       ; preds = %if.end91
  %65 = ptrtoint ptr %pixel_clock80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixel_clock80, align 4
  %call104 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %66) #11
  %ucLaneNum106 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 4
  br i1 %call104, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %ucLaneNum106 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 8, ptr %ucLaneNum106, align 1
  br label %if.end110

if.else107:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %ucLaneNum106 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 4, ptr %ucLaneNum106, align 1
  br label %if.end110

if.end110:                                        ; preds = %if.else107, %if.then105, %if.then99
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %7, align 2
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %70, label %if.end110.if.end126_crit_edge [
    i8 0, label %if.end110.land.lhs.true118_crit_edge
    i8 5, label %if.end110.land.lhs.true118_crit_edge371
  ]

if.end110.land.lhs.true118_crit_edge371:          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true118

if.end110.land.lhs.true118_crit_edge:             ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true118

if.end110.if.end126_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

land.lhs.true118:                                 ; preds = %if.end110.land.lhs.true118_crit_edge, %if.end110.land.lhs.true118_crit_edge371
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %dp_clock.0)
  %cmp119 = icmp eq i32 %dp_clock.0, 270000
  br i1 %cmp119, label %if.then121, label %land.lhs.true118.if.end126_crit_edge

land.lhs.true118.if.end126_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then121:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %5, align 2
  %74 = or i8 %73, 1
  store i8 %74, ptr %5, align 2
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %land.lhs.true118.if.end126_crit_edge, %if.end110.if.end126_crit_edge
  %75 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dig_encoder, align 4
  %conv128 = trunc i32 %76 to i8
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load = load i8, ptr %5, align 2
  %bf.value = shl i8 %conv128, 4
  %bf.shl = and i8 %bf.value, 112
  %bf.clear = and i8 %bf.load, -113
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %5, align 2
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %78 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %79, null
  br i1 %tobool.not.i, label %if.end126.if.end.i_crit_edge, label %if.then.i

if.end126.if.end.i_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %bpc2.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %79, i32 0, i32 29
  %80 = ptrtoint ptr %bpc2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bpc2.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end126.if.end.i_crit_edge
  %bpc.0.i = phi i32 [ %81, %if.then.i ], [ 8, %if.end126.if.end.i_crit_edge ]
  %82 = call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %82)
  %83 = icmp ult i32 %82, 9
  br i1 %83, label %switch.lookup363, label %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge

if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_get_bpc.exit

switch.lookup363:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.amdgpu_atombios_encoder_setup_dig_encoder, i32 0, i32 %82
  %84 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %84)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %amdgpu_atombios_encoder_get_bpc.exit

amdgpu_atombios_encoder_get_bpc.exit:             ; preds = %switch.lookup363, %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup363 ], [ 2, %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge ]
  %ucBitPerColor = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 5
  %85 = ptrtoint ptr %ucBitPerColor to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %retval.0.i, ptr %ucBitPerColor, align 2
  br label %sw.epilog276

sw.bb130:                                         ; preds = %sw.bb
  %conv131 = trunc i32 %action to i8
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv131, ptr %6, align 1
  %pixel_clock133 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %87 = ptrtoint ptr %pixel_clock133 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pixel_clock133, align 4
  %div134 = udiv i32 %88, 10
  %conv135 = trunc i32 %div134 to i16
  %89 = call i16 @llvm.bswap.i16(i16 %conv135)
  %90 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %args, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %action)
  %cmp137 = icmp eq i32 %action, 16
  br i1 %cmp137, label %sw.bb130.if.end144_crit_edge, label %if.else141

sw.bb130.if.end144_crit_edge:                     ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

if.else141:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #13
  %call142 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  br label %if.end144

if.end144:                                        ; preds = %if.else141, %sw.bb130.if.end144_crit_edge
  %conv143.sink.in = phi i32 [ %call142, %if.else141 ], [ %panel_mode, %sw.bb130.if.end144_crit_edge ]
  %conv143.sink = trunc i32 %conv143.sink.in to i8
  %91 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv143.sink, ptr %7, align 2
  %92 = zext i8 %conv143.sink to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %conv143.sink, label %if.else155 [
    i8 0, label %if.end144.if.then152_crit_edge
    i8 5, label %if.end144.if.then152_crit_edge372
  ]

if.end144.if.then152_crit_edge372:                ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then152

if.end144.if.then152_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then152

if.then152:                                       ; preds = %if.end144.if.then152_crit_edge, %if.end144.if.then152_crit_edge372
  %ucLaneNum154 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %args, i32 0, i32 4
  %93 = ptrtoint ptr %ucLaneNum154 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %dp_lane_count.0, ptr %ucLaneNum154, align 1
  br label %if.end163

if.else155:                                       ; preds = %if.end144
  %94 = ptrtoint ptr %pixel_clock133 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pixel_clock133, align 4
  %call157 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %95) #11
  %ucLaneNum159 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %args, i32 0, i32 4
  br i1 %call157, label %if.then158, label %if.else160

if.then158:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %ucLaneNum159 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 8, ptr %ucLaneNum159, align 1
  br label %if.end163

if.else160:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %ucLaneNum159 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 4, ptr %ucLaneNum159, align 1
  br label %if.end163

if.end163:                                        ; preds = %if.else160, %if.then158, %if.then152
  %98 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %7, align 2
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %99, label %if.end163.if.end203_crit_edge [
    i8 0, label %if.end163.if.then171_crit_edge
    i8 5, label %if.end163.if.then171_crit_edge373
  ]

if.end163.if.then171_crit_edge373:                ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then171

if.end163.if.then171_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then171

if.end163.if.end203_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

if.then171:                                       ; preds = %if.end163.if.then171_crit_edge, %if.end163.if.then171_crit_edge373
  %101 = zext i32 %dp_clock.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %dp_clock.0, label %if.then171.if.end203_crit_edge [
    i32 540000, label %if.then171.if.end203.sink.split_crit_edge
    i32 324000, label %if.then182
    i32 270000, label %if.then190
  ]

if.then171.if.end203.sink.split_crit_edge:        ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203.sink.split

if.then171.if.end203_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203

if.then182:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203.sink.split

if.then190:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end203.sink.split

if.end203.sink.split:                             ; preds = %if.then190, %if.then182, %if.then171.if.end203.sink.split_crit_edge
  %.sink361 = phi i8 [ 1, %if.then190 ], [ 3, %if.then182 ], [ 2, %if.then171.if.end203.sink.split_crit_edge ]
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %5, align 2
  %104 = or i8 %103, %.sink361
  store i8 %104, ptr %5, align 2
  br label %if.end203

if.end203:                                        ; preds = %if.end203.sink.split, %if.then171.if.end203_crit_edge, %if.end163.if.end203_crit_edge
  %105 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dig_encoder, align 4
  %conv205 = trunc i32 %106 to i8
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load206 = load i8, ptr %5, align 2
  %bf.value207 = shl i8 %conv205, 4
  %bf.shl208 = and i8 %bf.value207, 112
  %bf.clear209 = and i8 %bf.load206, -113
  %bf.set210 = or i8 %bf.shl208, %bf.clear209
  store i8 %bf.set210, ptr %5, align 2
  %crtc.i346 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %108 = ptrtoint ptr %crtc.i346 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %crtc.i346, align 4
  %tobool.not.i347 = icmp eq ptr %109, null
  br i1 %tobool.not.i347, label %if.end203.if.end.i351_crit_edge, label %if.then.i349

if.end203.if.end.i351_crit_edge:                  ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i351

if.then.i349:                                     ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  %bpc2.i348 = getelementptr inbounds %struct.amdgpu_crtc, ptr %109, i32 0, i32 29
  %110 = ptrtoint ptr %bpc2.i348 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bpc2.i348, align 8
  br label %if.end.i351

if.end.i351:                                      ; preds = %if.then.i349, %if.end203.if.end.i351_crit_edge
  %bpc.0.i350 = phi i32 [ %111, %if.then.i349 ], [ 8, %if.end203.if.end.i351_crit_edge ]
  %112 = call i32 @llvm.fshl.i32(i32 %bpc.0.i350, i32 %bpc.0.i350, i32 31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %112)
  %113 = icmp ult i32 %112, 9
  br i1 %113, label %switch.lookup364, label %if.end.i351.amdgpu_atombios_encoder_get_bpc.exit358_crit_edge

if.end.i351.amdgpu_atombios_encoder_get_bpc.exit358_crit_edge: ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_get_bpc.exit358

switch.lookup364:                                 ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep365 = getelementptr inbounds [9 x i8], ptr @switch.table.amdgpu_atombios_encoder_setup_dig_encoder.33, i32 0, i32 %112
  %114 = ptrtoint ptr %switch.gep365 to i32
  call void @__asan_load1_noabort(i32 %114)
  %switch.load366 = load i8, ptr %switch.gep365, align 1
  br label %amdgpu_atombios_encoder_get_bpc.exit358

amdgpu_atombios_encoder_get_bpc.exit358:          ; preds = %switch.lookup364, %if.end.i351.amdgpu_atombios_encoder_get_bpc.exit358_crit_edge
  %retval.0.i357 = phi i8 [ %switch.load366, %switch.lookup364 ], [ 2, %if.end.i351.amdgpu_atombios_encoder_get_bpc.exit358_crit_edge ]
  %ucBitPerColor212 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %args, i32 0, i32 5
  %115 = ptrtoint ptr %ucBitPerColor212 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %retval.0.i357, ptr %ucBitPerColor212, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %hpd_id.0)
  %cmp213 = icmp eq i32 %hpd_id.0, 255
  br i1 %cmp213, label %if.then215, label %if.else216

if.then215:                                       ; preds = %amdgpu_atombios_encoder_get_bpc.exit358
  call void @__sanitizer_cov_trace_pc() #13
  %ucHPD_ID = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %args, i32 0, i32 6
  %116 = ptrtoint ptr %ucHPD_ID to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %ucHPD_ID, align 1
  br label %sw.epilog276

if.else216:                                       ; preds = %amdgpu_atombios_encoder_get_bpc.exit358
  call void @__sanitizer_cov_trace_pc() #13
  %117 = trunc i32 %hpd_id.0 to i8
  %conv217 = add i8 %117, 1
  %ucHPD_ID218 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V4, ptr %args, i32 0, i32 6
  %118 = ptrtoint ptr %ucHPD_ID218 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv217, ptr %ucHPD_ID218, align 1
  br label %sw.epilog276

sw.bb220:                                         ; preds = %sw.bb
  %119 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %action, label %sw.default [
    i32 16, label %sw.bb221
    i32 15, label %sw.bb227
    i32 8, label %sw.bb220.sw.bb262_crit_edge
    i32 9, label %sw.bb220.sw.bb262_crit_edge374
    i32 10, label %sw.bb220.sw.bb262_crit_edge375
    i32 19, label %sw.bb220.sw.bb262_crit_edge376
    i32 20, label %sw.bb220.sw.bb262_crit_edge377
    i32 11, label %sw.bb220.sw.bb262_crit_edge378
    i32 12, label %sw.bb220.sw.bb262_crit_edge379
    i32 13, label %sw.bb220.sw.bb262_crit_edge380
  ]

sw.bb220.sw.bb262_crit_edge380:                   ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb262

sw.bb220.sw.bb262_crit_edge379:                   ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb262

sw.bb220.sw.bb262_crit_edge378:                   ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb262

sw.bb220.sw.bb262_crit_edge377:                   ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb262

sw.bb220.sw.bb262_crit_edge376:                   ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb262

sw.bb220.sw.bb262_crit_edge375:                   ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb262

sw.bb220.sw.bb262_crit_edge374:                   ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb262

sw.bb220.sw.bb262_crit_edge:                      ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb262

sw.bb221:                                         ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 16, ptr %4, align 1
  %conv224 = trunc i32 %panel_mode to i8
  %121 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv224, ptr %5, align 2
  %122 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dig_encoder, align 4
  %conv226 = trunc i32 %123 to i8
  %124 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv226, ptr %args, align 2
  br label %sw.epilog276

sw.bb227:                                         ; preds = %sw.bb220
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 15, ptr %4, align 1
  %126 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dig_encoder, align 4
  %conv231 = trunc i32 %127 to i8
  %128 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv231, ptr %args, align 2
  %call233 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv234 = trunc i32 %call233 to i8
  %129 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv234, ptr %5, align 2
  %130 = zext i8 %conv234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %conv234, label %if.else247 [
    i8 0, label %sw.bb227.if.end255_crit_edge
    i8 5, label %sw.bb227.if.end255_crit_edge381
  ]

sw.bb227.if.end255_crit_edge381:                  ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

sw.bb227.if.end255_crit_edge:                     ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

if.else247:                                       ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #13
  %pixel_clock248 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %131 = ptrtoint ptr %pixel_clock248 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pixel_clock248, align 4
  %call249 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %132) #11
  %. = select i1 %call249, i8 8, i8 4
  br label %if.end255

if.end255:                                        ; preds = %if.else247, %sw.bb227.if.end255_crit_edge, %sw.bb227.if.end255_crit_edge381
  %.sink362 = phi i8 [ %dp_lane_count.0, %sw.bb227.if.end255_crit_edge ], [ %dp_lane_count.0, %sw.bb227.if.end255_crit_edge381 ], [ %., %if.else247 ]
  %133 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %.sink362, ptr %6, align 1
  %pixel_clock256 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %134 = ptrtoint ptr %pixel_clock256 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pixel_clock256, align 4
  %div257 = udiv i32 %135, 10
  %136 = call i32 @llvm.bswap.i32(i32 %div257)
  %137 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %136, ptr %7, align 2
  %call258 = call fastcc zeroext i8 @amdgpu_atombios_encoder_get_bpc(ptr noundef %encoder)
  %138 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %call258, ptr %8, align 2
  %div260 = sdiv i32 %dp_clock.0, 27000
  %conv261 = trunc i32 %div260 to i8
  %ucLinkRateIn270Mhz = getelementptr inbounds %struct._ENCODER_STREAM_SETUP_PARAMETERS_V5, ptr %args, i32 0, i32 6
  %139 = ptrtoint ptr %ucLinkRateIn270Mhz to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv261, ptr %ucLinkRateIn270Mhz, align 1
  br label %sw.epilog276

sw.bb262:                                         ; preds = %sw.bb220.sw.bb262_crit_edge, %sw.bb220.sw.bb262_crit_edge374, %sw.bb220.sw.bb262_crit_edge375, %sw.bb220.sw.bb262_crit_edge376, %sw.bb220.sw.bb262_crit_edge377, %sw.bb220.sw.bb262_crit_edge378, %sw.bb220.sw.bb262_crit_edge379, %sw.bb220.sw.bb262_crit_edge380
  %conv263 = trunc i32 %action to i8
  %140 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv263, ptr %4, align 1
  %141 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dig_encoder, align 4
  %conv266 = trunc i32 %142 to i8
  %143 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv266, ptr %args, align 2
  br label %sw.epilog276

sw.default:                                       ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %action) #11
  br label %sw.epilog276

sw.default269:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv14 = zext i8 %28 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %conv14) #11
  br label %sw.epilog276

sw.default273:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %26 to i32
  %144 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %crev, align 1
  %conv275 = zext i8 %145 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv275) #11
  br label %sw.epilog276

sw.epilog276:                                     ; preds = %sw.default273, %sw.default269, %sw.default, %sw.bb262, %if.end255, %sw.bb221, %if.else216, %if.then215, %amdgpu_atombios_encoder_get_bpc.exit, %if.then66, %sw.epilog.sw.epilog276_crit_edge
  %146 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mode_info, align 8
  %call279 = call i32 @amdgpu_atom_execute_table(ptr noundef %147, i32 noundef 4, ptr noundef nonnull %args) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog276, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @amdgpu_atombios_encoder_get_bpc(ptr nocapture noundef readonly %encoder) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bpc2 = getelementptr inbounds %struct.amdgpu_crtc, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %bpc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpc2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bpc.0 = phi i32 [ %3, %if.then ], [ 8, %entry.if.end_crit_edge ]
  %4 = tail call i32 @llvm.fshl.i32(i32 %bpc.0, i32 %bpc.0, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %5 = icmp ult i32 %4, 9
  br i1 %5, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.amdgpu_atombios_encoder_get_bpc, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge
  %retval.0 = phi i8 [ %switch.load, %switch.lookup ], [ 2, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_encoder_set_edp_panel_power(ptr nocapture noundef readonly %connector, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.dig_transmitter_control, align 1
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #11
  %2 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %3 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %4 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev, align 1, !annotation !78
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %5 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp.not = icmp eq i32 %6, 14
  %7 = and i32 %action, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %switch = icmp eq i32 %7, 12
  %or.cond = and i1 %switch, %cmp.not
  br i1 %or.cond, label %if.end5, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup23

if.end5:                                          ; preds = %entry
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 8
  %call6 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %9, i32 noundef 76, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call6, label %if.end8, label %if.end5.cleanup23_crit_edge

if.end5.cleanup23_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup23

if.end8:                                          ; preds = %if.end5
  %10 = call ptr @memset(ptr %args, i32 0, i32 16)
  %conv = trunc i32 %action to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %2, align 1
  %12 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_info, align 8
  %call11 = call i32 @amdgpu_atom_execute_table(ptr noundef %13, i32 noundef 76, ptr noundef nonnull %args) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %action)
  %cmp12 = icmp eq i32 %action, 12
  br i1 %cmp12, label %for.cond.preheader, label %if.end8.cleanup23_crit_edge

if.end8.cleanup23_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup23

for.cond.preheader:                               ; preds = %if.end8
  %funcs = getelementptr i8, ptr %1, i32 22416
  %hpd = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %for.cond.preheader
  %i.040 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end21.for.body_crit_edge ]
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 8
  %hpd_sense = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %hpd_sense to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hpd_sense, align 4
  %18 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hpd, align 4
  %call19 = call zeroext i1 %17(ptr noundef %add.ptr.i, i32 noundef %19) #11
  br i1 %call19, label %for.body.cleanup23_crit_edge, label %if.end21

for.body.cleanup23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup23

if.end21:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #11
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 300
  br i1 %exitcond.not, label %if.end21.cleanup23_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end21.cleanup23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup23

cleanup23:                                        ; preds = %if.end21.cleanup23_crit_edge, %for.body.cleanup23_crit_edge, %if.end8.cleanup23_crit_edge, %if.end5.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.1 = phi i1 [ true, %if.end8.cleanup23_crit_edge ], [ true, %if.end5.cleanup23_crit_edge ], [ true, %entry.cleanup23_crit_edge ], [ %call19, %if.end21.cleanup23_crit_edge ], [ %call19, %for.body.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #11
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_dpms(ptr noundef %encoder, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %args.i25 = alloca %struct._DAC_ENCODER_CONTROL_PARAMETERS, align 4
  %args.i = alloca %struct._DAC_ENCODER_CONTROL_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_id, align 4
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devices, align 4
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %4 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_device, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %mode, i32 noundef %3, i32 noundef %5) #11
  %6 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %encoder_id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 30, label %entry.sw.bb_crit_edge
    i32 32, label %entry.sw.bb_crit_edge36
    i32 33, label %entry.sw.bb_crit_edge37
    i32 37, label %entry.sw.bb_crit_edge38
    i32 20, label %sw.bb4
    i32 21, label %sw.bb8
  ]

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37, %entry.sw.bb_crit_edge38
  %9 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %mode, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb.sw.bb3_crit_edge
    i32 2, label %sw.bb.sw.bb3_crit_edge39
    i32 3, label %sw.bb.sw.bb3_crit_edge40
  ]

sw.bb.sw.bb3_crit_edge40:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge39:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @amdgpu_atombios_encoder_setup_dig(ptr noundef %encoder, i32 noundef 1)
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge39, %sw.bb.sw.bb3_crit_edge40
  tail call fastcc void @amdgpu_atombios_encoder_setup_dig(ptr noundef %encoder, i32 noundef 0)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %10 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %mode, label %sw.bb4.cleanup_crit_edge [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb4.sw.bb6_crit_edge
    i32 2, label %sw.bb4.sw.bb6_crit_edge41
    i32 3, label %sw.bb4.sw.bb6_crit_edge42
  ]

sw.bb4.sw.bb6_crit_edge42:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

sw.bb4.sw.bb6_crit_edge41:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

sw.bb4.sw.bb6_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @amdgpu_atombios_encoder_setup_dvo(ptr noundef %encoder, i32 noundef 1)
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb4.sw.bb6_crit_edge, %sw.bb4.sw.bb6_crit_edge41, %sw.bb4.sw.bb6_crit_edge42
  tail call fastcc void @amdgpu_atombios_encoder_setup_dvo(ptr noundef %encoder, i32 noundef 0)
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %11 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %mode, label %sw.bb8.cleanup_crit_edge [
    i32 0, label %amdgpu_atombios_encoder_setup_dac.exit
    i32 1, label %sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge
    i32 2, label %sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge43
    i32 3, label %sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge44
  ]

sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge44: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_setup_dac.exit35

sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge43: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_setup_dac.exit35

sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_setup_dac.exit35

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

amdgpu_atombios_encoder_setup_dac.exit:           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i) #11
  %14 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 257, ptr %args.i, align 4
  %pixel_clock.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %15 = ptrtoint ptr %pixel_clock.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixel_clock.i, align 4
  %div.i = udiv i32 %16, 10
  %conv3.i = trunc i32 %div.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #11
  %18 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %args.i, align 4
  %mode_info.i = getelementptr i8, ptr %13, i32 21992
  %19 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode_info.i, align 8
  %call4.i = call i32 @amdgpu_atom_execute_table(ptr noundef %20, i32 noundef 24, ptr noundef nonnull %args.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #11
  br label %cleanup

amdgpu_atombios_encoder_setup_dac.exit35:         ; preds = %sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge, %sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge43, %sw.bb8.amdgpu_atombios_encoder_setup_dac.exit35_crit_edge44
  %21 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i25) #11
  %23 = ptrtoint ptr %args.i25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %args.i25, align 4
  %pixel_clock.i30 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %24 = ptrtoint ptr %pixel_clock.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixel_clock.i30, align 4
  %div.i31 = udiv i32 %25, 10
  %conv3.i32 = trunc i32 %div.i31 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv3.i32) #11
  %27 = ptrtoint ptr %args.i25 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %args.i25, align 4
  %mode_info.i33 = getelementptr i8, ptr %22, i32 21992
  %28 = ptrtoint ptr %mode_info.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mode_info.i33, align 8
  %call4.i34 = call i32 @amdgpu_atom_execute_table(ptr noundef %29, i32 noundef 24, ptr noundef nonnull %args.i25) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i25) #11
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_atombios_encoder_setup_dac.exit35, %amdgpu_atombios_encoder_setup_dac.exit, %sw.bb8.cleanup_crit_edge, %sw.bb6, %sw.bb5, %sw.bb4.cleanup_crit_edge, %sw.bb3, %sw.bb2, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_atombios_encoder_setup_dig(ptr noundef %encoder, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %args.i138 = alloca %union.dig_transmitter_control, align 1
  %frev.i139 = alloca i8, align 1
  %crev.i140 = alloca i8, align 1
  %args.i = alloca %union.dig_transmitter_control, align 1
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_get_external_encoder(ptr noundef %encoder) #11
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  %call1 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp = icmp eq i32 %action, 1
  br i1 %cmp, label %if.end.if.end10_crit_edge, label %if.else41

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.thread:                                    ; preds = %entry
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %call1, i32 0, i32 7
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp152 = icmp eq i32 %action, 1
  br i1 %cmp152, label %if.else, label %if.else41.thread

if.else:                                          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @amdgpu_atombios_dp_get_panel_mode(ptr noundef %encoder, ptr noundef nonnull %call1) #11
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end.if.end10_crit_edge
  %call8.sink = phi i32 [ %call8, %if.else ], [ 0, %if.end.if.end10_crit_edge ]
  %amdgpu_dig_connector.0153156 = phi ptr [ %3, %if.else ], [ null, %if.end.if.end10_crit_edge ]
  %panel_mode9 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %panel_mode9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call8.sink, ptr %panel_mode9, align 4
  tail call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %encoder, i32 noundef 15, i32 noundef 0)
  %panel_mode11 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %panel_mode11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %panel_mode11, align 4
  tail call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %encoder, i32 noundef 16, i32 noundef %6)
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @amdgpu_atombios_encoder_setup_external_encoder(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 15)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %call15 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %call17 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call17)
  %cmp18 = icmp ne i32 %call17, 5
  %brmerge = select i1 %cmp18, i1 true, i1 %tobool.not
  br i1 %brmerge, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end14
  br i1 %tobool.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.if.then20_crit_edge

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then20:                                        ; preds = %land.lhs.true.if.then20_crit_edge, %lor.lhs.false.if.then20_crit_edge
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call1, i32 0, i32 10
  %7 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %8)
  %cmp21 = icmp eq i32 %8, 14
  br i1 %cmp21, label %if.end5.i, label %if.then20.if.end25_crit_edge

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end5.i:                                        ; preds = %if.then20
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #11
  %11 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %frev.i, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #11
  %12 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %crev.i, align 1, !annotation !78
  %mode_info.i = getelementptr i8, ptr %10, i32 21992
  %13 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode_info.i, align 8
  %call6.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %14, i32 noundef 76, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #11
  br i1 %call6.i, label %if.end8.i, label %if.end5.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge

if.end5.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_set_edp_panel_power.exit

if.end8.i:                                        ; preds = %if.end5.i
  %15 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args.i, i32 0, i32 3
  %16 = call ptr @memset(ptr %args.i, i32 0, i32 16)
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 12, ptr %15, align 1
  %18 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode_info.i, align 8
  %call11.i = call i32 @amdgpu_atom_execute_table(ptr noundef %19, i32 noundef 76, ptr noundef nonnull %args.i) #11
  %funcs.i = getelementptr i8, ptr %10, i32 22416
  %hpd.i = getelementptr inbounds %struct.amdgpu_connector, ptr %call1, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %if.end8.i
  %i.040.i = phi i32 [ 0, %if.end8.i ], [ %inc.i, %if.end21.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs.i, align 8
  %hpd_sense.i = getelementptr inbounds %struct.amdgpu_display_funcs, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %hpd_sense.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hpd_sense.i, align 4
  %24 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hpd.i, align 4
  %call19.i = call zeroext i1 %23(ptr noundef %add.ptr.i.i, i32 noundef %25) #11
  br i1 %call19.i, label %for.body.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge, label %if.end21.i

for.body.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_set_edp_panel_power.exit

if.end21.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #11
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 300
  br i1 %exitcond.not.i, label %if.end21.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end21.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_set_edp_panel_power.exit

amdgpu_atombios_encoder_set_edp_panel_power.exit: ; preds = %if.end21.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge, %for.body.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge, %if.end5.i.amdgpu_atombios_encoder_set_edp_panel_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #11
  %edp_on = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %amdgpu_dig_connector.0153156, i32 0, i32 5
  %27 = ptrtoint ptr %edp_on to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %edp_on, align 4
  br label %if.end25

if.end25:                                         ; preds = %amdgpu_atombios_encoder_set_edp_panel_power.exit, %if.then20.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %encoder, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %call26 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %land.lhs.true31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end25
  %call29 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call29)
  %cmp30 = icmp ne i32 %call29, 5
  %brmerge134 = select i1 %cmp30, i1 true, i1 %tobool.not
  br i1 %brmerge134, label %lor.lhs.false28.if.end34_crit_edge, label %lor.lhs.false28.if.then33_crit_edge

lor.lhs.false28.if.then33_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

lor.lhs.false28.if.end34_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true31:                                  ; preds = %if.end25
  br i1 %tobool.not, label %land.lhs.true31.if.end34_crit_edge, label %land.lhs.true31.if.then33_crit_edge

land.lhs.true31.if.then33_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

land.lhs.true31.if.end34_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then33:                                        ; preds = %land.lhs.true31.if.then33_crit_edge, %lor.lhs.false28.if.then33_crit_edge
  call void @amdgpu_atombios_dp_link_train(ptr noundef %encoder, ptr noundef nonnull %call1) #11
  call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %encoder, i32 noundef 13, i32 noundef 0)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true31.if.end34_crit_edge, %lor.lhs.false28.if.end34_crit_edge
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %28 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devices, align 4
  %and = and i32 %29, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end34.if.end37_crit_edge, label %if.then36

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %backlight_level = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %backlight_level, align 4
  call void @amdgpu_atombios_encoder_set_backlight_level(ptr noundef %encoder, i8 noundef zeroext %31)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34.if.end37_crit_edge
  br i1 %tobool12.not, label %if.end37.if.end83_crit_edge, label %if.then39

if.end37.if.end83_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @amdgpu_atombios_encoder_setup_external_encoder(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 1)
  br label %if.end83

if.else41:                                        ; preds = %if.end
  %call42 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.else41.if.end50_crit_edge, label %lor.lhs.false44.thread

if.else41.if.end50_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

lor.lhs.false44.thread:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  %call45167 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  br label %if.end50

if.else41.thread:                                 ; preds = %if.end.thread
  %call42159 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42159)
  %cmp43160 = icmp eq i32 %call42159, 0
  br i1 %cmp43160, label %if.else41.thread.if.then49_crit_edge, label %lor.lhs.false44

if.else41.thread.if.then49_crit_edge:             ; preds = %if.else41.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

lor.lhs.false44:                                  ; preds = %if.else41.thread
  %call45 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call45)
  %cmp46 = icmp ne i32 %call45, 5
  %brmerge135 = select i1 %cmp46, i1 true, i1 %tobool.not
  br i1 %brmerge135, label %lor.lhs.false44.if.end50_crit_edge, label %lor.lhs.false44.if.then49_crit_edge

lor.lhs.false44.if.then49_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

lor.lhs.false44.if.end50_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then49:                                        ; preds = %lor.lhs.false44.if.then49_crit_edge, %if.else41.thread.if.then49_crit_edge
  tail call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %encoder, i32 noundef 12, i32 noundef 0)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %lor.lhs.false44.if.end50_crit_edge, %lor.lhs.false44.thread, %if.else41.if.end50_crit_edge
  %amdgpu_dig_connector.0154162 = phi ptr [ %3, %lor.lhs.false44.if.end50_crit_edge ], [ %3, %if.then49 ], [ null, %if.else41.if.end50_crit_edge ], [ null, %lor.lhs.false44.thread ]
  %tobool51.not = icmp eq ptr %call, null
  br i1 %tobool51.not, label %if.end50.if.end53_crit_edge, label %if.then52

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @amdgpu_atombios_encoder_setup_external_encoder(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 0)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end50.if.end53_crit_edge
  %devices54 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %32 = ptrtoint ptr %devices54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devices54, align 4
  %and55 = and i32 %33, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end58_crit_edge, label %if.then57

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %encoder, i32 noundef 2, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end53.if.end58_crit_edge
  %call59 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %land.lhs.true64, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end58
  %call62 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call62)
  %cmp63 = icmp ne i32 %call62, 5
  %brmerge136 = select i1 %cmp63, i1 true, i1 %tobool.not
  br i1 %brmerge136, label %lor.lhs.false61.if.end67_crit_edge, label %lor.lhs.false61.if.then66_crit_edge

lor.lhs.false61.if.then66_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66

lor.lhs.false61.if.end67_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true64:                                  ; preds = %if.end58
  br i1 %tobool.not, label %land.lhs.true64.if.end67_crit_edge, label %land.lhs.true64.if.then66_crit_edge

land.lhs.true64.if.then66_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66

land.lhs.true64.if.end67_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then66:                                        ; preds = %land.lhs.true64.if.then66_crit_edge, %lor.lhs.false61.if.then66_crit_edge
  tail call void @amdgpu_atombios_dp_set_rx_power_state(ptr noundef nonnull %call1, i8 noundef zeroext 2) #11
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %land.lhs.true64.if.end67_crit_edge, %lor.lhs.false61.if.end67_crit_edge
  tail call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %encoder, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %call68 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %land.lhs.true73, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end67
  %call71 = tail call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call71)
  %cmp72 = icmp ne i32 %call71, 5
  %brmerge137 = select i1 %cmp72, i1 true, i1 %tobool.not
  br i1 %brmerge137, label %lor.lhs.false70.if.end83_crit_edge, label %lor.lhs.false70.if.then75_crit_edge

lor.lhs.false70.if.then75_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

lor.lhs.false70.if.end83_crit_edge:               ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

land.lhs.true73:                                  ; preds = %if.end67
  br i1 %tobool.not, label %land.lhs.true73.if.end83_crit_edge, label %land.lhs.true73.if.then75_crit_edge

land.lhs.true73.if.then75_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

land.lhs.true73.if.end83_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then75:                                        ; preds = %land.lhs.true73.if.then75_crit_edge, %lor.lhs.false70.if.then75_crit_edge
  %connector_type76 = getelementptr inbounds %struct.drm_connector, ptr %call1, i32 0, i32 10
  %34 = ptrtoint ptr %connector_type76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %connector_type76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %35)
  %cmp77 = icmp eq i32 %35, 14
  br i1 %cmp77, label %if.end5.i146, label %if.then75.if.end83_crit_edge

if.then75.if.end83_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.end5.i146:                                     ; preds = %if.then75
  %36 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i138) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i139) #11
  %38 = ptrtoint ptr %frev.i139 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %frev.i139, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i140) #11
  %39 = ptrtoint ptr %crev.i140 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %crev.i140, align 1, !annotation !78
  %mode_info.i144 = getelementptr i8, ptr %37, i32 21992
  %40 = ptrtoint ptr %mode_info.i144 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mode_info.i144, align 8
  %call6.i145 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %41, i32 noundef 76, ptr noundef nonnull %frev.i139, ptr noundef nonnull %crev.i140) #11
  br i1 %call6.i145, label %if.end8.i148, label %if.end5.i146.amdgpu_atombios_encoder_set_edp_panel_power.exit150_crit_edge

if.end5.i146.amdgpu_atombios_encoder_set_edp_panel_power.exit150_crit_edge: ; preds = %if.end5.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_set_edp_panel_power.exit150

if.end8.i148:                                     ; preds = %if.end5.i146
  call void @__sanitizer_cov_trace_pc() #13
  %42 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_6, ptr %args.i138, i32 0, i32 3
  %43 = call ptr @memset(ptr %args.i138, i32 0, i32 16)
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 13, ptr %42, align 1
  %45 = ptrtoint ptr %mode_info.i144 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mode_info.i144, align 8
  %call11.i147 = call i32 @amdgpu_atom_execute_table(ptr noundef %46, i32 noundef 76, ptr noundef nonnull %args.i138) #11
  br label %amdgpu_atombios_encoder_set_edp_panel_power.exit150

amdgpu_atombios_encoder_set_edp_panel_power.exit150: ; preds = %if.end8.i148, %if.end5.i146.amdgpu_atombios_encoder_set_edp_panel_power.exit150_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i140) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i139) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i138) #11
  %edp_on80 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %amdgpu_dig_connector.0154162, i32 0, i32 5
  %47 = ptrtoint ptr %edp_on80 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %edp_on80, align 4
  br label %if.end83

if.end83:                                         ; preds = %amdgpu_atombios_encoder_set_edp_panel_power.exit150, %if.then75.if.end83_crit_edge, %land.lhs.true73.if.end83_crit_edge, %lor.lhs.false70.if.end83_crit_edge, %if.then39, %if.end37.if.end83_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_atombios_encoder_setup_dvo(ptr noundef %encoder, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.dvo_encoder_control, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #11
  %2 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 2
  %4 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 3
  %5 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %frev, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %7 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %crev, align 1, !annotation !78
  %8 = call ptr @memset(ptr %args, i32 0, i32 16)
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 8
  %call2 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cond = icmp eq i8 %12, 1
  br i1 %cond, label %sw.bb, label %sw.default49

sw.bb:                                            ; preds = %if.end
  %13 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %crev, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %14, label %sw.default [
    i8 1, label %sw.bb4
    i8 2, label %sw.bb17
    i8 3, label %sw.bb31
    i8 4, label %sw.bb38
  ]

sw.bb4:                                           ; preds = %sw.bb
  %conv5 = trunc i32 %action to i8
  %16 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %args, align 2
  %pixel_clock = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %17 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixel_clock, align 4
  %call6 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %18) #11
  br i1 %call6, label %if.then7, label %sw.bb4.if.end11_crit_edge

sw.bb4.if.end11_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %ucMisc = getelementptr inbounds %struct._ENABLE_EXTERNAL_TMDS_ENCODER_PARAMETERS, ptr %args, i32 0, i32 1
  %19 = ptrtoint ptr %ucMisc to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ucMisc, align 1
  %21 = or i8 %20, 1
  store i8 %21, ptr %ucMisc, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %sw.bb4.if.end11_crit_edge
  %ucMisc13 = getelementptr inbounds %struct._ENABLE_EXTERNAL_TMDS_ENCODER_PARAMETERS, ptr %args, i32 0, i32 1
  %22 = ptrtoint ptr %ucMisc13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucMisc13, align 1
  %24 = or i8 %23, 2
  store i8 %24, ptr %ucMisc13, align 1
  br label %sw.epilog52

sw.bb17:                                          ; preds = %sw.bb
  %conv18 = trunc i32 %action to i8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv18, ptr %4, align 1
  %pixel_clock19 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %26 = ptrtoint ptr %pixel_clock19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixel_clock19, align 4
  %div = udiv i32 %27, 10
  %conv20 = trunc i32 %div to i16
  %28 = call i16 @llvm.bswap.i16(i16 %conv20)
  %29 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %args, align 2
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %3, align 2
  %call24 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %27) #11
  br i1 %call24, label %if.then25, label %sw.bb17.sw.epilog52_crit_edge

sw.bb17.sw.epilog52_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog52

if.then25:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %5, align 2
  %33 = or i8 %32, 1
  store i8 %33, ptr %5, align 2
  br label %sw.epilog52

sw.bb31:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv32 = trunc i32 %action to i8
  %ucAction33 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 2
  %34 = ptrtoint ptr %ucAction33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv32, ptr %ucAction33, align 1
  %pixel_clock34 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %35 = ptrtoint ptr %pixel_clock34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pixel_clock34, align 4
  %div35 = udiv i32 %36, 10
  %conv36 = trunc i32 %div35 to i16
  %37 = call i16 @llvm.bswap.i16(i16 %conv36)
  %38 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %args, align 2
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %2, align 2
  br label %sw.epilog52

sw.bb38:                                          ; preds = %sw.bb
  %conv39 = trunc i32 %action to i8
  %ucAction40 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS_V1_4, ptr %args, i32 0, i32 2
  %40 = ptrtoint ptr %ucAction40 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv39, ptr %ucAction40, align 1
  %pixel_clock41 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %41 = ptrtoint ptr %pixel_clock41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pixel_clock41, align 4
  %div42 = udiv i32 %42, 10
  %conv43 = trunc i32 %div42 to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv43)
  %44 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %args, align 2
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %2, align 2
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %46 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %sw.bb38.if.end.i_crit_edge, label %if.then.i

sw.bb38.if.end.i_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %bpc2.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %47, i32 0, i32 29
  %48 = ptrtoint ptr %bpc2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bpc2.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb38.if.end.i_crit_edge
  %bpc.0.i = phi i32 [ %49, %if.then.i ], [ 8, %sw.bb38.if.end.i_crit_edge ]
  %50 = call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %50)
  %51 = icmp ult i32 %50, 9
  br i1 %51, label %switch.lookup, label %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge

if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_get_bpc.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.amdgpu_atombios_encoder_setup_dvo, i32 0, i32 %50
  %52 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %52)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %amdgpu_atombios_encoder_get_bpc.exit

amdgpu_atombios_encoder_get_bpc.exit:             ; preds = %switch.lookup, %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 2, %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge ]
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %retval.0.i, ptr %3, align 2
  br label %sw.epilog52

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %14 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %conv3) #11
  br label %sw.epilog52

sw.default49:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %12 to i32
  %54 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %crev, align 1
  %conv51 = zext i8 %55 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv51) #11
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.default49, %sw.default, %amdgpu_atombios_encoder_get_bpc.exit, %sw.bb31, %if.then25, %sw.bb17.sw.epilog52_crit_edge, %if.end11
  %56 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mode_info, align 8
  %call55 = call i32 @amdgpu_atom_execute_table(ptr noundef %57, i32 noundef 8, ptr noundef nonnull %args) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog52, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_set_crtc_source(ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.crtc_source_param, align 4
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %4 = getelementptr inbounds %struct._SELECT_CRTC_SOURCE_PARAMETERS, ptr %args, i32 0, i32 1
  %5 = getelementptr inbounds %struct._SELECT_CRTC_SOURCE_PARAMETERS, ptr %args, i32 0, i32 2
  %6 = getelementptr inbounds %struct._SELECT_CRTC_SOURCE_PARAMETERS, ptr %args, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %7 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %frev, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %crev, align 1, !annotation !78
  %9 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %args, align 4
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %10 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info, align 8
  %call5 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %11, i32 noundef 42, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cond = icmp eq i8 %13, 1
  br i1 %cond, label %sw.bb, label %sw.default231

sw.bb:                                            ; preds = %if.end
  %14 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %crev, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %15, label %sw.default [
    i8 3, label %sw.bb135
    i8 2, label %sw.bb48
  ]

sw.default:                                       ; preds = %sw.bb
  %crtc_id = getelementptr inbounds %struct.amdgpu_crtc, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crtc_id, align 8
  %conv8 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8, ptr %args, align 4
  %encoder_id = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %20 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %encoder_id, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %21, label %sw.default.sw.epilog234_crit_edge [
    i32 2, label %sw.default.sw.epilog234.sink.split_crit_edge
    i32 19, label %sw.default.sw.epilog234.sink.split_crit_edge298
    i32 1, label %sw.default.sw.bb10_crit_edge
    i32 15, label %sw.default.sw.bb10_crit_edge299
    i32 11, label %sw.default.sw.bb15_crit_edge
    i32 25, label %sw.default.sw.bb15_crit_edge300
    i32 20, label %sw.default.sw.bb15_crit_edge301
    i32 4, label %sw.default.sw.bb17_crit_edge
    i32 21, label %sw.default.sw.bb17_crit_edge302
    i32 5, label %sw.default.sw.bb32_crit_edge
    i32 22, label %sw.default.sw.bb32_crit_edge303
  ]

sw.default.sw.bb32_crit_edge303:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

sw.default.sw.bb32_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

sw.default.sw.bb17_crit_edge302:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

sw.default.sw.bb17_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

sw.default.sw.bb15_crit_edge301:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

sw.default.sw.bb15_crit_edge300:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

sw.default.sw.bb15_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

sw.default.sw.bb10_crit_edge299:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

sw.default.sw.bb10_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

sw.default.sw.epilog234.sink.split_crit_edge298:  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

sw.default.sw.epilog234.sink.split_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

sw.default.sw.epilog234_crit_edge:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234

sw.bb10:                                          ; preds = %sw.default.sw.bb10_crit_edge, %sw.default.sw.bb10_crit_edge299
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %23 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devices, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8 9, i8 1
  br label %sw.epilog234.sink.split

sw.bb15:                                          ; preds = %sw.default.sw.bb15_crit_edge, %sw.default.sw.bb15_crit_edge300, %sw.default.sw.bb15_crit_edge301
  br label %sw.epilog234.sink.split

sw.bb17:                                          ; preds = %sw.default.sw.bb17_crit_edge, %sw.default.sw.bb17_crit_edge302
  %active_device = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %25 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active_device, align 4
  %and18 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else22, label %sw.bb17.sw.epilog234.sink.split_crit_edge

sw.bb17.sw.epilog234.sink.split_crit_edge:        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

if.else22:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  %and24 = lshr i32 %26, 5
  %27 = trunc i32 %and24 to i8
  %28 = and i8 %27, 8
  br label %sw.epilog234.sink.split

sw.bb32:                                          ; preds = %sw.default.sw.bb32_crit_edge, %sw.default.sw.bb32_crit_edge303
  %active_device33 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %29 = ptrtoint ptr %active_device33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %active_device33, align 4
  %and34 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else38, label %sw.bb32.sw.epilog234.sink.split_crit_edge

sw.bb32.sw.epilog234.sink.split_crit_edge:        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

if.else38:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  %and40 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %.287 = select i1 %tobool41.not, i8 4, i8 8
  br label %sw.epilog234.sink.split

sw.bb48:                                          ; preds = %sw.bb
  %crtc_id49 = getelementptr inbounds %struct.amdgpu_crtc, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %crtc_id49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crtc_id49, align 8
  %conv50 = trunc i32 %32 to i8
  %33 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv50, ptr %args, align 4
  %call52 = call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call52)
  %cmp.not = icmp eq i16 %call52, 0
  br i1 %cmp.not, label %if.else72, label %if.then55

if.then55:                                        ; preds = %sw.bb48
  %call56 = call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #11
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call56, i32 0, i32 10
  %34 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %connector_type, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %35, label %if.else66 [
    i32 7, label %if.then55.if.end83_crit_edge
    i32 1, label %if.then64
  ]

if.then55.if.end83_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then64:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.else66:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv68 = trunc i32 %call67 to i8
  br label %if.end83

if.else72:                                        ; preds = %sw.bb48
  %devices73 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %37 = ptrtoint ptr %devices73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %devices73, align 4
  %and74 = and i32 %38, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else78, label %if.else72.if.end83_crit_edge

if.else72.if.end83_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.else78:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #13
  %call79 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv80 = trunc i32 %call79 to i8
  br label %if.end83

if.end83:                                         ; preds = %if.else78, %if.else72.if.end83_crit_edge, %if.else66, %if.then64, %if.then55.if.end83_crit_edge
  %.sink = phi i8 [ %conv68, %if.else66 ], [ 15, %if.then64 ], [ %conv80, %if.else78 ], [ 1, %if.then55.if.end83_crit_edge ], [ 1, %if.else72.if.end83_crit_edge ]
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink, ptr %5, align 2
  %encoder_id84 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %40 = ptrtoint ptr %encoder_id84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %encoder_id84, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %41, label %if.end83.sw.epilog234_crit_edge [
    i32 30, label %if.end83.sw.bb85_crit_edge
    i32 32, label %if.end83.sw.bb85_crit_edge304
    i32 33, label %if.end83.sw.bb85_crit_edge305
    i32 37, label %if.end83.sw.bb85_crit_edge306
    i32 31, label %if.end83.sw.bb85_crit_edge307
    i32 20, label %if.end83.sw.epilog234.sink.split_crit_edge
    i32 21, label %sw.bb102
    i32 22, label %sw.bb118
  ]

if.end83.sw.epilog234.sink.split_crit_edge:       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

if.end83.sw.bb85_crit_edge307:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb85

if.end83.sw.bb85_crit_edge306:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb85

if.end83.sw.bb85_crit_edge305:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb85

if.end83.sw.bb85_crit_edge304:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb85

if.end83.sw.bb85_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb85

if.end83.sw.epilog234_crit_edge:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234

sw.bb85:                                          ; preds = %if.end83.sw.bb85_crit_edge, %if.end83.sw.bb85_crit_edge304, %if.end83.sw.bb85_crit_edge305, %if.end83.sw.bb85_crit_edge306, %if.end83.sw.bb85_crit_edge307
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %43 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %enc_priv, align 4
  %dig_encoder = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %46)
  %47 = icmp ult i32 %46, 7
  br i1 %47, label %switch.lookup, label %sw.bb85.sw.epilog234_crit_edge

sw.bb85.sw.epilog234_crit_edge:                   ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234

sw.bb102:                                         ; preds = %if.end83
  %active_device103 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %48 = ptrtoint ptr %active_device103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %active_device103, align 4
  %and104 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.else108, label %sw.bb102.sw.epilog234.sink.split_crit_edge

sw.bb102.sw.epilog234.sink.split_crit_edge:       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

if.else108:                                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #13
  %and110 = lshr i32 %49, 7
  %50 = trunc i32 %and110 to i8
  %51 = and i8 %50, 2
  br label %sw.epilog234.sink.split

sw.bb118:                                         ; preds = %if.end83
  %active_device119 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %52 = ptrtoint ptr %active_device119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %active_device119, align 4
  %and120 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else124, label %sw.bb118.sw.epilog234.sink.split_crit_edge

sw.bb118.sw.epilog234.sink.split_crit_edge:       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

if.else124:                                       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #13
  %and126 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %.289 = select i1 %tobool127.not, i8 4, i8 2
  br label %sw.epilog234.sink.split

sw.bb135:                                         ; preds = %sw.bb
  %crtc_id136 = getelementptr inbounds %struct.amdgpu_crtc, ptr %3, i32 0, i32 1
  %54 = ptrtoint ptr %crtc_id136 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crtc_id136, align 8
  %conv137 = trunc i32 %55 to i8
  %56 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv137, ptr %args, align 4
  %call139 = call zeroext i16 @amdgpu_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call139)
  %cmp141.not = icmp eq i16 %call139, 0
  br i1 %cmp141.not, label %if.else163, label %if.then143

if.then143:                                       ; preds = %sw.bb135
  %call145 = call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #11
  %connector_type146 = getelementptr inbounds %struct.drm_connector, ptr %call145, i32 0, i32 10
  %57 = ptrtoint ptr %connector_type146 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %connector_type146, align 8
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %58, label %if.else157 [
    i32 7, label %if.then143.if.end174_crit_edge
    i32 1, label %if.then155
  ]

if.then143.if.end174_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then155:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.else157:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  %call158 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv159 = trunc i32 %call158 to i8
  br label %if.end174

if.else163:                                       ; preds = %sw.bb135
  %devices164 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %60 = ptrtoint ptr %devices164 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %devices164, align 4
  %and165 = and i32 %61, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.else169, label %if.else163.if.end174_crit_edge

if.else163.if.end174_crit_edge:                   ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.else169:                                       ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #13
  %call170 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv171 = trunc i32 %call170 to i8
  br label %if.end174

if.end174:                                        ; preds = %if.else169, %if.else163.if.end174_crit_edge, %if.else157, %if.then155, %if.then143.if.end174_crit_edge
  %.sink284 = phi i8 [ %conv159, %if.else157 ], [ 15, %if.then155 ], [ %conv171, %if.else169 ], [ 1, %if.then143.if.end174_crit_edge ], [ 1, %if.else163.if.end174_crit_edge ]
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink284, ptr %5, align 2
  %63 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %if.end174.if.end.i_crit_edge, label %if.then.i

if.end174.if.end.i_crit_edge:                     ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  %bpc2.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %64, i32 0, i32 29
  %65 = ptrtoint ptr %bpc2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bpc2.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end174.if.end.i_crit_edge
  %bpc.0.i = phi i32 [ %66, %if.then.i ], [ 8, %if.end174.if.end.i_crit_edge ]
  %67 = call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %67)
  %68 = icmp ult i32 %67, 9
  br i1 %68, label %switch.lookup292, label %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge

if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_get_bpc.exit

switch.lookup292:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep293 = getelementptr inbounds [9 x i8], ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source.34, i32 0, i32 %67
  %69 = ptrtoint ptr %switch.gep293 to i32
  call void @__asan_load1_noabort(i32 %69)
  %switch.load294 = load i8, ptr %switch.gep293, align 1
  br label %amdgpu_atombios_encoder_get_bpc.exit

amdgpu_atombios_encoder_get_bpc.exit:             ; preds = %switch.lookup292, %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load294, %switch.lookup292 ], [ 2, %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge ]
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %retval.0.i, ptr %6, align 1
  %encoder_id176 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %71 = ptrtoint ptr %encoder_id176 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %encoder_id176, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %72, label %amdgpu_atombios_encoder_get_bpc.exit.sw.epilog234_crit_edge [
    i32 30, label %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge
    i32 32, label %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge308
    i32 33, label %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge309
    i32 37, label %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge310
    i32 31, label %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge311
    i32 20, label %amdgpu_atombios_encoder_get_bpc.exit.sw.epilog234.sink.split_crit_edge
    i32 21, label %sw.bb197
    i32 22, label %sw.bb213
  ]

amdgpu_atombios_encoder_get_bpc.exit.sw.epilog234.sink.split_crit_edge: ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge311: ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb177

amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge310: ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb177

amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge309: ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb177

amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge308: ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb177

amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge: ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb177

amdgpu_atombios_encoder_get_bpc.exit.sw.epilog234_crit_edge: ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234

sw.bb177:                                         ; preds = %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge, %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge308, %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge309, %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge310, %amdgpu_atombios_encoder_get_bpc.exit.sw.bb177_crit_edge311
  %enc_priv178 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %74 = ptrtoint ptr %enc_priv178 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %enc_priv178, align 4
  %dig_encoder179 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %dig_encoder179 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dig_encoder179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %77)
  %78 = icmp ult i32 %77, 7
  br i1 %78, label %switch.lookup295, label %sw.bb177.sw.epilog234_crit_edge

sw.bb177.sw.epilog234_crit_edge:                  ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234

sw.bb197:                                         ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  %active_device198 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %79 = ptrtoint ptr %active_device198 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %active_device198, align 4
  %and199 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.else203, label %sw.bb197.sw.epilog234.sink.split_crit_edge

sw.bb197.sw.epilog234.sink.split_crit_edge:       ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

if.else203:                                       ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #13
  %and205 = lshr i32 %80, 7
  %81 = trunc i32 %and205 to i8
  %82 = and i8 %81, 2
  br label %sw.epilog234.sink.split

sw.bb213:                                         ; preds = %amdgpu_atombios_encoder_get_bpc.exit
  %active_device214 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 4
  %83 = ptrtoint ptr %active_device214 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %active_device214, align 4
  %and215 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.else219, label %sw.bb213.sw.epilog234.sink.split_crit_edge

sw.bb213.sw.epilog234.sink.split_crit_edge:       ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog234.sink.split

if.else219:                                       ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #13
  %and221 = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  %.291 = select i1 %tobool222.not, i8 4, i8 2
  br label %sw.epilog234.sink.split

sw.default231:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %13 to i32
  %85 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %crev, align 1
  %conv233 = zext i8 %86 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv233) #11
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source, i32 0, i32 %46
  %87 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %87)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog234.sink.split

switch.lookup295:                                 ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep296 = getelementptr inbounds [7 x i8], ptr @switch.table.amdgpu_atombios_encoder_set_crtc_source.35, i32 0, i32 %77
  %88 = ptrtoint ptr %switch.gep296 to i32
  call void @__asan_load1_noabort(i32 %88)
  %switch.load297 = load i8, ptr %switch.gep296, align 1
  br label %sw.epilog234.sink.split

sw.epilog234.sink.split:                          ; preds = %switch.lookup295, %switch.lookup, %if.else219, %sw.bb213.sw.epilog234.sink.split_crit_edge, %if.else203, %sw.bb197.sw.epilog234.sink.split_crit_edge, %amdgpu_atombios_encoder_get_bpc.exit.sw.epilog234.sink.split_crit_edge, %if.else124, %sw.bb118.sw.epilog234.sink.split_crit_edge, %if.else108, %sw.bb102.sw.epilog234.sink.split_crit_edge, %if.end83.sw.epilog234.sink.split_crit_edge, %if.else38, %sw.bb32.sw.epilog234.sink.split_crit_edge, %if.else22, %sw.bb17.sw.epilog234.sink.split_crit_edge, %sw.bb15, %sw.bb10, %sw.default.sw.epilog234.sink.split_crit_edge, %sw.default.sw.epilog234.sink.split_crit_edge298
  %.sink285 = phi i8 [ 7, %sw.bb15 ], [ 3, %sw.default.sw.epilog234.sink.split_crit_edge ], [ 3, %sw.default.sw.epilog234.sink.split_crit_edge298 ], [ %., %sw.bb10 ], [ 2, %sw.bb17.sw.epilog234.sink.split_crit_edge ], [ %28, %if.else22 ], [ 2, %sw.bb32.sw.epilog234.sink.split_crit_edge ], [ %.287, %if.else38 ], [ 7, %if.end83.sw.epilog234.sink.split_crit_edge ], [ 2, %sw.bb102.sw.epilog234.sink.split_crit_edge ], [ %51, %if.else108 ], [ 2, %sw.bb118.sw.epilog234.sink.split_crit_edge ], [ %.289, %if.else124 ], [ 7, %amdgpu_atombios_encoder_get_bpc.exit.sw.epilog234.sink.split_crit_edge ], [ 2, %sw.bb197.sw.epilog234.sink.split_crit_edge ], [ %82, %if.else203 ], [ 2, %sw.bb213.sw.epilog234.sink.split_crit_edge ], [ %.291, %if.else219 ], [ %switch.load, %switch.lookup ], [ %switch.load297, %switch.lookup295 ]
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %.sink285, ptr %4, align 1
  br label %sw.epilog234

sw.epilog234:                                     ; preds = %sw.epilog234.sink.split, %sw.bb177.sw.epilog234_crit_edge, %amdgpu_atombios_encoder_get_bpc.exit.sw.epilog234_crit_edge, %sw.bb85.sw.epilog234_crit_edge, %if.end83.sw.epilog234_crit_edge, %sw.default.sw.epilog234_crit_edge
  %90 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mode_info, align 8
  %call237 = call i32 @amdgpu_atom_execute_table(ptr noundef %91, i32 noundef 42, ptr noundef nonnull %args) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog234, %sw.default231, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_init_dig(ptr noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 16
  %0 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn19 = load ptr, ptr %encoder_list, align 4
  %cmp.not21 = icmp eq ptr %.pn19, %encoder_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn22 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn19, %entry.for.body_crit_edge ]
  %encoder.023 = getelementptr i8, ptr %.pn22, i32 -4
  %call6 = tail call ptr @amdgpu_get_external_encoder(ptr noundef %encoder.023) #11
  %encoder_id = getelementptr i8, ptr %.pn22, i32 72
  %1 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %encoder_id, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %2, label %for.body.sw.epilog_crit_edge [
    i32 30, label %for.body.sw.bb_crit_edge
    i32 32, label %for.body.sw.bb_crit_edge24
    i32 33, label %for.body.sw.bb_crit_edge25
    i32 37, label %for.body.sw.bb_crit_edge26
  ]

for.body.sw.bb_crit_edge26:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

for.body.sw.bb_crit_edge25:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

for.body.sw.bb_crit_edge24:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge24, %for.body.sw.bb_crit_edge25, %for.body.sw.bb_crit_edge26
  tail call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %encoder.023, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.sw.epilog_crit_edge
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @amdgpu_atombios_encoder_setup_external_encoder(ptr noundef %encoder.023, ptr noundef nonnull %call6, i32 noundef 7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %4 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_external_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_atombios_encoder_setup_external_encoder(ptr noundef %encoder, ptr nocapture noundef readonly %ext_encoder, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.external_encoder_control, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #11
  %2 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 2
  %4 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 3
  %5 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 4
  %6 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %7 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %frev, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %crev, align 1, !annotation !78
  %encoder_enum = getelementptr inbounds %struct.amdgpu_encoder, ptr %ext_encoder, i32 0, i32 1
  %9 = ptrtoint ptr %encoder_enum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_enum, align 4
  %and = lshr i32 %10, 8
  %shr = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %action)
  %cmp = icmp eq i32 %action, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call ptr @amdgpu_get_connector_for_encoder_init(ptr noundef %encoder) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call ptr @amdgpu_get_connector_for_encoder(ptr noundef %encoder) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %connector.0 = phi ptr [ %call5, %if.then ], [ %call6, %if.else ]
  %tobool.not = icmp eq ptr %connector.0, null
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 7
  %11 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %con_priv, align 4
  %dp_clock11 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dp_clock11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_clock11, align 4
  %dp_lane_count12 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %dp_lane_count12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dp_lane_count12, align 4
  %connector_object_id13 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector.0, i32 0, i32 10
  %17 = ptrtoint ptr %connector_object_id13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %connector_object_id13, align 2
  %phi.cast = trunc i32 %16 to i8
  %phi.bo = shl i16 %18, 8
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %if.end.if.end16_crit_edge
  %dp_clock.0 = phi i32 [ %14, %if.then7 ], [ 0, %if.end.if.end16_crit_edge ]
  %dp_lane_count.0 = phi i8 [ %phi.cast, %if.then7 ], [ 0, %if.end.if.end16_crit_edge ]
  %connector_object_id.0 = phi i16 [ %phi.bo, %if.then7 ], [ 0, %if.end.if.end16_crit_edge ]
  %19 = call ptr @memset(ptr %args, i32 0, i32 16)
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %20 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mode_info, align 8
  %call17 = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %21, i32 noundef 50, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call17, label %if.end19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %22 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %frev, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %23, label %sw.default146 [
    i8 1, label %if.end19.sw.epilog149_crit_edge
    i8 2, label %sw.bb
  ]

if.end19.sw.epilog149_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog149

sw.bb:                                            ; preds = %if.end19
  %25 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %crev, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %26, label %sw.default [
    i8 1, label %sw.bb.sw.bb22_crit_edge
    i8 2, label %sw.bb.sw.bb22_crit_edge194
    i8 3, label %sw.bb60
  ]

sw.bb.sw.bb22_crit_edge194:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

sw.bb.sw.bb22_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.bb.sw.bb22_crit_edge, %sw.bb.sw.bb22_crit_edge194
  %conv23 = trunc i32 %action to i8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv23, ptr %3, align 1
  %pixel_clock = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %29 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %30, 10
  %conv24 = trunc i32 %div to i16
  %31 = call i16 @llvm.bswap.i16(i16 %conv24)
  %32 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %args, align 2
  %call26 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv27 = trunc i32 %call26 to i8
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv27, ptr %4, align 2
  %34 = zext i8 %conv27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %conv27, label %if.else49 [
    i8 0, label %sw.bb22.if.then39_crit_edge
    i8 5, label %sw.bb22.if.then39_crit_edge195
  ]

sw.bb22.if.then39_crit_edge195:                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

sw.bb22.if.then39_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then39:                                        ; preds = %sw.bb22.if.then39_crit_edge, %sw.bb22.if.then39_crit_edge195
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %dp_clock.0)
  %cmp40 = icmp eq i32 %dp_clock.0, 270000
  br i1 %cmp40, label %if.then42, label %if.then39.if.end46_crit_edge

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %2, align 2
  %37 = or i8 %36, 1
  store i8 %37, ptr %2, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then39.if.end46_crit_edge
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %dp_lane_count.0, ptr %5, align 1
  br label %sw.epilog149

if.else49:                                        ; preds = %sw.bb22
  %39 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixel_clock, align 4
  %call51 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %40) #11
  br i1 %call51, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %5, align 1
  br label %sw.epilog149

if.else55:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %5, align 1
  br label %sw.epilog149

sw.bb60:                                          ; preds = %sw.bb
  %conv61 = trunc i32 %action to i8
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv61, ptr %3, align 1
  br i1 %cmp, label %sw.bb60.if.end73_crit_edge, label %if.else68

sw.bb60.if.end73_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.else68:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #13
  %pixel_clock69 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %44 = ptrtoint ptr %pixel_clock69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pixel_clock69, align 4
  %div70 = udiv i32 %45, 10
  %conv71 = trunc i32 %div70 to i16
  %46 = call i16 @llvm.bswap.i16(i16 %conv71)
  br label %if.end73

if.end73:                                         ; preds = %if.else68, %sw.bb60.if.end73_crit_edge
  %storemerge = phi i16 [ %46, %if.else68 ], [ %connector_object_id.0, %sw.bb60.if.end73_crit_edge ]
  %47 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %storemerge, ptr %args, align 2
  %call74 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(ptr noundef %encoder)
  %conv75 = trunc i32 %call74 to i8
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv75, ptr %4, align 2
  %49 = zext i8 %conv75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %conv75, label %if.else112 [
    i8 0, label %if.end73.if.then89_crit_edge
    i8 5, label %if.end73.if.then89_crit_edge196
  ]

if.end73.if.then89_crit_edge196:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then89

if.end73.if.then89_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then89

if.then89:                                        ; preds = %if.end73.if.then89_crit_edge, %if.end73.if.then89_crit_edge196
  %50 = zext i32 %dp_clock.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %dp_clock.0, label %if.then89.if.end122_crit_edge [
    i32 270000, label %if.then89.if.end108.sink.split_crit_edge
    i32 540000, label %if.then101
  ]

if.then89.if.end108.sink.split_crit_edge:         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.sink.split

if.then89.if.end122_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then101:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108.sink.split

if.end108.sink.split:                             ; preds = %if.then101, %if.then89.if.end108.sink.split_crit_edge
  %.sink190 = phi i8 [ 2, %if.then101 ], [ 1, %if.then89.if.end108.sink.split_crit_edge ]
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %2, align 2
  %53 = or i8 %52, %.sink190
  store i8 %53, ptr %2, align 2
  br label %if.end122

if.else112:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %pixel_clock113 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 6
  %54 = ptrtoint ptr %pixel_clock113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pixel_clock113, align 4
  %call114 = call zeroext i1 @amdgpu_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %55) #11
  %. = select i1 %call114, i8 8, i8 4
  br label %if.end122

if.end122:                                        ; preds = %if.else112, %if.end108.sink.split, %if.then89.if.end122_crit_edge
  %.sink = phi i8 [ %dp_lane_count.0, %if.end108.sink.split ], [ %dp_lane_count.0, %if.then89.if.end122_crit_edge ], [ %., %if.else112 ]
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink, ptr %5, align 1
  %57 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %shr, label %if.end122.sw.epilog_crit_edge [
    i32 3, label %sw.bb135
    i32 2, label %if.end122.sw.epilog.sink.split_crit_edge
  ]

if.end122.sw.epilog.sink.split_crit_edge:         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end122.sw.epilog_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb135, %if.end122.sw.epilog.sink.split_crit_edge
  %.sink193 = phi i8 [ 32, %sw.bb135 ], [ 16, %if.end122.sw.epilog.sink.split_crit_edge ]
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %2, align 2
  %60 = or i8 %59, %.sink193
  store i8 %60, ptr %2, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end122.sw.epilog_crit_edge
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %61 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %if.then.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %bpc2.i = getelementptr inbounds %struct.amdgpu_crtc, ptr %62, i32 0, i32 29
  %63 = ptrtoint ptr %bpc2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bpc2.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.if.end.i_crit_edge
  %bpc.0.i = phi i32 [ %64, %if.then.i ], [ 8, %sw.epilog.if.end.i_crit_edge ]
  %65 = call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %65)
  %66 = icmp ult i32 %65, 9
  br i1 %66, label %switch.lookup, label %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge

if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_atombios_encoder_get_bpc.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.amdgpu_atombios_encoder_setup_external_encoder, i32 0, i32 %65
  %67 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %67)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %amdgpu_atombios_encoder_get_bpc.exit

amdgpu_atombios_encoder_get_bpc.exit:             ; preds = %switch.lookup, %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 2, %if.end.i.amdgpu_atombios_encoder_get_bpc.exit_crit_edge ]
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %retval.0.i, ptr %6, align 2
  br label %sw.epilog149

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv21 = zext i8 %26 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef %conv21) #11
  br label %cleanup

sw.default146:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %conv20 = zext i8 %23 to i32
  %69 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %crev, align 1
  %conv148 = zext i8 %70 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %conv20, i32 noundef %conv148) #11
  br label %cleanup

sw.epilog149:                                     ; preds = %amdgpu_atombios_encoder_get_bpc.exit, %if.else55, %if.then52, %if.end46, %if.end19.sw.epilog149_crit_edge
  %71 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mode_info, align 8
  %call152 = call i32 @amdgpu_atom_execute_table(ptr noundef %72, i32 noundef 50, ptr noundef nonnull %args) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog149, %sw.default146, %sw.default, %if.end16.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_encoder_dac_detect(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %connector) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct._DAC_LOAD_DETECTION_PS_ALLOCATION, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %devices.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %2 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devices.i, align 4
  %and.i = and i32 %3, 277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #11
  %4 = getelementptr inbounds %struct._DAC_LOAD_DETECTION_PARAMETERS, ptr %args.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #11
  %5 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %frev.i, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #11
  %6 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crev.i, align 1, !annotation !78
  %7 = call ptr @memset(ptr %args.i, i32 0, i32 12)
  %mode_info.i = getelementptr i8, ptr %1, i32 21992
  %8 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info.i, align 8
  %call5.i = call zeroext i1 @amdgpu_atom_parse_cmd_header(ptr noundef %9, i32 noundef 21, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #11
  br i1 %call5.i, label %if.end.i, label %amdgpu_atombios_encoder_dac_load_detect.exit

if.end.i:                                         ; preds = %if.then.i
  %10 = getelementptr inbounds %struct._DAC_LOAD_DETECTION_PARAMETERS, ptr %args.i, i32 0, i32 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %4, align 1
  %encoder_id.i = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 2
  %12 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %switch.selectcmp.case1.i = icmp ne i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %13)
  %switch.selectcmp.case2.i = icmp ne i32 %13, 21
  %not.switch.selectcmp.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %14 = zext i1 %not.switch.selectcmp.i to i8
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %10, align 2
  %devices14.i = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %16 = ptrtoint ptr %devices14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devices14.i, align 4
  %and15.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else19.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 256, ptr %args.i, align 2
  br label %if.end

if.else19.i:                                      ; preds = %if.end.i
  %and21.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.else26.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4096, ptr %args.i, align 2
  br label %if.end

if.else26.i:                                      ; preds = %if.else19.i
  %and28.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.else39.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.else26.i
  %20 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %args.i, align 2
  %21 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %crev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp33.i = icmp ugt i8 %22, 2
  br i1 %cmp33.i, label %if.then35.i, label %if.then30.i.if.end_crit_edge

if.then30.i.if.end_crit_edge:                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then35.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %4, align 1
  br label %if.end

if.else39.i:                                      ; preds = %if.else26.i
  %and41.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.else39.i.if.end_crit_edge, label %if.then43.i

if.else39.i.if.end_crit_edge:                     ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then43.i:                                      ; preds = %if.else39.i
  %24 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1024, ptr %args.i, align 2
  %25 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %crev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp47.i = icmp ugt i8 %26, 2
  br i1 %cmp47.i, label %if.then49.i, label %if.then43.i.if.end_crit_edge

if.then43.i.if.end_crit_edge:                     ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then49.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %4, align 1
  br label %if.end

amdgpu_atombios_encoder_dac_load_detect.exit:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #11
  br label %if.then

if.then:                                          ; preds = %amdgpu_atombios_encoder_dac_load_detect.exit, %entry.if.then_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end:                                           ; preds = %if.then49.i, %if.then43.i.if.end_crit_edge, %if.else39.i.if.end_crit_edge, %if.then35.i, %if.then30.i.if.end_crit_edge, %if.then23.i, %if.then17.i
  %28 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mode_info.i, align 8
  %call59.i = call i32 @amdgpu_atom_execute_table(ptr noundef %29, i32 noundef 21, ptr noundef nonnull %args.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #11
  %call6 = call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 1481, i32 noundef 0) #11
  %30 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devices.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %call6, i32 noundef %31) #11
  %32 = ptrtoint ptr %devices14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devices14.i, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and9 = and i32 %call6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond = or i1 %tobool10.not, %tobool.not
  br i1 %or.cond, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %and15 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and18 = and i32 %call6, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or.cond60 = or i1 %tobool19.not, %tobool16.not
  br i1 %or.cond60, label %if.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %and24 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %and27 = and i32 %call6, 12336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond61 = or i1 %tobool28.not, %tobool25.not
  br i1 %or.cond61, label %if.end31, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %and33 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %34 = and i32 %call6, 3084
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  %or.cond66 = or i1 %35, %tobool34.not
  %spec.select = select i1 %or.cond66, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ], [ 1, %if.end22.cleanup_crit_edge ], [ %spec.select, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_encoder_dig_detect(ptr noundef %encoder, ptr nocapture noundef readonly %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call5 = tail call ptr @amdgpu_get_external_encoder(ptr noundef %encoder) #11
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %devices = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devices, align 4
  %and = and i32 %3, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call fastcc void @amdgpu_atombios_encoder_setup_external_encoder(ptr noundef %encoder, ptr noundef nonnull %call5, i32 noundef 18)
  %call8 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 1481, i32 noundef 0) #11
  %devices9 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %4 = ptrtoint ptr %devices9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devices9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %call8, i32 noundef %5) #11
  %6 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devices, align 4
  %and11 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and14 = and i32 %call8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = or i1 %tobool15.not, %tobool12.not
  br i1 %or.cond, label %if.end18, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %and20 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %and23 = and i32 %call8, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond68 = or i1 %tobool24.not, %tobool21.not
  br i1 %or.cond68, label %if.end27, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %and29 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %and32 = and i32 %call8, 12336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond69 = or i1 %tobool33.not, %tobool30.not
  br i1 %or.cond69, label %if.end36, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %and38 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %8 = and i32 %call8, 3084
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %or.cond72 = or i1 %9, %tobool39.not
  %spec.select = select i1 %or.cond72, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end27.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ], [ 1, %if.end27.cleanup_crit_edge ], [ %spec.select, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_setup_ext_encoder_ddc(ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @amdgpu_get_external_encoder(ptr noundef %encoder) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @amdgpu_atombios_encoder_setup_external_encoder(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_encoder_set_bios_scratch_regs(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %encoder, i1 noundef zeroext %connected) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 1481, i32 noundef 0) #11
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 1484, i32 noundef 0) #11
  %call7 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i, i32 noundef 1487, i32 noundef 0) #11
  %devices = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 3
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devices, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %devices8 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %4 = ptrtoint ptr %devices8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devices8, align 4
  %and9 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end18_crit_edge, label %if.then

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  br i1 %connected, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14) #11
  %or = or i32 %call5, 262144
  %or13 = or i32 %call6, 2
  %or14 = or i32 %call7, 131072
  br label %if.end18

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15) #11
  %and15 = and i32 %call5, -262145
  %and16 = and i32 %call6, -3
  %and17 = and i32 %call7, -131073
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then12, %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  %bios_0_scratch.0 = phi i32 [ %or, %if.then12 ], [ %and15, %if.else ], [ %call5, %land.lhs.true.if.end18_crit_edge ], [ %call5, %entry.if.end18_crit_edge ]
  %bios_3_scratch.0 = phi i32 [ %or13, %if.then12 ], [ %and16, %if.else ], [ %call6, %land.lhs.true.if.end18_crit_edge ], [ %call6, %entry.if.end18_crit_edge ]
  %bios_6_scratch.0 = phi i32 [ %or14, %if.then12 ], [ %and17, %if.else ], [ %call7, %land.lhs.true.if.end18_crit_edge ], [ %call7, %entry.if.end18_crit_edge ]
  %6 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devices, align 4
  %and20 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end37_crit_edge, label %land.lhs.true22

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true22:                                  ; preds = %if.end18
  %devices23 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %8 = ptrtoint ptr %devices23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devices23, align 4
  %and24 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true22.if.end37_crit_edge, label %if.then26

land.lhs.true22.if.end37_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then26:                                        ; preds = %land.lhs.true22
  br i1 %connected, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16) #11
  %or29 = or i32 %bios_0_scratch.0, 2
  %or30 = or i32 %bios_3_scratch.0, 1
  %or31 = or i32 %bios_6_scratch.0, 65536
  br label %if.end37

if.else32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17) #11
  %and33 = and i32 %bios_0_scratch.0, -4
  %and34 = and i32 %bios_3_scratch.0, -2
  %and35 = and i32 %bios_6_scratch.0, -65537
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then28, %land.lhs.true22.if.end37_crit_edge, %if.end18.if.end37_crit_edge
  %bios_0_scratch.1 = phi i32 [ %or29, %if.then28 ], [ %and33, %if.else32 ], [ %bios_0_scratch.0, %land.lhs.true22.if.end37_crit_edge ], [ %bios_0_scratch.0, %if.end18.if.end37_crit_edge ]
  %bios_3_scratch.1 = phi i32 [ %or30, %if.then28 ], [ %and34, %if.else32 ], [ %bios_3_scratch.0, %land.lhs.true22.if.end37_crit_edge ], [ %bios_3_scratch.0, %if.end18.if.end37_crit_edge ]
  %bios_6_scratch.1 = phi i32 [ %or31, %if.then28 ], [ %and35, %if.else32 ], [ %bios_6_scratch.0, %land.lhs.true22.if.end37_crit_edge ], [ %bios_6_scratch.0, %if.end18.if.end37_crit_edge ]
  %10 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devices, align 4
  %and39 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end56_crit_edge, label %land.lhs.true41

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

land.lhs.true41:                                  ; preds = %if.end37
  %devices42 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %12 = ptrtoint ptr %devices42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devices42, align 4
  %and43 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true41.if.end56_crit_edge, label %if.then45

land.lhs.true41.if.end56_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then45:                                        ; preds = %land.lhs.true41
  br i1 %connected, label %if.then47, label %if.else51

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18) #11
  %or48 = or i32 %bios_0_scratch.1, 512
  %or49 = or i32 %bios_3_scratch.1, 16
  %or50 = or i32 %bios_6_scratch.1, 1048576
  br label %if.end56

if.else51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19) #11
  %and52 = and i32 %bios_0_scratch.1, -769
  %and53 = and i32 %bios_3_scratch.1, -17
  %and54 = and i32 %bios_6_scratch.1, -1048577
  br label %if.end56

if.end56:                                         ; preds = %if.else51, %if.then47, %land.lhs.true41.if.end56_crit_edge, %if.end37.if.end56_crit_edge
  %bios_0_scratch.2 = phi i32 [ %or48, %if.then47 ], [ %and52, %if.else51 ], [ %bios_0_scratch.1, %land.lhs.true41.if.end56_crit_edge ], [ %bios_0_scratch.1, %if.end37.if.end56_crit_edge ]
  %bios_3_scratch.2 = phi i32 [ %or49, %if.then47 ], [ %and53, %if.else51 ], [ %bios_3_scratch.1, %land.lhs.true41.if.end56_crit_edge ], [ %bios_3_scratch.1, %if.end37.if.end56_crit_edge ]
  %bios_6_scratch.2 = phi i32 [ %or50, %if.then47 ], [ %and54, %if.else51 ], [ %bios_6_scratch.1, %land.lhs.true41.if.end56_crit_edge ], [ %bios_6_scratch.1, %if.end37.if.end56_crit_edge ]
  %14 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devices, align 4
  %and58 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end75_crit_edge, label %land.lhs.true60

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

land.lhs.true60:                                  ; preds = %if.end56
  %devices61 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %16 = ptrtoint ptr %devices61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devices61, align 4
  %and62 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %land.lhs.true60.if.end75_crit_edge, label %if.then64

land.lhs.true60.if.end75_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then64:                                        ; preds = %land.lhs.true60
  br i1 %connected, label %if.then66, label %if.else70

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20) #11
  %or67 = or i32 %bios_0_scratch.2, 65536
  %or68 = or i32 %bios_3_scratch.2, 8
  %or69 = or i32 %bios_6_scratch.2, 524288
  br label %if.end75

if.else70:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21) #11
  %and71 = and i32 %bios_0_scratch.2, -65537
  %and72 = and i32 %bios_3_scratch.2, -9
  %and73 = and i32 %bios_6_scratch.2, -524289
  br label %if.end75

if.end75:                                         ; preds = %if.else70, %if.then66, %land.lhs.true60.if.end75_crit_edge, %if.end56.if.end75_crit_edge
  %bios_0_scratch.3 = phi i32 [ %or67, %if.then66 ], [ %and71, %if.else70 ], [ %bios_0_scratch.2, %land.lhs.true60.if.end75_crit_edge ], [ %bios_0_scratch.2, %if.end56.if.end75_crit_edge ]
  %bios_3_scratch.3 = phi i32 [ %or68, %if.then66 ], [ %and72, %if.else70 ], [ %bios_3_scratch.2, %land.lhs.true60.if.end75_crit_edge ], [ %bios_3_scratch.2, %if.end56.if.end75_crit_edge ]
  %bios_6_scratch.3 = phi i32 [ %or69, %if.then66 ], [ %and73, %if.else70 ], [ %bios_6_scratch.2, %land.lhs.true60.if.end75_crit_edge ], [ %bios_6_scratch.2, %if.end56.if.end75_crit_edge ]
  %18 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devices, align 4
  %and77 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end94_crit_edge, label %land.lhs.true79

if.end75.if.end94_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

land.lhs.true79:                                  ; preds = %if.end75
  %devices80 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %20 = ptrtoint ptr %devices80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devices80, align 4
  %and81 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %land.lhs.true79.if.end94_crit_edge, label %if.then83

land.lhs.true79.if.end94_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then83:                                        ; preds = %land.lhs.true79
  br i1 %connected, label %if.then85, label %if.else89

if.then85:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22) #11
  %or86 = or i32 %bios_0_scratch.3, 131072
  %or87 = or i32 %bios_3_scratch.3, 128
  %or88 = or i32 %bios_6_scratch.3, 8388608
  br label %if.end94

if.else89:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23) #11
  %and90 = and i32 %bios_0_scratch.3, -131073
  %and91 = and i32 %bios_3_scratch.3, -129
  %and92 = and i32 %bios_6_scratch.3, -8388609
  br label %if.end94

if.end94:                                         ; preds = %if.else89, %if.then85, %land.lhs.true79.if.end94_crit_edge, %if.end75.if.end94_crit_edge
  %bios_0_scratch.4 = phi i32 [ %or86, %if.then85 ], [ %and90, %if.else89 ], [ %bios_0_scratch.3, %land.lhs.true79.if.end94_crit_edge ], [ %bios_0_scratch.3, %if.end75.if.end94_crit_edge ]
  %bios_3_scratch.4 = phi i32 [ %or87, %if.then85 ], [ %and91, %if.else89 ], [ %bios_3_scratch.3, %land.lhs.true79.if.end94_crit_edge ], [ %bios_3_scratch.3, %if.end75.if.end94_crit_edge ]
  %bios_6_scratch.4 = phi i32 [ %or88, %if.then85 ], [ %and92, %if.else89 ], [ %bios_6_scratch.3, %land.lhs.true79.if.end94_crit_edge ], [ %bios_6_scratch.3, %if.end75.if.end94_crit_edge ]
  %22 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devices, align 4
  %and96 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end94.if.end113_crit_edge, label %land.lhs.true98

if.end94.if.end113_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

land.lhs.true98:                                  ; preds = %if.end94
  %devices99 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %24 = ptrtoint ptr %devices99 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devices99, align 4
  %and100 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %land.lhs.true98.if.end113_crit_edge, label %if.then102

land.lhs.true98.if.end113_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then102:                                       ; preds = %land.lhs.true98
  br i1 %connected, label %if.then104, label %if.else108

if.then104:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24) #11
  %or105 = or i32 %bios_0_scratch.4, 2097152
  %or106 = or i32 %bios_3_scratch.4, 512
  %or107 = or i32 %bios_6_scratch.4, 33554432
  br label %if.end113

if.else108:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25) #11
  %and109 = and i32 %bios_0_scratch.4, -2097153
  %and110 = and i32 %bios_3_scratch.4, -513
  %and111 = and i32 %bios_6_scratch.4, -33554433
  br label %if.end113

if.end113:                                        ; preds = %if.else108, %if.then104, %land.lhs.true98.if.end113_crit_edge, %if.end94.if.end113_crit_edge
  %bios_0_scratch.5 = phi i32 [ %or105, %if.then104 ], [ %and109, %if.else108 ], [ %bios_0_scratch.4, %land.lhs.true98.if.end113_crit_edge ], [ %bios_0_scratch.4, %if.end94.if.end113_crit_edge ]
  %bios_3_scratch.5 = phi i32 [ %or106, %if.then104 ], [ %and110, %if.else108 ], [ %bios_3_scratch.4, %land.lhs.true98.if.end113_crit_edge ], [ %bios_3_scratch.4, %if.end94.if.end113_crit_edge ]
  %bios_6_scratch.5 = phi i32 [ %or107, %if.then104 ], [ %and111, %if.else108 ], [ %bios_6_scratch.4, %land.lhs.true98.if.end113_crit_edge ], [ %bios_6_scratch.4, %if.end94.if.end113_crit_edge ]
  %26 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devices, align 4
  %and115 = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end113.if.end132_crit_edge, label %land.lhs.true117

if.end113.if.end132_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

land.lhs.true117:                                 ; preds = %if.end113
  %devices118 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %28 = ptrtoint ptr %devices118 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devices118, align 4
  %and119 = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %land.lhs.true117.if.end132_crit_edge, label %if.then121

land.lhs.true117.if.end132_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

if.then121:                                       ; preds = %land.lhs.true117
  br i1 %connected, label %if.then123, label %if.else127

if.then123:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26) #11
  %or124 = or i32 %bios_0_scratch.5, 4194304
  %or125 = or i32 %bios_3_scratch.5, 1024
  %or126 = or i32 %bios_6_scratch.5, 67108864
  br label %if.end132

if.else127:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.27) #11
  %and128 = and i32 %bios_0_scratch.5, -4194305
  %and129 = and i32 %bios_3_scratch.5, -1025
  %and130 = and i32 %bios_6_scratch.5, -67108865
  br label %if.end132

if.end132:                                        ; preds = %if.else127, %if.then123, %land.lhs.true117.if.end132_crit_edge, %if.end113.if.end132_crit_edge
  %bios_0_scratch.6 = phi i32 [ %or124, %if.then123 ], [ %and128, %if.else127 ], [ %bios_0_scratch.5, %land.lhs.true117.if.end132_crit_edge ], [ %bios_0_scratch.5, %if.end113.if.end132_crit_edge ]
  %bios_3_scratch.6 = phi i32 [ %or125, %if.then123 ], [ %and129, %if.else127 ], [ %bios_3_scratch.5, %land.lhs.true117.if.end132_crit_edge ], [ %bios_3_scratch.5, %if.end113.if.end132_crit_edge ]
  %bios_6_scratch.6 = phi i32 [ %or126, %if.then123 ], [ %and130, %if.else127 ], [ %bios_6_scratch.5, %land.lhs.true117.if.end132_crit_edge ], [ %bios_6_scratch.5, %if.end113.if.end132_crit_edge ]
  %30 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devices, align 4
  %and134 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end132.if.end151_crit_edge, label %land.lhs.true136

if.end132.if.end151_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

land.lhs.true136:                                 ; preds = %if.end132
  %devices137 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %32 = ptrtoint ptr %devices137 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devices137, align 4
  %and138 = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %land.lhs.true136.if.end151_crit_edge, label %if.then140

land.lhs.true136.if.end151_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then140:                                       ; preds = %land.lhs.true136
  br i1 %connected, label %if.then142, label %if.else146

if.then142:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28) #11
  %or143 = or i32 %bios_0_scratch.6, 8388608
  %or144 = or i32 %bios_3_scratch.6, 2048
  %or145 = or i32 %bios_6_scratch.6, 134217728
  br label %if.end151

if.else146:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.29) #11
  %and147 = and i32 %bios_0_scratch.6, -8388609
  %and148 = and i32 %bios_3_scratch.6, -2049
  %and149 = and i32 %bios_6_scratch.6, -134217729
  br label %if.end151

if.end151:                                        ; preds = %if.else146, %if.then142, %land.lhs.true136.if.end151_crit_edge, %if.end132.if.end151_crit_edge
  %bios_0_scratch.7 = phi i32 [ %or143, %if.then142 ], [ %and147, %if.else146 ], [ %bios_0_scratch.6, %land.lhs.true136.if.end151_crit_edge ], [ %bios_0_scratch.6, %if.end132.if.end151_crit_edge ]
  %bios_3_scratch.7 = phi i32 [ %or144, %if.then142 ], [ %and148, %if.else146 ], [ %bios_3_scratch.6, %land.lhs.true136.if.end151_crit_edge ], [ %bios_3_scratch.6, %if.end132.if.end151_crit_edge ]
  %bios_6_scratch.7 = phi i32 [ %or145, %if.then142 ], [ %and149, %if.else146 ], [ %bios_6_scratch.6, %land.lhs.true136.if.end151_crit_edge ], [ %bios_6_scratch.6, %if.end132.if.end151_crit_edge ]
  %34 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devices, align 4
  %and153 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end151.if.end170_crit_edge, label %land.lhs.true155

if.end151.if.end170_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

land.lhs.true155:                                 ; preds = %if.end151
  %devices156 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 2
  %36 = ptrtoint ptr %devices156 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %devices156, align 4
  %and157 = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %land.lhs.true155.if.end170_crit_edge, label %if.then159

land.lhs.true155.if.end170_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then159:                                       ; preds = %land.lhs.true155
  br i1 %connected, label %if.then161, label %if.else165

if.then161:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.30) #11
  %or162 = or i32 %bios_0_scratch.7, 1048576
  %or163 = or i32 %bios_3_scratch.7, 64
  %or164 = or i32 %bios_6_scratch.7, 4194304
  br label %if.end170

if.else165:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31) #11
  %and166 = and i32 %bios_0_scratch.7, -1048577
  %and167 = and i32 %bios_3_scratch.7, -65
  %and168 = and i32 %bios_6_scratch.7, -4194305
  br label %if.end170

if.end170:                                        ; preds = %if.else165, %if.then161, %land.lhs.true155.if.end170_crit_edge, %if.end151.if.end170_crit_edge
  %bios_0_scratch.8 = phi i32 [ %or162, %if.then161 ], [ %and166, %if.else165 ], [ %bios_0_scratch.7, %land.lhs.true155.if.end170_crit_edge ], [ %bios_0_scratch.7, %if.end151.if.end170_crit_edge ]
  %bios_3_scratch.8 = phi i32 [ %or163, %if.then161 ], [ %and167, %if.else165 ], [ %bios_3_scratch.7, %land.lhs.true155.if.end170_crit_edge ], [ %bios_3_scratch.7, %if.end151.if.end170_crit_edge ]
  %bios_6_scratch.8 = phi i32 [ %or164, %if.then161 ], [ %and168, %if.else165 ], [ %bios_6_scratch.7, %land.lhs.true155.if.end170_crit_edge ], [ %bios_6_scratch.7, %if.end151.if.end170_crit_edge ]
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef 1481, i32 noundef %bios_0_scratch.8, i32 noundef 0) #11
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef 1484, i32 noundef %bios_3_scratch.8, i32 noundef 0) #11
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i, i32 noundef 1487, i32 noundef %bios_6_scratch.8, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_atombios_encoder_get_lcd_info(ptr nocapture noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %mode_info2 = getelementptr i8, ptr %1, i32 21992
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %3 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %4 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev, align 1, !annotation !78
  %encoder_enum3 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 1
  %5 = ptrtoint ptr %encoder_enum3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encoder_enum3, align 4
  %7 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info2, align 4
  %call4 = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %8, i32 noundef 6, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call4, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info2, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 152) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sLCDTiming = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %sLCDTiming to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %sLCDTiming, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %conv8 = zext i16 %18 to i32
  %mul = mul nuw nsw i32 %conv8, 10
  %native_mode = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %native_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %native_mode, align 4
  %usHActive = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 1
  %20 = ptrtoint ptr %usHActive to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %usHActive, align 1
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %hdisplay = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %hdisplay to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %hdisplay, align 8
  %usVActive = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 3
  %24 = ptrtoint ptr %usVActive to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usVActive, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %vdisplay = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 6
  %27 = ptrtoint ptr %vdisplay to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %vdisplay, align 2
  %usHBlanking_Time = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 2
  %28 = ptrtoint ptr %usHBlanking_Time to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usHBlanking_Time, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %add = add i16 %30, %22
  %htotal = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 4
  %31 = ptrtoint ptr %htotal to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %add, ptr %htotal, align 2
  %usHSyncOffset = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 5
  %32 = ptrtoint ptr %usHSyncOffset to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %usHSyncOffset, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %add25 = add i16 %34, %22
  %hsync_start = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %hsync_start to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add25, ptr %hsync_start, align 2
  %usHSyncWidth = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 6
  %36 = ptrtoint ptr %usHSyncWidth to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %usHSyncWidth, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %add33 = add i16 %38, %add25
  %hsync_end = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 3
  %39 = ptrtoint ptr %hsync_end to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %add33, ptr %hsync_end, align 4
  %usVBlanking_Time = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 4
  %40 = ptrtoint ptr %usVBlanking_Time to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %usVBlanking_Time, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %add41 = add i16 %42, %26
  %vtotal = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 9
  %43 = ptrtoint ptr %vtotal to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %add41, ptr %vtotal, align 8
  %usVSyncOffset = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 7
  %44 = ptrtoint ptr %usVSyncOffset to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %usVSyncOffset, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %add49 = add i16 %46, %26
  %vsync_start = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 7
  %47 = ptrtoint ptr %vsync_start to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %add49, ptr %vsync_start, align 4
  %usVSyncWidth = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 8
  %48 = ptrtoint ptr %usVSyncWidth to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %usVSyncWidth, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %add57 = add i16 %50, %add49
  %vsync_end = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 8
  %51 = ptrtoint ptr %vsync_end to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %add57, ptr %vsync_end, align 2
  %usOffDelayInMs = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 4
  %52 = ptrtoint ptr %usOffDelayInMs to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %usOffDelayInMs, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %panel_pwr_delay = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %panel_pwr_delay to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %panel_pwr_delay, align 4
  %ucLVDS_Misc = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 7
  %56 = ptrtoint ptr %ucLVDS_Misc to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ucLVDS_Misc, align 1
  %conv60 = zext i8 %57 to i32
  %lcd_misc = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %lcd_misc to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv60, ptr %lcd_misc, align 8
  %susModeMiscInfo = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 13
  %59 = ptrtoint ptr %susModeMiscInfo to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %susModeMiscInfo, align 1
  %61 = call i16 @llvm.bswap.i16(i16 %60)
  %conv62 = zext i16 %61 to i32
  %and63 = and i32 %conv62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end.if.end67_crit_edge, label %if.then65

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then65:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %or = or i32 %63, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end.if.end67_crit_edge
  %and69 = and i32 %conv62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end75_crit_edge, label %if.then71

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %flags73 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %64 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags73, align 4
  %or74 = or i32 %65, 2
  store i32 %or74, ptr %flags73, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end67.if.end75_crit_edge
  %and77 = and i32 %conv62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end83_crit_edge, label %if.then79

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %flags81 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %66 = ptrtoint ptr %flags81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags81, align 4
  %or82 = or i32 %67, 64
  store i32 %or82, ptr %flags81, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end75.if.end83_crit_edge
  %and85 = and i32 %conv62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end83.if.end91_crit_edge, label %if.then87

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %flags89 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %68 = ptrtoint ptr %flags89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags89, align 4
  %or90 = or i32 %69, 16
  store i32 %or90, ptr %flags89, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end83.if.end91_crit_edge
  %and93 = and i32 %conv62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end91.if.end99_crit_edge, label %if.then95

if.end91.if.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %flags97 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %70 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags97, align 4
  %or98 = or i32 %71, 32
  store i32 %or98, ptr %flags97, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end91.if.end99_crit_edge
  %usImageHSize = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 9
  %72 = ptrtoint ptr %usImageHSize to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %usImageHSize, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73)
  %width_mm = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 26
  %75 = ptrtoint ptr %width_mm to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %width_mm, align 2
  %usImageVSize = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 10
  %76 = ptrtoint ptr %usImageVSize to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %usImageVSize, align 1
  %78 = call i16 @llvm.bswap.i16(i16 %77)
  %height_mm = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 27
  %79 = ptrtoint ptr %height_mm to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %height_mm, align 8
  call void @drm_mode_set_crtcinfo(ptr noundef %native_mode, i32 noundef 1) #11
  %ucSS_Id = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 10
  %80 = ptrtoint ptr %ucSS_Id to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ucSS_Id, align 1
  %conv105 = zext i8 %81 to i32
  %lcd_ss_id = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 5
  %82 = ptrtoint ptr %lcd_ss_id to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv105, ptr %lcd_ss_id, align 8
  %native_mode106 = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 11
  %83 = call ptr @memcpy(ptr %native_mode106, ptr %native_mode, i32 112)
  %84 = and i32 %6, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %84)
  %cmp = icmp eq i32 %84, 512
  %. = zext i1 %cmp to i8
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %., ptr %call7.i.i, align 8
  %usModePatchTableOffset = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 2
  %86 = ptrtoint ptr %usModePatchTableOffset to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %usModePatchTableOffset, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %87)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool112.not = icmp eq i16 %87, 0
  br i1 %tobool112.not, label %if.end99.cleanup_crit_edge, label %if.then113

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then113:                                       ; preds = %if.end99
  %89 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp115 = icmp eq i8 %90, 1
  br i1 %cmp115, label %land.lhs.true, label %if.then113.if.else126_crit_edge

if.then113.if.else126_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else126

land.lhs.true:                                    ; preds = %if.then113
  %91 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %92)
  %cmp118 = icmp ult i8 %92, 2
  br i1 %cmp118, label %if.then120, label %land.lhs.true.if.else126_crit_edge

land.lhs.true.if.else126_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else126

if.then120:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mode_info2, align 4
  %bios122 = getelementptr inbounds %struct.atom_context, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %bios122 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bios122, align 4
  br label %if.end134

if.else126:                                       ; preds = %land.lhs.true.if.else126_crit_edge, %if.then113.if.else126_crit_edge
  %97 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mode_info2, align 4
  %bios128 = getelementptr inbounds %struct.atom_context, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %bios128 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bios128, align 4
  %101 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %data_offset, align 2
  %conv129 = zext i16 %102 to i32
  %add.ptr130 = getelementptr i8, ptr %100, i32 %conv129
  br label %if.end134

if.end134:                                        ; preds = %if.else126, %if.then120
  %add.ptr130.sink = phi ptr [ %add.ptr130, %if.else126 ], [ %96, %if.then120 ]
  %conv132 = zext i16 %88 to i32
  %add.ptr133 = getelementptr i8, ptr %add.ptr130.sink, i32 %conv132
  %bios_hardcoded_edid = getelementptr i8, ptr %1, i32 22120
  %bios_hardcoded_edid_size = getelementptr i8, ptr %1, i32 22124
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end134
  %record.1 = phi ptr [ %add.ptr133, %if.end134 ], [ %add.ptr180, %sw.epilog ]
  %103 = ptrtoint ptr %record.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %record.1, align 1
  %105 = zext i8 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %104, label %sw.epilog.thread [
    i8 -1, label %while.cond.cleanup_crit_edge
    i8 1, label %while.cond.sw.epilog_crit_edge
    i8 2, label %sw.bb140
    i8 3, label %sw.bb142
    i8 4, label %sw.bb144
    i8 5, label %sw.bb175
  ]

while.cond.sw.epilog_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb140:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb142:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb144:                                         ; preds = %while.cond
  %ucFakeEDIDLength = getelementptr inbounds %struct._ATOM_FAKE_EDID_PATCH_RECORD, ptr %record.1, i32 0, i32 1
  %106 = ptrtoint ptr %ucFakeEDIDLength to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ucFakeEDIDLength, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool145.not = icmp eq i8 %107, 0
  br i1 %tobool145.not, label %sw.bb144.if.end163_crit_edge, label %if.then146

sw.bb144.if.end163_crit_edge:                     ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end163

if.then146:                                       ; preds = %sw.bb144
  %108 = call i8 @llvm.umax.i8(i8 %107, i8 -128)
  %cond = zext i8 %108 to i32
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3264) #16
  %tobool152.not = icmp eq ptr %call9.i, null
  br i1 %tobool152.not, label %if.then146.if.end163_crit_edge, label %if.then153

if.then146.if.end163_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end163

if.then153:                                       ; preds = %if.then146
  %ucFakeEDIDString = getelementptr inbounds %struct._ATOM_FAKE_EDID_PATCH_RECORD, ptr %record.1, i32 0, i32 2
  %109 = ptrtoint ptr %ucFakeEDIDLength to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %ucFakeEDIDLength, align 1
  %conv155 = zext i8 %110 to i32
  %111 = call ptr @memcpy(ptr %call9.i, ptr %ucFakeEDIDString, i32 %conv155)
  %call156 = call zeroext i1 @drm_edid_is_valid(ptr noundef nonnull %call9.i) #11
  br i1 %call156, label %if.then157, label %if.else160

if.then157:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %bios_hardcoded_edid to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call9.i, ptr %bios_hardcoded_edid, align 8
  %113 = ptrtoint ptr %bios_hardcoded_edid_size to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %cond, ptr %bios_hardcoded_edid_size, align 4
  br label %if.end163

if.else160:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %if.end163

if.end163:                                        ; preds = %if.else160, %if.then157, %if.then146.if.end163_crit_edge, %sw.bb144.if.end163_crit_edge
  %114 = ptrtoint ptr %ucFakeEDIDLength to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ucFakeEDIDLength, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool166.not = icmp eq i8 %115, 0
  %conv165 = zext i8 %115 to i32
  %add170 = add nuw nsw i32 %conv165, 2
  %cond173 = select i1 %tobool166.not, i32 3, i32 %add170
  br label %sw.epilog

sw.bb175:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %usHSize = getelementptr inbounds %struct._ATOM_PANEL_RESOLUTION_PATCH_RECORD, ptr %record.1, i32 0, i32 1
  %116 = ptrtoint ptr %usHSize to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %usHSize, align 1
  %118 = ptrtoint ptr %width_mm to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %width_mm, align 2
  %usVSize = getelementptr inbounds %struct._ATOM_PANEL_RESOLUTION_PATCH_RECORD, ptr %record.1, i32 0, i32 2
  %119 = ptrtoint ptr %usVSize to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %usVSize, align 1
  %121 = ptrtoint ptr %height_mm to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %height_mm, align 8
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %conv135 = zext i8 %104 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %conv135) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb175, %if.end163, %sw.bb142, %sw.bb140, %while.cond.sw.epilog_crit_edge
  %.sink = phi i32 [ 5, %sw.bb175 ], [ %cond173, %if.end163 ], [ 3, %sw.bb142 ], [ 2, %sw.bb140 ], [ 5, %while.cond.sw.epilog_crit_edge ]
  %add.ptr180 = getelementptr i8, ptr %record.1, i32 %.sink
  br label %while.cond

cleanup:                                          ; preds = %sw.epilog.thread, %while.cond.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call7.i.i, %if.end99.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %sw.epilog.thread ], [ %call7.i.i, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @amdgpu_atombios_encoder_get_dig_info(ptr nocapture noundef readonly %amdgpu_encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_enum1 = getelementptr inbounds %struct.amdgpu_encoder, ptr %amdgpu_encoder, i32 0, i32 1
  %0 = ptrtoint ptr %encoder_enum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_enum1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 152) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %coherent_mode = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %coherent_mode, align 1
  %dig_encoder = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dig_encoder, align 4
  %5 = and i32 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp = icmp eq i32 %5, 512
  %. = zext i1 %cmp to i8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_atombios_encoder_update_backlight_status(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd, align 8
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 255) #11
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #11
  %8 = trunc i32 %7 to i8
  tail call void @amdgpu_atombios_encoder_set_backlight_level(ptr noundef %3, i8 noundef zeroext %8)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_dp_get_panel_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_dp_link_train(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_dp_set_rx_power_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 191, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 199, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 203, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 216, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @amdgpu_atombios_encoder_init_backlight._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @amdgpu_atombios_encoder_init_backlight._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 250, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @amdgpu_atombios_encoder_fini_backlight._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @amdgpu_atombios_encoder_fini_backlight._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 724, i32 5}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 729, i32 4}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1402, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1656, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1751, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1757, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1855, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1860, i32 4}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1869, i32 4}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1874, i32 4}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1883, i32 4}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1888, i32 4}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1897, i32 4}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1902, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1911, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1916, i32 4}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1925, i32 4}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1930, i32 4}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1939, i32 4}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1944, i32 4}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1953, i32 4}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1958, i32 4}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1967, i32 4}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 1972, i32 4}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 2117, i32 6}
!67 = !{ptr @amdgpu_atombios_encoder_backlight_ops, !68, !"amdgpu_atombios_encoder_backlight_ops", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_encoders.c", i32 160, i32 35}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i8 0, i8 2}
