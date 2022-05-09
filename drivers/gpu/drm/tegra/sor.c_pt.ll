; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/sor.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/sor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_sor_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_dp_link_ops = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_sor_soc = type { i8, i8, i8, i8, i8, ptr, i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_sor_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_sor_hdmi_settings = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_sor = type { %struct.host1x_client, %struct.tegra_output, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x i8], %struct.drm_dp_link, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.delayed_work, i8, %struct.tegra_hda_format }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_link = type { i8, i32, i32, %struct.drm_dp_link_caps, %struct.anon.96, i8, i32, i32, [8 x i32], i32, ptr, ptr, %struct.drm_dp_link_train }
%struct.drm_dp_link_caps = type { i8, i8, i8, i8, i8 }
%struct.anon.96 = type { i32, i32 }
%struct.drm_dp_link_train = type { %struct.drm_dp_link_train_set, %struct.drm_dp_link_train_set, i32, i8, i8 }
%struct.drm_dp_link_train_set = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.tegra_hda_format = type { i32, i32, i32, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_sor_pad = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.tegra_sor_state = type { %struct.drm_connector_state, i32, i32, i32 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_sor_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-sor\00", [22 x i8] zeroinitializer }, align 32
@tegra_sor_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_sor }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_sor }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sor1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_sor1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_sor }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra132_sor }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_sor }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@tegra_sor_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_sor_suspend, ptr @tegra_sor_resume, ptr @tegra_sor_suspend, ptr @tegra_sor_resume, ptr @tegra_sor_suspend, ptr @tegra_sor_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_sor_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_sor_probe, ptr @tegra_sor_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_sor_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_sor_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvidia,dpaux\00", [19 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_ops = internal constant { %struct.tegra_sor_ops, [16 x i8] } { %struct.tegra_sor_ops { ptr @.str.60, ptr @tegra_sor_hdmi_probe, ptr @tegra_sor_hdmi_audio_enable, ptr @tegra_sor_hdmi_audio_disable }, [16 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3757, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LVDS not supported yet\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_sor_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/tegra/sor.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr = internal global ptr @tegra_sor_probe._entry, section ".printk_index", align 4
@tegra_sor_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 3760, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown (non-DP) support\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.9 = internal global ptr @tegra_sor_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvidia,panel\00", [19 x i8] zeroinitializer }, align 32
@tegra_sor_dp_ops = internal constant { %struct.tegra_sor_ops, [16 x i8] } { %struct.tegra_sor_ops { ptr @.str.95, ptr @tegra_sor_dp_probe, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to probe output\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 3789, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to probe %s: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.14 = internal global ptr @tegra_sor_probe._entry.12, section ".printk_index", align 4
@tegra_sor_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 3803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get IRQ: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.17 = internal global ptr @tegra_sor_probe._entry.15, section ".printk_index", align 4
@tegra_sor_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 3812, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.20 = internal global ptr @tegra_sor_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sor\00", [28 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 3822, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get reset control: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.24 = internal global ptr @tegra_sor_probe._entry.22, section ".printk_index", align 4
@tegra_sor_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 3838, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get module clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.27 = internal global ptr @tegra_sor_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 3860, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get %s clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.33 = internal global ptr @tegra_sor_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 3871, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get parent clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.37 = internal global ptr @tegra_sor_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"safe\00", [27 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 3878, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get safe clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.41 = internal global ptr @tegra_sor_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dp\00", [29 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 3885, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get DP clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.45 = internal global ptr @tegra_sor_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pad\00", [28 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.3, ptr @.str.4, i32 3915, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to use safe clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.49 = internal global ptr @tegra_sor_probe._entry.47, section ".printk_index", align 4
@tegra_sor_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sor_client_ops = internal constant { %struct.host1x_client_ops, [40 x i8] } { %struct.host1x_client_ops { ptr null, ptr @tegra_sor_init, ptr @tegra_sor_exit, ptr null, ptr @tegra_sor_runtime_suspend, ptr @tegra_sor_runtime_resume }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sor%u_pad_clkout\00", [47 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.3, ptr @.str.4, i32 3942, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to resume: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.53 = internal global ptr @tegra_sor_probe._entry.51, section ".printk_index", align 4
@tegra_sor_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.3, ptr @.str.4, i32 3953, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register SOR pad clock: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.56 = internal global ptr @tegra_sor_probe._entry.54, section ".printk_index", align 4
@tegra_sor_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.3, ptr @.str.4, i32 3960, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register host1x client: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_sor_probe._entry_ptr.59 = internal global ptr @tegra_sor_probe._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"avdd-io-hdmi-dp\00", [16 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.4, i32 2969, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot get AVDD I/O supply: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_sor_hdmi_probe\00", [43 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry_ptr = internal global ptr @tegra_sor_hdmi_probe._entry, section ".printk_index", align 4
@tegra_sor_hdmi_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.4, i32 2976, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable AVDD I/O supply: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry_ptr.66 = internal global ptr @tegra_sor_hdmi_probe._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd-hdmi-dp-pll\00", [16 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.63, ptr @.str.4, i32 2983, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot get VDD PLL supply: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry_ptr.70 = internal global ptr @tegra_sor_hdmi_probe._entry.68, section ".printk_index", align 4
@tegra_sor_hdmi_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.63, ptr @.str.4, i32 2990, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable VDD PLL supply: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry_ptr.73 = internal global ptr @tegra_sor_hdmi_probe._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.63, ptr @.str.4, i32 2997, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot get HDMI supply: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry_ptr.77 = internal global ptr @tegra_sor_hdmi_probe._entry.75, section ".printk_index", align 4
@tegra_sor_hdmi_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.63, ptr @.str.4, i32 3003, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable HDMI supply: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe._entry_ptr.80 = internal global ptr @tegra_sor_hdmi_probe._entry.78, section ".printk_index", align 4
@tegra_sor_hdmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&sor->scdc)->work)\00", [57 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_probe.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&sor->scdc)->timer\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SCDC not scrambled\0A\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_sor_readl = external dso_local global %struct.tracepoint, align 4
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_sor_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_sor_writel = external dso_local global %struct.tracepoint, align 4
@trace_sor_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tegra_sor_hdmi_enable_audio_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 2026, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to setup audio infoframe: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tegra_sor_hdmi_enable_audio_infoframe\00", [58 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable_audio_infoframe._entry_ptr = internal global ptr @tegra_sor_hdmi_enable_audio_infoframe._entry, section ".printk_index", align 4
@tegra_sor_hdmi_enable_audio_infoframe._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.4, i32 2034, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to pack audio infoframe: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable_audio_infoframe._entry_ptr.92 = internal global ptr @tegra_sor_hdmi_enable_audio_infoframe._entry.90, section ".printk_index", align 4
@tegra_sor_hdmi_write_infopack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 1881, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported infoframe type: %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra_sor_hdmi_write_infopack\00", [34 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_write_infopack._entry_ptr = internal global ptr @tegra_sor_hdmi_write_infopack._entry, section ".printk_index", align 4
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DP\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvidia,interface\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,xbar-cfg\00", [16 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_helpers = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_sor_hdmi_disable, ptr @tegra_sor_hdmi_enable, ptr @tegra_sor_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@tegra_sor_dp_helpers = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_sor_dp_disable, ptr @tegra_sor_dp_enable, ptr @tegra_sor_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@tegra_sor_dp_link_ops = internal constant { %struct.drm_dp_link_ops, [24 x i8] } { %struct.drm_dp_link_ops { ptr @tegra_sor_dp_link_apply_training, ptr @tegra_sor_dp_link_configure }, [24 x i8] zeroinitializer }, align 32
@tegra_sor_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @tegra_sor_connector_reset, ptr @tegra_sor_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @tegra_sor_late_register, ptr @tegra_sor_early_unregister, ptr @tegra_output_connector_destroy, ptr @tegra_sor_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_sor_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @tegra_sor_connector_get_modes, ptr null, ptr @tegra_sor_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tegra_sor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.4, i32 3099, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize output: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_sor_init\00", [17 x i8] zeroinitializer }, align 32
@tegra_sor_init._entry_ptr = internal global ptr @tegra_sor_init._entry, section ".printk_index", align 4
@tegra_sor_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.4, i32 3108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to attach DP: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_sor_init._entry_ptr.102 = internal global ptr @tegra_sor_init._entry.100, section ".printk_index", align 4
@tegra_sor_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.4, i32 3120, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get runtime PM: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sor_init._entry_ptr.105 = internal global ptr @tegra_sor_init._entry.103, section ".printk_index", align 4
@tegra_sor_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.99, ptr @.str.4, i32 3127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to acquire SOR reset: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_sor_init._entry_ptr.108 = internal global ptr @tegra_sor_init._entry.106, section ".printk_index", align 4
@tegra_sor_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.99, ptr @.str.4, i32 3134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to assert SOR reset: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_sor_init._entry_ptr.111 = internal global ptr @tegra_sor_init._entry.109, section ".printk_index", align 4
@tegra_sor_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.99, ptr @.str.4, i32 3141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_sor_init._entry_ptr.114 = internal global ptr @tegra_sor_init._entry.112, section ".printk_index", align 4
@tegra_sor_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.99, ptr @.str.4, i32 3151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to deassert SOR reset: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_sor_init._entry_ptr.117 = internal global ptr @tegra_sor_init._entry.115, section ".printk_index", align 4
@tegra_sor_hdmi_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.4, i32 2219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to detach SOR: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_sor_hdmi_disable\00", [41 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_disable._entry_ptr = internal global ptr @tegra_sor_hdmi_disable._entry, section ".printk_index", align 4
@tegra_sor_hdmi_disable._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.4, i32 2238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to power down SOR: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_disable._entry_ptr.122 = internal global ptr @tegra_sor_hdmi_disable._entry.120, section ".printk_index", align 4
@tegra_sor_hdmi_disable._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.4, i32 2242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to power off I/O pad: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_disable._entry_ptr.125 = internal global ptr @tegra_sor_hdmi_disable._entry.123, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@trace_dc_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@trace_dc_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_sor_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.4, i32 1446, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set safe parent clock: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_sor_power_down\00", [43 x i8] zeroinitializer }, align 32
@tegra_sor_power_down._entry_ptr = internal global ptr @tegra_sor_power_down._entry, section ".printk_index", align 4
@tegra_sor_hdmi_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.128, ptr @.str.4, i32 2267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_sor_hdmi_enable\00", [42 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr = internal global ptr @tegra_sor_hdmi_enable._entry, section ".printk_index", align 4
@tegra_sor_hdmi_enable._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.128, ptr @.str.4, i32 2274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.130 = internal global ptr @tegra_sor_hdmi_enable._entry.129, section ".printk_index", align 4
@tegra_sor_hdmi_enable._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.128, ptr @.str.4, i32 2282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to power on I/O pad: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.133 = internal global ptr @tegra_sor_hdmi_enable._entry.131, section ".printk_index", align 4
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"setting 2.7 GHz link speed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"setting 5.4 GHz link speed\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.128, ptr @.str.4, i32 2411, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to select SOR parent clock: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.138 = internal global ptr @tegra_sor_hdmi_enable._entry.136, section ".printk_index", align 4
@tegra_sor_hdmi_enable._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.128, ptr @.str.4, i32 2419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to select output parent clock: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.141 = internal global ptr @tegra_sor_hdmi_enable._entry.139, section ".printk_index", align 4
@.str.142 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"setting clock to %lu Hz, mode: %lu Hz\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.128, ptr @.str.4, i32 2470, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.145 = internal global ptr @tegra_sor_hdmi_enable._entry.143, section ".printk_index", align 4
@tegra_sor_hdmi_enable._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.128, ptr @.str.4, i32 2490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no settings for pixel clock %d Hz\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.148 = internal global ptr @tegra_sor_hdmi_enable._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%u bits-per-color not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.128, ptr @.str.4, i32 2594, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to power up SOR: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.152 = internal global ptr @tegra_sor_hdmi_enable._entry.150, section ".printk_index", align 4
@tegra_sor_hdmi_enable._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.128, ptr @.str.4, i32 2619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to attach SOR: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.155 = internal global ptr @tegra_sor_hdmi_enable._entry.153, section ".printk_index", align 4
@tegra_sor_hdmi_enable._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.128, ptr @.str.4, i32 2642, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to wakeup SOR: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_enable._entry_ptr.158 = internal global ptr @tegra_sor_hdmi_enable._entry.156, section ".printk_index", align 4
@tegra_sor_hdmi_setup_avi_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.159, ptr @.str.4, i32 1928, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tegra_sor_hdmi_setup_avi_infoframe\00", [61 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_setup_avi_infoframe._entry_ptr = internal global ptr @tegra_sor_hdmi_setup_avi_infoframe._entry, section ".printk_index", align 4
@tegra_sor_hdmi_setup_avi_infoframe._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.4, i32 1934, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_sor_hdmi_setup_avi_infoframe._entry_ptr.162 = internal global ptr @tegra_sor_hdmi_setup_avi_infoframe._entry.160, section ".printk_index", align 4
@tegra_sor_encoder_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.4, i32 1828, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to setup CRTC state: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_sor_encoder_atomic_check\00", [33 x i8] zeroinitializer }, align 32
@tegra_sor_encoder_atomic_check._entry_ptr = internal global ptr @tegra_sor_encoder_atomic_check._entry, section ".printk_index", align 4
@tegra_sor_dp_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.4, i32 2673, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power down link: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_sor_dp_disable\00", [43 x i8] zeroinitializer }, align 32
@tegra_sor_dp_disable._entry_ptr = internal global ptr @tegra_sor_dp_disable._entry, section ".printk_index", align 4
@tegra_sor_dp_disable._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.166, ptr @.str.4, i32 2678, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_disable._entry_ptr.168 = internal global ptr @tegra_sor_dp_disable._entry.167, section ".printk_index", align 4
@tegra_sor_dp_disable._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.166, ptr @.str.4, i32 2698, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set safe clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sor_dp_disable._entry_ptr.171 = internal global ptr @tegra_sor_dp_disable._entry.169, section ".printk_index", align 4
@tegra_sor_dp_disable._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.166, ptr @.str.4, i32 2702, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_disable._entry_ptr.173 = internal global ptr @tegra_sor_dp_disable._entry.172, section ".printk_index", align 4
@tegra_sor_dp_disable._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.166, ptr @.str.4, i32 2706, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_disable._entry_ptr.175 = internal global ptr @tegra_sor_dp_disable._entry.174, section ".printk_index", align 4
@tegra_sor_dp_disable._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.166, ptr @.str.4, i32 2710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed disable DPAUX: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_sor_dp_disable._entry_ptr.178 = internal global ptr @tegra_sor_dp_disable._entry.176, section ".printk_index", align 4
@tegra_sor_dp_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.179, ptr @.str.4, i32 2737, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_sor_dp_enable\00", [44 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr = internal global ptr @tegra_sor_dp_enable._entry, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.179, ptr @.str.4, i32 2744, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.181 = internal global ptr @tegra_sor_dp_enable._entry.180, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.179, ptr @.str.4, i32 2748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to power on LVDS rail: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.184 = internal global ptr @tegra_sor_dp_enable._entry.182, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.179, ptr @.str.4, i32 2754, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable DPAUX: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.187 = internal global ptr @tegra_sor_dp_enable._entry.185, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.179, ptr @.str.4, i32 2758, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to probe DP link: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.190 = internal global ptr @tegra_sor_dp_enable._entry.188, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.179, ptr @.str.4, i32 2764, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to choose link: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.193 = internal global ptr @tegra_sor_dp_enable._entry.191, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.179, ptr @.str.4, i32 2855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.195 = internal global ptr @tegra_sor_dp_enable._entry.194, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.179, ptr @.str.4, i32 2863, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.197 = internal global ptr @tegra_sor_dp_enable._entry.196, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.179, ptr @.str.4, i32 2882, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"link training failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.200 = internal global ptr @tegra_sor_dp_enable._entry.198, section ".printk_index", align 4
@tegra_sor_dp_enable.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.201, ptr @.str.179, ptr @.str.4, ptr @.str.202, i8 2, i8 -47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.201 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"link training succeeded\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.179, ptr @.str.4, i32 2888, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to power up DP link: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.205 = internal global ptr @tegra_sor_dp_enable._entry.203, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.179, ptr @.str.4, i32 2896, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to compute configuration: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.208 = internal global ptr @tegra_sor_dp_enable._entry.206, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.179, ptr @.str.4, i32 2910, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to setup PWM: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.211 = internal global ptr @tegra_sor_dp_enable._entry.209, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.179, ptr @.str.4, i32 2917, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.213 = internal global ptr @tegra_sor_dp_enable._entry.212, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.179, ptr @.str.4, i32 2922, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.215 = internal global ptr @tegra_sor_dp_enable._entry.214, section ".printk_index", align 4
@tegra_sor_dp_enable._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.179, ptr @.str.4, i32 2932, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_dp_enable._entry_ptr.217 = internal global ptr @tegra_sor_dp_enable._entry.216, section ".printk_index", align 4
@.str.218 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"link rate %lu kHz not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_sor_compute_config.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.201, ptr @.str.219, ptr @.str.4, ptr @.str.220, i8 1, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_sor_compute_config\00", [39 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"polarity: %d active count: %d tu size: %d active frac: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_sor_compute_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.219, ptr @.str.4, i32 1215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unable to compute TU size, forcing watermark to %u\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_sor_compute_config._entry_ptr = internal global ptr @tegra_sor_compute_config._entry, section ".printk_index", align 4
@tegra_sor_compute_config._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.219, ptr @.str.4, i32 1219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"watermark too high, forcing to %u\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_sor_compute_config._entry_ptr.224 = internal global ptr @tegra_sor_compute_config._entry.222, section ".printk_index", align 4
@tegra_sor_compute_config.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.201, ptr @.str.219, ptr @.str.4, ptr @.str.225, i8 1, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"blank symbols: H:%u V:%u\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_sor_dp_link_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.4, i32 931, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to power down lanes: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_sor_dp_link_configure\00", [36 x i8] zeroinitializer }, align 32
@tegra_sor_dp_link_configure._entry_ptr = internal global ptr @tegra_sor_dp_link_configure._entry, section ".printk_index", align 4
@tegra_sor_dp_link_configure._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.227, ptr @.str.4, i32 939, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to power up %u lane%s: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_sor_dp_link_configure._entry_ptr.230 = internal global ptr @tegra_sor_dp_link_configure._entry.228, section ".printk_index", align 4
@.str.231 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debugfs_files = internal constant { [2 x %struct.drm_info_list], [32 x i8] } { [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.233, ptr @tegra_sor_show_crc, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.234, ptr @tegra_sor_show_regs, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crc\00", [28 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@tegra_sor_regs = internal constant { [115 x %struct.debugfs_reg32], [232 x i8] } { [115 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.237, i32 0 }, %struct.debugfs_reg32 { ptr @.str.238, i32 1 }, %struct.debugfs_reg32 { ptr @.str.239, i32 2 }, %struct.debugfs_reg32 { ptr @.str.240, i32 3 }, %struct.debugfs_reg32 { ptr @.str.241, i32 4 }, %struct.debugfs_reg32 { ptr @.str.242, i32 5 }, %struct.debugfs_reg32 { ptr @.str.243, i32 6 }, %struct.debugfs_reg32 { ptr @.str.244, i32 7 }, %struct.debugfs_reg32 { ptr @.str.245, i32 8 }, %struct.debugfs_reg32 { ptr @.str.246, i32 9 }, %struct.debugfs_reg32 { ptr @.str.247, i32 10 }, %struct.debugfs_reg32 { ptr @.str.248, i32 11 }, %struct.debugfs_reg32 { ptr @.str.249, i32 12 }, %struct.debugfs_reg32 { ptr @.str.250, i32 13 }, %struct.debugfs_reg32 { ptr @.str.251, i32 14 }, %struct.debugfs_reg32 { ptr @.str.252, i32 15 }, %struct.debugfs_reg32 { ptr @.str.253, i32 16 }, %struct.debugfs_reg32 { ptr @.str.254, i32 17 }, %struct.debugfs_reg32 { ptr @.str.255, i32 18 }, %struct.debugfs_reg32 { ptr @.str.256, i32 19 }, %struct.debugfs_reg32 { ptr @.str.257, i32 20 }, %struct.debugfs_reg32 { ptr @.str.258, i32 21 }, %struct.debugfs_reg32 { ptr @.str.259, i32 22 }, %struct.debugfs_reg32 { ptr @.str.260, i32 23 }, %struct.debugfs_reg32 { ptr @.str.261, i32 24 }, %struct.debugfs_reg32 { ptr @.str.262, i32 25 }, %struct.debugfs_reg32 { ptr @.str.263, i32 26 }, %struct.debugfs_reg32 { ptr @.str.264, i32 27 }, %struct.debugfs_reg32 { ptr @.str.265, i32 28 }, %struct.debugfs_reg32 { ptr @.str.266, i32 29 }, %struct.debugfs_reg32 { ptr @.str.267, i32 30 }, %struct.debugfs_reg32 { ptr @.str.268, i32 31 }, %struct.debugfs_reg32 { ptr @.str.269, i32 32 }, %struct.debugfs_reg32 { ptr @.str.270, i32 33 }, %struct.debugfs_reg32 { ptr @.str.271, i32 34 }, %struct.debugfs_reg32 { ptr @.str.272, i32 35 }, %struct.debugfs_reg32 { ptr @.str.273, i32 36 }, %struct.debugfs_reg32 { ptr @.str.274, i32 37 }, %struct.debugfs_reg32 { ptr @.str.275, i32 38 }, %struct.debugfs_reg32 { ptr @.str.276, i32 39 }, %struct.debugfs_reg32 { ptr @.str.277, i32 40 }, %struct.debugfs_reg32 { ptr @.str.278, i32 41 }, %struct.debugfs_reg32 { ptr @.str.279, i32 42 }, %struct.debugfs_reg32 { ptr @.str.280, i32 43 }, %struct.debugfs_reg32 { ptr @.str.281, i32 44 }, %struct.debugfs_reg32 { ptr @.str.282, i32 45 }, %struct.debugfs_reg32 { ptr @.str.283, i32 46 }, %struct.debugfs_reg32 { ptr @.str.284, i32 47 }, %struct.debugfs_reg32 { ptr @.str.285, i32 48 }, %struct.debugfs_reg32 { ptr @.str.286, i32 49 }, %struct.debugfs_reg32 { ptr @.str.287, i32 50 }, %struct.debugfs_reg32 { ptr @.str.288, i32 51 }, %struct.debugfs_reg32 { ptr @.str.289, i32 52 }, %struct.debugfs_reg32 { ptr @.str.290, i32 53 }, %struct.debugfs_reg32 { ptr @.str.291, i32 54 }, %struct.debugfs_reg32 { ptr @.str.292, i32 55 }, %struct.debugfs_reg32 { ptr @.str.293, i32 56 }, %struct.debugfs_reg32 { ptr @.str.294, i32 57 }, %struct.debugfs_reg32 { ptr @.str.295, i32 58 }, %struct.debugfs_reg32 { ptr @.str.296, i32 59 }, %struct.debugfs_reg32 { ptr @.str.297, i32 60 }, %struct.debugfs_reg32 { ptr @.str.298, i32 61 }, %struct.debugfs_reg32 { ptr @.str.299, i32 62 }, %struct.debugfs_reg32 { ptr @.str.300, i32 63 }, %struct.debugfs_reg32 { ptr @.str.301, i32 64 }, %struct.debugfs_reg32 { ptr @.str.302, i32 65 }, %struct.debugfs_reg32 { ptr @.str.303, i32 66 }, %struct.debugfs_reg32 { ptr @.str.304, i32 67 }, %struct.debugfs_reg32 { ptr @.str.305, i32 68 }, %struct.debugfs_reg32 { ptr @.str.306, i32 69 }, %struct.debugfs_reg32 { ptr @.str.307, i32 70 }, %struct.debugfs_reg32 { ptr @.str.308, i32 71 }, %struct.debugfs_reg32 { ptr @.str.309, i32 72 }, %struct.debugfs_reg32 { ptr @.str.310, i32 73 }, %struct.debugfs_reg32 { ptr @.str.311, i32 74 }, %struct.debugfs_reg32 { ptr @.str.312, i32 75 }, %struct.debugfs_reg32 { ptr @.str.313, i32 76 }, %struct.debugfs_reg32 { ptr @.str.314, i32 77 }, %struct.debugfs_reg32 { ptr @.str.315, i32 78 }, %struct.debugfs_reg32 { ptr @.str.316, i32 79 }, %struct.debugfs_reg32 { ptr @.str.317, i32 80 }, %struct.debugfs_reg32 { ptr @.str.318, i32 81 }, %struct.debugfs_reg32 { ptr @.str.319, i32 82 }, %struct.debugfs_reg32 { ptr @.str.320, i32 83 }, %struct.debugfs_reg32 { ptr @.str.321, i32 84 }, %struct.debugfs_reg32 { ptr @.str.322, i32 85 }, %struct.debugfs_reg32 { ptr @.str.323, i32 86 }, %struct.debugfs_reg32 { ptr @.str.324, i32 87 }, %struct.debugfs_reg32 { ptr @.str.325, i32 88 }, %struct.debugfs_reg32 { ptr @.str.326, i32 89 }, %struct.debugfs_reg32 { ptr @.str.327, i32 90 }, %struct.debugfs_reg32 { ptr @.str.328, i32 91 }, %struct.debugfs_reg32 { ptr @.str.329, i32 92 }, %struct.debugfs_reg32 { ptr @.str.330, i32 93 }, %struct.debugfs_reg32 { ptr @.str.331, i32 115 }, %struct.debugfs_reg32 { ptr @.str.332, i32 94 }, %struct.debugfs_reg32 { ptr @.str.333, i32 95 }, %struct.debugfs_reg32 { ptr @.str.334, i32 96 }, %struct.debugfs_reg32 { ptr @.str.335, i32 97 }, %struct.debugfs_reg32 { ptr @.str.336, i32 98 }, %struct.debugfs_reg32 { ptr @.str.337, i32 99 }, %struct.debugfs_reg32 { ptr @.str.338, i32 100 }, %struct.debugfs_reg32 { ptr @.str.339, i32 101 }, %struct.debugfs_reg32 { ptr @.str.340, i32 102 }, %struct.debugfs_reg32 { ptr @.str.341, i32 103 }, %struct.debugfs_reg32 { ptr @.str.342, i32 104 }, %struct.debugfs_reg32 { ptr @.str.343, i32 105 }, %struct.debugfs_reg32 { ptr @.str.344, i32 106 }, %struct.debugfs_reg32 { ptr @.str.345, i32 107 }, %struct.debugfs_reg32 { ptr @.str.346, i32 108 }, %struct.debugfs_reg32 { ptr @.str.347, i32 109 }, %struct.debugfs_reg32 { ptr @.str.348, i32 110 }, %struct.debugfs_reg32 { ptr @.str.349, i32 111 }, %struct.debugfs_reg32 { ptr @.str.350, i32 112 }, %struct.debugfs_reg32 { ptr @.str.351, i32 113 }], [232 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%-38s %#05x %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SOR_CTXSW\00", [22 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_SUPER_STATE0\00", [47 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_SUPER_STATE1\00", [47 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SOR_STATE0\00", [21 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SOR_STATE1\00", [21 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE0(0)\00", [45 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE0(1)\00", [45 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE1(0)\00", [45 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE1(1)\00", [45 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE2(0)\00", [45 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE2(1)\00", [45 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE3(0)\00", [45 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE3(1)\00", [45 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE4(0)\00", [45 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE4(1)\00", [45 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE5(0)\00", [45 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOR_HEAD_STATE5(1)\00", [45 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SOR_CRC_CNTRL\00", [18 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SOR_DP_DEBUG_MVID\00", [46 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SOR_CLK_CNTRL\00", [18 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOR_CAP\00", [24 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOR_PWR\00", [24 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_TEST\00", [23 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_PLL0\00", [23 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_PLL1\00", [23 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_PLL2\00", [23 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_PLL3\00", [23 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_CSTM\00", [23 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_LVDS\00", [23 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_CRCA\00", [23 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_CRCB\00", [23 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SOR_BLANK\00", [22 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_SEQ_CTL\00", [20 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_LANE_SEQ_CTL\00", [47 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(0)\00", [16 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(1)\00", [16 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(2)\00", [16 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(3)\00", [16 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(4)\00", [16 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(5)\00", [16 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(6)\00", [16 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(7)\00", [16 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(8)\00", [16 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_SEQ_INST(9)\00", [16 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_SEQ_INST(10)\00", [47 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_SEQ_INST(11)\00", [47 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_SEQ_INST(12)\00", [47 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_SEQ_INST(13)\00", [47 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_SEQ_INST(14)\00", [47 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOR_SEQ_INST(15)\00", [47 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_PWM_DIV\00", [20 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_PWM_CTL\00", [20 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_VCRC_A0\00", [20 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_VCRC_A1\00", [20 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_VCRC_B0\00", [20 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_VCRC_B1\00", [20 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_CCRC_A0\00", [20 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_CCRC_A1\00", [20 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_CCRC_B0\00", [20 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_CCRC_B1\00", [20 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_EDATA_A0\00", [19 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_EDATA_A1\00", [19 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_EDATA_B0\00", [19 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_EDATA_B1\00", [19 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_COUNT_A0\00", [19 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_COUNT_A1\00", [19 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_COUNT_B0\00", [19 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_COUNT_B1\00", [19 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_DEBUG_A0\00", [19 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_DEBUG_A1\00", [19 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_DEBUG_B0\00", [19 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_DEBUG_B1\00", [19 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SOR_TRIG\00", [23 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOR_MSCHECK\00", [20 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SOR_XBAR_CTRL\00", [18 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOR_XBAR_POL\00", [19 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_DP_LINKCTL0\00", [16 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_DP_LINKCTL1\00", [16 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SOR_LANE_DRIVE_CURRENT0\00", [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SOR_LANE_DRIVE_CURRENT1\00", [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SOR_LANE4_DRIVE_CURRENT0\00", [39 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SOR_LANE4_DRIVE_CURRENT1\00", [39 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SOR_LANE_PREEMPHASIS0\00", [42 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SOR_LANE_PREEMPHASIS1\00", [42 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SOR_LANE4_PREEMPHASIS0\00", [41 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SOR_LANE4_PREEMPHASIS1\00", [41 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SOR_LANE_POSTCURSOR0\00", [43 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SOR_LANE_POSTCURSOR1\00", [43 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SOR_DP_CONFIG0\00", [17 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SOR_DP_CONFIG1\00", [17 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SOR_DP_MN0\00", [21 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SOR_DP_MN1\00", [21 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SOR_DP_PADCTL0\00", [17 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SOR_DP_PADCTL1\00", [17 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SOR_DP_PADCTL2\00", [17 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SOR_DP_DEBUG0\00", [18 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SOR_DP_DEBUG1\00", [18 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SOR_DP_SPARE0\00", [18 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SOR_DP_SPARE1\00", [18 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SOR_DP_AUDIO_CTRL\00", [46 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SOR_DP_AUDIO_HBLANK_SYMBOLS\00", [36 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SOR_DP_AUDIO_VBLANK_SYMBOLS\00", [36 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SOR_DP_GENERIC_INFOFRAME_HEADER\00", [32 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK0\00", [62 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK1\00", [62 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK2\00", [62 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK3\00", [62 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK4\00", [62 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK5\00", [62 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK6\00", [62 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SOR_DP_TPG\00", [21 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SOR_DP_TPG_CONFIG\00", [46 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_DP_LQ_CSTM0\00", [16 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_DP_LQ_CSTM1\00", [16 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOR_DP_LQ_CSTM2\00", [16 x i8] zeroinitializer }, align 32
@tegra_sor_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.353, ptr @.str.4, i32 3192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to detach DP: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_sor_exit\00", [17 x i8] zeroinitializer }, align 32
@tegra_sor_exit._entry_ptr = internal global ptr @tegra_sor_exit._entry, section ".printk_index", align 4
@tegra_sor_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.355, ptr @.str.4, i32 3213, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_sor_runtime_suspend\00", [38 x i8] zeroinitializer }, align 32
@tegra_sor_runtime_suspend._entry_ptr = internal global ptr @tegra_sor_runtime_suspend._entry, section ".printk_index", align 4
@tegra_sor_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.356, ptr @.str.4, i32 3236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_sor_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@tegra_sor_runtime_resume._entry_ptr = internal global ptr @tegra_sor_runtime_resume._entry, section ".printk_index", align 4
@tegra_sor_runtime_resume._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.356, ptr @.str.4, i32 3242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_sor_runtime_resume._entry_ptr.358 = internal global ptr @tegra_sor_runtime_resume._entry.357, section ".printk_index", align 4
@tegra_sor_runtime_resume._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.356, ptr @.str.4, i32 3251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to acquire reset: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_sor_runtime_resume._entry_ptr.361 = internal global ptr @tegra_sor_runtime_resume._entry.359, section ".printk_index", align 4
@tegra_sor_runtime_resume._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.356, ptr @.str.4, i32 3257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to deassert reset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_sor_runtime_resume._entry_ptr.364 = internal global ptr @tegra_sor_runtime_resume._entry.362, section ".printk_index", align 4
@tegra_clk_sor_pad_parents = internal constant { [2 x [2 x ptr]], [16 x i8] } { [2 x [2 x ptr]] [[2 x ptr] [ptr @.str.365, ptr @.str.366], [2 x ptr] [ptr @.str.367, ptr @.str.366]], [16 x i8] zeroinitializer }, align 32
@tegra_clk_sor_pad_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_clk_sor_pad_set_parent, ptr @tegra_clk_sor_pad_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_dp\00", [25 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_d2_out0\00", [20 x i8] zeroinitializer }, align 32
@tegra_sor_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.368, ptr @.str.369, ptr @.str.4, i32 3989, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to unregister host1x client: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_sor_remove\00", [47 x i8] zeroinitializer }, align 32
@tegra_sor_remove._entry_ptr = internal global ptr @tegra_sor_remove._entry, section ".printk_index", align 4
@tegra194_sor = internal constant { %struct.tegra_sor_soc, [48 x i8] } { %struct.tegra_sor_soc { i8 0, i8 1, i8 1, i8 1, i8 1, ptr @tegra194_sor_regs, i8 1, ptr @tegra194_sor_hdmi_defaults, i32 5, ptr @tegra210_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra186_sor_voltage_swing, ptr @tegra186_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, [48 x i8] zeroinitializer }, align 32
@tegra186_sor = internal constant { %struct.tegra_sor_soc, [48 x i8] } { %struct.tegra_sor_soc { i8 0, i8 1, i8 1, i8 1, i8 1, ptr @tegra186_sor_regs, i8 1, ptr @tegra186_sor_hdmi_defaults, i32 5, ptr @tegra124_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra186_sor_voltage_swing, ptr @tegra186_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, [48 x i8] zeroinitializer }, align 32
@tegra210_sor1 = internal constant { %struct.tegra_sor_soc, [48 x i8] } { %struct.tegra_sor_soc { i8 0, i8 1, i8 1, i8 1, i8 1, ptr @tegra210_sor_regs, i8 0, ptr @tegra210_sor_hdmi_defaults, i32 5, ptr @tegra210_sor_xbar_cfg, ptr @tegra210_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra124_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, [48 x i8] zeroinitializer }, align 32
@tegra210_sor = internal constant { %struct.tegra_sor_soc, [48 x i8] } { %struct.tegra_sor_soc { i8 0, i8 0, i8 1, i8 0, i8 0, ptr @tegra210_sor_regs, i8 0, ptr null, i32 0, ptr @tegra210_sor_xbar_cfg, ptr @tegra210_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra124_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, [48 x i8] zeroinitializer }, align 32
@tegra132_sor = internal constant { %struct.tegra_sor_soc, [48 x i8] } { %struct.tegra_sor_soc { i8 1, i8 0, i8 1, i8 0, i8 0, ptr @tegra124_sor_regs, i8 0, ptr null, i32 0, ptr @tegra124_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra132_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, [48 x i8] zeroinitializer }, align 32
@tegra124_sor = internal constant { %struct.tegra_sor_soc, [48 x i8] } { %struct.tegra_sor_soc { i8 1, i8 0, i8 1, i8 0, i8 0, ptr @tegra124_sor_regs, i8 0, ptr null, i32 0, ptr @tegra124_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra124_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, [48 x i8] zeroinitializer }, align 32
@tegra194_sor_regs = internal constant { %struct.tegra_sor_regs, [48 x i8] } { %struct.tegra_sor_regs { i32 337, i32 341, i32 345, i32 349, i32 353, i32 357, i32 361, i32 362, i32 363, i32 364, i32 366, i32 367 }, [48 x i8] zeroinitializer }, align 32
@tegra194_sor_hdmi_defaults = internal constant { [5 x %struct.tegra_sor_hdmi_settings], [40 x i8] } { [5 x %struct.tegra_sor_hdmi_settings] [%struct.tegra_sor_hdmi_settings { i32 54000000, i8 0, i8 5, i8 5, i8 3, i8 15, i8 0, i8 3, i8 8, i8 4, i8 4, i8 84, [4 x i8] c":::3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 75000000, i8 1, i8 5, i8 5, i8 3, i8 15, i8 0, i8 3, i8 8, i8 4, i8 4, i8 68, [4 x i8] c":::3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 150000000, i8 3, i8 5, i8 5, i8 3, i8 15, i8 102, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c":::7", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 300000000, i8 3, i8 5, i8 5, i8 3, i8 15, i8 64, i8 3, i8 8, i8 4, i8 4, i8 52, [4 x i8] c"===3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 600000000, i8 3, i8 5, i8 5, i8 3, i8 12, i8 96, i8 3, i8 8, i8 4, i8 4, i8 52, [4 x i8] c"===3", [4 x i8] zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tegra210_sor_xbar_cfg = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\02\01\00\03\04", [27 x i8] zeroinitializer }, align 32
@tegra124_sor_lane_map = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\01\00\03", [28 x i8] zeroinitializer }, align 32
@tegra186_sor_voltage_swing = internal constant { [4 x [4 x [4 x i8]]], [32 x i8] } { [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\13\19\1E(", [4 x i8] c"\1E%-\00", [4 x i8] c"(2\00\00", [4 x i8] c"9\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\12\16\1B%", [4 x i8] c"\1C#*\00", [4 x i8] c"%/\00\00", [4 x i8] c"7\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\12\16\1A\22", [4 x i8] c"\1B '\00", [4 x i8] c"$-\00\00", [4 x i8] c"5\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\11\14\17\1F", [4 x i8] c"\19\1E$\00", [4 x i8] c"\22*\00\00", [4 x i8] c"2\00\00\00"]], [32 x i8] zeroinitializer }, align 32
@tegra186_sor_pre_emphasis = internal constant { [4 x [4 x [4 x i8]]], [32 x i8] } { [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\01\0E\1D\00", [4 x i8] c"\01\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\14$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer]], [32 x i8] zeroinitializer }, align 32
@tegra124_sor_post_cursor = internal constant { [4 x [4 x [4 x i8]]], [32 x i8] } { [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] zeroinitializer, [4 x [4 x i8]] [[4 x i8] c"\02\02\04\05", [4 x i8] c"\02\04\05\00", [4 x i8] c"\04\05\00\00", [4 x i8] c"\05\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\04\05\08\0B", [4 x i8] c"\05\09\0B\00", [4 x i8] c"\08\0A\00\00", [4 x i8] c"\0B\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\05\09\0B\12", [4 x i8] c"\09\0D\12\00", [4 x i8] c"\0B\0F\00\00", [4 x i8] c"\12\00\00\00"]], [32 x i8] zeroinitializer }, align 32
@tegra124_sor_tx_pu = internal constant { [4 x [4 x [4 x i8]]], [32 x i8] } { [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c" 0@`", [4 x i8] c"0@`\00", [4 x i8] c"@`\00\00", [4 x i8] c"`\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"  0P", [4 x i8] c"0@P\00", [4 x i8] c"@P\00\00", [4 x i8] c"`\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"  0@", [4 x i8] c"00@\00", [4 x i8] c"@P\00\00", [4 x i8] c"`\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"   @", [4 x i8] c"00@\00", [4 x i8] c"@@\00\00", [4 x i8] c"`\00\00\00"]], [32 x i8] zeroinitializer }, align 32
@tegra186_sor_regs = internal constant { %struct.tegra_sor_regs, [48 x i8] } { %struct.tegra_sor_regs { i32 337, i32 340, i32 343, i32 346, i32 349, i32 352, i32 355, i32 356, i32 357, i32 358, i32 360, i32 362 }, [48 x i8] zeroinitializer }, align 32
@tegra186_sor_hdmi_defaults = internal constant { [5 x %struct.tegra_sor_hdmi_settings], [40 x i8] } { [5 x %struct.tegra_sor_hdmi_settings] [%struct.tegra_sor_hdmi_settings { i32 54000000, i8 0, i8 5, i8 5, i8 3, i8 15, i8 0, i8 3, i8 8, i8 4, i8 4, i8 84, [4 x i8] c":::3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 75000000, i8 1, i8 5, i8 5, i8 3, i8 15, i8 0, i8 3, i8 8, i8 4, i8 4, i8 68, [4 x i8] c":::3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 150000000, i8 3, i8 5, i8 5, i8 3, i8 15, i8 102, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c":::7", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 300000000, i8 3, i8 5, i8 5, i8 3, i8 15, i8 64, i8 3, i8 8, i8 4, i8 4, i8 52, [4 x i8] c"===3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 600000000, i8 3, i8 5, i8 5, i8 3, i8 12, i8 96, i8 3, i8 8, i8 4, i8 4, i8 52, [4 x i8] c"===3", [4 x i8] zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tegra124_sor_xbar_cfg = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\03\04", [27 x i8] zeroinitializer }, align 32
@tegra210_sor_regs = internal constant { %struct.tegra_sor_regs, [48 x i8] } { %struct.tegra_sor_regs { i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 23, i32 24, i32 25, i32 26, i32 92, i32 115 }, [48 x i8] zeroinitializer }, align 32
@tegra210_sor_hdmi_defaults = internal constant { [5 x %struct.tegra_sor_hdmi_settings], [40 x i8] } { [5 x %struct.tegra_sor_hdmi_settings] [%struct.tegra_sor_hdmi_settings { i32 54000000, i8 0, i8 0, i8 1, i8 3, i8 9, i8 16, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c"3:::", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 75000000, i8 3, i8 0, i8 1, i8 3, i8 9, i8 64, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c"3:::", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 150000000, i8 3, i8 0, i8 1, i8 3, i8 9, i8 102, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c"3:::", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 300000000, i8 3, i8 0, i8 1, i8 3, i8 9, i8 102, i8 3, i8 10, i8 4, i8 4, i8 0, [4 x i8] c"3???", [4 x i8] c"\00\17\17\17" }, %struct.tegra_sor_hdmi_settings { i32 600000000, i8 3, i8 0, i8 1, i8 3, i8 9, i8 102, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c"3???", [4 x i8] zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tegra210_sor_lane_map = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\02\03", [28 x i8] zeroinitializer }, align 32
@tegra124_sor_voltage_swing = internal constant { [4 x [4 x [4 x i8]]], [32 x i8] } { [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\13\19\1E(", [4 x i8] c"\1E%-\00", [4 x i8] c"(2\00\00", [4 x i8] c"<\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\12\17\1B%", [4 x i8] c"\1C#*\00", [4 x i8] c"%/\00\00", [4 x i8] c"9\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\12\16\1A\22", [4 x i8] c"\1B '\00", [4 x i8] c"$-\00\00", [4 x i8] c"6\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\11\14\17\1F", [4 x i8] c"\19\1E$\00", [4 x i8] c"\22*\00\00", [4 x i8] c"2\00\00\00"]], [32 x i8] zeroinitializer }, align 32
@tegra124_sor_pre_emphasis = internal constant { [4 x [4 x [4 x i8]]], [32 x i8] } { [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\09\13%", [4 x i8] c"\00\0F\1E\00", [4 x i8] c"\00\14\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\0A\14(", [4 x i8] c"\00\0F\1E\00", [4 x i8] c"\00\14\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\0A\14(", [4 x i8] c"\00\0F\1E\00", [4 x i8] c"\00\14\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\0A\14(", [4 x i8] c"\00\0F\1E\00", [4 x i8] c"\00\14\00\00", [4 x i8] zeroinitializer]], [32 x i8] zeroinitializer }, align 32
@tegra124_sor_regs = internal constant { %struct.tegra_sor_regs, [48 x i8] } { %struct.tegra_sor_regs { i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 23, i32 24, i32 25, i32 26, i32 92, i32 115 }, [48 x i8] zeroinitializer }, align 32
@tegra132_sor_pre_emphasis = internal constant { [4 x [4 x [4 x i8]]], [32 x i8] } { [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\01\0E\1D\00", [4 x i8] c"\01\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer]], [32 x i8] zeroinitializer }, align 32
@tegra_sor_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.371, ptr @.str.4, i32 4012, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to suspend output: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_sor_suspend\00", [46 x i8] zeroinitializer }, align 32
@tegra_sor_suspend._entry_ptr = internal global ptr @tegra_sor_suspend._entry, section ".printk_index", align 4
@tegra_sor_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.373, ptr @.str.4, i32 4040, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to resume output: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_sor_resume\00", [47 x i8] zeroinitializer }, align 32
@tegra_sor_resume._entry_ptr = internal global ptr @tegra_sor_resume._entry, section ".printk_index", align 4
@switch.table.tegra_sor_mode_set = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 262144, i32 655360, i32 655360, i32 655360, i32 786432, i32 655360, i32 1048576, i32 655360, i32 655360, i32 655360, i32 1179648], [52 x i8] zeroinitializer }, align 32
@switch.table.tegra_sor_dp_link_apply_training = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 129, i64 130, i64 132]
@__sancov_gen_cov_switch_values.374 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.375 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.376 = internal global [5 x i64] [i64 3, i64 32, i64 1620000, i64 2700000, i64 5400000]
@__sancov_gen_cov_switch_values.377 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 10, i64 20]
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 4057, i32 11 }
@___asan_gen_.381 = private unnamed_addr constant [19 x i8] c"tegra_sor_of_match\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3636, i32 34 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"tegra_sor_pm_ops\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 4051, i32 32 }
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"tegra_sor_driver\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 4055, i32 24 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3740, i32 43 }
@___asan_gen_.393 = private unnamed_addr constant [19 x i8] c"tegra_sor_hdmi_ops\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3012, i32 35 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3757, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3760, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3764, i32 44 }
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"tegra_sor_dp_ops\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3042, i32 35 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3781, i32 34 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3788, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3803, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3812, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3816, i32 67 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3821, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3838, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3851, i32 36 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3851, i32 51 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3852, i32 11 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3859, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3868, i32 45 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3871, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3875, i32 43 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3878, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3882, i32 41 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3885, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3893, i32 42 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3915, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3922, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [15 x i8] c"sor_client_ops\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3273, i32 39 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3933, i32 47 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3942, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3952, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3959, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3013, i32 10 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2966, i32 53 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2968, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2975, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2980, i32 53 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2982, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2989, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2994, i32 50 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2996, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3003, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3007, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2185, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/tegra/trace.h\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 58, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 108, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2026, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2034, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1880, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3043, i32 10 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3656, i32 34 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3674, i32 39 }
@___asan_gen_.648 = private unnamed_addr constant [23 x i8] c"tegra_sor_hdmi_helpers\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2648, i32 46 }
@___asan_gen_.651 = private unnamed_addr constant [21 x i8] c"tegra_sor_dp_helpers\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2938, i32 46 }
@___asan_gen_.654 = private unnamed_addr constant [22 x i8] c"tegra_sor_dp_link_ops\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 948, i32 37 }
@___asan_gen_.657 = private unnamed_addr constant [26 x i8] c"tegra_sor_connector_funcs\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1758, i32 41 }
@___asan_gen_.660 = private unnamed_addr constant [33 x i8] c"tegra_sor_connector_helper_funcs\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1793, i32 48 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3099, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3108, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3120, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3126, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3133, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3141, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3150, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2219, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2238, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2242, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1446, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2267, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2274, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2282, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2344, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2347, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2410, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2418, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2429, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2470, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2489, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2579, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2594, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2619, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2642, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1928, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1934, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1828, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2672, i32 4 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2678, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2698, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2702, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2706, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2710, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2737, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2744, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2748, i32 3 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2754, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2758, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2764, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2854, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2862, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2882, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2884, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2888, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2896, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2910, i32 4 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2917, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2922, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 2932, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 633, i32 4 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1198, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1213, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1218, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1236, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 931, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 938, i32 3 }
@___asan_gen_.981 = private unnamed_addr constant [14 x i8] c"debugfs_files\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1677, i32 35 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1678, i32 4 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1679, i32 4 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1522, i32 16 }
@___asan_gen_.993 = private unnamed_addr constant [15 x i8] c"tegra_sor_regs\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1531, i32 35 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1668, i32 17 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1532, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1533, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1534, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1535, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1536, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1537, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1538, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1539, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1540, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1541, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1542, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1543, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1544, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1545, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1546, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1547, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1548, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1549, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1550, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1551, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1552, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1553, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1554, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1555, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1556, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1557, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1558, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1559, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1560, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1561, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1562, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1563, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1564, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1565, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1566, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1567, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1568, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1569, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1570, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1571, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1572, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1573, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1574, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1575, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1576, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1577, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1578, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1579, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1580, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1581, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1582, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1583, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1584, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1585, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1586, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1587, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1588, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1589, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1590, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1591, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1592, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1593, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1594, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1595, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1596, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1597, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1598, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1599, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1600, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1601, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1602, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1603, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1604, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1605, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1606, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1607, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1608, i32 2 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1609, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1610, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1611, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1612, i32 2 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1613, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1614, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1615, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1616, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1617, i32 2 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1618, i32 2 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1619, i32 2 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1620, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1621, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1622, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1623, i32 2 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1624, i32 2 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1625, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1626, i32 2 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1627, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1628, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1629, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1630, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1631, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1632, i32 2 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1633, i32 2 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1634, i32 2 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1635, i32 2 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1636, i32 2 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1637, i32 2 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1638, i32 2 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1639, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1640, i32 2 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1641, i32 2 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1642, i32 2 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1643, i32 2 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1644, i32 2 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1645, i32 2 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 1646, i32 2 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3192, i32 4 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3213, i32 4 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3236, i32 3 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3242, i32 3 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3251, i32 4 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3257, i32 4 }
@___asan_gen_.1383 = private unnamed_addr constant [26 x i8] c"tegra_clk_sor_pad_parents\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 527, i32 27 }
@___asan_gen_.1386 = private unnamed_addr constant [22 x i8] c"tegra_clk_sor_pad_ops\00", align 1
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 588, i32 29 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 528, i32 4 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 528, i32 18 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 529, i32 4 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3988, i32 3 }
@___asan_gen_.1407 = private unnamed_addr constant [13 x i8] c"tegra194_sor\00", align 1
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3615, i32 35 }
@___asan_gen_.1410 = private unnamed_addr constant [13 x i8] c"tegra186_sor\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3580, i32 35 }
@___asan_gen_.1413 = private unnamed_addr constant [14 x i8] c"tegra210_sor1\00", align 1
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3497, i32 35 }
@___asan_gen_.1416 = private unnamed_addr constant [13 x i8] c"tegra210_sor\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3479, i32 35 }
@___asan_gen_.1419 = private unnamed_addr constant [13 x i8] c"tegra132_sor\00", align 1
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3440, i32 35 }
@___asan_gen_.1422 = private unnamed_addr constant [13 x i8] c"tegra124_sor\00", align 1
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3400, i32 35 }
@___asan_gen_.1425 = private unnamed_addr constant [18 x i8] c"tegra194_sor_regs\00", align 1
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3600, i32 36 }
@___asan_gen_.1428 = private unnamed_addr constant [27 x i8] c"tegra194_sor_hdmi_defaults\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 279, i32 45 }
@___asan_gen_.1431 = private unnamed_addr constant [22 x i8] c"tegra210_sor_xbar_cfg\00", align 1
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3471, i32 17 }
@___asan_gen_.1434 = private unnamed_addr constant [22 x i8] c"tegra124_sor_lane_map\00", align 1
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3300, i32 17 }
@___asan_gen_.1437 = private unnamed_addr constant [27 x i8] c"tegra186_sor_voltage_swing\00", align 1
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3532, i32 17 }
@___asan_gen_.1440 = private unnamed_addr constant [26 x i8] c"tegra186_sor_pre_emphasis\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3556, i32 17 }
@___asan_gen_.1443 = private unnamed_addr constant [25 x i8] c"tegra124_sor_post_cursor\00", align 1
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3352, i32 17 }
@___asan_gen_.1446 = private unnamed_addr constant [19 x i8] c"tegra124_sor_tx_pu\00", align 1
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3376, i32 17 }
@___asan_gen_.1449 = private unnamed_addr constant [18 x i8] c"tegra186_sor_regs\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3517, i32 36 }
@___asan_gen_.1452 = private unnamed_addr constant [27 x i8] c"tegra186_sor_hdmi_defaults\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 200, i32 45 }
@___asan_gen_.1455 = private unnamed_addr constant [22 x i8] c"tegra124_sor_xbar_cfg\00", align 1
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3280, i32 17 }
@___asan_gen_.1458 = private unnamed_addr constant [18 x i8] c"tegra210_sor_regs\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3456, i32 36 }
@___asan_gen_.1461 = private unnamed_addr constant [27 x i8] c"tegra210_sor_hdmi_defaults\00", align 1
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 56, i32 45 }
@___asan_gen_.1464 = private unnamed_addr constant [22 x i8] c"tegra210_sor_lane_map\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3475, i32 17 }
@___asan_gen_.1467 = private unnamed_addr constant [27 x i8] c"tegra124_sor_voltage_swing\00", align 1
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3304, i32 17 }
@___asan_gen_.1470 = private unnamed_addr constant [26 x i8] c"tegra124_sor_pre_emphasis\00", align 1
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3328, i32 17 }
@___asan_gen_.1473 = private unnamed_addr constant [18 x i8] c"tegra124_sor_regs\00", align 1
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3284, i32 36 }
@___asan_gen_.1476 = private unnamed_addr constant [26 x i8] c"tegra132_sor_pre_emphasis\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 3416, i32 17 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 4012, i32 3 }
@___asan_gen_.1488 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1494 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1495 = private constant [31 x i8] c"../drivers/gpu/drm/tegra/sor.c\00", align 1
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1495, i32 4040, i32 3 }
@___asan_gen_.1497 = private unnamed_addr constant [32 x i8] c"switch.table.tegra_sor_mode_set\00", align 1
@___asan_gen_.1498 = private unnamed_addr constant [46 x i8] c"switch.table.tegra_sor_dp_link_apply_training\00", align 1
@llvm.compiler.used = appending global [457 x ptr] [ptr @tegra_sor_compute_config._entry, ptr @tegra_sor_compute_config._entry.222, ptr @tegra_sor_compute_config._entry_ptr, ptr @tegra_sor_compute_config._entry_ptr.224, ptr @tegra_sor_dp_disable._entry, ptr @tegra_sor_dp_disable._entry.167, ptr @tegra_sor_dp_disable._entry.169, ptr @tegra_sor_dp_disable._entry.172, ptr @tegra_sor_dp_disable._entry.174, ptr @tegra_sor_dp_disable._entry.176, ptr @tegra_sor_dp_disable._entry_ptr, ptr @tegra_sor_dp_disable._entry_ptr.168, ptr @tegra_sor_dp_disable._entry_ptr.171, ptr @tegra_sor_dp_disable._entry_ptr.173, ptr @tegra_sor_dp_disable._entry_ptr.175, ptr @tegra_sor_dp_disable._entry_ptr.178, ptr @tegra_sor_dp_enable._entry, ptr @tegra_sor_dp_enable._entry.180, ptr @tegra_sor_dp_enable._entry.182, ptr @tegra_sor_dp_enable._entry.185, ptr @tegra_sor_dp_enable._entry.188, ptr @tegra_sor_dp_enable._entry.191, ptr @tegra_sor_dp_enable._entry.194, ptr @tegra_sor_dp_enable._entry.196, ptr @tegra_sor_dp_enable._entry.198, ptr @tegra_sor_dp_enable._entry.203, ptr @tegra_sor_dp_enable._entry.206, ptr @tegra_sor_dp_enable._entry.209, ptr @tegra_sor_dp_enable._entry.212, ptr @tegra_sor_dp_enable._entry.214, ptr @tegra_sor_dp_enable._entry.216, ptr @tegra_sor_dp_enable._entry_ptr, ptr @tegra_sor_dp_enable._entry_ptr.181, ptr @tegra_sor_dp_enable._entry_ptr.184, ptr @tegra_sor_dp_enable._entry_ptr.187, ptr @tegra_sor_dp_enable._entry_ptr.190, ptr @tegra_sor_dp_enable._entry_ptr.193, ptr @tegra_sor_dp_enable._entry_ptr.195, ptr @tegra_sor_dp_enable._entry_ptr.197, ptr @tegra_sor_dp_enable._entry_ptr.200, ptr @tegra_sor_dp_enable._entry_ptr.205, ptr @tegra_sor_dp_enable._entry_ptr.208, ptr @tegra_sor_dp_enable._entry_ptr.211, ptr @tegra_sor_dp_enable._entry_ptr.213, ptr @tegra_sor_dp_enable._entry_ptr.215, ptr @tegra_sor_dp_enable._entry_ptr.217, ptr @tegra_sor_dp_link_configure._entry, ptr @tegra_sor_dp_link_configure._entry.228, ptr @tegra_sor_dp_link_configure._entry_ptr, ptr @tegra_sor_dp_link_configure._entry_ptr.230, ptr @tegra_sor_encoder_atomic_check._entry, ptr @tegra_sor_encoder_atomic_check._entry_ptr, ptr @tegra_sor_exit._entry, ptr @tegra_sor_exit._entry_ptr, ptr @tegra_sor_hdmi_disable._entry, ptr @tegra_sor_hdmi_disable._entry.120, ptr @tegra_sor_hdmi_disable._entry.123, ptr @tegra_sor_hdmi_disable._entry_ptr, ptr @tegra_sor_hdmi_disable._entry_ptr.122, ptr @tegra_sor_hdmi_disable._entry_ptr.125, ptr @tegra_sor_hdmi_enable._entry, ptr @tegra_sor_hdmi_enable._entry.129, ptr @tegra_sor_hdmi_enable._entry.131, ptr @tegra_sor_hdmi_enable._entry.136, ptr @tegra_sor_hdmi_enable._entry.139, ptr @tegra_sor_hdmi_enable._entry.143, ptr @tegra_sor_hdmi_enable._entry.146, ptr @tegra_sor_hdmi_enable._entry.150, ptr @tegra_sor_hdmi_enable._entry.153, ptr @tegra_sor_hdmi_enable._entry.156, ptr @tegra_sor_hdmi_enable._entry_ptr, ptr @tegra_sor_hdmi_enable._entry_ptr.130, ptr @tegra_sor_hdmi_enable._entry_ptr.133, ptr @tegra_sor_hdmi_enable._entry_ptr.138, ptr @tegra_sor_hdmi_enable._entry_ptr.141, ptr @tegra_sor_hdmi_enable._entry_ptr.145, ptr @tegra_sor_hdmi_enable._entry_ptr.148, ptr @tegra_sor_hdmi_enable._entry_ptr.152, ptr @tegra_sor_hdmi_enable._entry_ptr.155, ptr @tegra_sor_hdmi_enable._entry_ptr.158, ptr @tegra_sor_hdmi_enable_audio_infoframe._entry, ptr @tegra_sor_hdmi_enable_audio_infoframe._entry.90, ptr @tegra_sor_hdmi_enable_audio_infoframe._entry_ptr, ptr @tegra_sor_hdmi_enable_audio_infoframe._entry_ptr.92, ptr @tegra_sor_hdmi_probe._entry, ptr @tegra_sor_hdmi_probe._entry.64, ptr @tegra_sor_hdmi_probe._entry.68, ptr @tegra_sor_hdmi_probe._entry.71, ptr @tegra_sor_hdmi_probe._entry.75, ptr @tegra_sor_hdmi_probe._entry.78, ptr @tegra_sor_hdmi_probe._entry_ptr, ptr @tegra_sor_hdmi_probe._entry_ptr.66, ptr @tegra_sor_hdmi_probe._entry_ptr.70, ptr @tegra_sor_hdmi_probe._entry_ptr.73, ptr @tegra_sor_hdmi_probe._entry_ptr.77, ptr @tegra_sor_hdmi_probe._entry_ptr.80, ptr @tegra_sor_hdmi_setup_avi_infoframe._entry, ptr @tegra_sor_hdmi_setup_avi_infoframe._entry.160, ptr @tegra_sor_hdmi_setup_avi_infoframe._entry_ptr, ptr @tegra_sor_hdmi_setup_avi_infoframe._entry_ptr.162, ptr @tegra_sor_hdmi_write_infopack._entry, ptr @tegra_sor_hdmi_write_infopack._entry_ptr, ptr @tegra_sor_init._entry, ptr @tegra_sor_init._entry.100, ptr @tegra_sor_init._entry.103, ptr @tegra_sor_init._entry.106, ptr @tegra_sor_init._entry.109, ptr @tegra_sor_init._entry.112, ptr @tegra_sor_init._entry.115, ptr @tegra_sor_init._entry_ptr, ptr @tegra_sor_init._entry_ptr.102, ptr @tegra_sor_init._entry_ptr.105, ptr @tegra_sor_init._entry_ptr.108, ptr @tegra_sor_init._entry_ptr.111, ptr @tegra_sor_init._entry_ptr.114, ptr @tegra_sor_init._entry_ptr.117, ptr @tegra_sor_power_down._entry, ptr @tegra_sor_power_down._entry_ptr, ptr @tegra_sor_probe._entry, ptr @tegra_sor_probe._entry.12, ptr @tegra_sor_probe._entry.15, ptr @tegra_sor_probe._entry.18, ptr @tegra_sor_probe._entry.22, ptr @tegra_sor_probe._entry.25, ptr @tegra_sor_probe._entry.31, ptr @tegra_sor_probe._entry.35, ptr @tegra_sor_probe._entry.39, ptr @tegra_sor_probe._entry.43, ptr @tegra_sor_probe._entry.47, ptr @tegra_sor_probe._entry.51, ptr @tegra_sor_probe._entry.54, ptr @tegra_sor_probe._entry.57, ptr @tegra_sor_probe._entry.7, ptr @tegra_sor_probe._entry_ptr, ptr @tegra_sor_probe._entry_ptr.14, ptr @tegra_sor_probe._entry_ptr.17, ptr @tegra_sor_probe._entry_ptr.20, ptr @tegra_sor_probe._entry_ptr.24, ptr @tegra_sor_probe._entry_ptr.27, ptr @tegra_sor_probe._entry_ptr.33, ptr @tegra_sor_probe._entry_ptr.37, ptr @tegra_sor_probe._entry_ptr.41, ptr @tegra_sor_probe._entry_ptr.45, ptr @tegra_sor_probe._entry_ptr.49, ptr @tegra_sor_probe._entry_ptr.53, ptr @tegra_sor_probe._entry_ptr.56, ptr @tegra_sor_probe._entry_ptr.59, ptr @tegra_sor_probe._entry_ptr.9, ptr @tegra_sor_remove._entry, ptr @tegra_sor_remove._entry_ptr, ptr @tegra_sor_resume._entry, ptr @tegra_sor_resume._entry_ptr, ptr @tegra_sor_runtime_resume._entry, ptr @tegra_sor_runtime_resume._entry.357, ptr @tegra_sor_runtime_resume._entry.359, ptr @tegra_sor_runtime_resume._entry.362, ptr @tegra_sor_runtime_resume._entry_ptr, ptr @tegra_sor_runtime_resume._entry_ptr.358, ptr @tegra_sor_runtime_resume._entry_ptr.361, ptr @tegra_sor_runtime_resume._entry_ptr.364, ptr @tegra_sor_runtime_suspend._entry, ptr @tegra_sor_runtime_suspend._entry_ptr, ptr @tegra_sor_suspend._entry, ptr @tegra_sor_suspend._entry_ptr, ptr @.str, ptr @tegra_sor_of_match, ptr @tegra_sor_pm_ops, ptr @tegra_sor_driver, ptr @.str.1, ptr @tegra_sor_hdmi_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @tegra_sor_dp_ops, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @tegra_sor_probe.__key, ptr @sor_client_ops, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @tegra_sor_hdmi_probe.__key, ptr @.str.81, ptr @tegra_sor_hdmi_probe.__key.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @tegra_sor_hdmi_helpers, ptr @tegra_sor_dp_helpers, ptr @tegra_sor_dp_link_ops, ptr @tegra_sor_connector_funcs, ptr @tegra_sor_connector_helper_funcs, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.170, ptr @.str.177, ptr @.str.179, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @debugfs_files, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @tegra_sor_regs, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.360, ptr @.str.363, ptr @tegra_clk_sor_pad_parents, ptr @tegra_clk_sor_pad_ops, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @tegra194_sor, ptr @tegra186_sor, ptr @tegra210_sor1, ptr @tegra210_sor, ptr @tegra132_sor, ptr @tegra124_sor, ptr @tegra194_sor_regs, ptr @tegra194_sor_hdmi_defaults, ptr @tegra210_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra186_sor_voltage_swing, ptr @tegra186_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu, ptr @tegra186_sor_regs, ptr @tegra186_sor_hdmi_defaults, ptr @tegra124_sor_xbar_cfg, ptr @tegra210_sor_regs, ptr @tegra210_sor_hdmi_defaults, ptr @tegra210_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra124_sor_pre_emphasis, ptr @tegra124_sor_regs, ptr @tegra132_sor_pre_emphasis, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @switch.table.tegra_sor_mode_set, ptr @switch.table.tegra_sor_dp_link_apply_training], section "llvm.metadata"
@0 = internal global [375 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sor_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_probe.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable_audio_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable_audio_infoframe._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_write_infopack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_helpers to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_helpers to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_link_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_disable._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_disable._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_enable._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_setup_avi_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_hdmi_setup_avi_infoframe._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_encoder_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_disable._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_disable._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_disable._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_disable._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_disable._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_enable._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_compute_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_compute_config._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_link_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_dp_link_configure._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_files to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_regs to i32), i32 920, i32 1152, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_runtime_resume._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_runtime_resume._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_runtime_resume._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_sor_pad_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_sor_pad_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_sor to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_sor to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sor1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sor to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra132_sor to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sor to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_sor_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_sor_hdmi_defaults to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sor_xbar_cfg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sor_lane_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_sor_voltage_swing to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_sor_pre_emphasis to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sor_post_cursor to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sor_tx_pu to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_sor_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_sor_hdmi_defaults to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sor_xbar_cfg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sor_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sor_hdmi_defaults to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sor_lane_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sor_voltage_swing to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sor_pre_emphasis to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_sor_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra132_sor_pre_emphasis to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sor_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_sor_mode_set to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_sor_dp_link_apply_training to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %xbar_cfg.i = alloca [5 x i32], align 4
  %value.i = alloca i32, align 4
  %args.i494 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1792, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup332_crit_edge, label %if.end

entry.cleanup332_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup332

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %soc = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %soc, align 4
  %dev4 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev4, align 8
  %output = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 1
  %dev5 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev5, align 4
  %settings = getelementptr inbounds %struct.tegra_sor_soc, ptr %call2, i32 0, i32 7
  %3 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %settings, align 4
  %num_settings = getelementptr inbounds %struct.tegra_sor_soc, ptr %call2, i32 0, i32 8
  %5 = ptrtoint ptr %num_settings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_settings, align 4
  %mul = mul i32 %6, 24
  %call9 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef %4, i32 noundef %mul, i32 noundef 3264) #10
  %settings10 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %settings10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %settings10, align 4
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %if.end.cleanup332_crit_edge, label %if.end14

if.end.cleanup332_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup332

if.end14:                                         ; preds = %if.end
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc, align 4
  %num_settings16 = getelementptr inbounds %struct.tegra_sor_soc, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %num_settings16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_settings16, align 4
  %num_settings17 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 21
  %12 = ptrtoint ptr %num_settings17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_settings17, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %15 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i493 = call i32 @__of_parse_phandle_with_args(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i493)
  %tobool.not.i = icmp eq i32 %call.i493, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  br label %if.end36

of_parse_phandle.exit:                            ; preds = %if.end14
  %16 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %of_parse_phandle.exit.if.end36_crit_edge, label %if.then21

of_parse_phandle.exit.if.end36_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then21:                                        ; preds = %of_parse_phandle.exit
  %call22 = call ptr @drm_dp_aux_find_by_of_node(ptr noundef nonnull %17) #10
  %aux = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call22, ptr %aux, align 4
  call void @of_node_put(ptr noundef nonnull %17) #10
  %19 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aux, align 4
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %if.then21.cleanup332_crit_edge, label %if.end26

if.then21.cleanup332_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup332

if.end26:                                         ; preds = %if.then21
  %dev28 = getelementptr inbounds %struct.drm_dp_aux, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev28, align 8
  %call29 = call ptr @get_device(ptr noundef %22) #10
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end26.if.end36_crit_edge, label %if.then31

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aux, align 4
  %ddc = getelementptr inbounds %struct.drm_dp_aux, ptr %24, i32 0, i32 1
  %ddc34 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %ddc34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ddc, ptr %ddc34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end26.if.end36_crit_edge, %of_parse_phandle.exit.if.end36_crit_edge, %of_parse_phandle.exit.thread
  %aux37 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 16
  %26 = ptrtoint ptr %aux37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aux37, align 4
  %tobool38.not = icmp eq ptr %27, null
  br i1 %tobool38.not, label %if.then39, label %if.else53

if.then39:                                        ; preds = %if.end36
  %28 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc, align 4
  %supports_hdmi = getelementptr inbounds %struct.tegra_sor_soc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %supports_hdmi to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %supports_hdmi, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool41.not = icmp eq i8 %31, 0
  br i1 %tobool41.not, label %if.else, label %if.then39.if.end59_crit_edge

if.then39.if.end59_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.else:                                          ; preds = %if.then39
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %29, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool44.not = icmp eq i8 %33, 0
  br i1 %tobool44.not, label %do.end50, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %cleanup332

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %cleanup332

if.else53:                                        ; preds = %if.end36
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i494) #10
  %36 = call ptr @memset(ptr %args.i494, i32 255, i32 72)
  %call.i495 = call i32 @__of_parse_phandle_with_args(ptr noundef %35, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i494) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i495)
  %tobool.not.i496 = icmp eq i32 %call.i495, 0
  br i1 %tobool.not.i496, label %if.end.i497, label %if.else53.of_parse_phandle.exit499_crit_edge

if.else53.of_parse_phandle.exit499_crit_edge:     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  br label %of_parse_phandle.exit499

if.end.i497:                                      ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %args.i494 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %args.i494, align 4
  br label %of_parse_phandle.exit499

of_parse_phandle.exit499:                         ; preds = %if.end.i497, %if.else53.of_parse_phandle.exit499_crit_edge
  %retval.0.i498 = phi ptr [ %38, %if.end.i497 ], [ null, %if.else53.of_parse_phandle.exit499_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i494) #10
  call void @of_node_put(ptr noundef %retval.0.i498) #10
  br label %if.end59

if.end59:                                         ; preds = %of_parse_phandle.exit499, %if.then39.if.end59_crit_edge
  %tegra_sor_dp_ops.sink = phi ptr [ @tegra_sor_dp_ops, %of_parse_phandle.exit499 ], [ @tegra_sor_hdmi_ops, %if.then39.if.end59_crit_edge ]
  %.sink = phi i32 [ 39, %of_parse_phandle.exit499 ], [ 32, %if.then39.if.end59_crit_edge ]
  %ops57 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 18
  %39 = ptrtoint ptr %ops57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tegra_sor_dp_ops.sink, ptr %ops57, align 4
  %pad58 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 19
  %40 = ptrtoint ptr %pad58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %pad58, align 8
  %41 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev4, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %xbar_cfg.i) #10
  %45 = getelementptr inbounds [5 x i32], ptr %xbar_cfg.i, i32 0, i32 1
  %46 = getelementptr inbounds [5 x i32], ptr %xbar_cfg.i, i32 0, i32 2
  %47 = getelementptr inbounds [5 x i32], ptr %xbar_cfg.i, i32 0, i32 3
  %48 = getelementptr inbounds [5 x i32], ptr %xbar_cfg.i, i32 0, i32 4
  %49 = call ptr @memset(ptr %xbar_cfg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #10
  %50 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %value.i, align 4, !annotation !757
  %51 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %soc, align 4
  %has_nvdisplay.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %has_nvdisplay.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %has_nvdisplay.i, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i500 = icmp eq i8 %54, 0
  br i1 %tobool.not.i500, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end59
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %44, ptr noundef nonnull @.str.96, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %tegra_sor_parse_dt.exit, label %if.end.i501

if.end.i501:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %value.i, align 4
  %index.i = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 5
  %57 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %index.i, align 4
  %add.i = add i32 %56, 33
  %pad.i = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 19
  %58 = ptrtoint ptr %pad.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.i, ptr %pad.i, align 8
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end59
  %supports_audio.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %52, i32 0, i32 3
  %59 = ptrtoint ptr %supports_audio.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %supports_audio.i, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool4.not.i = icmp eq i8 %60, 0
  %index6.i = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 5
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else7.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %index6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %index6.i, align 4
  br label %if.end10.i

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %index6.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %index6.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else7.i, %if.then5.i, %if.end.i501
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %44, ptr noundef nonnull @.str.97, ptr noundef nonnull %xbar_cfg.i, i32 noundef 5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp12.i, label %for.cond.preheader.i, label %for.body22.preheader.i

for.body22.preheader.i:                           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %xbar_cfg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xbar_cfg.i, align 4
  %conv.i = trunc i32 %64 to i8
  %arrayidx25.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 0
  %65 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv.i, ptr %arrayidx25.i, align 1
  %66 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %45, align 4
  %conv.1.i = trunc i32 %67 to i8
  %arrayidx25.1.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 1
  %68 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.1.i, ptr %arrayidx25.1.i, align 1
  %69 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %46, align 4
  %conv.2.i = trunc i32 %70 to i8
  %arrayidx25.2.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 2
  %71 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.2.i, ptr %arrayidx25.2.i, align 1
  %72 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %47, align 4
  %conv.3.i = trunc i32 %73 to i8
  %arrayidx25.3.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 3
  %74 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.3.i, ptr %arrayidx25.3.i, align 1
  %75 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %48, align 4
  %conv.4.i = trunc i32 %76 to i8
  br label %tegra_sor_parse_dt.exit.thread

for.cond.preheader.i:                             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %soc, align 4
  %xbar_cfg16.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %xbar_cfg16.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xbar_cfg16.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 1
  %arrayidx18.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 0
  %83 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx18.i, align 1
  %84 = load ptr, ptr %xbar_cfg16.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %84, i32 1
  %85 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx18.1.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 1
  %87 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx18.1.i, align 1
  %88 = load ptr, ptr %xbar_cfg16.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %88, i32 2
  %89 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx18.2.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 2
  %91 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx18.2.i, align 1
  %92 = load ptr, ptr %xbar_cfg16.i, align 4
  %arrayidx.3.i = getelementptr i8, ptr %92, i32 3
  %93 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx18.3.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 3
  %95 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx18.3.i, align 1
  %96 = load ptr, ptr %xbar_cfg16.i, align 4
  %arrayidx.4.i = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.4.i, align 1
  br label %tegra_sor_parse_dt.exit.thread

tegra_sor_parse_dt.exit.thread:                   ; preds = %for.cond.preheader.i, %for.body22.preheader.i
  %conv.4.sink.i = phi i8 [ %conv.4.i, %for.body22.preheader.i ], [ %98, %for.cond.preheader.i ]
  %arrayidx25.4.i = getelementptr %struct.tegra_sor, ptr %call.i, i32 0, i32 14, i32 4
  %99 = ptrtoint ptr %arrayidx25.4.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv.4.sink.i, ptr %arrayidx25.4.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xbar_cfg.i) #10
  %call64 = call i32 @tegra_output_probe(ptr noundef %output) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end69

tegra_sor_parse_dt.exit:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xbar_cfg.i) #10
  br label %put_aux

if.then66:                                        ; preds = %tegra_sor_parse_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call64, ptr noundef nonnull @.str.11) #10
  br label %put_aux

if.end69:                                         ; preds = %tegra_sor_parse_dt.exit.thread
  %ops70 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 18
  %100 = ptrtoint ptr %ops70 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops70, align 4
  %tobool71.not = icmp eq ptr %101, null
  br i1 %tobool71.not, label %if.end69.if.end86_crit_edge, label %land.lhs.true

if.end69.if.end86_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true:                                    ; preds = %if.end69
  %probe = getelementptr inbounds %struct.tegra_sor_ops, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %probe, align 4
  %tobool73.not = icmp eq ptr %103, null
  br i1 %tobool73.not, label %land.lhs.true.if.end86_crit_edge, label %if.then74

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then74:                                        ; preds = %land.lhs.true
  %call77 = call i32 %103(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end82, label %if.then74.if.end86_crit_edge

if.then74.if.end86_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end82:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %ops70 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops70, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %107, i32 noundef %call77) #13
  br label %remove

if.end86:                                         ; preds = %if.then74.if.end86_crit_edge, %land.lhs.true.if.end86_crit_edge, %if.end69.if.end86_crit_edge
  %call87 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call89 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call87) #10
  %regs90 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 4
  %108 = ptrtoint ptr %regs90 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call89, ptr %regs90, align 8
  %cmp.i503 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i503, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %call89 to i32
  br label %remove

if.end96:                                         ; preds = %if.end86
  %call97 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end102, label %if.end104

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call97) #13
  br label %remove

if.end104:                                        ; preds = %if.end96
  %irq = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 6
  %110 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call97, ptr %irq, align 8
  %111 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev4, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i504 = icmp eq ptr %114, null
  br i1 %tobool.not.i504, label %if.end.i505, label %if.end104.dev_name.exit_crit_edge

if.end104.dev_name.exit_crit_edge:                ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i505:                                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i505, %if.end104.dev_name.exit_crit_edge
  %retval.0.i506 = phi ptr [ %116, %if.end.i505 ], [ %114, %if.end104.dev_name.exit_crit_edge ]
  %call.i507 = call i32 @devm_request_threaded_irq(ptr noundef %112, i32 noundef %call97, ptr noundef nonnull @tegra_sor_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i506, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i507)
  %cmp110 = icmp slt i32 %call.i507, 0
  br i1 %cmp110, label %do.end114, label %if.end116

do.end114:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i507) #13
  br label %remove

if.end116:                                        ; preds = %dev_name.exit
  %call.i508 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %rst = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 7
  %117 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i508, ptr %rst, align 4
  %cmp.i509 = icmp ugt ptr %call.i508, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i509, label %if.then121, label %if.end116.if.end160_crit_edge

if.end116.if.end160_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then121:                                       ; preds = %if.end116
  %118 = ptrtoint ptr %call.i508 to i32
  %cmp124.not = icmp eq ptr %call.i508, inttoptr (i32 -16 to ptr)
  br i1 %cmp124.not, label %lor.lhs.false, label %if.then121.do.end156_crit_edge

if.then121.do.end156_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156

lor.lhs.false:                                    ; preds = %if.then121
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %119 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pm_domain, align 8
  %tobool126.not = icmp eq ptr %120, null
  br i1 %tobool126.not, label %do.end139, label %if.end158, !prof !758

do.end139:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 3820, i32 noundef 9, ptr noundef null) #10
  br label %do.end156

do.end156:                                        ; preds = %do.end139, %if.then121.do.end156_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %118) #13
  br label %remove

if.end158:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %rst, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.end158, %if.end116.if.end160_crit_edge
  %call162 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 13
  %122 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call162, ptr %clk, align 4
  %cmp.i510 = icmp ugt ptr %call162, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i510, label %if.then165, label %if.end172

if.then165:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %call162 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %123) #13
  br label %remove

if.end172:                                        ; preds = %if.end160
  %124 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %soc, align 4
  %supports_hdmi174 = getelementptr inbounds %struct.tegra_sor_soc, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %supports_hdmi174 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %supports_hdmi174, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool175.not = icmp eq i8 %127, 0
  br i1 %tobool175.not, label %lor.lhs.false176, label %if.end172.if.then179_crit_edge

if.end172.if.then179_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then179

lor.lhs.false176:                                 ; preds = %if.end172
  %supports_dp = getelementptr inbounds %struct.tegra_sor_soc, ptr %125, i32 0, i32 2
  %128 = ptrtoint ptr %supports_dp to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %supports_dp, align 2, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool178.not = icmp eq i8 %129, 0
  br i1 %tobool178.not, label %if.else202, label %lor.lhs.false176.if.then179_crit_edge

lor.lhs.false176.if.then179_crit_edge:            ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then179

if.then179:                                       ; preds = %lor.lhs.false176.if.then179_crit_edge, %if.end172.if.then179_crit_edge
  %130 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %of_node, align 8
  %call184 = call i32 @of_property_match_string(ptr noundef %131, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  %.str.30..str.29 = select i1 %cmp185, ptr @.str.30, ptr @.str.29
  %call190 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %.str.30..str.29) #10
  %clk_out = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 10
  %132 = ptrtoint ptr %clk_out to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call190, ptr %clk_out, align 8
  %cmp.i511 = icmp ugt ptr %call190, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i511, label %cleanup, label %if.then179.if.end205_crit_edge

if.then179.if.end205_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205

cleanup:                                          ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %call190 to i32
  %134 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.32, ptr noundef nonnull %.str.30..str.29, i32 noundef %133) #13
  br label %remove

if.else202:                                       ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #12
  %clk_out204 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 10
  %136 = ptrtoint ptr %clk_out204 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call162, ptr %clk_out204, align 8
  br label %if.end205

if.end205:                                        ; preds = %if.else202, %if.then179.if.end205_crit_edge
  %call207 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  %clk_parent = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 8
  %137 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call207, ptr %clk_parent, align 8
  %cmp.i512 = icmp ugt ptr %call207, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i512, label %if.then210, label %if.end217

if.then210:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %call207 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %138) #13
  br label %remove

if.end217:                                        ; preds = %if.end205
  %call219 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  %clk_safe = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 9
  %139 = ptrtoint ptr %clk_safe to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call219, ptr %clk_safe, align 4
  %cmp.i513 = icmp ugt ptr %call219, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i513, label %if.then222, label %if.end229

if.then222:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %call219 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %140) #13
  br label %remove

if.end229:                                        ; preds = %if.end217
  %call231 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.42) #10
  %clk_dp = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 12
  %141 = ptrtoint ptr %clk_dp to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call231, ptr %clk_dp, align 8
  %cmp.i514 = icmp ugt ptr %call231, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i514, label %if.then234, label %if.end241

if.then234:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %call231 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %142) #13
  br label %remove

if.end241:                                        ; preds = %if.end229
  %call243 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.46) #10
  %clk_pad = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 11
  %143 = ptrtoint ptr %clk_pad to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call243, ptr %clk_pad, align 4
  %cmp.i515 = icmp ugt ptr %call243, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i515, label %if.then246, label %if.end241.if.end255_crit_edge

if.end241.if.end255_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

if.then246:                                       ; preds = %if.end241
  %cmp249.not = icmp eq ptr %call243, inttoptr (i32 -2 to ptr)
  br i1 %cmp249.not, label %if.end253, label %if.then250

if.then250:                                       ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %call243 to i32
  br label %remove

if.end253:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %clk_pad to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %clk_pad, align 4
  br label %if.end255

if.end255:                                        ; preds = %if.end253, %if.end241.if.end255_crit_edge
  %clk_out256 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 10
  %146 = ptrtoint ptr %clk_out256 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %clk_out256, align 8
  %148 = ptrtoint ptr %clk_safe to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %clk_safe, align 4
  %call258 = call i32 @clk_set_parent(ptr noundef %147, ptr noundef %149) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259 = icmp slt i32 %call258, 0
  br i1 %cmp259, label %do.end263, label %if.end265

do.end263:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %call258) #13
  br label %remove

if.end265:                                        ; preds = %if.end255
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %150 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #10
  call void @__host1x_client_init(ptr noundef nonnull %call.i, ptr noundef nonnull @tegra_sor_probe.__key) #10
  %ops268 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 4
  %151 = ptrtoint ptr %ops268 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @sor_client_ops, ptr %ops268, align 4
  %dev271 = getelementptr inbounds %struct.host1x_client, ptr %call.i, i32 0, i32 2
  %152 = ptrtoint ptr %dev271 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %dev, ptr %dev271, align 4
  %153 = ptrtoint ptr %clk_pad to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %clk_pad, align 4
  %tobool273.not = icmp eq ptr %154, null
  br i1 %tobool273.not, label %if.then274, label %if.end265.if.end297_crit_edge

if.end265.if.end297_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end297

if.then274:                                       ; preds = %if.end265
  %155 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev4, align 8
  %index = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 5
  %157 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %index, align 4
  %call277 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %156, i32 noundef 3264, ptr noundef nonnull @.str.50, i32 noundef %158) #10
  %tobool278.not = icmp eq ptr %call277, null
  br i1 %tobool278.not, label %if.then274.uninit_crit_edge, label %if.end280

if.then274.uninit_crit_edge:                      ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #12
  br label %uninit

if.end280:                                        ; preds = %if.then274
  %call282 = call i32 @host1x_client_resume(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %cmp283 = icmp slt i32 %call282, 0
  br i1 %cmp283, label %do.end287, label %cleanup294

do.end287:                                        ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.52, i32 noundef %call282) #13
  br label %uninit

cleanup294:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  %call290 = call fastcc ptr @tegra_clk_sor_pad_register(ptr noundef nonnull %call.i, ptr noundef nonnull %call277)
  %161 = ptrtoint ptr %clk_pad to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call290, ptr %clk_pad, align 4
  %call293 = call i32 @host1x_client_suspend(ptr noundef nonnull %call.i) #10
  %162 = ptrtoint ptr %clk_pad to i32
  call void @__asan_load4_noabort(i32 %162)
  %.pr = load ptr, ptr %clk_pad, align 4
  br label %if.end297

if.end297:                                        ; preds = %cleanup294, %if.end265.if.end297_crit_edge
  %163 = phi ptr [ %.pr, %cleanup294 ], [ %154, %if.end265.if.end297_crit_edge ]
  %cmp.i516 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i516, label %if.then300, label %if.end307

if.then300:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %163 to i32
  %165 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.55, i32 noundef %164) #13
  br label %uninit

if.end307:                                        ; preds = %if.end297
  %call309 = call i32 @__host1x_client_register(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %cmp310 = icmp slt i32 %call309, 0
  br i1 %cmp310, label %do.end314, label %if.end307.cleanup332_crit_edge

if.end307.cleanup332_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup332

do.end314:                                        ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call309) #13
  br label %uninit

uninit:                                           ; preds = %do.end314, %if.then300, %do.end287, %if.then274.uninit_crit_edge
  %err.3 = phi i32 [ %164, %if.then300 ], [ %call309, %do.end314 ], [ -12, %if.then274.uninit_crit_edge ], [ %call282, %do.end287 ]
  call void @host1x_client_exit(ptr noundef nonnull %call.i) #10
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %remove

remove:                                           ; preds = %uninit, %do.end263, %if.then250, %if.then234, %if.then222, %if.then210, %cleanup, %if.then165, %do.end156, %do.end114, %do.end102, %if.then93, %do.end82
  %err.4 = phi i32 [ %call77, %do.end82 ], [ %109, %if.then93 ], [ %call97, %do.end102 ], [ %call.i507, %do.end114 ], [ %118, %do.end156 ], [ %123, %if.then165 ], [ %133, %cleanup ], [ %138, %if.then210 ], [ %140, %if.then222 ], [ %142, %if.then234 ], [ %144, %if.then250 ], [ %call258, %do.end263 ], [ %err.3, %uninit ]
  %167 = ptrtoint ptr %aux37 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %aux37, align 4
  %tobool320.not = icmp eq ptr %168, null
  br i1 %tobool320.not, label %remove.if.end324_crit_edge, label %if.then321

remove.if.end324_crit_edge:                       ; preds = %remove
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end324

if.then321:                                       ; preds = %remove
  call void @__sanitizer_cov_trace_pc() #12
  %ddc323 = getelementptr inbounds %struct.tegra_sor, ptr %call.i, i32 0, i32 1, i32 4
  %169 = ptrtoint ptr %ddc323 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %ddc323, align 8
  br label %if.end324

if.end324:                                        ; preds = %if.then321, %remove.if.end324_crit_edge
  call void @tegra_output_remove(ptr noundef %output) #10
  br label %put_aux

put_aux:                                          ; preds = %if.end324, %if.then66, %tegra_sor_parse_dt.exit
  %err.5 = phi i32 [ %call.i.i.i, %tegra_sor_parse_dt.exit ], [ %call64, %if.then66 ], [ %err.4, %if.end324 ]
  %170 = ptrtoint ptr %aux37 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %aux37, align 4
  %tobool327.not = icmp eq ptr %171, null
  br i1 %tobool327.not, label %put_aux.cleanup332_crit_edge, label %if.then328

put_aux.cleanup332_crit_edge:                     ; preds = %put_aux
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup332

if.then328:                                       ; preds = %put_aux
  call void @__sanitizer_cov_trace_pc() #12
  %dev330 = getelementptr inbounds %struct.drm_dp_aux, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %dev330 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev330, align 8
  call void @put_device(ptr noundef %173) #10
  br label %cleanup332

cleanup332:                                       ; preds = %if.then328, %put_aux.cleanup332_crit_edge, %if.end307.cleanup332_crit_edge, %do.end50, %do.end, %if.then21.cleanup332_crit_edge, %if.end.cleanup332_crit_edge, %entry.cleanup332_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end50 ], [ -12, %entry.cleanup332_crit_edge ], [ -12, %if.end.cleanup332_crit_edge ], [ -517, %if.then21.cleanup332_crit_edge ], [ 0, %if.end307.cleanup332_crit_edge ], [ %err.5, %if.then328 ], [ %err.5, %put_aux.cleanup332_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @host1x_client_unregister(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.368, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %aux = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev5 = getelementptr inbounds %struct.drm_dp_aux, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 8
  tail call void @put_device(ptr noundef %5) #10
  %ddc = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ddc, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %output7 = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 1
  tail call void @tegra_output_remove(ptr noundef %output7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dp_aux_find_by_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %5, i32 noundef 284, i32 noundef %3) #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %7, i32 noundef 284, i32 noundef %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %9, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %2) #10, !srcloc !762
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i36 = getelementptr i8, ptr %11, i32 1064
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #10, !srcloc !759
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %15, i32 noundef 266, i32 noundef %13) #10
  %and2 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %and5 = and i32 %13, 65535
  %format6 = getelementptr inbounds %struct.tegra_sor, ptr %data, i32 0, i32 27
  tail call void @tegra_hda_parse_format(i32 noundef %and5, ptr noundef %format6) #10
  %ops = getelementptr inbounds %struct.tegra_sor, ptr %data, i32 0, i32 18
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %audio_enable = getelementptr inbounds %struct.tegra_sor_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %audio_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %audio_enable, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.then4.if.end18_crit_edge, label %if.then4.if.end18.sink.split_crit_edge

if.then4.if.end18.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.sink.split

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.else:                                          ; preds = %if.then
  %ops11 = getelementptr inbounds %struct.tegra_sor, ptr %data, i32 0, i32 18
  %20 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops11, align 4
  %audio_disable = getelementptr inbounds %struct.tegra_sor_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %audio_disable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %audio_disable, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %if.else.if.end18_crit_edge, label %if.else.if.end18.sink.split_crit_edge

if.else.if.end18.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.sink.split

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18.sink.split:                              ; preds = %if.else.if.end18.sink.split_crit_edge, %if.then4.if.end18.sink.split_crit_edge
  %.sink = phi ptr [ %19, %if.then4.if.end18.sink.split_crit_edge ], [ %23, %if.else.if.end18.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %data) #10
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else.if.end18_crit_edge, %if.then4.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tegra_clk_sor_pad_register(ptr noundef %sor, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %dev = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sor2 = getelementptr inbounds %struct.tegra_clk_sor_pad, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %sor2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sor, ptr %sor2, align 4
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %init, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %index = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 5
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [2 x [2 x ptr]], ptr @tegra_clk_sor_pad_parents, i32 0, i32 %8
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %num_parents, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tegra_clk_sor_pad_ops, ptr %ops, align 4
  %init4 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %init4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %init, ptr %init4, align 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %call7 = call ptr @devm_clk_register(ptr noundef %14, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_client_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_hdmi_probe(ptr noundef %sor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call ptr @devm_regulator_get(ptr noundef %1, ptr noundef nonnull @.str.61) #10
  %avdd_io_supply = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 22
  %2 = ptrtoint ptr %avdd_io_supply to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %avdd_io_supply, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.62, i32 noundef %5) #13
  %6 = ptrtoint ptr %avdd_io_supply to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %avdd_io_supply, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @regulator_enable(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.tegra_sor_enable_regulator.exit_crit_edge

if.end.tegra_sor_enable_regulator.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_enable_regulator.exit

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call.i.i = tail call i32 @devm_add_action(ptr noundef %10, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end15_crit_edge, label %if.then.i.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 @regulator_disable(ptr noundef %call) #10
  br label %tegra_sor_enable_regulator.exit

tegra_sor_enable_regulator.exit:                  ; preds = %if.then.i.i, %if.end.tegra_sor_enable_regulator.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.tegra_sor_enable_regulator.exit_crit_edge ], [ %call.i.i, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end13, label %tegra_sor_enable_regulator.exit.if.end15_crit_edge

tegra_sor_enable_regulator.exit.if.end15_crit_edge: ; preds = %tegra_sor_enable_regulator.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end13:                                         ; preds = %tegra_sor_enable_regulator.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.65, i32 noundef %retval.0.i) #13
  br label %cleanup

if.end15:                                         ; preds = %tegra_sor_enable_regulator.exit.if.end15_crit_edge, %if.end.i.if.end15_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %call17 = tail call ptr @devm_regulator_get(ptr noundef %14, ptr noundef nonnull @.str.67) #10
  %vdd_pll_supply = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 23
  %15 = ptrtoint ptr %vdd_pll_supply to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17, ptr %vdd_pll_supply, align 8
  %cmp.i121 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %do.end23, label %if.end29

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.69, i32 noundef %18) #13
  %19 = ptrtoint ptr %vdd_pll_supply to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdd_pll_supply, align 8
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  %call.i122 = tail call i32 @regulator_enable(ptr noundef %call17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i123 = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i123, label %if.end.i127, label %if.end29.tegra_sor_enable_regulator.exit131_crit_edge

if.end29.tegra_sor_enable_regulator.exit131_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_enable_regulator.exit131

if.end.i127:                                      ; preds = %if.end29
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %call.i.i125 = tail call i32 @devm_add_action(ptr noundef %23, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %call17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %call.i.i125, 0
  br i1 %tobool.not.i.i126, label %if.end.i127.if.end38_crit_edge, label %if.then.i.i129

if.end.i127.if.end38_crit_edge:                   ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then.i.i129:                                   ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i128 = tail call i32 @regulator_disable(ptr noundef %call17) #10
  br label %tegra_sor_enable_regulator.exit131

tegra_sor_enable_regulator.exit131:               ; preds = %if.then.i.i129, %if.end29.tegra_sor_enable_regulator.exit131_crit_edge
  %retval.0.i130 = phi i32 [ %call.i122, %if.end29.tegra_sor_enable_regulator.exit131_crit_edge ], [ %call.i.i125, %if.then.i.i129 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i130)
  %cmp32 = icmp slt i32 %retval.0.i130, 0
  br i1 %cmp32, label %do.end36, label %tegra_sor_enable_regulator.exit131.if.end38_crit_edge

tegra_sor_enable_regulator.exit131.if.end38_crit_edge: ; preds = %tegra_sor_enable_regulator.exit131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end36:                                         ; preds = %tegra_sor_enable_regulator.exit131
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.72, i32 noundef %retval.0.i130) #13
  br label %cleanup

if.end38:                                         ; preds = %tegra_sor_enable_regulator.exit131.if.end38_crit_edge, %if.end.i127.if.end38_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %call40 = tail call ptr @devm_regulator_get(ptr noundef %27, ptr noundef nonnull @.str.74) #10
  %hdmi_supply = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 24
  %28 = ptrtoint ptr %hdmi_supply to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call40, ptr %hdmi_supply, align 4
  %cmp.i132 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end46, label %if.end52

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %31 = ptrtoint ptr %call40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.76, i32 noundef %31) #13
  %32 = ptrtoint ptr %hdmi_supply to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdmi_supply, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end38
  %call.i133 = tail call i32 @regulator_enable(ptr noundef %call40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i134 = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i134, label %if.end.i138, label %if.end52.tegra_sor_enable_regulator.exit142_crit_edge

if.end52.tegra_sor_enable_regulator.exit142_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_enable_regulator.exit142

if.end.i138:                                      ; preds = %if.end52
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %call.i.i136 = tail call i32 @devm_add_action(ptr noundef %36, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %call40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i136)
  %tobool.not.i.i137 = icmp eq i32 %call.i.i136, 0
  br i1 %tobool.not.i.i137, label %if.end.i138.do.body63_crit_edge, label %if.then.i.i140

if.end.i138.do.body63_crit_edge:                  ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

if.then.i.i140:                                   ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i139 = tail call i32 @regulator_disable(ptr noundef %call40) #10
  br label %tegra_sor_enable_regulator.exit142

tegra_sor_enable_regulator.exit142:               ; preds = %if.then.i.i140, %if.end52.tegra_sor_enable_regulator.exit142_crit_edge
  %retval.0.i141 = phi i32 [ %call.i133, %if.end52.tegra_sor_enable_regulator.exit142_crit_edge ], [ %call.i.i136, %if.then.i.i140 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i141)
  %cmp55 = icmp slt i32 %retval.0.i141, 0
  br i1 %cmp55, label %do.end59, label %tegra_sor_enable_regulator.exit142.do.body63_crit_edge

tegra_sor_enable_regulator.exit142.do.body63_crit_edge: ; preds = %tegra_sor_enable_regulator.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body63

do.end59:                                         ; preds = %tegra_sor_enable_regulator.exit142
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.79, i32 noundef %retval.0.i141) #13
  br label %cleanup

do.body63:                                        ; preds = %tegra_sor_enable_regulator.exit142.do.body63_crit_edge, %if.end.i138.do.body63_crit_edge
  %scdc = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 25
  tail call void @__init_work(ptr noundef %scdc, i32 noundef 0) #10
  %39 = ptrtoint ptr %scdc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %scdc, align 8
  %lockdep_map = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 25, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.81, ptr noundef nonnull @tegra_sor_hdmi_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry70 = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 25, i32 0, i32 1
  %40 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 25, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry70, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 25, i32 0, i32 2
  %42 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tegra_sor_hdmi_scdc_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 25, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.83, ptr noundef nonnull @tegra_sor_hdmi_probe.__key.82) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body63, %do.end59, %do.end46, %do.end36, %do.end23, %do.end13, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ %retval.0.i, %do.end13 ], [ %21, %do.end23 ], [ %retval.0.i130, %do.end36 ], [ %34, %do.end46 ], [ %retval.0.i141, %do.end59 ], [ 0, %do.body63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_audio_enable(ptr noundef readonly %sor) #0 align 64 {
entry:
  %buffer.i = alloca [14 x i8], align 1
  %frame.i = alloca %struct.hdmi_audio_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1008
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !759
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %5, i32 noundef 252, i32 noundef %3) #10
  %channels.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  %or.i = and i32 %3, -540020737
  %value.0.v.i = select i1 %cmp.not.i, i32 538968064, i32 2097152
  %value.0.i = or i32 %or.i, %value.0.v.i
  %or3.i = or i32 %value.0.i, 4096
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %9, i32 noundef 252, i32 noundef %or3.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #10
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %12, i32 1008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %10) #10, !srcloc !762
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %14, i32 noundef 254, i32 noundef 134217728) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %16, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 8) #10, !srcloc !762
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %18, i32 noundef 177, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !762
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %22, i32 noundef 203, i32 noundef -2147418111) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %24, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 16777600) #10, !srcloc !762
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %26, i32 noundef 180, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i58 = getelementptr i8, ptr %28, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 0) #10, !srcloc !762
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %30, i32 noundef 181, i32 noundef -2147483648) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %32, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 128) #10, !srcloc !762
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %34, i32 noundef 316, i32 noundef 269484032) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %36, i32 1264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 4112) #10, !srcloc !762
  %format = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 27
  %37 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format, align 8
  %mul = shl i32 %38, 7
  %div = udiv i32 %mul, 1000
  %div1 = udiv i32 98304000, %div
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %40, i32 noundef 271, i32 noundef %div1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %41 = tail call i32 @llvm.bswap.i32(i32 %div1) #10
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %43, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %41) #10, !srcloc !762
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %45, i32 noundef 255, i32 noundef 4096) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i70 = getelementptr i8, ptr %47, i32 1020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 1048576) #10, !srcloc !762
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %49, i32 noundef 272, i32 noundef 20000) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i73 = getelementptr i8, ptr %51, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 541982720) #10, !srcloc !762
  %52 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %53, i32 noundef 256, i32 noundef 4704) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i76 = getelementptr i8, ptr %55, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 1611792384) #10, !srcloc !762
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %57, i32 noundef 273, i32 noundef 20000) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %58 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i79 = getelementptr i8, ptr %59, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 541982720) #10, !srcloc !762
  %60 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %61, i32 noundef 257, i32 noundef 9408) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i82 = getelementptr i8, ptr %63, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 -1071382528) #10, !srcloc !762
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %65, i32 noundef 274, i32 noundef 20000) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %66 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i85 = getelementptr i8, ptr %67, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 541982720) #10, !srcloc !762
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %69, i32 noundef 258, i32 noundef 18816) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i88 = getelementptr i8, ptr %71, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 -2142699520) #10, !srcloc !762
  %72 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %format, align 8
  %mul4 = shl i32 %73, 7
  %div5 = udiv i32 %mul4, 1000
  %div6 = udiv i32 147456000, %div5
  %74 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %75, i32 noundef 275, i32 noundef %div6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %76 = tail call i32 @llvm.bswap.i32(i32 %div6) #10
  %77 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i91 = getelementptr i8, ptr %78, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %76) #10, !srcloc !762
  %79 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %80, i32 noundef 259, i32 noundef 6144) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i94 = getelementptr i8, ptr %82, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 1572864) #10, !srcloc !762
  %83 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %format, align 8
  %mul9 = shl i32 %84, 7
  %div10 = udiv i32 %mul9, 1000
  %div11 = udiv i32 294912000, %div10
  %85 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %86, i32 noundef 276, i32 noundef %div11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %87 = tail call i32 @llvm.bswap.i32(i32 %div11) #10
  %88 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i97 = getelementptr i8, ptr %89, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %87) #10, !srcloc !762
  %90 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %91, i32 noundef 260, i32 noundef 12288) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %92 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i100 = getelementptr i8, ptr %93, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 3145728) #10, !srcloc !762
  %94 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %format, align 8
  %mul14 = shl i32 %95, 7
  %div15 = udiv i32 %mul14, 1000
  %div16 = udiv i32 589824000, %div15
  %96 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %97, i32 noundef 277, i32 noundef %div16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %98 = tail call i32 @llvm.bswap.i32(i32 %div16) #10
  %99 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i103 = getelementptr i8, ptr %100, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %98) #10, !srcloc !762
  %101 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %102, i32 noundef 261, i32 noundef 24576) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i106 = getelementptr i8, ptr %104, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 6291456) #10, !srcloc !762
  %105 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i108 = getelementptr i8, ptr %106, i32 1264
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #10, !srcloc !759
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %109 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %110, i32 noundef 316, i32 noundef %108) #10
  %and = and i32 %108, -1048577
  %111 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %112, i32 noundef 316, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %113 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %114 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i112 = getelementptr i8, ptr %115, i32 1264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %113) #10, !srcloc !762
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buffer.i) #10
  %116 = call ptr @memset(ptr %buffer.i, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %frame.i) #10
  %117 = call ptr @memset(ptr %frame.i, i32 255, i32 28)
  %call.i = call i32 @hdmi_audio_infoframe_init(ptr noundef nonnull %frame.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.88, i32 noundef %call.i) #13
  br label %tegra_sor_hdmi_enable_audio_infoframe.exit

if.end.i:                                         ; preds = %entry
  %120 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %channels.i, align 4
  %conv.i = trunc i32 %121 to i8
  %channels1.i = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame.i, i32 0, i32 3
  %122 = ptrtoint ptr %channels1.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv.i, ptr %channels1.i, align 2
  %call2.i = call i32 @hdmi_audio_infoframe_pack(ptr noundef nonnull %frame.i, ptr noundef nonnull %buffer.i, i32 noundef 14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.91, i32 noundef %call2.i) #13
  br label %tegra_sor_hdmi_enable_audio_infoframe.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tegra_sor_hdmi_write_infopack(ptr noundef %sor, ptr noundef nonnull %buffer.i, i32 noundef %call2.i) #10
  %125 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i116 = getelementptr i8, ptr %126, i32 616
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i116) #10, !srcloc !759
  %128 = call i32 @llvm.bswap.i32(i32 %127) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %129 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %130, i32 noundef 154, i32 noundef %128) #10
  %or13.i = or i32 %128, 513
  %131 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %132, i32 noundef 154, i32 noundef %or13.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %133 = call i32 @llvm.bswap.i32(i32 %or13.i) #10
  %134 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %135, i32 616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %133) #10, !srcloc !762
  br label %tegra_sor_hdmi_enable_audio_infoframe.exit

tegra_sor_hdmi_enable_audio_infoframe.exit:       ; preds = %if.end10.i, %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %frame.i) #10
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buffer.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_audio_disable(ptr nocapture noundef readonly %sor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 616
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !759
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %5, i32 noundef 154, i32 noundef %3) #10
  %and.i = and i32 %3, -2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %7, i32 noundef 154, i32 noundef %and.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %10, i32 616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %8) #10, !srcloc !762
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_scdc_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc1 = getelementptr i8, ptr %work, i32 -1416
  %0 = ptrtoint ptr %ddc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc1, align 8
  %call = tail call zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef %1) #10
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.84) #10
  %2 = ptrtoint ptr %ddc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc1, align 8
  %call.i = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %3, i1 noundef zeroext true) #10
  %call2.i = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %3, i1 noundef zeroext true) #10
  %regs.i.i.i = getelementptr i8, ptr %work, i32 -272
  %4 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 1272
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !759
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i.i.i = getelementptr i8, ptr %work, i32 -280
  %8 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %9, i32 noundef 318, i32 noundef %7) #10
  %or1.i.i = or i32 %7, 3
  %10 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %11, i32 noundef 318, i32 noundef %or1.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #10
  %13 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %14, i32 1272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %12) #10, !srcloc !762
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work, i32 noundef 500) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_disable_regulator(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_set_scrambling(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sor_readl(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), ptr blockaddress(@trace_sor_readl, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !763

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !764

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !765
  %call42 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !766
  %13 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !764

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !767
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sor_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_sor_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.85, i32 noundef 60, ptr noundef nonnull @.str.86) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !768
  %31 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sor_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sor_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), ptr blockaddress(@trace_sor_writel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !763

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !764

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !769
  %call42 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !770
  %13 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !764

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !767
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sor_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_sor_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.85, i32 noundef 57, ptr noundef nonnull @.str.86) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !768
  %31 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sor_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_sor_hdmi_write_infopack(ptr nocapture noundef readonly %sor, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 -126, label %entry.sw.epilog_crit_edge
    i8 -124, label %sw.bb1
    i8 -127, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %1 to i32
  %dev = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.93, i32 noundef %conv) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %offset.0 = phi i32 [ 293, %sw.bb2 ], [ 156, %sw.bb1 ], [ 161, %entry.sw.epilog_crit_edge ]
  %conv6 = zext i8 %1 to i32
  %arrayidx7 = getelementptr i8, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %shl10 = shl nuw nsw i32 %conv8, 8
  %or = or i32 %shl10, %conv6
  %arrayidx11 = getelementptr i8, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %shl14 = shl nuw nsw i32 %conv12, 16
  %or15 = or i32 %or, %shl14
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %10, i32 noundef %offset.0, i32 noundef %or15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or15) #10
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 4
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %shl.i = shl nuw nsw i32 %offset.0, 2
  %add.ptr.i = getelementptr i8, ptr %13, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #10, !srcloc !762
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp86 = icmp ugt i32 %size, 3
  br i1 %cmp86, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %tegra_sor_hdmi_subpack.exit80.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %offset.1.in88 = phi i32 [ %inc20, %tegra_sor_hdmi_subpack.exit80.for.body_crit_edge ], [ %offset.0, %sw.epilog.for.body_crit_edge ]
  %i.087 = phi i32 [ %add32, %tegra_sor_hdmi_subpack.exit80.for.body_crit_edge ], [ 3, %sw.epilog.for.body_crit_edge ]
  %offset.189 = add i32 %offset.1.in88, 1
  %sub = sub i32 %size, %i.087
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4)
  %arrayidx19 = getelementptr i8, ptr %data, i32 %i.087
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not4.i = icmp eq i32 %14, 0
  br i1 %cmp.not4.i, label %for.body.tegra_sor_hdmi_subpack.exit_crit_edge, label %for.body.i

for.body.tegra_sor_hdmi_subpack.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_subpack.exit

for.body.i:                                       ; preds = %for.body
  %sub.i = add nsw i32 %14, -1
  %arrayidx.i = getelementptr i8, ptr %arrayidx19, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %for.body.i.tegra_sor_hdmi_subpack.exit_crit_edge, label %for.body.i.1

for.body.i.tegra_sor_hdmi_subpack.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_subpack.exit

for.body.i.1:                                     ; preds = %for.body.i
  %shl.i64.1 = shl nuw nsw i32 %conv.i, 8
  %sub.i.1 = add nsw i32 %14, -2
  %arrayidx.i.1 = getelementptr i8, ptr %arrayidx19, i32 %sub.i.1
  %17 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %18 to i32
  %or.i.1 = or i32 %shl.i64.1, %conv.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.1)
  %cmp.not.i.1 = icmp eq i32 %sub.i.1, 0
  br i1 %cmp.not.i.1, label %for.body.i.1.tegra_sor_hdmi_subpack.exit_crit_edge, label %for.body.i.2

for.body.i.1.tegra_sor_hdmi_subpack.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_subpack.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %shl.i64.2 = shl nuw nsw i32 %or.i.1, 8
  %sub.i.2 = add nsw i32 %14, -3
  %arrayidx.i.2 = getelementptr i8, ptr %arrayidx19, i32 %sub.i.2
  %19 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %20 to i32
  %or.i.2 = or i32 %shl.i64.2, %conv.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.2)
  %cmp.not.i.2 = icmp eq i32 %sub.i.2, 0
  br i1 %cmp.not.i.2, label %for.body.i.2.tegra_sor_hdmi_subpack.exit_crit_edge, label %for.body.i.3

for.body.i.2.tegra_sor_hdmi_subpack.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_subpack.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i64.3 = shl nuw i32 %or.i.2, 8
  %sub.i.3 = add nsw i32 %14, -4
  %arrayidx.i.3 = getelementptr i8, ptr %arrayidx19, i32 %sub.i.3
  %21 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %22 to i32
  %or.i.3 = or i32 %shl.i64.3, %conv.i.3
  br label %tegra_sor_hdmi_subpack.exit

tegra_sor_hdmi_subpack.exit:                      ; preds = %for.body.i.3, %for.body.i.2.tegra_sor_hdmi_subpack.exit_crit_edge, %for.body.i.1.tegra_sor_hdmi_subpack.exit_crit_edge, %for.body.i.tegra_sor_hdmi_subpack.exit_crit_edge, %for.body.tegra_sor_hdmi_subpack.exit_crit_edge
  %value.0.lcssa.i = phi i32 [ 0, %for.body.tegra_sor_hdmi_subpack.exit_crit_edge ], [ %conv.i, %for.body.i.tegra_sor_hdmi_subpack.exit_crit_edge ], [ %or.i.1, %for.body.i.1.tegra_sor_hdmi_subpack.exit_crit_edge ], [ %or.i.2, %for.body.i.2.tegra_sor_hdmi_subpack.exit_crit_edge ], [ %or.i.3, %for.body.i.3 ]
  %inc20 = add i32 %offset.1.in88, 2
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %24, i32 noundef %offset.189, i32 noundef %value.0.lcssa.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa.i) #10
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %shl.i67 = shl i32 %offset.189, 2
  %add.ptr.i68 = getelementptr i8, ptr %27, i32 %shl.i67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %25) #10, !srcloc !762
  %sub21 = sub i32 %sub, %14
  %28 = tail call i32 @llvm.umin.i32(i32 %sub21, i32 3)
  %add = add i32 %i.087, 4
  %arrayidx29 = getelementptr i8, ptr %data, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not4.i69 = icmp eq i32 %28, 0
  br i1 %cmp.not4.i69, label %tegra_sor_hdmi_subpack.exit.tegra_sor_hdmi_subpack.exit80_crit_edge, label %for.body.i78

tegra_sor_hdmi_subpack.exit.tegra_sor_hdmi_subpack.exit80_crit_edge: ; preds = %tegra_sor_hdmi_subpack.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_subpack.exit80

for.body.i78:                                     ; preds = %tegra_sor_hdmi_subpack.exit
  %sub.i73 = add nsw i32 %28, -1
  %arrayidx.i74 = getelementptr i8, ptr %arrayidx29, i32 %sub.i73
  %29 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i74, align 1
  %conv.i75 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i73)
  %cmp.not.i77 = icmp eq i32 %sub.i73, 0
  br i1 %cmp.not.i77, label %for.body.i78.tegra_sor_hdmi_subpack.exit80_crit_edge, label %for.body.i78.1

for.body.i78.tegra_sor_hdmi_subpack.exit80_crit_edge: ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_subpack.exit80

for.body.i78.1:                                   ; preds = %for.body.i78
  %shl.i72.1 = shl nuw nsw i32 %conv.i75, 8
  %sub.i73.1 = add nsw i32 %28, -2
  %arrayidx.i74.1 = getelementptr i8, ptr %arrayidx29, i32 %sub.i73.1
  %31 = ptrtoint ptr %arrayidx.i74.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i74.1, align 1
  %conv.i75.1 = zext i8 %32 to i32
  %or.i76.1 = or i32 %shl.i72.1, %conv.i75.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i73.1)
  %cmp.not.i77.1 = icmp eq i32 %sub.i73.1, 0
  br i1 %cmp.not.i77.1, label %for.body.i78.1.tegra_sor_hdmi_subpack.exit80_crit_edge, label %for.body.i78.2

for.body.i78.1.tegra_sor_hdmi_subpack.exit80_crit_edge: ; preds = %for.body.i78.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_subpack.exit80

for.body.i78.2:                                   ; preds = %for.body.i78.1
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i72.2 = shl nuw nsw i32 %or.i76.1, 8
  %sub.i73.2 = add nsw i32 %28, -3
  %arrayidx.i74.2 = getelementptr i8, ptr %arrayidx29, i32 %sub.i73.2
  %33 = ptrtoint ptr %arrayidx.i74.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i74.2, align 1
  %conv.i75.2 = zext i8 %34 to i32
  %or.i76.2 = or i32 %shl.i72.2, %conv.i75.2
  br label %tegra_sor_hdmi_subpack.exit80

tegra_sor_hdmi_subpack.exit80:                    ; preds = %for.body.i78.2, %for.body.i78.1.tegra_sor_hdmi_subpack.exit80_crit_edge, %for.body.i78.tegra_sor_hdmi_subpack.exit80_crit_edge, %tegra_sor_hdmi_subpack.exit.tegra_sor_hdmi_subpack.exit80_crit_edge
  %value.0.lcssa.i79 = phi i32 [ 0, %tegra_sor_hdmi_subpack.exit.tegra_sor_hdmi_subpack.exit80_crit_edge ], [ %conv.i75, %for.body.i78.tegra_sor_hdmi_subpack.exit80_crit_edge ], [ %or.i76.1, %for.body.i78.1.tegra_sor_hdmi_subpack.exit80_crit_edge ], [ %or.i76.2, %for.body.i78.2 ]
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %36, i32 noundef %inc20, i32 noundef %value.0.lcssa.i79) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %37 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa.i79) #10
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %shl.i83 = shl i32 %inc20, 2
  %add.ptr.i84 = getelementptr i8, ptr %39, i32 %shl.i83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %37) #10, !srcloc !762
  %add32 = add i32 %i.087, 7
  %cmp = icmp ult i32 %add32, %size
  br i1 %cmp, label %tegra_sor_hdmi_subpack.exit80.for.body_crit_edge, label %tegra_sor_hdmi_subpack.exit80.cleanup_crit_edge

tegra_sor_hdmi_subpack.exit80.cleanup_crit_edge:  ; preds = %tegra_sor_hdmi_subpack.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tegra_sor_hdmi_subpack.exit80.for.body_crit_edge: ; preds = %tegra_sor_hdmi_subpack.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %tegra_sor_hdmi_subpack.exit80.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_dp_probe(ptr nocapture noundef %sor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call ptr @devm_regulator_get(ptr noundef %1, ptr noundef nonnull @.str.61) #10
  %avdd_io_supply = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 22
  %2 = ptrtoint ptr %avdd_io_supply to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %avdd_io_supply, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @regulator_enable(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.tegra_sor_enable_regulator.exit_crit_edge

if.end.tegra_sor_enable_regulator.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_enable_regulator.exit

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i.i = tail call i32 @devm_add_action(ptr noundef %5, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end8_crit_edge, label %if.then.i.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 @regulator_disable(ptr noundef %call) #10
  br label %tegra_sor_enable_regulator.exit

tegra_sor_enable_regulator.exit:                  ; preds = %if.then.i.i, %if.end.tegra_sor_enable_regulator.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.tegra_sor_enable_regulator.exit_crit_edge ], [ %call.i.i, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %tegra_sor_enable_regulator.exit.cleanup_crit_edge, label %tegra_sor_enable_regulator.exit.if.end8_crit_edge

tegra_sor_enable_regulator.exit.if.end8_crit_edge: ; preds = %tegra_sor_enable_regulator.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

tegra_sor_enable_regulator.exit.cleanup_crit_edge: ; preds = %tegra_sor_enable_regulator.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %tegra_sor_enable_regulator.exit.if.end8_crit_edge, %if.end.i.if.end8_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %7, ptr noundef nonnull @.str.67) #10
  %vdd_pll_supply = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 23
  %8 = ptrtoint ptr %vdd_pll_supply to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %vdd_pll_supply, align 8
  %cmp.i36 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call.i37 = tail call i32 @regulator_enable(ptr noundef %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i42, label %if.end16.tegra_sor_enable_regulator.exit46_crit_edge

if.end16.tegra_sor_enable_regulator.exit46_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_enable_regulator.exit46

if.end.i42:                                       ; preds = %if.end16
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %call.i.i40 = tail call i32 @devm_add_action(ptr noundef %11, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.end.i42.cleanup_crit_edge, label %if.then.i.i44

if.end.i42.cleanup_crit_edge:                     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i44:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i43 = tail call i32 @regulator_disable(ptr noundef %call10) #10
  br label %tegra_sor_enable_regulator.exit46

tegra_sor_enable_regulator.exit46:                ; preds = %if.then.i.i44, %if.end16.tegra_sor_enable_regulator.exit46_crit_edge
  %retval.0.i45 = phi i32 [ %call.i37, %if.end16.tegra_sor_enable_regulator.exit46_crit_edge ], [ %call.i.i40, %if.then.i.i44 ]
  %12 = tail call i32 @llvm.smin.i32(i32 %retval.0.i45, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %tegra_sor_enable_regulator.exit46, %if.end.i42.cleanup_crit_edge, %if.then13, %tegra_sor_enable_regulator.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %9, %if.then13 ], [ %retval.0.i, %tegra_sor_enable_regulator.exit.cleanup_crit_edge ], [ 0, %if.end.i42.cleanup_crit_edge ], [ %12, %tegra_sor_enable_regulator.exit46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_hda_parse_format(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_init(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %aux = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 16
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 18
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %7, @tegra_sor_hdmi_ops
  br i1 %cmp, label %if.then.if.end15_crit_edge, label %if.else

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %soc = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 3
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 7
  %spec.select209 = select i1 %tobool3.not, i32 0, i32 3
  br label %if.end15

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %panel = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  %tobool7.not = icmp eq ptr %13, null
  %. = select i1 %tobool7.not, i32 10, i32 14
  %ops11 = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 15, i32 10
  %14 = ptrtoint ptr %ops11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tegra_sor_dp_link_ops, ptr %ops11, align 4
  %aux14 = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 15, i32 11
  %15 = ptrtoint ptr %aux14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %aux14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else6, %if.else, %if.then.if.end15_crit_edge
  %helpers.1 = phi ptr [ @tegra_sor_dp_helpers, %if.else6 ], [ @tegra_sor_hdmi_helpers, %if.then.if.end15_crit_edge ], [ null, %if.else ]
  %connector.1 = phi i32 [ %., %if.else6 ], [ 11, %if.then.if.end15_crit_edge ], [ %spec.select, %if.else ]
  %encoder.1 = phi i32 [ 2, %if.else6 ], [ 2, %if.then.if.end15_crit_edge ], [ %spec.select209, %if.else ]
  %dev = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %output16 = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1
  %dev17 = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dev17, align 4
  %connector19 = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1, i32 10
  %ddc = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ddc, align 8
  %call21 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %3, ptr noundef %connector19, ptr noundef nonnull @tegra_sor_connector_funcs, i32 noundef %connector.1, ptr noundef %20) #10
  %helper_private.i = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1, i32 10, i32 35
  %21 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tegra_sor_connector_helper_funcs, ptr %helper_private.i, align 4
  %dpms = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1, i32 10, i32 34
  %22 = ptrtoint ptr %dpms to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %dpms, align 8
  %encoder27 = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1, i32 9
  %call28 = tail call i32 @drm_simple_encoder_init(ptr noundef %3, ptr noundef %encoder27, i32 noundef %encoder.1) #10
  %helper_private.i210 = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1, i32 9, i32 11
  %23 = ptrtoint ptr %helper_private.i210 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %helpers.1, ptr %helper_private.i210, align 4
  %call35 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector19, ptr noundef %encoder27) #10
  %call38 = tail call i32 @drm_connector_register(ptr noundef %connector19) #10
  %call40 = tail call i32 @tegra_output_init(ptr noundef %3, ptr noundef %output16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end, label %if.end44

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %dev43 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %24 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.98, i32 noundef %call40) #13
  br label %cleanup

if.end44:                                         ; preds = %if.end15
  tail call void @tegra_output_find_possible_crtcs(ptr noundef %output16, ptr noundef %3) #10
  %26 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aux, align 4
  %tobool47.not = icmp eq ptr %27, null
  br i1 %tobool47.not, label %if.end44.if.end59_crit_edge, label %if.then48

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then48:                                        ; preds = %if.end44
  %call51 = tail call i32 @drm_dp_aux_attach(ptr noundef nonnull %27, ptr noundef %output16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end56, label %if.then48.if.end59_crit_edge

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.end56:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.101, i32 noundef %call51) #13
  br label %cleanup

if.end59:                                         ; preds = %if.then48.if.end59_crit_edge, %if.end44.if.end59_crit_edge
  %rst = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 7
  %30 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rst, align 4
  %tobool60.not = icmp eq ptr %31, null
  br i1 %tobool60.not, label %if.end59.if.end89_crit_edge, label %if.then61

if.end59.if.end89_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then61:                                        ; preds = %if.end59
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %33, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end70

if.then.i:                                        ; preds = %if.then61
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !771
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !772
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end68_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end68_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !773
  br label %do.end68

do.end68:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end68_crit_edge
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.104, i32 noundef %call.i) #13
  br label %cleanup

if.end70:                                         ; preds = %if.then61
  %37 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rst, align 4
  %call72 = tail call i32 @reset_control_acquire(ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.107, i32 noundef %call72) #13
  br label %rpm_put

if.end79:                                         ; preds = %if.end70
  %41 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rst, align 4
  %call81 = tail call i32 @reset_control_assert(ptr noundef %42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.end86, label %if.end79.if.end89_crit_edge

if.end79.if.end89_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.110, i32 noundef %call81) #13
  br label %rpm_put

if.end89:                                         ; preds = %if.end79.if.end89_crit_edge, %if.end59.if.end89_crit_edge
  %clk = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 13
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 4
  %call.i211 = tail call i32 @clk_prepare(ptr noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not.i = icmp eq i32 %call.i211, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end89.clk_prepare_enable.exit_crit_edge

if.end89.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end89
  %call1.i = tail call i32 @clk_enable(ptr noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end97_crit_edge, label %if.then3.i

if.end.i.if.end97_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %46) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end89.clk_prepare_enable.exit_crit_edge
  %retval.0.i212 = phi i32 [ %call.i211, %if.end89.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i212)
  %cmp91 = icmp slt i32 %retval.0.i212, 0
  br i1 %cmp91, label %do.end95, label %clk_prepare_enable.exit.if.end97_crit_edge

clk_prepare_enable.exit.if.end97_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

do.end95:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.113, i32 noundef %retval.0.i212) #13
  br label %rpm_put

if.end97:                                         ; preds = %clk_prepare_enable.exit.if.end97_crit_edge, %if.end.i.if.end97_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 3000, i32 noundef 2) #10
  %49 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rst, align 4
  %tobool99.not = icmp eq ptr %50, null
  br i1 %tobool99.not, label %if.end97.if.end114_crit_edge, label %if.then100

if.end97.if.end114_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then100:                                       ; preds = %if.end97
  %call102 = tail call i32 @reset_control_deassert(ptr noundef nonnull %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %do.end107, label %if.end110

do.end107:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.116, i32 noundef %call102) #13
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %54) #10
  tail call void @clk_unprepare(ptr noundef %54) #10
  br label %rpm_put

if.end110:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rst, align 4
  tail call void @reset_control_release(ptr noundef %56) #10
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  %call.i213 = tail call i32 @__pm_runtime_idle(ptr noundef %58, i32 noundef 5) #10
  br label %if.end114

if.end114:                                        ; preds = %if.end110, %if.end97.if.end114_crit_edge
  %clk_safe = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 9
  %59 = ptrtoint ptr %clk_safe to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk_safe, align 4
  %call.i214 = tail call i32 @clk_prepare(ptr noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %if.end.i218, label %if.end114.clk_prepare_enable.exit221_crit_edge

if.end114.clk_prepare_enable.exit221_crit_edge:   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit221

if.end.i218:                                      ; preds = %if.end114
  %call1.i216 = tail call i32 @clk_enable(ptr noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i216)
  %tobool2.not.i217 = icmp eq i32 %call1.i216, 0
  br i1 %tobool2.not.i217, label %if.end.i218.if.end119_crit_edge, label %if.then3.i219

if.end.i218.if.end119_crit_edge:                  ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then3.i219:                                    ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %60) #10
  br label %clk_prepare_enable.exit221

clk_prepare_enable.exit221:                       ; preds = %if.then3.i219, %if.end114.clk_prepare_enable.exit221_crit_edge
  %retval.0.i220 = phi i32 [ %call.i214, %if.end114.clk_prepare_enable.exit221_crit_edge ], [ %call1.i216, %if.then3.i219 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i220)
  %cmp116 = icmp slt i32 %retval.0.i220, 0
  br i1 %cmp116, label %if.then117, label %clk_prepare_enable.exit221.if.end119_crit_edge

clk_prepare_enable.exit221.if.end119_crit_edge:   ; preds = %clk_prepare_enable.exit221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then117:                                       ; preds = %clk_prepare_enable.exit221
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %62) #10
  tail call void @clk_unprepare(ptr noundef %62) #10
  br label %cleanup

if.end119:                                        ; preds = %clk_prepare_enable.exit221.if.end119_crit_edge, %if.end.i218.if.end119_crit_edge
  %clk_dp = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 12
  %63 = ptrtoint ptr %clk_dp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk_dp, align 8
  %call.i222 = tail call i32 @clk_prepare(ptr noundef %64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool.not.i223 = icmp eq i32 %call.i222, 0
  br i1 %tobool.not.i223, label %if.end.i226, label %if.end119.clk_prepare_enable.exit229_crit_edge

if.end119.clk_prepare_enable.exit229_crit_edge:   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit229

if.end.i226:                                      ; preds = %if.end119
  %call1.i224 = tail call i32 @clk_enable(ptr noundef %64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i224)
  %tobool2.not.i225 = icmp eq i32 %call1.i224, 0
  br i1 %tobool2.not.i225, label %if.end.i226.cleanup_crit_edge, label %if.then3.i227

if.end.i226.cleanup_crit_edge:                    ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i227:                                    ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %64) #10
  br label %clk_prepare_enable.exit229

clk_prepare_enable.exit229:                       ; preds = %if.then3.i227, %if.end119.clk_prepare_enable.exit229_crit_edge
  %retval.0.i228 = phi i32 [ %call.i222, %if.end119.clk_prepare_enable.exit229_crit_edge ], [ %call1.i224, %if.then3.i227 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i228)
  %cmp121 = icmp slt i32 %retval.0.i228, 0
  br i1 %cmp121, label %if.then122, label %clk_prepare_enable.exit229.cleanup_crit_edge

clk_prepare_enable.exit229.cleanup_crit_edge:     ; preds = %clk_prepare_enable.exit229
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then122:                                       ; preds = %clk_prepare_enable.exit229
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %clk_safe to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk_safe, align 4
  tail call void @clk_disable(ptr noundef %66) #10
  tail call void @clk_unprepare(ptr noundef %66) #10
  %67 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %68) #10
  tail call void @clk_unprepare(ptr noundef %68) #10
  br label %cleanup

rpm_put:                                          ; preds = %do.end107, %do.end95, %do.end86, %do.end77
  %err.0 = phi i32 [ %call72, %do.end77 ], [ %call81, %do.end86 ], [ %retval.0.i212, %do.end95 ], [ %call102, %do.end107 ]
  %69 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rst, align 4
  %tobool127.not = icmp eq ptr %70, null
  br i1 %tobool127.not, label %rpm_put.cleanup_crit_edge, label %if.then128

rpm_put.cleanup_crit_edge:                        ; preds = %rpm_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then128:                                       ; preds = %rpm_put
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  %call.i230 = tail call i32 @__pm_runtime_idle(ptr noundef %72, i32 noundef 5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %rpm_put.cleanup_crit_edge, %if.then122, %clk_prepare_enable.exit229.cleanup_crit_edge, %if.end.i226.cleanup_crit_edge, %if.then117, %do.end68, %do.end56, %do.end
  %retval.0 = phi i32 [ %call40, %do.end ], [ %call51, %do.end56 ], [ %call.i, %do.end68 ], [ %retval.0.i220, %if.then117 ], [ %retval.0.i228, %if.then122 ], [ 0, %clk_prepare_enable.exit229.cleanup_crit_edge ], [ %err.0, %if.then128 ], [ %err.0, %rpm_put.cleanup_crit_edge ], [ 0, %if.end.i226.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_exit(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 1
  tail call void @tegra_output_exit(ptr noundef %output) #10
  %aux = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 16
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @drm_dp_aux_detach(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.352, i32 noundef %call2) #13
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %clk_safe = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 9
  %4 = ptrtoint ptr %clk_safe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_safe, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %clk_dp = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 12
  %6 = ptrtoint ptr %clk_dp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_dp, align 8
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %clk = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 13
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_runtime_suspend(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rst = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 7
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @reset_control_assert(ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.354, i32 noundef %call3) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  tail call void @reset_control_release(ptr noundef %5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %clk = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 13
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_runtime_resume(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !771
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !772
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !773
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 13
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call.i53 = tail call i32 @clk_prepare(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9_crit_edge, label %if.then3.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %4) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i54 = phi i32 [ %call.i53, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i54)
  %cmp4 = icmp slt i32 %retval.0.i54, 0
  br i1 %cmp4, label %do.end8, label %clk_prepare_enable.exit.if.end9_crit_edge

clk_prepare_enable.exit.if.end9_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end8:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %retval.0.i54) #13
  br label %put_rpm

if.end9:                                          ; preds = %clk_prepare_enable.exit.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %rst = getelementptr inbounds %struct.tegra_sor, ptr %client, i32 0, i32 7
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rst, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then10

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end9
  %call12 = tail call i32 @reset_control_acquire(ptr noundef nonnull %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.360, i32 noundef %call12) #13
  br label %disable_clk

if.end18:                                         ; preds = %if.then10
  %7 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rst, align 4
  %call20 = tail call i32 @reset_control_deassert(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.363, i32 noundef %call20) #13
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst, align 4
  tail call void @reset_control_release(ptr noundef %10) #10
  br label %disable_clk

disable_clk:                                      ; preds = %do.end25, %do.end17
  %err.0 = phi i32 [ %call12, %do.end17 ], [ %call20, %do.end25 ]
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #10
  tail call void @clk_unprepare(ptr noundef %12) #10
  br label %put_rpm

put_rpm:                                          ; preds = %disable_clk, %do.end8
  %err.1 = phi i32 [ %retval.0.i54, %do.end8 ], [ %err.0, %disable_clk ]
  %call.i55 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %put_rpm, %if.end18.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.1, %put_rpm ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i53 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i53
  %add.ptr.i54 = getelementptr i8, ptr %encoder, i32 -276
  %dev.i.i = getelementptr i8, ptr %encoder, i32 1116
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %3, i32 noundef 269, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %regs.i.i = getelementptr i8, ptr %encoder, i32 1124
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !762
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %7, i32 noundef 285, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %9, i32 1140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #10, !srcloc !762
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %11, i32 noundef 286, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 1144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #10, !srcloc !762
  %scdc_enabled.i = getelementptr i8, ptr %encoder, i32 1496
  %14 = ptrtoint ptr %scdc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scdc_enabled.i, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i55 = icmp eq i8 %15, 0
  br i1 %tobool.not.i55, label %entry.tegra_sor_hdmi_scdc_stop.exit_crit_edge, label %if.then.i

entry.tegra_sor_hdmi_scdc_stop.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_scdc_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scdc.i = getelementptr i8, ptr %encoder, i32 1396
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scdc.i) #10
  %ddc1.i.i = getelementptr i8, ptr %encoder, i32 -20
  %16 = ptrtoint ptr %ddc1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddc1.i.i, align 8
  %call.i.i = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %17, i1 noundef zeroext false) #10
  %call2.i.i = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %17, i1 noundef zeroext false) #10
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 1272
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !759
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %23, i32 noundef 318, i32 noundef %21) #10
  %and1.i.i.i = and i32 %21, -4
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %25, i32 noundef 318, i32 noundef %and1.i.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i.i) #10
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %28, i32 1272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %26) #10, !srcloc !762
  br label %tegra_sor_hdmi_scdc_stop.exit

tegra_sor_hdmi_scdc_stop.exit:                    ; preds = %if.then.i, %entry.tegra_sor_hdmi_scdc_stop.exit_crit_edge
  %call3 = tail call fastcc i32 @tegra_sor_detach(ptr noundef %add.ptr.i54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %tegra_sor_hdmi_scdc_stop.exit.if.end_crit_edge

tegra_sor_hdmi_scdc_stop.exit.if.end_crit_edge:   ; preds = %tegra_sor_hdmi_scdc_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %tegra_sor_hdmi_scdc_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.118, i32 noundef %call3) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %tegra_sor_hdmi_scdc_stop.exit.if.end_crit_edge
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %32, i32 noundef 4, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 0) #10, !srcloc !762
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %36, i32 noundef 3, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i59 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59, i32 0) #10, !srcloc !762
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %40, i32 noundef 3, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i60 = getelementptr i8, ptr %42, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i60, i32 16777216) #10, !srcloc !762
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %44, i32 noundef 3, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i8.i61 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i61, i32 0) #10, !srcloc !762
  %regs.i62 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %47 = ptrtoint ptr %regs.i62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i62, align 8
  %add.ptr.i63 = getelementptr i8, ptr %48, i32 4104
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #10, !srcloc !759
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !774
  %dev.i64 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %51 = ptrtoint ptr %dev.i64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i64, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %52, i32 noundef 1026, i32 noundef %50) #10
  %soc = getelementptr i8, ptr %encoder, i32 1120
  %53 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %soc, align 4
  %has_nvdisplay = getelementptr inbounds %struct.tegra_sor_soc, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %has_nvdisplay to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %has_nvdisplay, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not = icmp eq i8 %56, 0
  %and = and i32 %50, -134217729
  %spec.select = select i1 %tobool.not, i32 %and, i32 %50
  %index = getelementptr i8, ptr %encoder, i32 1128
  %57 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp7 = icmp ugt i32 %58, 1
  %add = zext i1 %cmp7 to i32
  %cond = add i32 %58, 25
  %add10 = add i32 %cond, %add
  %shl = shl nuw i32 1, %add10
  %neg = xor i32 %shl, -1
  %and11 = and i32 %spec.select, %neg
  %59 = ptrtoint ptr %dev.i64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i64, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %60, i32 noundef 1026, i32 noundef %and11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  tail call void @arm_heavy_mb() #10
  %61 = tail call i32 @llvm.bswap.i32(i32 %and11) #10
  %62 = ptrtoint ptr %regs.i62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i62, align 8
  %add.ptr.i67 = getelementptr i8, ptr %63, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %61) #10, !srcloc !762
  tail call void @tegra_dc_commit(ptr noundef %spec.select.i) #10
  %call12 = tail call fastcc i32 @tegra_sor_power_down(ptr noundef %add.ptr.i54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.121, i32 noundef %call12) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.end.if.end19_crit_edge
  %pad = getelementptr i8, ptr %encoder, i32 1372
  %66 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pad, align 8
  %call20 = tail call i32 @tegra_io_pad_power_disable(i32 noundef %67) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.124, i32 noundef %call20) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.end19.if.end27_crit_edge
  %call28 = tail call i32 @host1x_client_suspend(ptr noundef %add.ptr.i54) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %buffer.i = alloca [17 x i8], align 1
  %frame.i = alloca %struct.hdmi_avi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i816 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i816
  %add.ptr.i817 = getelementptr i8, ptr %encoder, i32 -276
  %state3 = getelementptr i8, ptr %encoder, i32 1068
  %2 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state3, align 8
  %state6 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state6, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %7, 1000
  %call7 = tail call i32 @host1x_client_resume(ptr noundef %add.ptr.i817) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %encoder, i32 1116
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef %call7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_safe = getelementptr i8, ptr %encoder, i32 1144
  %10 = ptrtoint ptr %clk_safe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_safe, align 4
  %call8 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %add.ptr.i817, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr i8, ptr %encoder, i32 1116
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.126, i32 noundef %call8) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %clk = getelementptr i8, ptr %encoder, i32 1160
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call16 = tail call i32 @clk_get_rate(ptr noundef %15) #10
  %div17 = udiv i32 %call16, 1000000
  %pad = getelementptr i8, ptr %encoder, i32 1372
  %16 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pad, align 8
  %call19 = tail call i32 @tegra_io_pad_power_enable(i32 noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %dev25 = getelementptr i8, ptr %encoder, i32 1116
  %18 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.132, i32 noundef %call19) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %if.end15.if.end26_crit_edge
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #10
  %soc = getelementptr i8, ptr %encoder, i32 1120
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %regs = getelementptr inbounds %struct.tegra_sor_soc, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %pll2 = getelementptr inbounds %struct.tegra_sor_regs, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %pll2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pll2, align 4
  %regs.i = getelementptr i8, ptr %encoder, i32 1124
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %25, 2
  %add.ptr.i818 = getelementptr i8, ptr %27, i32 %shl.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i818) #10, !srcloc !759
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr i8, ptr %encoder, i32 1116
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %31, i32 noundef %25, i32 noundef %29) #10
  %and = and i32 %29, -4194305
  %32 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %soc, align 4
  %regs29 = getelementptr inbounds %struct.tegra_sor_soc, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs29, align 4
  %pll230 = getelementptr inbounds %struct.tegra_sor_regs, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %pll230 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pll230, align 4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %39, i32 noundef %37, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %40 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 8
  %shl.i821 = shl i32 %37, 2
  %add.ptr.i822 = getelementptr i8, ptr %42, i32 %shl.i821
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i822, i32 %40) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #10
  %43 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soc, align 4
  %regs32 = getelementptr inbounds %struct.tegra_sor_soc, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs32, align 4
  %pll3 = getelementptr inbounds %struct.tegra_sor_regs, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %pll3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pll3, align 4
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 8
  %shl.i824 = shl i32 %48, 2
  %add.ptr.i825 = getelementptr i8, ptr %50, i32 %shl.i824
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i825) #10, !srcloc !759
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %54, i32 noundef %48, i32 noundef %52) #10
  %and34 = and i32 %52, -8193
  %55 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soc, align 4
  %regs36 = getelementptr inbounds %struct.tegra_sor_soc, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %regs36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs36, align 4
  %pll337 = getelementptr inbounds %struct.tegra_sor_regs, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %pll337 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pll337, align 4
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %62, i32 noundef %60, i32 noundef %and34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %63 = tail call i32 @llvm.bswap.i32(i32 %and34) #10
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 8
  %shl.i829 = shl i32 %60, 2
  %add.ptr.i830 = getelementptr i8, ptr %65, i32 %shl.i829
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i830, i32 %63) #10, !srcloc !762
  %66 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %soc, align 4
  %regs39 = getelementptr inbounds %struct.tegra_sor_soc, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %regs39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs39, align 4
  %pll0 = getelementptr inbounds %struct.tegra_sor_regs, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %pll0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pll0, align 4
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 8
  %shl.i832 = shl i32 %71, 2
  %add.ptr.i833 = getelementptr i8, ptr %73, i32 %shl.i832
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i833) #10, !srcloc !759
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %77, i32 noundef %71, i32 noundef %75) #10
  %and42 = and i32 %75, -6
  %78 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %soc, align 4
  %regs44 = getelementptr inbounds %struct.tegra_sor_soc, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %regs44 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs44, align 4
  %pll045 = getelementptr inbounds %struct.tegra_sor_regs, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %pll045 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pll045, align 4
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %85, i32 noundef %83, i32 noundef %and42) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %86 = tail call i32 @llvm.bswap.i32(i32 %and42) #10
  %87 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i, align 8
  %shl.i837 = shl i32 %83, 2
  %add.ptr.i838 = getelementptr i8, ptr %88, i32 %shl.i837
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i838, i32 %86) #10, !srcloc !762
  %89 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %soc, align 4
  %regs47 = getelementptr inbounds %struct.tegra_sor_soc, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %regs47 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs47, align 4
  %pll248 = getelementptr inbounds %struct.tegra_sor_regs, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %pll248 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pll248, align 4
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 8
  %shl.i840 = shl i32 %94, 2
  %add.ptr.i841 = getelementptr i8, ptr %96, i32 %shl.i840
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i841) #10, !srcloc !759
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %100, i32 noundef %94, i32 noundef %98) #10
  %and50 = and i32 %98, -16777217
  %101 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %soc, align 4
  %regs52 = getelementptr inbounds %struct.tegra_sor_soc, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %regs52 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs52, align 4
  %pll253 = getelementptr inbounds %struct.tegra_sor_regs, ptr %104, i32 0, i32 8
  %105 = ptrtoint ptr %pll253 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pll253, align 4
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %108, i32 noundef %106, i32 noundef %and50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %109 = tail call i32 @llvm.bswap.i32(i32 %and50) #10
  %110 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i, align 8
  %shl.i845 = shl i32 %106, 2
  %add.ptr.i846 = getelementptr i8, ptr %111, i32 %shl.i845
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i846, i32 %109) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #10
  %112 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %soc, align 4
  %regs55 = getelementptr inbounds %struct.tegra_sor_soc, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %regs55 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs55, align 4
  %pll256 = getelementptr inbounds %struct.tegra_sor_regs, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %pll256 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pll256, align 4
  %118 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i, align 8
  %shl.i848 = shl i32 %117, 2
  %add.ptr.i849 = getelementptr i8, ptr %119, i32 %shl.i848
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i849) #10, !srcloc !759
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %122 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %123, i32 noundef %117, i32 noundef %121) #10
  %and59 = and i32 %121, -8650753
  %124 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %soc, align 4
  %regs61 = getelementptr inbounds %struct.tegra_sor_soc, ptr %125, i32 0, i32 5
  %126 = ptrtoint ptr %regs61 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs61, align 4
  %pll262 = getelementptr inbounds %struct.tegra_sor_regs, ptr %127, i32 0, i32 8
  %128 = ptrtoint ptr %pll262 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pll262, align 4
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %131, i32 noundef %129, i32 noundef %and59) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %132 = tail call i32 @llvm.bswap.i32(i32 %and59) #10
  %133 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i, align 8
  %shl.i853 = shl i32 %129, 2
  %add.ptr.i854 = getelementptr i8, ptr %134, i32 %shl.i853
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i854, i32 %132) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #10
  %135 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %soc, align 4
  %regs64 = getelementptr inbounds %struct.tegra_sor_soc, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %regs64 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs64, align 4
  %dp_padctl0 = getelementptr inbounds %struct.tegra_sor_regs, ptr %138, i32 0, i32 10
  %139 = ptrtoint ptr %dp_padctl0 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dp_padctl0, align 4
  %141 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i, align 8
  %shl.i856 = shl i32 %140, 2
  %add.ptr.i857 = getelementptr i8, ptr %142, i32 %shl.i856
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i857) #10, !srcloc !759
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %145 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %146, i32 noundef %140, i32 noundef %144) #10
  %or = or i32 %144, 15
  %147 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %soc, align 4
  %regs67 = getelementptr inbounds %struct.tegra_sor_soc, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %regs67 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs67, align 4
  %dp_padctl068 = getelementptr inbounds %struct.tegra_sor_regs, ptr %150, i32 0, i32 10
  %151 = ptrtoint ptr %dp_padctl068 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dp_padctl068, align 4
  %153 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %154, i32 noundef %152, i32 noundef %or) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %155 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %156 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i, align 8
  %shl.i861 = shl i32 %152, 2
  %add.ptr.i862 = getelementptr i8, ptr %157, i32 %shl.i861
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i862, i32 %155) #10, !srcloc !762
  %158 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8641077 = getelementptr i8, ptr %159, i32 132
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8641077) #10, !srcloc !759
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %162 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %163, i32 noundef 33, i32 noundef %161) #10
  %and701078 = and i32 %161, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and701078)
  %cmp711079 = icmp eq i32 %and701078, 0
  br i1 %cmp711079, label %if.end26.while.end_crit_edge, label %if.end26.if.end73_crit_edge

if.end26.if.end73_crit_edge:                      ; preds = %if.end26
  br label %if.end73

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end73:                                         ; preds = %if.end73.if.end73_crit_edge, %if.end26.if.end73_crit_edge
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #10
  %164 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i, align 8
  %add.ptr.i864 = getelementptr i8, ptr %165, i32 132
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i864) #10, !srcloc !759
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %168 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %169, i32 noundef 33, i32 noundef %167) #10
  %and70 = and i32 %167, 268435456
  %cmp71 = icmp eq i32 %and70, 0
  br i1 %cmp71, label %if.end73.while.end_crit_edge, label %if.end73.if.end73_crit_edge

if.end73.if.end73_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end73.while.end_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end73.while.end_crit_edge, %if.end26.while.end_crit_edge
  %170 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %171, i32 noundef 33, i32 noundef -2146414592) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %172 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i, align 8
  %add.ptr.i868 = getelementptr i8, ptr %173, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i868, i32 5247104) #10, !srcloc !762
  %174 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8701080 = getelementptr i8, ptr %175, i32 132
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8701080) #10, !srcloc !759
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %178 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %179, i32 noundef 33, i32 noundef %177) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %177)
  %cmp781081 = icmp sgt i32 %177, -1
  br i1 %cmp781081, label %while.end.while.end81_crit_edge, label %while.end.if.end80_crit_edge

while.end.if.end80_crit_edge:                     ; preds = %while.end
  br label %if.end80

while.end.while.end81_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end81

if.end80:                                         ; preds = %if.end80.if.end80_crit_edge, %while.end.if.end80_crit_edge
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #10
  %180 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i, align 8
  %add.ptr.i870 = getelementptr i8, ptr %181, i32 132
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i870) #10, !srcloc !759
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %184 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %185, i32 noundef 33, i32 noundef %183) #10
  %cmp78 = icmp sgt i32 %183, -1
  br i1 %cmp78, label %if.end80.while.end81_crit_edge, label %if.end80.if.end80_crit_edge

if.end80.if.end80_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.end80.while.end81_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end81

while.end81:                                      ; preds = %if.end80.while.end81_crit_edge, %while.end.while.end81_crit_edge
  %186 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i, align 8
  %add.ptr.i873 = getelementptr i8, ptr %187, i32 76
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i873) #10, !srcloc !759
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %190 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %191, i32 noundef 19, i32 noundef %189) #10
  %and84 = and i32 %189, -128
  %192 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %193)
  %cmp86 = icmp slt i32 %193, 340000
  %.str.134..str.135 = select i1 %cmp86, ptr @.str.134, ptr @.str.135
  %. = select i1 %cmp86, i32 40, i32 80
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.134..str.135) #10
  %or89 = or i32 %and84, %.
  %194 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %195, i32 noundef 19, i32 noundef %or89) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %196 = tail call i32 @llvm.bswap.i32(i32 %or89) #10
  %197 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i, align 8
  %add.ptr.i877 = getelementptr i8, ptr %198, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i877, i32 %196) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #10
  %199 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i, align 8
  %add.ptr.i879 = getelementptr i8, ptr %200, i32 304
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i879) #10, !srcloc !759
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %203 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %204, i32 noundef 76, i32 noundef %202) #10
  %and93 = and i32 %202, -2031617
  %or94 = or i32 %and93, 983040
  %205 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %206, i32 noundef 76, i32 noundef %or94) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %207 = tail call i32 @llvm.bswap.i32(i32 %or94) #10
  %208 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i, align 8
  %add.ptr.i883 = getelementptr i8, ptr %209, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i883, i32 %207) #10, !srcloc !762
  %210 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i, align 8
  %add.ptr.i885 = getelementptr i8, ptr %211, i32 384
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i885) #10, !srcloc !759
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %214 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %215, i32 noundef 96, i32 noundef %213) #10
  %and99 = and i32 %213, -16
  %216 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %217, i32 noundef 96, i32 noundef %and99) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %218 = tail call i32 @llvm.bswap.i32(i32 %and99) #10
  %219 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i, align 8
  %add.ptr.i889 = getelementptr i8, ptr %220, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i889, i32 %218) #10, !srcloc !762
  %221 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %222, i32 noundef 32, i32 noundef 34816) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %223 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regs.i, align 8
  %add.ptr.i892 = getelementptr i8, ptr %224, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i892, i32 8912896) #10, !srcloc !762
  %225 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %226, i32 noundef 34, i32 noundef 8429569) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %227 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs.i, align 8
  %add.ptr.i895 = getelementptr i8, ptr %228, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i895, i32 27295744) #10, !srcloc !762
  %229 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %230, i32 noundef 42, i32 noundef 8429569) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %231 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i, align 8
  %add.ptr.i898 = getelementptr i8, ptr %232, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i898, i32 27295744) #10, !srcloc !762
  %233 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %soc, align 4
  %has_nvdisplay = getelementptr inbounds %struct.tegra_sor_soc, ptr %234, i32 0, i32 6
  %235 = ptrtoint ptr %has_nvdisplay to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %has_nvdisplay, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool.not = icmp eq i8 %236, 0
  br i1 %tobool.not, label %if.then101, label %while.end81.if.end106_crit_edge

while.end81.if.end106_crit_edge:                  ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then101:                                       ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #12
  %and102 = shl nuw nsw i32 %div17, 8
  %shl = and i32 %and102, 65280
  %237 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %238, i32 noundef 230, i32 noundef %shl) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %239 = shl nuw nsw i32 %shl, 8
  %240 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs.i, align 8
  %add.ptr.i901 = getelementptr i8, ptr %241, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i901, i32 %239) #10, !srcloc !762
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %while.end81.if.end106_crit_edge
  %arrayidx = getelementptr i8, ptr %encoder, i32 1164
  %242 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx, align 1
  %244 = shl i8 %243, 2
  %245 = and i8 %244, 28
  %arrayidx.1 = getelementptr i8, ptr %encoder, i32 1165
  %246 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx.1, align 1
  %248 = shl i8 %247, 5
  %or116.11086 = or i8 %245, %248
  %or116.1 = zext i8 %or116.11086 to i32
  %arrayidx.2 = getelementptr i8, ptr %encoder, i32 1166
  %249 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx.2, align 1
  %251 = and i8 %250, 7
  %and108.2 = zext i8 %251 to i32
  %shl110.2 = shl nuw nsw i32 %and108.2, 8
  %or116.2 = or i32 %shl110.2, %or116.1
  %arrayidx.3 = getelementptr i8, ptr %encoder, i32 1167
  %252 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx.3, align 1
  %254 = and i8 %253, 7
  %and108.3 = zext i8 %254 to i32
  %shl110.3 = shl nuw nsw i32 %and108.3, 11
  %or116.3 = or i32 %or116.2, %shl110.3
  %arrayidx.4 = getelementptr i8, ptr %encoder, i32 1168
  %255 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx.4, align 1
  %257 = and i8 %256, 7
  %and108.4 = zext i8 %257 to i32
  %shl110.4 = shl nuw nsw i32 %and108.4, 14
  %or116.4 = or i32 %or116.3, %shl110.4
  %or117.4 = or i32 %or116.4, -1928331264
  %258 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %259, i32 noundef 75, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %260 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs.i, align 8
  %add.ptr.i904 = getelementptr i8, ptr %261, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i904, i32 0) #10, !srcloc !762
  %262 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %263, i32 noundef 74, i32 noundef %or117.4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %264 = tail call i32 @llvm.bswap.i32(i32 %or117.4) #10
  %265 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs.i, align 8
  %add.ptr.i907 = getelementptr i8, ptr %266, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i907, i32 %264) #10, !srcloc !762
  %clk_pad = getelementptr i8, ptr %encoder, i32 1152
  %267 = ptrtoint ptr %clk_pad to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %clk_pad, align 4
  %call118 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %add.ptr.i817, ptr noundef %268)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %do.end124, label %if.end126

do.end124:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %269 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %270, ptr noundef nonnull @.str.137, i32 noundef %call118) #13
  br label %cleanup

if.end126:                                        ; preds = %if.end106
  %271 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %clk, align 4
  %clk_parent = getelementptr i8, ptr %encoder, i32 1140
  %273 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %clk_parent, align 8
  %call128 = tail call i32 @clk_set_parent(ptr noundef %272, ptr noundef %274) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %do.end134, label %if.end136

do.end134:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  %275 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.140, i32 noundef %call128) #13
  br label %cleanup

if.end136:                                        ; preds = %if.end126
  %277 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %clk_parent, align 8
  %call138 = tail call i32 @clk_get_rate(ptr noundef %278) #10
  %279 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 339999, i32 %280)
  %cmp140 = icmp sgt i32 %280, 339999
  %div143813 = zext i1 %cmp140 to i32
  %spec.select = lshr i32 %call138, %div143813
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.142, i32 noundef %spec.select, i32 noundef %mul) #10
  %281 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %clk, align 4
  %call146 = tail call i32 @clk_set_rate(ptr noundef %282, i32 noundef %spec.select) #10
  %283 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %soc, align 4
  %has_nvdisplay148 = getelementptr inbounds %struct.tegra_sor_soc, ptr %284, i32 0, i32 6
  %285 = ptrtoint ptr %has_nvdisplay148 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %has_nvdisplay148, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool149.not = icmp eq i8 %286, 0
  br i1 %tobool149.not, label %if.then150, label %if.end136.if.end159_crit_edge

if.end136.if.end159_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then150:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  %pipe = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 5
  %287 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %pipe, align 4
  %and151 = and i32 %288, 1
  %289 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000, i32 %290)
  %cmp154 = icmp slt i32 %290, 75000
  %or157 = or i32 %and151, 2
  %spec.select814 = select i1 %cmp154, i32 %or157, i32 %and151
  %291 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %292, i32 noundef 232, i32 noundef %spec.select814) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %293 = shl nuw nsw i32 %spec.select814, 24
  %294 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs.i, align 8
  %add.ptr.i910 = getelementptr i8, ptr %295, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i910, i32 %293) #10, !srcloc !762
  br label %if.end159

if.end159:                                        ; preds = %if.then150, %if.end136.if.end159_crit_edge
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 4
  %296 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %htotal, align 2
  %conv160 = zext i16 %297 to i32
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %298 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %hdisplay, align 4
  %conv161 = zext i16 %299 to i32
  %sub = add nsw i32 %conv160, -74
  %sub163 = sub nsw i32 %sub, %conv161
  %div164 = sdiv i32 %sub163, 32
  %and165 = shl nsw i32 %div164, 16
  %shl166 = and i32 %and165, 2031616
  %or169 = or i32 %shl166, 1073742904
  %300 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %301, i32 noundef 192, i32 noundef %or169) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %302 = tail call i32 @llvm.bswap.i32(i32 %or169) #10
  %303 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %regs.i, align 8
  %add.ptr.i913 = getelementptr i8, ptr %304, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i913, i32 %302) #10, !srcloc !762
  %soc170 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 14
  %305 = ptrtoint ptr %soc170 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %soc170, align 8
  %has_nvdisplay171 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %306, i32 0, i32 9
  %307 = ptrtoint ptr %has_nvdisplay171 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %has_nvdisplay171, align 2, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool172.not = icmp eq i8 %308, 0
  br i1 %tobool172.not, label %if.then173, label %if.end159.if.end192_crit_edge

if.end159.if.end192_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

if.then173:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 3
  %309 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %hsync_end, align 4
  %conv174 = zext i16 %310 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 2
  %311 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %hsync_start, align 2
  %conv175 = zext i16 %312 to i32
  %313 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %htotal, align 2
  %conv178 = zext i16 %314 to i32
  %sub181 = sub nsw i32 %conv178, %conv174
  %sub176 = add nuw nsw i32 %conv174, 1
  %add = sub nsw i32 %sub176, %conv175
  %add182 = add nsw i32 %add, %sub181
  %sub183 = add nsw i32 %add182, 4086
  %dev.i914 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %315 = ptrtoint ptr %dev.i914 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev.i914, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %316, i32 noundef 1045, i32 noundef 384) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  tail call void @arm_heavy_mb() #10
  %regs.i915 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %317 = ptrtoint ptr %regs.i915 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i915, align 8
  %add.ptr.i916 = getelementptr i8, ptr %318, i32 4180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i916, i32 -2147418112) #10, !srcloc !762
  %add184 = shl i32 %add182, 16
  %and185 = add i32 %add184, 268304384
  %shl186 = and i32 %and185, 268369920
  %and187 = and i32 %sub183, 4095
  %or189 = or i32 %shl186, %and187
  %319 = ptrtoint ptr %dev.i914 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev.i914, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %320, i32 noundef 1046, i32 noundef %or189) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  tail call void @arm_heavy_mb() #10
  %321 = tail call i32 @llvm.bswap.i32(i32 %or189) #10
  %322 = ptrtoint ptr %regs.i915 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %regs.i915, align 8
  %add.ptr.i919 = getelementptr i8, ptr %323, i32 4184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i919, i32 %321) #10, !srcloc !762
  %324 = ptrtoint ptr %regs.i915 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %regs.i915, align 8
  %add.ptr.i921 = getelementptr i8, ptr %325, i32 4096
  %326 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i921) #10, !srcloc !759
  %327 = tail call i32 @llvm.bswap.i32(i32 %326) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !774
  %328 = ptrtoint ptr %dev.i914 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev.i914, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %329, i32 noundef 1024, i32 noundef %327) #10
  %or191 = or i32 %327, 4096
  %330 = ptrtoint ptr %dev.i914 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %dev.i914, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %331, i32 noundef 1024, i32 noundef %or191) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  tail call void @arm_heavy_mb() #10
  %332 = tail call i32 @llvm.bswap.i32(i32 %or191) #10
  %333 = ptrtoint ptr %regs.i915 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %regs.i915, align 8
  %add.ptr.i925 = getelementptr i8, ptr %334, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i925, i32 %332) #10, !srcloc !762
  br label %if.end192

if.end192:                                        ; preds = %if.then173, %if.end159.if.end192_crit_edge
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i) #10
  %335 = call ptr @memset(ptr %buffer.i, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #10
  %336 = call ptr @memset(ptr %frame.i, i32 255, i32 68)
  %337 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %338, i32 636
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !759
  %340 = tail call i32 @llvm.bswap.i32(i32 %339) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %341 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %342, i32 noundef 159, i32 noundef %340) #10
  %and2.i = and i32 %340, -274
  %343 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %344, i32 noundef 159, i32 noundef %and2.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %345 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #10
  %346 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %regs.i, align 8
  %add.ptr.i39.i = getelementptr i8, ptr %347, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %345) #10, !srcloc !762
  %connector.i = getelementptr i8, ptr %encoder, i32 76
  %call3.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i, ptr noundef %connector.i, ptr noundef %adjusted_mode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  %348 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %349, ptr noundef nonnull @.str.144, i32 noundef %call3.i) #13
  br label %do.end199

if.end.i:                                         ; preds = %if.end192
  %call4.i = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame.i, ptr noundef nonnull %buffer.i, i32 noundef 17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %tegra_sor_hdmi_setup_avi_infoframe.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %350 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %351, ptr noundef nonnull @.str.161, i32 noundef %call4.i) #13
  br label %do.end199

tegra_sor_hdmi_setup_avi_infoframe.exit:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @tegra_sor_hdmi_write_infopack(ptr noundef %add.ptr.i817, ptr noundef nonnull %buffer.i, i32 noundef %call4.i) #10
  %352 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %regs.i, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %353, i32 636
  %354 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #10, !srcloc !759
  %355 = call i32 @llvm.bswap.i32(i32 %354) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %356 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %357, i32 noundef 159, i32 noundef %355) #10
  %or14.i = or i32 %355, 513
  %358 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %359, i32 noundef 159, i32 noundef %or14.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %360 = call i32 @llvm.bswap.i32(i32 %or14.i) #10
  %361 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %regs.i, align 8
  %add.ptr.i45.i = getelementptr i8, ptr %362, i32 636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %360) #10, !srcloc !762
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #10
  br label %if.end201

do.end199:                                        ; preds = %do.end9.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call4.i, %do.end9.i ], [ %call3.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #10
  %363 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %364, ptr noundef nonnull @.str.144, i32 noundef %retval.0.i.ph) #13
  br label %if.end201

if.end201:                                        ; preds = %do.end199, %tegra_sor_hdmi_setup_avi_infoframe.exit
  %365 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i927 = getelementptr i8, ptr %366, i32 616
  %367 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i927) #10, !srcloc !759
  %368 = call i32 @llvm.bswap.i32(i32 %367) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %369 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %370, i32 noundef 154, i32 noundef %368) #10
  %and.i = and i32 %368, -2
  %371 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %372, i32 noundef 154, i32 noundef %and.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %373 = call i32 @llvm.bswap.i32(i32 %and.i) #10
  %374 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %375, i32 616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %373) #10, !srcloc !762
  %376 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %regs.i, align 8
  %add.ptr.i930 = getelementptr i8, ptr %377, i32 16
  %378 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i930) #10, !srcloc !759
  %379 = call i32 @llvm.bswap.i32(i32 %378) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %380 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %381, i32 noundef 4, i32 noundef %379) #10
  %and203 = and i32 %379, -3841
  %or204 = or i32 %and203, 256
  %382 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %383, i32 noundef 4, i32 noundef %or204) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %384 = call i32 @llvm.bswap.i32(i32 %or204) #10
  %385 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %regs.i, align 8
  %add.ptr.i934 = getelementptr i8, ptr %386, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i934, i32 %384) #10, !srcloc !762
  %387 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %soc, align 4
  %regs206 = getelementptr inbounds %struct.tegra_sor_soc, ptr %388, i32 0, i32 5
  %389 = ptrtoint ptr %regs206 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %regs206, align 4
  %dp_padctl0207 = getelementptr inbounds %struct.tegra_sor_regs, ptr %390, i32 0, i32 10
  %391 = ptrtoint ptr %dp_padctl0207 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %dp_padctl0207, align 4
  %393 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %regs.i, align 8
  %shl.i936 = shl i32 %392, 2
  %add.ptr.i937 = getelementptr i8, ptr %394, i32 %shl.i936
  %395 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i937) #10, !srcloc !759
  %396 = call i32 @llvm.bswap.i32(i32 %395) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %397 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %398, i32 noundef %392, i32 noundef %396) #10
  %and209 = and i32 %396, -8388609
  %399 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %soc, align 4
  %regs211 = getelementptr inbounds %struct.tegra_sor_soc, ptr %400, i32 0, i32 5
  %401 = ptrtoint ptr %regs211 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %regs211, align 4
  %dp_padctl0212 = getelementptr inbounds %struct.tegra_sor_regs, ptr %402, i32 0, i32 10
  %403 = ptrtoint ptr %dp_padctl0212 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %dp_padctl0212, align 4
  %405 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %406, i32 noundef %404, i32 noundef %and209) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %407 = call i32 @llvm.bswap.i32(i32 %and209) #10
  %408 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %regs.i, align 8
  %shl.i941 = shl i32 %404, 2
  %add.ptr.i942 = getelementptr i8, ptr %409, i32 %shl.i941
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i942, i32 %407) #10, !srcloc !762
  %410 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %adjusted_mode, align 4
  %mul214 = mul i32 %411, 1000
  %num_settings.i = getelementptr i8, ptr %encoder, i32 1380
  %412 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %num_settings.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %cmp10.not.i = icmp eq i32 %413, 0
  br i1 %cmp10.not.i, label %if.end201.do.end220_crit_edge, label %for.body.lr.ph.i

if.end201.do.end220_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end220

for.body.lr.ph.i:                                 ; preds = %if.end201
  %settings.i = getelementptr i8, ptr %encoder, i32 1376
  %414 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %settings.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %413
  br i1 %exitcond.not.i, label %for.cond.i.do.end220_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end220_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end220

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i
  %416 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %417, i32 %mul214)
  %cmp2.not.i = icmp ult i32 %417, %mul214
  br i1 %cmp2.not.i, label %for.cond.i, label %tegra_sor_hdmi_find_settings.exit

tegra_sor_hdmi_find_settings.exit:                ; preds = %for.body.i
  %tobool216.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool216.not, label %tegra_sor_hdmi_find_settings.exit.do.end220_crit_edge, label %if.end224

tegra_sor_hdmi_find_settings.exit.do.end220_crit_edge: ; preds = %tegra_sor_hdmi_find_settings.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end220

do.end220:                                        ; preds = %tegra_sor_hdmi_find_settings.exit.do.end220_crit_edge, %for.cond.i.do.end220_crit_edge, %if.end201.do.end220_crit_edge
  %418 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %419, ptr noundef nonnull @.str.147, i32 noundef %mul214) #13
  br label %cleanup

if.end224:                                        ; preds = %tegra_sor_hdmi_find_settings.exit
  %420 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %soc, align 4
  %regs226 = getelementptr inbounds %struct.tegra_sor_soc, ptr %421, i32 0, i32 5
  %422 = ptrtoint ptr %regs226 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %regs226, align 4
  %pll0227 = getelementptr inbounds %struct.tegra_sor_regs, ptr %423, i32 0, i32 6
  %424 = ptrtoint ptr %pll0227 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %pll0227, align 4
  %426 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %regs.i, align 8
  %shl.i945 = shl i32 %425, 2
  %add.ptr.i946 = getelementptr i8, ptr %427, i32 %shl.i945
  %428 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i946) #10, !srcloc !759
  %429 = call i32 @llvm.bswap.i32(i32 %428) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %430 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %431, i32 noundef %425, i32 noundef %429) #10
  %and231 = and i32 %429, -252645121
  %ichpmp = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 3
  %432 = ptrtoint ptr %ichpmp to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %ichpmp, align 2
  %434 = and i8 %433, 15
  %and233 = zext i8 %434 to i32
  %shl234 = shl nuw nsw i32 %and233, 24
  %or235 = or i32 %shl234, %and231
  %filter = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 2
  %435 = ptrtoint ptr %filter to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %filter, align 1
  %437 = and i8 %436, 15
  %and237 = zext i8 %437 to i32
  %shl238 = shl nuw nsw i32 %and237, 16
  %or239 = or i32 %or235, %shl238
  %vcocap = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 1
  %438 = ptrtoint ptr %vcocap to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %vcocap, align 4
  %440 = and i8 %439, 15
  %and241 = zext i8 %440 to i32
  %shl242 = shl nuw nsw i32 %and241, 8
  %or243 = or i32 %or239, %shl242
  %441 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %soc, align 4
  %regs245 = getelementptr inbounds %struct.tegra_sor_soc, ptr %442, i32 0, i32 5
  %443 = ptrtoint ptr %regs245 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %regs245, align 4
  %pll0246 = getelementptr inbounds %struct.tegra_sor_regs, ptr %444, i32 0, i32 6
  %445 = ptrtoint ptr %pll0246 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %pll0246, align 4
  %447 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %448, i32 noundef %446, i32 noundef %or243) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %449 = call i32 @llvm.bswap.i32(i32 %or243) #10
  %450 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %regs.i, align 8
  %shl.i950 = shl i32 %446, 2
  %add.ptr.i951 = getelementptr i8, ptr %451, i32 %shl.i950
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i951, i32 %449) #10, !srcloc !762
  %452 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %soc, align 4
  %regs248 = getelementptr inbounds %struct.tegra_sor_soc, ptr %453, i32 0, i32 5
  %454 = ptrtoint ptr %regs248 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %regs248, align 4
  %pll1 = getelementptr inbounds %struct.tegra_sor_regs, ptr %455, i32 0, i32 7
  %456 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %pll1, align 4
  %458 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %regs.i, align 8
  %shl.i953 = shl i32 %457, 2
  %add.ptr.i954 = getelementptr i8, ptr %459, i32 %shl.i953
  %460 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i954) #10, !srcloc !759
  %461 = call i32 @llvm.bswap.i32(i32 %460) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %462 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %463, i32 noundef %457, i32 noundef %461) #10
  %and251 = and i32 %461, -15736577
  %loadadj = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 4
  %464 = ptrtoint ptr %loadadj to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %loadadj, align 1
  %466 = and i8 %465, 15
  %and253 = zext i8 %466 to i32
  %shl254 = shl nuw nsw i32 %and253, 20
  %or255 = or i32 %shl254, %and251
  %tmds_termadj = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 5
  %467 = ptrtoint ptr %tmds_termadj to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %tmds_termadj, align 4
  %469 = and i8 %468, 15
  %and257 = zext i8 %469 to i32
  %shl258 = shl nuw nsw i32 %and257, 9
  %or259 = or i32 %or255, %shl258
  %or260 = or i32 %or259, 256
  %470 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %soc, align 4
  %regs262 = getelementptr inbounds %struct.tegra_sor_soc, ptr %471, i32 0, i32 5
  %472 = ptrtoint ptr %regs262 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %regs262, align 4
  %pll1263 = getelementptr inbounds %struct.tegra_sor_regs, ptr %473, i32 0, i32 7
  %474 = ptrtoint ptr %pll1263 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %pll1263, align 4
  %476 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %477, i32 noundef %475, i32 noundef %or260) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %478 = call i32 @llvm.bswap.i32(i32 %or260) #10
  %479 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %regs.i, align 8
  %shl.i958 = shl i32 %475, 2
  %add.ptr.i959 = getelementptr i8, ptr %480, i32 %shl.i958
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i959, i32 %478) #10, !srcloc !762
  %481 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %soc, align 4
  %regs265 = getelementptr inbounds %struct.tegra_sor_soc, ptr %482, i32 0, i32 5
  %483 = ptrtoint ptr %regs265 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %regs265, align 4
  %pll3266 = getelementptr inbounds %struct.tegra_sor_regs, ptr %484, i32 0, i32 9
  %485 = ptrtoint ptr %pll3266 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %pll3266, align 4
  %487 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %regs.i, align 8
  %shl.i961 = shl i32 %486, 2
  %add.ptr.i962 = getelementptr i8, ptr %488, i32 %shl.i961
  %489 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i962) #10, !srcloc !759
  %490 = call i32 @llvm.bswap.i32(i32 %489) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %491 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %492, i32 noundef %486, i32 noundef %490) #10
  %and271 = and i32 %490, 16773135
  %bg_temp_coef = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 7
  %493 = ptrtoint ptr %bg_temp_coef to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %bg_temp_coef, align 2
  %and273 = zext i8 %494 to i32
  %shl274 = shl i32 %and273, 28
  %or275 = or i32 %shl274, %and271
  %bg_vref_level = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 8
  %495 = ptrtoint ptr %bg_vref_level to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %bg_vref_level, align 1
  %497 = and i8 %496, 15
  %and277 = zext i8 %497 to i32
  %shl278 = shl nuw nsw i32 %and277, 24
  %or279 = or i32 %shl278, %or275
  %avdd10_level = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 9
  %498 = ptrtoint ptr %avdd10_level to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %avdd10_level, align 4
  %500 = and i8 %499, 15
  %and281 = zext i8 %500 to i32
  %shl282 = shl nuw nsw i32 %and281, 8
  %or283 = or i32 %or279, %shl282
  %avdd14_level = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 10
  %501 = ptrtoint ptr %avdd14_level to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %avdd14_level, align 1
  %503 = shl i8 %502, 4
  %shl286 = zext i8 %503 to i32
  %or287 = or i32 %or283, %shl286
  %504 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %soc, align 4
  %regs289 = getelementptr inbounds %struct.tegra_sor_soc, ptr %505, i32 0, i32 5
  %506 = ptrtoint ptr %regs289 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %regs289, align 4
  %pll3290 = getelementptr inbounds %struct.tegra_sor_regs, ptr %507, i32 0, i32 9
  %508 = ptrtoint ptr %pll3290 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %pll3290, align 4
  %510 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %511, i32 noundef %509, i32 noundef %or287) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %512 = call i32 @llvm.bswap.i32(i32 %or287) #10
  %513 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %regs.i, align 8
  %shl.i966 = shl i32 %509, 2
  %add.ptr.i967 = getelementptr i8, ptr %514, i32 %shl.i966
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i967, i32 %512) #10, !srcloc !762
  %drive_current = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 12
  %arrayidx291 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 12, i32 3
  %515 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %arrayidx291, align 1
  %conv292 = zext i8 %516 to i32
  %shl293 = shl nuw i32 %conv292, 24
  %arrayidx295 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 12, i32 2
  %517 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx295, align 1
  %conv296 = zext i8 %518 to i32
  %shl297 = shl nuw nsw i32 %conv296, 16
  %or298 = or i32 %shl297, %shl293
  %arrayidx300 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 12, i32 1
  %519 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %arrayidx300, align 1
  %conv301 = zext i8 %520 to i32
  %shl302 = shl nuw nsw i32 %conv301, 8
  %or303 = or i32 %or298, %shl302
  %521 = ptrtoint ptr %drive_current to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %drive_current, align 1
  %conv306 = zext i8 %522 to i32
  %or308 = or i32 %or303, %conv306
  %523 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %524, i32 noundef 78, i32 noundef %or308) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %525 = call i32 @llvm.bswap.i32(i32 %or308) #10
  %526 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %regs.i, align 8
  %add.ptr.i970 = getelementptr i8, ptr %527, i32 312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i970, i32 %525) #10, !srcloc !762
  %preemphasis = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 13
  %arrayidx309 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 13, i32 3
  %528 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %arrayidx309, align 1
  %conv310 = zext i8 %529 to i32
  %shl311 = shl nuw i32 %conv310, 24
  %arrayidx313 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 13, i32 2
  %530 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %arrayidx313, align 1
  %conv314 = zext i8 %531 to i32
  %shl315 = shl nuw nsw i32 %conv314, 16
  %or316 = or i32 %shl315, %shl311
  %arrayidx318 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 13, i32 1
  %532 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx318, align 1
  %conv319 = zext i8 %533 to i32
  %shl320 = shl nuw nsw i32 %conv319, 8
  %or321 = or i32 %or316, %shl320
  %534 = ptrtoint ptr %preemphasis to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %preemphasis, align 1
  %conv324 = zext i8 %535 to i32
  %or326 = or i32 %or321, %conv324
  %536 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %537, i32 noundef 82, i32 noundef %or326) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %538 = call i32 @llvm.bswap.i32(i32 %or326) #10
  %539 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %regs.i, align 8
  %add.ptr.i973 = getelementptr i8, ptr %540, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i973, i32 %538) #10, !srcloc !762
  %541 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %soc, align 4
  %regs328 = getelementptr inbounds %struct.tegra_sor_soc, ptr %542, i32 0, i32 5
  %543 = ptrtoint ptr %regs328 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %regs328, align 4
  %dp_padctl0329 = getelementptr inbounds %struct.tegra_sor_regs, ptr %544, i32 0, i32 10
  %545 = ptrtoint ptr %dp_padctl0329 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %dp_padctl0329, align 4
  %547 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %regs.i, align 8
  %shl.i975 = shl i32 %546, 2
  %add.ptr.i976 = getelementptr i8, ptr %548, i32 %shl.i975
  %549 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i976) #10, !srcloc !759
  %550 = call i32 @llvm.bswap.i32(i32 %549) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %551 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %552, i32 noundef %546, i32 noundef %550) #10
  %and331 = and i32 %550, -4259585
  %tx_pu_value = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 6
  %553 = ptrtoint ptr %tx_pu_value to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %tx_pu_value, align 1
  %conv333 = zext i8 %554 to i32
  %shl335 = shl nuw nsw i32 %conv333, 8
  %or332 = or i32 %shl335, %and331
  %or336 = or i32 %or332, 4194304
  %555 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %soc, align 4
  %regs338 = getelementptr inbounds %struct.tegra_sor_soc, ptr %556, i32 0, i32 5
  %557 = ptrtoint ptr %regs338 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %regs338, align 4
  %dp_padctl0339 = getelementptr inbounds %struct.tegra_sor_regs, ptr %558, i32 0, i32 10
  %559 = ptrtoint ptr %dp_padctl0339 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %dp_padctl0339, align 4
  %561 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %562, i32 noundef %560, i32 noundef %or336) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %563 = call i32 @llvm.bswap.i32(i32 %or336) #10
  %564 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %regs.i, align 8
  %shl.i980 = shl i32 %560, 2
  %add.ptr.i981 = getelementptr i8, ptr %565, i32 %shl.i980
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i981, i32 %563) #10, !srcloc !762
  %566 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %soc, align 4
  %regs341 = getelementptr inbounds %struct.tegra_sor_soc, ptr %567, i32 0, i32 5
  %568 = ptrtoint ptr %regs341 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %regs341, align 4
  %dp_padctl2 = getelementptr inbounds %struct.tegra_sor_regs, ptr %569, i32 0, i32 11
  %570 = ptrtoint ptr %dp_padctl2 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %dp_padctl2, align 4
  %572 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %regs.i, align 8
  %shl.i983 = shl i32 %571, 2
  %add.ptr.i984 = getelementptr i8, ptr %573, i32 %shl.i983
  %574 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i984) #10, !srcloc !759
  %575 = call i32 @llvm.bswap.i32(i32 %574) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %576 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %577, i32 noundef %571, i32 noundef %575) #10
  %and343 = and i32 %575, 16777215
  %sparepll = getelementptr %struct.tegra_sor_hdmi_settings, ptr %415, i32 %i.011.i, i32 11
  %578 = ptrtoint ptr %sparepll to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %sparepll, align 2
  %conv344 = zext i8 %579 to i32
  %shl346 = shl nuw i32 %conv344, 24
  %or347 = or i32 %shl346, %and343
  %580 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %soc, align 4
  %regs349 = getelementptr inbounds %struct.tegra_sor_soc, ptr %581, i32 0, i32 5
  %582 = ptrtoint ptr %regs349 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %regs349, align 4
  %dp_padctl2350 = getelementptr inbounds %struct.tegra_sor_regs, ptr %583, i32 0, i32 11
  %584 = ptrtoint ptr %dp_padctl2350 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %dp_padctl2350, align 4
  %586 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %587, i32 noundef %585, i32 noundef %or347) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %588 = call i32 @llvm.bswap.i32(i32 %or347) #10
  %589 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %regs.i, align 8
  %shl.i988 = shl i32 %585, 2
  %add.ptr.i989 = getelementptr i8, ptr %590, i32 %shl.i988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i989, i32 %588) #10, !srcloc !762
  %591 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %soc, align 4
  %regs352 = getelementptr inbounds %struct.tegra_sor_soc, ptr %592, i32 0, i32 5
  %593 = ptrtoint ptr %regs352 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %regs352, align 4
  %dp_padctl0353 = getelementptr inbounds %struct.tegra_sor_regs, ptr %594, i32 0, i32 10
  %595 = ptrtoint ptr %dp_padctl0353 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %dp_padctl0353, align 4
  %597 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %regs.i, align 8
  %shl.i991 = shl i32 %596, 2
  %add.ptr.i992 = getelementptr i8, ptr %598, i32 %shl.i991
  %599 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i992) #10, !srcloc !759
  %600 = call i32 @llvm.bswap.i32(i32 %599) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %601 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %602, i32 noundef %596, i32 noundef %600) #10
  %or355 = or i32 %600, 8388608
  %603 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %soc, align 4
  %regs357 = getelementptr inbounds %struct.tegra_sor_soc, ptr %604, i32 0, i32 5
  %605 = ptrtoint ptr %regs357 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %regs357, align 4
  %dp_padctl0358 = getelementptr inbounds %struct.tegra_sor_regs, ptr %606, i32 0, i32 10
  %607 = ptrtoint ptr %dp_padctl0358 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %dp_padctl0358, align 4
  %609 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %610, i32 noundef %608, i32 noundef %or355) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %611 = call i32 @llvm.bswap.i32(i32 %or355) #10
  %612 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %regs.i, align 8
  %shl.i996 = shl i32 %608, 2
  %add.ptr.i997 = getelementptr i8, ptr %613, i32 %shl.i996
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i997, i32 %611) #10, !srcloc !762
  %614 = ptrtoint ptr %soc170 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %soc170, align 8
  %has_nvdisplay360 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %615, i32 0, i32 9
  %616 = ptrtoint ptr %has_nvdisplay360 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %has_nvdisplay360, align 2, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %617)
  %tobool361.not = icmp eq i8 %617, 0
  br i1 %tobool361.not, label %if.then362, label %if.end224.if.end363_crit_edge

if.end224.if.end363_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end363

if.then362:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i998 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %618 = ptrtoint ptr %dev.i998 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %dev.i998, align 4
  call fastcc void @trace_dc_writel(ptr noundef %619, i32 noundef 1029, i32 noundef 1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  call void @arm_heavy_mb() #10
  %regs.i999 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %620 = ptrtoint ptr %regs.i999 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %regs.i999, align 8
  %add.ptr.i1000 = getelementptr i8, ptr %621, i32 4116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1000, i32 16777216) #10, !srcloc !762
  br label %if.end363

if.end363:                                        ; preds = %if.then362, %if.end224.if.end363_crit_edge
  %regs.i1001 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %622 = ptrtoint ptr %regs.i1001 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %regs.i1001, align 8
  %add.ptr.i1002 = getelementptr i8, ptr %623, i32 4288
  %624 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1002) #10, !srcloc !759
  %625 = call i32 @llvm.bswap.i32(i32 %624) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !774
  %dev.i1003 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %626 = ptrtoint ptr %dev.i1003 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %dev.i1003, align 4
  call fastcc void @trace_dc_readl(ptr noundef %627, i32 noundef 1072, i32 noundef %625) #10
  %and366 = and i32 %625, -784
  %bpc = getelementptr inbounds %struct.tegra_sor_state, ptr %3, i32 0, i32 3
  %628 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %bpc, align 4
  %630 = zext i32 %629 to i64
  call void @__sanitizer_cov_trace_switch(i64 %630, ptr @__sancov_gen_cov_switch_values.374)
  switch i32 %629, label %do.end381 [
    i32 6, label %if.end363.sw.epilog_crit_edge
    i32 8, label %sw.bb368
    i32 10, label %sw.bb370
    i32 12, label %sw.bb372
  ]

if.end363.sw.epilog_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb368:                                         ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #12
  %or369 = or i32 %and366, 8
  br label %sw.epilog

sw.bb370:                                         ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #12
  %or371 = or i32 %and366, 10
  br label %sw.epilog

sw.bb372:                                         ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #12
  %or373 = or i32 %and366, 12
  br label %sw.epilog

do.end381:                                        ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2579, i32 noundef 9, ptr noundef nonnull @.str.149, i32 noundef %629) #10
  %or395 = or i32 %and366, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end381, %sw.bb372, %sw.bb370, %sw.bb368, %if.end363.sw.epilog_crit_edge
  %value.3 = phi i32 [ %or395, %do.end381 ], [ %or373, %sw.bb372 ], [ %or371, %sw.bb370 ], [ %or369, %sw.bb368 ], [ %and366, %if.end363.sw.epilog_crit_edge ]
  %631 = ptrtoint ptr %dev.i1003 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %dev.i1003, align 4
  call fastcc void @trace_dc_writel(ptr noundef %632, i32 noundef 1072, i32 noundef %value.3) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  call void @arm_heavy_mb() #10
  %633 = call i32 @llvm.bswap.i32(i32 %value.3) #10
  %634 = ptrtoint ptr %regs.i1001 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %regs.i1001, align 8
  %add.ptr.i1006 = getelementptr i8, ptr %635, i32 4288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1006, i32 %633) #10, !srcloc !762
  %636 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %regs.i, align 8
  %add.ptr.i1008 = getelementptr i8, ptr %637, i32 16
  %638 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1008) #10, !srcloc !759
  %639 = call i32 @llvm.bswap.i32(i32 %638) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %640 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %641, i32 noundef 4, i32 noundef %639) #10
  %and397 = and i32 %639, -16
  %pipe398 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 5
  %642 = ptrtoint ptr %pipe398 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %pipe398, align 4
  %add399 = add i32 %643, 1
  %and400 = and i32 %add399, 15
  %or402 = or i32 %and400, %and397
  %644 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %645, i32 noundef 4, i32 noundef %or402) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %646 = call i32 @llvm.bswap.i32(i32 %or402) #10
  %647 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %regs.i, align 8
  %add.ptr.i1012 = getelementptr i8, ptr %648, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1012, i32 %646) #10, !srcloc !762
  %call403 = call fastcc i32 @tegra_sor_power_up(ptr noundef %add.ptr.i817)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call403)
  %cmp404 = icmp slt i32 %call403, 0
  br i1 %cmp404, label %do.end409, label %sw.epilog.if.end411_crit_edge

sw.epilog.if.end411_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end411

do.end409:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %649 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %650, ptr noundef nonnull @.str.151, i32 noundef %call403) #13
  br label %if.end411

if.end411:                                        ; preds = %do.end409, %sw.epilog.if.end411_crit_edge
  %651 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %soc, align 4
  %regs413 = getelementptr inbounds %struct.tegra_sor_soc, ptr %652, i32 0, i32 5
  %653 = ptrtoint ptr %regs413 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %regs413, align 4
  %655 = ptrtoint ptr %654 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %654, align 4
  %657 = ptrtoint ptr %pipe398 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %pipe398, align 4
  %add415 = add i32 %658, %656
  %659 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %regs.i, align 8
  %shl.i1014 = shl i32 %add415, 2
  %add.ptr.i1015 = getelementptr i8, ptr %660, i32 %shl.i1014
  %661 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1015) #10, !srcloc !759
  %662 = call i32 @llvm.bswap.i32(i32 %661) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %663 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %664, i32 noundef %add415, i32 noundef %662) #10
  %and418 = and i32 %662, -13
  %665 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %soc, align 4
  %regs420 = getelementptr inbounds %struct.tegra_sor_soc, ptr %666, i32 0, i32 5
  %667 = ptrtoint ptr %regs420 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %regs420, align 4
  %669 = ptrtoint ptr %668 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %668, align 4
  %671 = ptrtoint ptr %pipe398 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %pipe398, align 4
  %add423 = add i32 %672, %670
  %673 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %674, i32 noundef %add423, i32 noundef %and418) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %675 = call i32 @llvm.bswap.i32(i32 %and418) #10
  %676 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %regs.i, align 8
  %shl.i1019 = shl i32 %add423, 2
  %add.ptr.i1020 = getelementptr i8, ptr %677, i32 %shl.i1019
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1020, i32 %675) #10, !srcloc !762
  %678 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %soc, align 4
  %regs425 = getelementptr inbounds %struct.tegra_sor_soc, ptr %679, i32 0, i32 5
  %680 = ptrtoint ptr %regs425 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %regs425, align 4
  %682 = ptrtoint ptr %681 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %681, align 4
  %684 = ptrtoint ptr %pipe398 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %pipe398, align 4
  %add428 = add i32 %685, %683
  %686 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %regs.i, align 8
  %shl.i1022 = shl i32 %add428, 2
  %add.ptr.i1023 = getelementptr i8, ptr %687, i32 %shl.i1022
  %688 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1023) #10, !srcloc !759
  %689 = call i32 @llvm.bswap.i32(i32 %688) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %690 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %691, i32 noundef %add428, i32 noundef %689) #10
  %and430 = and i32 %689, -4
  %692 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %soc, align 4
  %regs433 = getelementptr inbounds %struct.tegra_sor_soc, ptr %693, i32 0, i32 5
  %694 = ptrtoint ptr %regs433 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %regs433, align 4
  %696 = ptrtoint ptr %695 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %695, align 4
  %698 = ptrtoint ptr %pipe398 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %pipe398, align 4
  %add436 = add i32 %699, %697
  %700 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %701, i32 noundef %add436, i32 noundef %and430) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %702 = call i32 @llvm.bswap.i32(i32 %and430) #10
  %703 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %regs.i, align 8
  %shl.i1027 = shl i32 %add436, 2
  %add.ptr.i1028 = getelementptr i8, ptr %704, i32 %shl.i1027
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1028, i32 %702) #10, !srcloc !762
  call fastcc void @tegra_sor_mode_set(ptr noundef %add.ptr.i817, ptr noundef %adjusted_mode, ptr noundef %3)
  %705 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %706, i32 noundef 3, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %707 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i1031 = getelementptr i8, ptr %708, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1031, i32 0) #10, !srcloc !762
  %709 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %710, i32 noundef 3, i32 noundef 1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %711 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i1032 = getelementptr i8, ptr %712, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i1032, i32 16777216) #10, !srcloc !762
  %713 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %714, i32 noundef 3, i32 noundef 0) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %715 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %716, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #10, !srcloc !762
  %717 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %regs.i, align 8
  %add.ptr.i1034 = getelementptr i8, ptr %718, i32 384
  %719 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1034) #10, !srcloc !759
  %720 = call i32 @llvm.bswap.i32(i32 %719) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %721 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %722, i32 noundef 96, i32 noundef %720) #10
  %and438 = and i32 %720, -9
  %723 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %724, i32 noundef 96, i32 noundef %and438) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %725 = call i32 @llvm.bswap.i32(i32 %and438) #10
  %726 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %regs.i, align 8
  %add.ptr.i1038 = getelementptr i8, ptr %727, i32 384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1038, i32 %725) #10, !srcloc !762
  %call439 = call fastcc i32 @tegra_sor_attach(ptr noundef %add.ptr.i817)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call439)
  %cmp440 = icmp slt i32 %call439, 0
  br i1 %cmp440, label %do.end445, label %if.end411.if.end447_crit_edge

if.end411.if.end447_crit_edge:                    ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end447

do.end445:                                        ; preds = %if.end411
  call void @__sanitizer_cov_trace_pc() #12
  %728 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %729, ptr noundef nonnull @.str.154, i32 noundef %call439) #13
  br label %if.end447

if.end447:                                        ; preds = %do.end445, %if.end411.if.end447_crit_edge
  %730 = ptrtoint ptr %regs.i1001 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %regs.i1001, align 8
  %add.ptr.i1040 = getelementptr i8, ptr %731, i32 4104
  %732 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1040) #10, !srcloc !759
  %733 = call i32 @llvm.bswap.i32(i32 %732) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !774
  %734 = ptrtoint ptr %dev.i1003 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %dev.i1003, align 4
  call fastcc void @trace_dc_readl(ptr noundef %735, i32 noundef 1026, i32 noundef %733) #10
  %736 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %soc, align 4
  %has_nvdisplay450 = getelementptr inbounds %struct.tegra_sor_soc, ptr %737, i32 0, i32 6
  %738 = ptrtoint ptr %has_nvdisplay450 to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %has_nvdisplay450, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %739)
  %tobool451.not = icmp eq i8 %739, 0
  %or453 = or i32 %733, 134217728
  %spec.select815 = select i1 %tobool451.not, i32 %or453, i32 %733
  %index = getelementptr i8, ptr %encoder, i32 1128
  %740 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %741)
  %cmp455 = icmp ugt i32 %741, 1
  %add458 = zext i1 %cmp455 to i32
  %cond = add i32 %741, 25
  %add460 = add i32 %cond, %add458
  %shl461 = shl nuw i32 1, %add460
  %or462 = or i32 %shl461, %spec.select815
  %742 = ptrtoint ptr %dev.i1003 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %dev.i1003, align 4
  call fastcc void @trace_dc_writel(ptr noundef %743, i32 noundef 1026, i32 noundef %or462) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  call void @arm_heavy_mb() #10
  %744 = call i32 @llvm.bswap.i32(i32 %or462) #10
  %745 = ptrtoint ptr %regs.i1001 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %regs.i1001, align 8
  %add.ptr.i1044 = getelementptr i8, ptr %746, i32 4104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1044, i32 %744) #10, !srcloc !762
  %747 = ptrtoint ptr %soc170 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %soc170, align 8
  %has_nvdisplay464 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %748, i32 0, i32 9
  %749 = ptrtoint ptr %has_nvdisplay464 to i32
  call void @__asan_load1_noabort(i32 %749)
  %750 = load i8, ptr %has_nvdisplay464, align 2, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %750)
  %tobool465.not = icmp eq i8 %750, 0
  br i1 %tobool465.not, label %if.end447.if.end474_crit_edge, label %if.then466

if.end447.if.end474_crit_edge:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end474

if.then466:                                       ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #12
  %751 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %index, align 4
  %add468 = add i32 %752, 1027
  %753 = ptrtoint ptr %regs.i1001 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %regs.i1001, align 8
  %shl.i1046 = shl i32 %add468, 2
  %add.ptr.i1047 = getelementptr i8, ptr %754, i32 %shl.i1046
  %755 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1047) #10, !srcloc !759
  %756 = call i32 @llvm.bswap.i32(i32 %755) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !774
  %757 = ptrtoint ptr %dev.i1003 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %dev.i1003, align 4
  call fastcc void @trace_dc_readl(ptr noundef %758, i32 noundef %add468, i32 noundef %756) #10
  %and470 = and i32 %756, -3841
  %or471 = or i32 %and470, 256
  %759 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %index, align 4
  %add473 = add i32 %760, 1027
  %761 = ptrtoint ptr %dev.i1003 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %dev.i1003, align 4
  call fastcc void @trace_dc_writel(ptr noundef %762, i32 noundef %add473, i32 noundef %or471) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  call void @arm_heavy_mb() #10
  %763 = call i32 @llvm.bswap.i32(i32 %or471) #10
  %764 = ptrtoint ptr %regs.i1001 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %regs.i1001, align 8
  %shl.i1051 = shl i32 %add473, 2
  %add.ptr.i1052 = getelementptr i8, ptr %765, i32 %shl.i1051
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1052, i32 %763) #10, !srcloc !762
  br label %if.end474

if.end474:                                        ; preds = %if.then466, %if.end447.if.end474_crit_edge
  call void @tegra_dc_commit(ptr noundef %spec.select.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %766 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -25, %766
  %767 = load volatile i32, ptr @jiffies, align 128
  %sub5.i = add i32 %add.neg.i, %767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp6.i = icmp slt i32 %sub5.i, 0
  br i1 %cmp6.i, label %if.end474.while.body.i_crit_edge, label %if.end474.do.end481_crit_edge

if.end474.do.end481_crit_edge:                    ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end481

if.end474.while.body.i_crit_edge:                 ; preds = %if.end474
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i1058.while.body.i_crit_edge, %if.end474.while.body.i_crit_edge
  %768 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i1055 = getelementptr i8, ptr %769, i32 88
  %770 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1055) #10, !srcloc !759
  %771 = call i32 @llvm.bswap.i32(i32 %770) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %772 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %773, i32 noundef 22, i32 noundef %771) #10
  %and.i1056 = and i32 %771, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i1056)
  %cmp2.i = icmp eq i32 %and.i1056, 512
  br i1 %cmp2.i, label %while.body.i.if.end483_crit_edge, label %if.end.i1058

while.body.i.if.end483_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end483

if.end.i1058:                                     ; preds = %while.body.i
  call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %774 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %774, %add.neg.i
  %cmp.i1057 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i1057, label %if.end.i1058.while.body.i_crit_edge, label %if.end.i1058.do.end481_crit_edge

if.end.i1058.do.end481_crit_edge:                 ; preds = %if.end.i1058
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end481

if.end.i1058.while.body.i_crit_edge:              ; preds = %if.end.i1058
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

do.end481:                                        ; preds = %if.end.i1058.do.end481_crit_edge, %if.end474.do.end481_crit_edge
  %775 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %776, ptr noundef nonnull @.str.157, i32 noundef -110) #13
  br label %if.end483

if.end483:                                        ; preds = %do.end481, %while.body.i.if.end483_crit_edge
  %777 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %crtc, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %778, i32 0, i32 22
  %779 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %state.i, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %780, i32 0, i32 7
  %781 = ptrtoint ptr %adjusted_mode.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %adjusted_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 339999, i32 %782)
  %cmp.i1060 = icmp sgt i32 %782, 339999
  br i1 %cmp.i1060, label %land.lhs.true.i, label %if.end483.tegra_sor_hdmi_scdc_start.exit_crit_edge

if.end483.tegra_sor_hdmi_scdc_start.exit_crit_edge: ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_scdc_start.exit

land.lhs.true.i:                                  ; preds = %if.end483
  %hdmi.i = getelementptr i8, ptr %encoder, i32 316
  %783 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %hdmi.i, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %784)
  %tobool.not.i1061 = icmp eq i8 %784, 0
  br i1 %tobool.not.i1061, label %land.lhs.true.i.tegra_sor_hdmi_scdc_start.exit_crit_edge, label %if.then.i

land.lhs.true.i.tegra_sor_hdmi_scdc_start.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_hdmi_scdc_start.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %scdc3.i = getelementptr i8, ptr %encoder, i32 1396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %785 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %785, ptr noundef %scdc3.i, i32 noundef 500) #10
  %ddc1.i.i = getelementptr i8, ptr %encoder, i32 -20
  %786 = ptrtoint ptr %ddc1.i.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %ddc1.i.i, align 8
  %call.i.i = call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %787, i1 noundef zeroext true) #10
  %call2.i.i = call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %787, i1 noundef zeroext true) #10
  %788 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %789, i32 1272
  %790 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !759
  %791 = call i32 @llvm.bswap.i32(i32 %790) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %792 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_readl(ptr noundef %793, i32 noundef 318, i32 noundef %791) #10
  %or1.i.i.i = or i32 %791, 3
  %794 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %795, i32 noundef 318, i32 noundef %or1.i.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %796 = call i32 @llvm.bswap.i32(i32 %or1.i.i.i) #10
  %797 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %regs.i, align 8
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %798, i32 1272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %796) #10, !srcloc !762
  %scdc_enabled.i = getelementptr i8, ptr %encoder, i32 1496
  %799 = ptrtoint ptr %scdc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %799)
  store i8 1, ptr %scdc_enabled.i, align 4
  br label %tegra_sor_hdmi_scdc_start.exit

tegra_sor_hdmi_scdc_start.exit:                   ; preds = %if.then.i, %land.lhs.true.i.tegra_sor_hdmi_scdc_start.exit_crit_edge, %if.end483.tegra_sor_hdmi_scdc_start.exit_crit_edge
  %800 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %801, i32 noundef 286, i32 noundef 3) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %802 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i1065 = getelementptr i8, ptr %803, i32 1144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1065, i32 50331648) #10, !srcloc !762
  %804 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %805, i32 noundef 285, i32 noundef 3) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %806 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i1066 = getelementptr i8, ptr %807, i32 1140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i1066, i32 50331648) #10, !srcloc !762
  %arrayidx.i.i.i = getelementptr i8, ptr %encoder, i32 902
  %808 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %808)
  %809 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %809 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 2
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 4
  br label %for.body.i.i

for.cond4.preheader.i.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %809)
  %cmp527.i.i = icmp ult i8 %809, 23
  br i1 %cmp527.i.i, label %for.cond4.preheader.i.i.for.body7.i.i_crit_edge, label %for.cond4.preheader.i.i.tegra_sor_audio_prepare.exit_crit_edge

for.cond4.preheader.i.i.tegra_sor_audio_prepare.exit_crit_edge: ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_audio_prepare.exit

for.cond4.preheader.i.i.for.body7.i.i_crit_edge:  ; preds = %for.cond4.preheader.i.i
  br label %for.body7.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %tegra_sor_hdmi_scdc_start.exit
  %i.026.i.i = phi i32 [ 0, %tegra_sor_hdmi_scdc_start.exit ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i32 %i.026.i.i, 8
  %arrayidx.i.i = getelementptr %struct.tegra_sor, ptr %add.ptr.i817, i32 0, i32 1, i32 10, i32 42, i32 %i.026.i.i
  %810 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %810)
  %811 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %811 to i32
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %812 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %813, i32 noundef 268, i32 noundef %or.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %814 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %815 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %816, i32 1072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %814) #10, !srcloc !762
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add.i.i.i
  br i1 %exitcond.not.i.i, label %for.cond4.preheader.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.cond4.preheader.i.i.for.body7.i.i_crit_edge
  %i.128.i.i = phi i32 [ %inc11.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ %add.i.i.i, %for.cond4.preheader.i.i.for.body7.i.i_crit_edge ]
  %shl8.i.i = shl nuw nsw i32 %i.128.i.i, 8
  %817 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %818, i32 noundef 268, i32 noundef %shl8.i.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %819 = call i32 @llvm.bswap.i32(i32 %shl8.i.i) #10
  %820 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %regs.i, align 8
  %add.ptr.i25.i.i = getelementptr i8, ptr %821, i32 1072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %819) #10, !srcloc !762
  %inc11.i.i = add nuw nsw i32 %i.128.i.i, 1
  %cmp5.i.i = icmp ult i32 %i.128.i.i, 95
  br i1 %cmp5.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge, label %for.body7.i.i.tegra_sor_audio_prepare.exit_crit_edge

for.body7.i.i.tegra_sor_audio_prepare.exit_crit_edge: ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_audio_prepare.exit

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i.i

tegra_sor_audio_prepare.exit:                     ; preds = %for.body7.i.i.tegra_sor_audio_prepare.exit_crit_edge, %for.cond4.preheader.i.i.tegra_sor_audio_prepare.exit_crit_edge
  %822 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_sor_writel(ptr noundef %823, i32 noundef 269, i32 noundef 3) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  call void @arm_heavy_mb() #10
  %824 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %regs.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %825, i32 1076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 50331648) #10, !srcloc !762
  br label %cleanup

cleanup:                                          ; preds = %tegra_sor_audio_prepare.exit, %do.end220, %do.end134, %do.end124, %do.end13, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr noundef %crtc_state, ptr nocapture noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i38 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i38
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %mul = mul i32 %3, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 339999999, i32 %mul)
  %cmp = icmp ugt i32 %mul, 339999999
  %spec.select = select i1 %cmp, i32 20, i32 10
  %div37 = zext i1 %cmp to i32
  %spec.select40 = lshr exact i32 %mul, %div37
  %4 = getelementptr inbounds %struct.tegra_sor_state, ptr %conn_state, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_sor_state, ptr %conn_state, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select40, ptr %6, align 4
  %clk_parent = getelementptr i8, ptr %encoder, i32 1140
  %8 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_parent, align 8
  %call7 = tail call i32 @tegra_dc_state_setup_clock(ptr noundef %spec.select.i, ptr noundef %crtc_state, ptr noundef %9, i32 noundef %mul, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %encoder, i32 -32
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.163, i32 noundef %call7) #13
  br label %cleanup

if.end10:                                         ; preds = %entry
  %bpc = getelementptr i8, ptr %encoder, i32 276
  %12 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bpc, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.375)
  switch i32 %13, label %sw.default [
    i32 8, label %if.end10.sw.bb_crit_edge
    i32 6, label %if.end10.sw.bb_crit_edge41
  ]

if.end10.sw.bb_crit_edge41:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge41
  %bpc12 = getelementptr inbounds %struct.tegra_sor_state, ptr %conn_state, i32 0, i32 3
  %15 = ptrtoint ptr %bpc12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %bpc12, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.149, i32 noundef %13) #10
  %bpc14 = getelementptr inbounds %struct.tegra_sor_state, ptr %conn_state, i32 0, i32 3
  %16 = ptrtoint ptr %bpc14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %bpc14, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %sw.default ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_detach(ptr noundef readonly %sor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %5, i32 noundef 2, i32 noundef %3) #10
  %and = and i32 %3, -5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %7, i32 noundef 2, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i51 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %8) #10, !srcloc !762
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %12, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !762
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %16, i32 noundef 1, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 16777216) #10, !srcloc !762
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %20, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -25, %23
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub81 = add i32 %add.neg, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub81)
  %cmp82 = icmp slt i32 %sub81, 0
  br i1 %cmp82, label %entry.while.body_crit_edge, label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond:                                       ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %25
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry.while.body_crit_edge
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %27, i32 84
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #10, !srcloc !759
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %31, i32 noundef 21, i32 noundef %29) #10
  %and3 = and i32 %29, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %while.cond, label %while.body.if.end7_crit_edge

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

while.end:                                        ; preds = %entry
  %.pre = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %cmp5 = icmp eq i32 %.pre, 0
  br i1 %cmp5, label %while.end.cleanup_crit_edge, label %while.end.if.end7_crit_edge

while.end.if.end7_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %while.end.if.end7_crit_edge, %while.body.if.end7_crit_edge
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #10, !srcloc !759
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %37, i32 noundef 2, i32 noundef %35) #10
  %and9 = and i32 %35, -4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %39, i32 noundef 2, i32 noundef %and9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %40 = tail call i32 @llvm.bswap.i32(i32 %and9) #10
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 8
  %add.ptr.i60 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %40) #10, !srcloc !762
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %44, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i63 = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 0) #10, !srcloc !762
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %48, i32 noundef 1, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i64 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i64, i32 16777216) #10, !srcloc !762
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %52, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i65 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i65, i32 0) #10, !srcloc !762
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %56, i32 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #10, !srcloc !759
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %60, i32 noundef 2, i32 noundef %58) #10
  %and11 = and i32 %58, -9
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %62, i32 noundef 2, i32 noundef %and11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %63 = tail call i32 @llvm.bswap.i32(i32 %and11) #10
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 8
  %add.ptr.i71 = getelementptr i8, ptr %65, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %63) #10, !srcloc !762
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %67, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i74 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i74, i32 0) #10, !srcloc !762
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %71, i32 noundef 1, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i75 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i75, i32 16777216) #10, !srcloc !762
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %75, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i76 = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i76, i32 0) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %add13.neg = sub i32 -25, %78
  %79 = load volatile i32, ptr @jiffies, align 128
  %sub1584 = add i32 %add13.neg, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1584)
  %cmp1685 = icmp slt i32 %sub1584, 0
  br i1 %cmp1685, label %if.end7.while.body17_crit_edge, label %if.end7.while.end23_crit_edge

if.end7.while.body17_crit_edge:                   ; preds = %if.end7
  br label %while.body17

if.end7.while.end23_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %.pre89 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre89)
  %phi.cmp = icmp eq i32 %.pre89, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -110
  br label %cleanup

while.body17:                                     ; preds = %if.end22.while.body17_crit_edge, %if.end7.while.body17_crit_edge
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 8
  %add.ptr.i78 = getelementptr i8, ptr %81, i32 88
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #10, !srcloc !759
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %85, i32 noundef 22, i32 noundef %83) #10
  %and19 = and i32 %83, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %while.body17.cleanup_crit_edge, label %if.end22

while.body17.cleanup_crit_edge:                   ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %while.body17
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %sub15 = add i32 %add13.neg, %86
  %cmp16 = icmp slt i32 %sub15, 0
  br i1 %cmp16, label %if.end22.while.body17_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22.while.body17_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body17

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %while.body17.cleanup_crit_edge, %if.end7.while.end23_crit_edge, %while.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %while.end.cleanup_crit_edge ], [ %phi.sel, %if.end7.while.end23_crit_edge ], [ -110, %if.end22.cleanup_crit_edge ], [ 0, %while.body17.cleanup_crit_edge ], [ -110, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_dc_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_power_down(ptr noundef readonly %sor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %5, i32 noundef 21, i32 noundef %3) #10
  %and = and i32 %3, 2147483646
  %or = or i32 %and, -2147483648
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %7, i32 noundef 21, i32 noundef %or) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %10, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %8) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -25, %11
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub95 = add i32 %add.neg, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub95)
  %cmp96 = icmp slt i32 %sub95, 0
  br i1 %cmp96, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i70 = getelementptr i8, ptr %14, i32 84
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #10, !srcloc !759
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %18, i32 noundef 21, i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp4 = icmp sgt i32 %16, -1
  br i1 %cmp4, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %19
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_io_pad_power_disable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_readl(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), ptr blockaddress(@trace_dc_readl, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !763

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !764

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !776
  %call42 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !777
  %13 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !764

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !767
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dc_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dc_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.85, i32 noundef 32, ptr noundef nonnull @.str.86) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !768
  %31 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), ptr blockaddress(@trace_dc_writel, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !763

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !764

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !778
  %call42 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !779
  %13 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !764

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.87, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !767
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dc_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_dc_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.85, i32 noundef 29, ptr noundef nonnull @.str.86) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !768
  %31 = tail call i32 @llvm.read_register.i32(metadata !746) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_set_parent_clock(ptr nocapture noundef readonly %sor, ptr noundef %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 13
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #10
  tail call void @clk_unprepare(ptr noundef %1) #10
  %clk_out = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 10
  %2 = ptrtoint ptr %clk_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_out, align 8
  %call = tail call i32 @clk_set_parent(ptr noundef %3, ptr noundef %parent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  %6 = tail call i32 @llvm.smin.i32(i32 %retval.0.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %6, %clk_prepare_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_io_pad_power_enable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_power_up(ptr nocapture noundef readonly %sor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %5, i32 noundef 21, i32 noundef %3) #10
  %or = or i32 %3, -2147483647
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %7, i32 noundef 21, i32 noundef %or) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %10, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %8) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -25, %11
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub7 = add i32 %add.neg, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %14, i32 84
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #10, !srcloc !759
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %18, i32 noundef 21, i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp3 = icmp sgt i32 %16, -1
  br i1 %cmp3, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %19
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_sor_mode_set(ptr nocapture noundef readonly %sor, ptr nocapture noundef readonly %mode, ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 1, i32 9, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i148 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #10, !srcloc !759
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %7, i32 noundef 4, i32 noundef %5) #10
  %pipe = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 5
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 4
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %bpc = getelementptr inbounds %struct.tegra_sor_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bpc, align 4
  %switch.tableidx = add i32 %13, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 11
  br i1 %14, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.tegra_sor_mode_set, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 655360, %entry.sw.epilog_crit_edge ]
  %and15 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and6 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %and3 = and i32 %5, -1966288
  %add = add i32 %9, 1
  %and4 = and i32 %add, 15
  %or = or i32 %and3, %and4
  %or5 = or i32 %or, 64
  %and7 = and i32 %or5, -1970305
  %spec.select = select i1 %tobool.not, i32 %or5, i32 %and7
  %and9 = shl i32 %11, 11
  %16 = and i32 %and9, 4096
  %17 = or i32 %spec.select, %16
  %and18 = and i32 %17, -1974401
  %value.2 = select i1 %tobool16.not, i32 %17, i32 %and18
  %and21 = shl i32 %11, 10
  %18 = and i32 %and21, 8192
  %19 = or i32 %value.2, %18
  %or35 = or i32 %19, %.sink
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %21, i32 noundef 4, i32 noundef %or35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %or35) #10
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %add.ptr.i151 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %22) #10, !srcloc !762
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %25 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vtotal, align 4
  %27 = and i16 %26, 32767
  %and36 = zext i16 %27 to i32
  %shl37 = shl nuw nsw i32 %and36, 16
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %28 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %htotal, align 2
  %30 = and i16 %29, 32767
  %and39 = zext i16 %30 to i32
  %or40 = or i32 %shl37, %and39
  %soc = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 3
  %31 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %soc, align 4
  %regs = getelementptr inbounds %struct.tegra_sor_soc, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %head_state1 = getelementptr inbounds %struct.tegra_sor_regs, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %head_state1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %head_state1, align 4
  %37 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe, align 4
  %add42 = add i32 %38, %36
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %40, i32 noundef %add42, i32 noundef %or40) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %41 = tail call i32 @llvm.bswap.i32(i32 %or40) #10
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %add42, 2
  %add.ptr.i154 = getelementptr i8, ptr %43, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %41) #10, !srcloc !762
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %44 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vsync_end, align 2
  %conv43 = zext i16 %45 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %46 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vsync_start, align 4
  %conv44 = zext i16 %47 to i32
  %48 = xor i32 %conv44, -1
  %sub45 = add nsw i32 %48, %conv43
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %49 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hsync_end, align 4
  %conv46 = zext i16 %50 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %51 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hsync_start, align 2
  %conv47 = zext i16 %52 to i32
  %53 = xor i32 %conv47, -1
  %sub49 = add nsw i32 %53, %conv46
  %and50 = shl i32 %sub45, 16
  %shl51 = and i32 %and50, 2147418112
  %and52 = and i32 %sub49, 32767
  %or53 = or i32 %and52, %shl51
  %54 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soc, align 4
  %regs55 = getelementptr inbounds %struct.tegra_sor_soc, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %regs55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs55, align 4
  %head_state2 = getelementptr inbounds %struct.tegra_sor_regs, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %head_state2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %head_state2, align 4
  %60 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pipe, align 4
  %add57 = add i32 %61, %59
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %63, i32 noundef %add57, i32 noundef %or53) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %or53) #10
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 8
  %shl.i157 = shl i32 %add57, 2
  %add.ptr.i158 = getelementptr i8, ptr %66, i32 %shl.i157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %64) #10, !srcloc !762
  %67 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vtotal, align 4
  %conv59 = zext i16 %68 to i32
  %69 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vsync_end, align 2
  %conv61 = zext i16 %70 to i32
  %sub62 = sub nsw i32 %conv59, %conv61
  %add63 = add nsw i32 %sub62, %sub45
  %71 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %htotal, align 2
  %conv65 = zext i16 %72 to i32
  %73 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hsync_end, align 4
  %conv67 = zext i16 %74 to i32
  %sub68 = sub nsw i32 %conv65, %conv67
  %add69 = add nsw i32 %sub68, %sub49
  %and70 = shl i32 %add63, 16
  %shl71 = and i32 %and70, 2147418112
  %and72 = and i32 %add69, 32767
  %or73 = or i32 %and72, %shl71
  %75 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %soc, align 4
  %regs75 = getelementptr inbounds %struct.tegra_sor_soc, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %regs75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs75, align 4
  %head_state3 = getelementptr inbounds %struct.tegra_sor_regs, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %head_state3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %head_state3, align 4
  %81 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pipe, align 4
  %add77 = add i32 %82, %80
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %84, i32 noundef %add77, i32 noundef %or73) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %85 = tail call i32 @llvm.bswap.i32(i32 %or73) #10
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 8
  %shl.i161 = shl i32 %add77, 2
  %add.ptr.i162 = getelementptr i8, ptr %87, i32 %shl.i161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %85) #10, !srcloc !762
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %88 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vdisplay, align 2
  %conv78 = zext i16 %89 to i32
  %add79 = add nsw i32 %add63, %conv78
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %90 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %hdisplay, align 4
  %conv80 = zext i16 %91 to i32
  %add81 = add nsw i32 %add69, %conv80
  %and82 = shl i32 %add79, 16
  %shl83 = and i32 %and82, 2147418112
  %and84 = and i32 %add81, 32767
  %or85 = or i32 %shl83, %and84
  %92 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %soc, align 4
  %regs87 = getelementptr inbounds %struct.tegra_sor_soc, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %regs87 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs87, align 4
  %head_state4 = getelementptr inbounds %struct.tegra_sor_regs, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %head_state4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %head_state4, align 4
  %98 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pipe, align 4
  %add89 = add i32 %99, %97
  %100 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %101, i32 noundef %add89, i32 noundef %or85) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %102 = tail call i32 @llvm.bswap.i32(i32 %or85) #10
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 8
  %shl.i165 = shl i32 %add89, 2
  %add.ptr.i166 = getelementptr i8, ptr %104, i32 %shl.i165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %102) #10, !srcloc !762
  %105 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %soc, align 4
  %regs91 = getelementptr inbounds %struct.tegra_sor_soc, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs91, align 4
  %head_state5 = getelementptr inbounds %struct.tegra_sor_regs, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %head_state5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %head_state5, align 4
  %111 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pipe, align 4
  %add93 = add i32 %112, %110
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %114, i32 noundef %add93, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %115 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i, align 8
  %shl.i169 = shl i32 %add93, 2
  %add.ptr.i170 = getelementptr i8, ptr %116, i32 %shl.i169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 16777216) #10, !srcloc !762
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_attach(ptr nocapture noundef readonly %sor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %5, i32 noundef 2, i32 noundef %3) #10
  %or1 = or i32 %3, 6
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %7, i32 noundef 2, i32 noundef %or1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or1) #10
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %8) #10, !srcloc !762
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %12, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !762
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %16, i32 noundef 1, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 16777216) #10, !srcloc !762
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %20, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #10, !srcloc !762
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #10, !srcloc !759
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %28, i32 noundef 2, i32 noundef %26) #10
  %or3 = or i32 %26, 8
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %30, i32 noundef 2, i32 noundef %or3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %or3) #10
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %31) #10, !srcloc !762
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %35, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i30 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 0) #10, !srcloc !762
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %39, i32 noundef 1, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i31 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i31, i32 16777216) #10, !srcloc !762
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %43, i32 noundef 1, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i32 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i32, i32 0) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -25, %46
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub36 = add i32 %add.neg, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36)
  %cmp37 = icmp slt i32 %sub36, 0
  br i1 %cmp37, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %49, i32 88
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #10, !srcloc !759
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %53, i32 noundef 22, i32 noundef %51) #10
  %and = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %54
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_state_setup_clock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_dp_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i116 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i116
  %add.ptr.i117 = getelementptr i8, ptr %encoder, i32 -276
  %panel = getelementptr i8, ptr %encoder, i32 -24
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @drm_panel_disable(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status = getelementptr i8, ptr %encoder, i32 252
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %aux = getelementptr i8, ptr %encoder, i32 1360
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux, align 4
  %link = getelementptr i8, ptr %encoder, i32 1172
  %call6 = tail call i32 @drm_dp_link_power_down(ptr noundef %7, ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %encoder, i32 1116
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.165, i32 noundef %call6) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = tail call fastcc i32 @tegra_sor_detach(ptr noundef %add.ptr.i117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %dev17 = getelementptr i8, ptr %encoder, i32 1116
  %10 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.118, i32 noundef %call11) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end10.if.end18_crit_edge
  %dev.i = getelementptr i8, ptr %encoder, i32 1116
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %13, i32 noundef 4, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr i8, ptr %encoder, i32 1124
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %add.ptr.i118 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 0) #10, !srcloc !762
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %17, i32 noundef 3, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !762
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %21, i32 noundef 3, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 16777216) #10, !srcloc !762
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %25, i32 noundef 3, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #10, !srcloc !762
  %regs.i119 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %28 = ptrtoint ptr %regs.i119 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i119, align 8
  %add.ptr.i120 = getelementptr i8, ptr %29, i32 4104
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #10, !srcloc !759
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !774
  %dev.i121 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %32 = ptrtoint ptr %dev.i121 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i121, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %33, i32 noundef 1026, i32 noundef %31) #10
  %index = getelementptr i8, ptr %encoder, i32 1128
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp20 = icmp ugt i32 %35, 1
  %add = zext i1 %cmp20 to i32
  %cond = add i32 %35, 25
  %add23 = add i32 %cond, %add
  %shl = shl nuw i32 1, %add23
  %neg = xor i32 %shl, -1
  %and = and i32 %31, %neg
  %36 = ptrtoint ptr %dev.i121 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i121, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %37, i32 noundef 1026, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  tail call void @arm_heavy_mb() #10
  %38 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %39 = ptrtoint ptr %regs.i119 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i119, align 8
  %add.ptr.i124 = getelementptr i8, ptr %40, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %38) #10, !srcloc !762
  tail call void @tegra_dc_commit(ptr noundef %spec.select.i) #10
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 8
  %add.ptr.i126 = getelementptr i8, ptr %42, i32 16
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #10, !srcloc !759
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %46, i32 noundef 4, i32 noundef %44) #10
  %and27 = and i32 %44, -3904
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %48, i32 noundef 4, i32 noundef %and27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %and27) #10
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %add.ptr.i130 = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %49) #10, !srcloc !762
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %53, i32 noundef 3, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i133 = getelementptr i8, ptr %55, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i133, i32 0) #10, !srcloc !762
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %57, i32 noundef 3, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i134 = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i134, i32 16777216) #10, !srcloc !762
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %61, i32 noundef 3, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i135 = getelementptr i8, ptr %63, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i135, i32 0) #10, !srcloc !762
  %clk_safe = getelementptr i8, ptr %encoder, i32 1144
  %64 = ptrtoint ptr %clk_safe to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk_safe, align 4
  %call28 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %add.ptr.i117, ptr noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end18.if.end35_crit_edge

if.end18.if.end35_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end33:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.170, i32 noundef %call28) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.end18.if.end35_crit_edge
  %call36 = tail call fastcc i32 @tegra_sor_power_down(ptr noundef %add.ptr.i117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end35.if.end43_crit_edge

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.121, i32 noundef %call36) #13
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.end35.if.end43_crit_edge
  %pad = getelementptr i8, ptr %encoder, i32 1372
  %70 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pad, align 8
  %call44 = tail call i32 @tegra_io_pad_power_disable(i32 noundef %71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.124, i32 noundef %call44) #13
  br label %if.end51

if.end51:                                         ; preds = %do.end49, %if.end43.if.end51_crit_edge
  %aux52 = getelementptr i8, ptr %encoder, i32 1360
  %74 = ptrtoint ptr %aux52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %aux52, align 4
  %call53 = tail call i32 @drm_dp_aux_disable(ptr noundef %75) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end58, label %if.end51.if.end60_crit_edge

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.177, i32 noundef %call53) #13
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end51.if.end60_crit_edge
  %78 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %panel, align 4
  %tobool62.not = icmp eq ptr %79, null
  br i1 %tobool62.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %call65 = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %79) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  %call67 = tail call i32 @host1x_client_suspend(ptr noundef %add.ptr.i117) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_dp_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %config = alloca %struct.tegra_sor_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i427 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i427
  %add.ptr.i428 = getelementptr i8, ptr %encoder, i32 -276
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %config) #10
  %2 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 5
  %7 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 6
  %8 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 7
  %state3 = getelementptr i8, ptr %encoder, i32 1068
  %9 = call ptr @memset(ptr %config, i32 255, i32 32)
  %10 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state3, align 8
  %state6 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state6, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7
  %display_info = getelementptr i8, ptr %encoder, i32 268
  %call8 = tail call i32 @host1x_client_resume(ptr noundef %add.ptr.i428) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr i8, ptr %encoder, i32 1116
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.52, i32 noundef %call8) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_safe = getelementptr i8, ptr %encoder, i32 1144
  %16 = ptrtoint ptr %clk_safe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_safe, align 4
  %call9 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %add.ptr.i428, ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr i8, ptr %encoder, i32 1116
  %18 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.126, i32 noundef %call9) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end.if.end16_crit_edge
  %pad = getelementptr i8, ptr %encoder, i32 1372
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad, align 8
  %call17 = tail call i32 @tegra_io_pad_power_enable(i32 noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr i8, ptr %encoder, i32 1116
  %22 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.183, i32 noundef %call17) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.end16.if.end24_crit_edge
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #10
  %aux = getelementptr i8, ptr %encoder, i32 1360
  %24 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aux, align 4
  %call25 = tail call i32 @drm_dp_aux_enable(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %dev31 = getelementptr i8, ptr %encoder, i32 1116
  %26 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.186, i32 noundef %call25) #13
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end24.if.end32_crit_edge
  %28 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aux, align 4
  %link = getelementptr i8, ptr %encoder, i32 1172
  %call34 = tail call i32 @drm_dp_link_probe(ptr noundef %29, ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %dev40 = getelementptr i8, ptr %encoder, i32 1116
  %30 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.189, i32 noundef %call34) #13
  br label %if.end41

if.end41:                                         ; preds = %do.end39, %if.end32.if.end41_crit_edge
  %num_rates.i = getelementptr i8, ptr %encoder, i32 1244
  %32 = ptrtoint ptr %num_rates.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_rates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp14.not.i = icmp eq i32 %33, 0
  br i1 %cmp14.not.i, label %if.end41.tegra_sor_filter_rates.exit_crit_edge, label %if.end41.for.body.i_crit_edge

if.end41.for.body.i_crit_edge:                    ; preds = %if.end41
  br label %for.body.i

if.end41.tegra_sor_filter_rates.exit_crit_edge:   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_filter_rates.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end41.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end41.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_sor, ptr %add.ptr.i428, i32 0, i32 15, i32 8, i32 %i.015.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.376)
  switch i32 %35, label %sw.default.i [
    i32 1620000, label %for.body.i.for.inc.i_crit_edge
    i32 2700000, label %for.body.i.for.inc.i_crit_edge560
    i32 5400000, label %for.body.i.for.inc.i_crit_edge561
  ]

for.body.i.for.inc.i_crit_edge561:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge560:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.218, i32 noundef %35) #10
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.default.i, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge560, %for.body.i.for.inc.i_crit_edge561
  %inc.i = add nuw i32 %i.015.i, 1
  %38 = ptrtoint ptr %num_rates.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_rates.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %39
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tegra_sor_filter_rates.exit_crit_edge

for.inc.i.tegra_sor_filter_rates.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_sor_filter_rates.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

tegra_sor_filter_rates.exit:                      ; preds = %for.inc.i.tegra_sor_filter_rates.exit_crit_edge, %if.end41.tegra_sor_filter_rates.exit_crit_edge
  tail call void @drm_dp_link_update_rates(ptr noundef %link) #10
  %call43 = tail call i32 @drm_dp_link_choose(ptr noundef %link, ptr noundef %adjusted_mode, ptr noundef %display_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %tegra_sor_filter_rates.exit.if.end50_crit_edge

tegra_sor_filter_rates.exit.if.end50_crit_edge:   ; preds = %tegra_sor_filter_rates.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.end48:                                         ; preds = %tegra_sor_filter_rates.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev49 = getelementptr i8, ptr %encoder, i32 1116
  %40 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.192, i32 noundef %call43) #13
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %tegra_sor_filter_rates.exit.if.end50_crit_edge
  %panel = getelementptr i8, ptr %encoder, i32 -24
  %42 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %43, null
  br i1 %tobool.not, label %if.end50.if.end54_crit_edge, label %if.then51

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then51:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %43) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end50.if.end54_crit_edge
  %soc = getelementptr i8, ptr %encoder, i32 1120
  %44 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %soc, align 4
  %regs = getelementptr inbounds %struct.tegra_sor_soc, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %pll2 = getelementptr inbounds %struct.tegra_sor_regs, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %pll2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pll2, align 4
  %regs.i = getelementptr i8, ptr %encoder, i32 1124
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %49, 2
  %add.ptr.i429 = getelementptr i8, ptr %51, i32 %shl.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429) #10, !srcloc !759
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr i8, ptr %encoder, i32 1116
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %55, i32 noundef %49, i32 noundef %53) #10
  %and = and i32 %53, -4194305
  %56 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %soc, align 4
  %regs57 = getelementptr inbounds %struct.tegra_sor_soc, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %regs57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs57, align 4
  %pll258 = getelementptr inbounds %struct.tegra_sor_regs, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %pll258 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pll258, align 4
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %63, i32 noundef %61, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 8
  %shl.i432 = shl i32 %61, 2
  %add.ptr.i433 = getelementptr i8, ptr %66, i32 %shl.i432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i433, i32 %64) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #10
  %67 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %soc, align 4
  %regs60 = getelementptr inbounds %struct.tegra_sor_soc, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %regs60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs60, align 4
  %pll3 = getelementptr inbounds %struct.tegra_sor_regs, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %pll3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pll3, align 4
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 8
  %shl.i435 = shl i32 %72, 2
  %add.ptr.i436 = getelementptr i8, ptr %74, i32 %shl.i435
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i436) #10, !srcloc !759
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %78, i32 noundef %72, i32 noundef %76) #10
  %or = or i32 %76, 8192
  %79 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %soc, align 4
  %regs63 = getelementptr inbounds %struct.tegra_sor_soc, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %regs63 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs63, align 4
  %pll364 = getelementptr inbounds %struct.tegra_sor_regs, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %pll364 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pll364, align 4
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %86, i32 noundef %84, i32 noundef %or) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %87 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 8
  %shl.i440 = shl i32 %84, 2
  %add.ptr.i441 = getelementptr i8, ptr %89, i32 %shl.i440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i441, i32 %87) #10, !srcloc !762
  %90 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %soc, align 4
  %regs66 = getelementptr inbounds %struct.tegra_sor_soc, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %regs66 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs66, align 4
  %pll0 = getelementptr inbounds %struct.tegra_sor_regs, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %pll0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pll0, align 4
  %96 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i, align 8
  %shl.i443 = shl i32 %95, 2
  %add.ptr.i444 = getelementptr i8, ptr %97, i32 %shl.i443
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i444) #10, !srcloc !759
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %100 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %101, i32 noundef %95, i32 noundef %99) #10
  %and68 = and i32 %99, -6
  %102 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %soc, align 4
  %regs70 = getelementptr inbounds %struct.tegra_sor_soc, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %regs70 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs70, align 4
  %pll071 = getelementptr inbounds %struct.tegra_sor_regs, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %pll071 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pll071, align 4
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %109, i32 noundef %107, i32 noundef %and68) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %110 = tail call i32 @llvm.bswap.i32(i32 %and68) #10
  %111 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i, align 8
  %shl.i448 = shl i32 %107, 2
  %add.ptr.i449 = getelementptr i8, ptr %112, i32 %shl.i448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i449, i32 %110) #10, !srcloc !762
  %113 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %soc, align 4
  %regs73 = getelementptr inbounds %struct.tegra_sor_soc, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %regs73 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs73, align 4
  %pll274 = getelementptr inbounds %struct.tegra_sor_regs, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %pll274 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pll274, align 4
  %119 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i, align 8
  %shl.i451 = shl i32 %118, 2
  %add.ptr.i452 = getelementptr i8, ptr %120, i32 %shl.i451
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i452) #10, !srcloc !759
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %123 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %124, i32 noundef %118, i32 noundef %122) #10
  %and76 = and i32 %122, -16908289
  %or77 = or i32 %and76, 131072
  %125 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %soc, align 4
  %regs79 = getelementptr inbounds %struct.tegra_sor_soc, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %regs79 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs79, align 4
  %pll280 = getelementptr inbounds %struct.tegra_sor_regs, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %pll280 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pll280, align 4
  %131 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %132, i32 noundef %130, i32 noundef %or77) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %133 = tail call i32 @llvm.bswap.i32(i32 %or77) #10
  %134 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i, align 8
  %shl.i456 = shl i32 %130, 2
  %add.ptr.i457 = getelementptr i8, ptr %135, i32 %shl.i456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i457, i32 %133) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #10
  %136 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %soc, align 4
  %regs82 = getelementptr inbounds %struct.tegra_sor_soc, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %regs82 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs82, align 4
  %pll283 = getelementptr inbounds %struct.tegra_sor_regs, ptr %139, i32 0, i32 8
  %140 = ptrtoint ptr %pll283 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pll283, align 4
  %142 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i, align 8
  %shl.i459 = shl i32 %141, 2
  %add.ptr.i460 = getelementptr i8, ptr %143, i32 %shl.i459
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i460) #10, !srcloc !759
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %146 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %147, i32 noundef %141, i32 noundef %145) #10
  %and86 = and i32 %145, -8650753
  %148 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %soc, align 4
  %regs88 = getelementptr inbounds %struct.tegra_sor_soc, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %regs88 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs88, align 4
  %pll289 = getelementptr inbounds %struct.tegra_sor_regs, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %pll289 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pll289, align 4
  %154 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %155, i32 noundef %153, i32 noundef %and86) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %156 = tail call i32 @llvm.bswap.i32(i32 %and86) #10
  %157 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i, align 8
  %shl.i464 = shl i32 %153, 2
  %add.ptr.i465 = getelementptr i8, ptr %158, i32 %shl.i464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i465, i32 %156) #10, !srcloc !762
  %159 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i, align 8
  %add.ptr.i467 = getelementptr i8, ptr %160, i32 76
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i467) #10, !srcloc !759
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %163 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %164, i32 noundef 19, i32 noundef %162) #10
  %165 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %panel, align 4
  %tobool93.not = icmp eq ptr %166, null
  %and91 = and i32 %162, -4
  %or95 = or i32 %and91, 2
  %or96 = or i32 %162, 3
  %value.0 = select i1 %tobool93.not, i32 %or96, i32 %or95
  %167 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %168, i32 noundef 19, i32 noundef %value.0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %169 = tail call i32 @llvm.bswap.i32(i32 %value.0) #10
  %170 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i, align 8
  %add.ptr.i471 = getelementptr i8, ptr %171, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i471, i32 %169) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #10
  %172 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i, align 8
  %add.ptr.i473 = getelementptr i8, ptr %173, i32 384
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i473) #10, !srcloc !759
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %176 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %177, i32 noundef 96, i32 noundef %175) #10
  %178 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %panel, align 4
  %tobool100.not = icmp eq ptr %179, null
  %and104 = and i32 %175, -4
  %masksel = select i1 %tobool100.not, i32 0, i32 2
  %value.1 = or i32 %and104, %masksel
  %or106 = or i32 %value.1, 1
  %180 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %181, i32 noundef 96, i32 noundef %or106) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %182 = tail call i32 @llvm.bswap.i32(i32 %or106) #10
  %183 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i, align 8
  %add.ptr.i477 = getelementptr i8, ptr %184, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i477, i32 %182) #10, !srcloc !762
  %185 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %186, i32 noundef 28, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %187 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i, align 8
  %add.ptr.i480 = getelementptr i8, ptr %188, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i480, i32 0) #10, !srcloc !762
  %189 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %soc, align 4
  %regs108 = getelementptr inbounds %struct.tegra_sor_soc, ptr %190, i32 0, i32 5
  %191 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regs108, align 4
  %pll0109 = getelementptr inbounds %struct.tegra_sor_regs, ptr %192, i32 0, i32 6
  %193 = ptrtoint ptr %pll0109 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pll0109, align 4
  %195 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs.i, align 8
  %shl.i482 = shl i32 %194, 2
  %add.ptr.i483 = getelementptr i8, ptr %196, i32 %shl.i482
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i483) #10, !srcloc !759
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %199 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %200, i32 noundef %194, i32 noundef %198) #10
  %and112 = and i32 %198, -251662097
  %or115 = or i32 %and112, 16778000
  %201 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %soc, align 4
  %regs117 = getelementptr inbounds %struct.tegra_sor_soc, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %regs117 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs117, align 4
  %pll0118 = getelementptr inbounds %struct.tegra_sor_regs, ptr %204, i32 0, i32 6
  %205 = ptrtoint ptr %pll0118 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pll0118, align 4
  %207 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %208, i32 noundef %206, i32 noundef %or115) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %209 = tail call i32 @llvm.bswap.i32(i32 %or115) #10
  %210 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i, align 8
  %shl.i487 = shl i32 %206, 2
  %add.ptr.i488 = getelementptr i8, ptr %211, i32 %shl.i487
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i488, i32 %209) #10, !srcloc !762
  %212 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %soc, align 4
  %xbar_cfg = getelementptr inbounds %struct.tegra_sor_soc, ptr %213, i32 0, i32 9
  %214 = ptrtoint ptr %xbar_cfg to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %xbar_cfg, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %215, align 1
  %218 = shl i8 %217, 2
  %219 = and i8 %218, 28
  %arrayidx.1 = getelementptr i8, ptr %215, i32 1
  %220 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx.1, align 1
  %222 = shl i8 %221, 5
  %or127.1559 = or i8 %219, %222
  %or127.1 = zext i8 %or127.1559 to i32
  %arrayidx.2 = getelementptr i8, ptr %215, i32 2
  %223 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx.2, align 1
  %225 = and i8 %224, 7
  %and121.2 = zext i8 %225 to i32
  %shl.2 = shl nuw nsw i32 %and121.2, 8
  %or127.2 = or i32 %shl.2, %or127.1
  %arrayidx.3 = getelementptr i8, ptr %215, i32 3
  %226 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx.3, align 1
  %228 = and i8 %227, 7
  %and121.3 = zext i8 %228 to i32
  %shl.3 = shl nuw nsw i32 %and121.3, 11
  %or127.3 = or i32 %or127.2, %shl.3
  %arrayidx.4 = getelementptr i8, ptr %215, i32 4
  %229 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx.4, align 1
  %231 = and i8 %230, 7
  %and121.4 = zext i8 %231 to i32
  %shl.4 = shl nuw nsw i32 %and121.4, 14
  %or127.4 = or i32 %or127.3, %shl.4
  %or128.4 = or i32 %or127.4, -1928331264
  %232 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %233, i32 noundef 75, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %234 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i, align 8
  %add.ptr.i491 = getelementptr i8, ptr %235, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i491, i32 0) #10, !srcloc !762
  %236 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %237, i32 noundef 74, i32 noundef %or128.4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %238 = tail call i32 @llvm.bswap.i32(i32 %or128.4) #10
  %239 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regs.i, align 8
  %add.ptr.i494 = getelementptr i8, ptr %240, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i494, i32 %238) #10, !srcloc !762
  %clk_pad = getelementptr i8, ptr %encoder, i32 1152
  %241 = ptrtoint ptr %clk_pad to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %clk_pad, align 4
  %call129 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %add.ptr.i428, ptr noundef %242)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.end135, label %if.end137

do.end135:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %243 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.137, i32 noundef %call129) #13
  br label %cleanup

if.end137:                                        ; preds = %if.end54
  %clk = getelementptr i8, ptr %encoder, i32 1160
  %245 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %clk, align 4
  %clk_parent = getelementptr i8, ptr %encoder, i32 1140
  %247 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %clk_parent, align 8
  %call138 = tail call i32 @clk_set_parent(ptr noundef %246, ptr noundef %248) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %do.end144, label %if.end146

do.end144:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  %249 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %250, ptr noundef nonnull @.str.140, i32 noundef %call138) #13
  br label %cleanup

if.end146:                                        ; preds = %if.end137
  %251 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs.i, align 8
  %add.ptr.i496 = getelementptr i8, ptr %252, i32 16
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i496) #10, !srcloc !759
  %254 = tail call i32 @llvm.bswap.i32(i32 %253) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %255 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %256, i32 noundef 4, i32 noundef %254) #10
  %and148 = and i32 %254, -3841
  %or149 = or i32 %and148, 2048
  %257 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %258, i32 noundef 4, i32 noundef %or149) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %259 = tail call i32 @llvm.bswap.i32(i32 %or149) #10
  %260 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs.i, align 8
  %add.ptr.i500 = getelementptr i8, ptr %261, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i500, i32 %259) #10, !srcloc !762
  %262 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regs.i, align 8
  %add.ptr.i502 = getelementptr i8, ptr %263, i32 304
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i502) #10, !srcloc !759
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %266 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %267, i32 noundef 76, i32 noundef %265) #10
  %or151 = or i32 %265, 1
  %268 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %269, i32 noundef 76, i32 noundef %or151) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %270 = tail call i32 @llvm.bswap.i32(i32 %or151) #10
  %271 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs.i, align 8
  %add.ptr.i506 = getelementptr i8, ptr %272, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i506, i32 %270) #10, !srcloc !762
  %273 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %soc, align 4
  %regs.i507 = getelementptr inbounds %struct.tegra_sor_soc, ptr %274, i32 0, i32 5
  %275 = ptrtoint ptr %regs.i507 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs.i507, align 4
  %dp_padctl0.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %276, i32 0, i32 10
  %277 = ptrtoint ptr %dp_padctl0.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %dp_padctl0.i, align 4
  %279 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs.i, align 8
  %shl.i.i = shl i32 %278, 2
  %add.ptr.i.i = getelementptr i8, ptr %280, i32 %shl.i.i
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !759
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %283 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %284, i32 noundef %278, i32 noundef %282) #10
  %and.i = and i32 %282, -8388609
  %285 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %soc, align 4
  %regs2.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %286, i32 0, i32 5
  %287 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regs2.i, align 4
  %dp_padctl03.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %288, i32 0, i32 10
  %289 = ptrtoint ptr %dp_padctl03.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %dp_padctl03.i, align 4
  %291 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %292, i32 noundef %290, i32 noundef %and.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %293 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %294 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs.i, align 8
  %shl.i88.i = shl i32 %290, 2
  %add.ptr.i89.i = getelementptr i8, ptr %295, i32 %shl.i88.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %293) #10, !srcloc !762
  %296 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %soc, align 4
  %regs5.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %297, i32 0, i32 5
  %298 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %regs5.i, align 4
  %pll1.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %299, i32 0, i32 7
  %300 = ptrtoint ptr %pll1.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %pll1.i, align 4
  %302 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs.i, align 8
  %shl.i91.i = shl i32 %301, 2
  %add.ptr.i92.i = getelementptr i8, ptr %303, i32 %shl.i91.i
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #10, !srcloc !759
  %305 = tail call i32 @llvm.bswap.i32(i32 %304) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %306 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %307, i32 noundef %301, i32 noundef %305) #10
  %or.i = or i32 %305, 256
  %308 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %soc, align 4
  %regs8.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %309, i32 0, i32 5
  %310 = ptrtoint ptr %regs8.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs8.i, align 4
  %pll19.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %311, i32 0, i32 7
  %312 = ptrtoint ptr %pll19.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %pll19.i, align 4
  %314 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %315, i32 noundef %313, i32 noundef %or.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %316 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %317 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i, align 8
  %shl.i96.i = shl i32 %313, 2
  %add.ptr.i97.i = getelementptr i8, ptr %318, i32 %shl.i96.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 %316) #10, !srcloc !762
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end146
  %adj.0127.i = phi i32 [ 0, %if.end146 ], [ %adj.1.i, %while.body.i.while.body.i_crit_edge ]
  %mask.0126.i = phi i32 [ 8, %if.end146 ], [ %shr.i, %while.body.i.while.body.i_crit_edge ]
  %or10.i = or i32 %mask.0126.i, %adj.0127.i
  %319 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %soc, align 4
  %regs12.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %320, i32 0, i32 5
  %321 = ptrtoint ptr %regs12.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs12.i, align 4
  %pll113.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %322, i32 0, i32 7
  %323 = ptrtoint ptr %pll113.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %pll113.i, align 4
  %325 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regs.i, align 8
  %shl.i99.i = shl i32 %324, 2
  %add.ptr.i100.i = getelementptr i8, ptr %326, i32 %shl.i99.i
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100.i) #10, !srcloc !759
  %328 = tail call i32 @llvm.bswap.i32(i32 %327) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %329 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %330, i32 noundef %324, i32 noundef %328) #10
  %and15.i = and i32 %328, -7681
  %and16.i = shl i32 %or10.i, 9
  %shl.i508 = and i32 %and16.i, 7680
  %or17.i = or i32 %and15.i, %shl.i508
  %331 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %soc, align 4
  %regs19.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %332, i32 0, i32 5
  %333 = ptrtoint ptr %regs19.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %regs19.i, align 4
  %pll120.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %334, i32 0, i32 7
  %335 = ptrtoint ptr %pll120.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %pll120.i, align 4
  %337 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %338, i32 noundef %336, i32 noundef %or17.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %339 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #10
  %340 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %regs.i, align 8
  %shl.i104.i = shl i32 %336, 2
  %add.ptr.i105.i = getelementptr i8, ptr %341, i32 %shl.i104.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 %339) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  %342 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %soc, align 4
  %regs22.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %343, i32 0, i32 5
  %344 = ptrtoint ptr %regs22.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %regs22.i, align 4
  %pll123.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %345, i32 0, i32 7
  %346 = ptrtoint ptr %pll123.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %pll123.i, align 4
  %348 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %regs.i, align 8
  %shl.i107.i = shl i32 %347, 2
  %add.ptr.i108.i = getelementptr i8, ptr %349, i32 %shl.i107.i
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108.i) #10, !srcloc !759
  %351 = tail call i32 @llvm.bswap.i32(i32 %350) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %352 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %353, i32 noundef %347, i32 noundef %351) #10
  %and25.i = and i32 %351, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %neg.i = xor i32 %mask.0126.i, -1
  %and27.i = and i32 %adj.0127.i, %neg.i
  %adj.1.i = select i1 %tobool26.not.i, i32 %or10.i, i32 %and27.i
  %shr.i = lshr i32 %mask.0126.i, 1
  %tobool.not.i509 = icmp ult i32 %mask.0126.i, 2
  br i1 %tobool.not.i509, label %tegra_sor_dp_term_calibrate.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

tegra_sor_dp_term_calibrate.exit:                 ; preds = %while.body.i
  %354 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %soc, align 4
  %regs29.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %355, i32 0, i32 5
  %356 = ptrtoint ptr %regs29.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %regs29.i, align 4
  %pll130.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %357, i32 0, i32 7
  %358 = ptrtoint ptr %pll130.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %pll130.i, align 4
  %360 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %regs.i, align 8
  %shl.i111.i = shl i32 %359, 2
  %add.ptr.i112.i = getelementptr i8, ptr %361, i32 %shl.i111.i
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112.i) #10, !srcloc !759
  %363 = tail call i32 @llvm.bswap.i32(i32 %362) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %364 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %365, i32 noundef %359, i32 noundef %363) #10
  %and32.i = and i32 %363, -7681
  %and33.i = shl i32 %adj.1.i, 9
  %shl34.i = and i32 %and33.i, 7680
  %or35.i = or i32 %and32.i, %shl34.i
  %366 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %soc, align 4
  %regs37.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %367, i32 0, i32 5
  %368 = ptrtoint ptr %regs37.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %regs37.i, align 4
  %pll138.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %369, i32 0, i32 7
  %370 = ptrtoint ptr %pll138.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %pll138.i, align 4
  %372 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %373, i32 noundef %371, i32 noundef %or35.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %374 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #10
  %375 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %regs.i, align 8
  %shl.i116.i = shl i32 %371, 2
  %add.ptr.i117.i = getelementptr i8, ptr %376, i32 %shl.i116.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %374) #10, !srcloc !762
  %377 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %soc, align 4
  %regs40.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %378, i32 0, i32 5
  %379 = ptrtoint ptr %regs40.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %regs40.i, align 4
  %dp_padctl041.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %380, i32 0, i32 10
  %381 = ptrtoint ptr %dp_padctl041.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %dp_padctl041.i, align 4
  %383 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %regs.i, align 8
  %shl.i119.i = shl i32 %382, 2
  %add.ptr.i120.i = getelementptr i8, ptr %384, i32 %shl.i119.i
  %385 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120.i) #10, !srcloc !759
  %386 = tail call i32 @llvm.bswap.i32(i32 %385) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %387 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %388, i32 noundef %382, i32 noundef %386) #10
  %or43.i = or i32 %386, 8388608
  %389 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %soc, align 4
  %regs45.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %390, i32 0, i32 5
  %391 = ptrtoint ptr %regs45.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %regs45.i, align 4
  %dp_padctl046.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %392, i32 0, i32 10
  %393 = ptrtoint ptr %dp_padctl046.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %dp_padctl046.i, align 4
  %395 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %396, i32 noundef %394, i32 noundef %or43.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %397 = tail call i32 @llvm.bswap.i32(i32 %or43.i) #10
  %398 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %regs.i, align 8
  %shl.i124.i = shl i32 %394, 2
  %add.ptr.i125.i = getelementptr i8, ptr %399, i32 %shl.i124.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %397) #10, !srcloc !762
  %call153 = tail call i32 @drm_dp_link_train(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %do.end159, label %do.body162

do.end159:                                        ; preds = %tegra_sor_dp_term_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %400 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %401, ptr noundef nonnull @.str.199, i32 noundef %call153) #13
  br label %if.end173

do.body162:                                       ; preds = %tegra_sor_dp_term_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_sor_dp_enable.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_sor_dp_enable, %if.end173)) #10
          to label %if.then168 [label %if.end173], !srcloc !763

if.then168:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #12
  %402 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_sor_dp_enable.__UNIQUE_ID_ddebug347, ptr noundef %403, ptr noundef nonnull @.str.202) #10
  br label %if.end173

if.end173:                                        ; preds = %if.then168, %do.body162, %do.end159
  %404 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %aux, align 4
  %call176 = tail call i32 @drm_dp_link_power_up(ptr noundef %405, ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %do.end182, label %if.end173.if.end184_crit_edge

if.end173.if.end184_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

do.end182:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  %406 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %407, ptr noundef nonnull @.str.204, i32 noundef %call176) #13
  br label %if.end184

if.end184:                                        ; preds = %do.end182, %if.end173.if.end184_crit_edge
  %408 = getelementptr inbounds i8, ptr %config, i32 4
  %409 = call ptr @memset(ptr %408, i32 0, i32 28)
  %bpc = getelementptr inbounds %struct.tegra_sor_state, ptr %11, i32 0, i32 3
  %410 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %bpc, align 4
  %mul185 = mul i32 %411, 3
  %412 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %mul185, ptr %config, align 4
  %call187 = call fastcc i32 @tegra_sor_compute_config(ptr noundef %add.ptr.i428, ptr noundef %adjusted_mode, ptr noundef nonnull %config, ptr noundef %link)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %do.end193, label %if.end184.if.end195_crit_edge

if.end184.if.end195_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

do.end193:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  %413 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %414, ptr noundef nonnull @.str.207, i32 noundef %call187) #13
  br label %if.end195

if.end195:                                        ; preds = %do.end193, %if.end184.if.end195_crit_edge
  %415 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i511 = getelementptr i8, ptr %416, i32 304
  %417 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i511) #10, !srcloc !759
  %418 = tail call i32 @llvm.bswap.i32(i32 %417) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %419 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %420, i32 noundef 76, i32 noundef %418) #10
  %and.i513 = and i32 %418, -509
  %421 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %4, align 4
  %and1.i = shl i32 %422, 2
  %shl.i514 = and i32 %and1.i, 508
  %or.i515 = or i32 %shl.i514, %and.i513
  %423 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %424, i32 noundef 76, i32 noundef %or.i515) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %425 = tail call i32 @llvm.bswap.i32(i32 %or.i515) #10
  %426 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %regs.i, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %427, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %425) #10, !srcloc !762
  %428 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %regs.i, align 8
  %add.ptr.i63.i = getelementptr i8, ptr %429, i32 352
  %430 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #10, !srcloc !759
  %431 = tail call i32 @llvm.bswap.i32(i32 %430) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %432 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %433, i32 noundef 88, i32 noundef %431) #10
  %and3.i = and i32 %431, 2062581952
  %434 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %6, align 4
  %and4.i = and i32 %435, 63
  %436 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %3, align 4
  %and8.i = shl i32 %437, 8
  %shl9.i = and i32 %and8.i, 32512
  %438 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %5, align 4
  %and12.i = shl i32 %439, 16
  %shl13.i = and i32 %and12.i, 983040
  %440 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool.not.i516 = icmp eq i32 %441, 0
  %masksel.i = select i1 %tobool.not.i516, i32 0, i32 16777216
  %or6.i = or i32 %and3.i, %and4.i
  %or10.i517 = or i32 %or6.i, %shl9.i
  %or14.i = or i32 %or10.i517, %shl13.i
  %value.0.i = or i32 %or14.i, %masksel.i
  %or18.i = or i32 %value.0.i, -2080374784
  %442 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %443, i32 noundef 88, i32 noundef %or18.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %444 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #10
  %445 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %regs.i, align 8
  %add.ptr.i67.i = getelementptr i8, ptr %446, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %444) #10, !srcloc !762
  %447 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %regs.i, align 8
  %add.ptr.i69.i = getelementptr i8, ptr %448, i32 396
  %449 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #10, !srcloc !759
  %450 = tail call i32 @llvm.bswap.i32(i32 %449) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %451 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %452, i32 noundef 99, i32 noundef %450) #10
  %and20.i = and i32 %450, -131072
  %453 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %7, align 4
  %and21.i = and i32 %454, 65535
  %or22.i = or i32 %and21.i, %and20.i
  %455 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %456, i32 noundef 99, i32 noundef %or22.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %457 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #10
  %458 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %regs.i, align 8
  %add.ptr.i73.i = getelementptr i8, ptr %459, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 %457) #10, !srcloc !762
  %460 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %regs.i, align 8
  %add.ptr.i75.i = getelementptr i8, ptr %461, i32 400
  %462 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75.i) #10, !srcloc !759
  %463 = tail call i32 @llvm.bswap.i32(i32 %462) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %464 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %465, i32 noundef 100, i32 noundef %463) #10
  %and24.i = and i32 %463, -2097152
  %466 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %8, align 4
  %and25.i518 = and i32 %467, 65535
  %or26.i = or i32 %and25.i518, %and24.i
  %468 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %469, i32 noundef 100, i32 noundef %or26.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %470 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #10
  %471 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %regs.i, align 8
  %add.ptr.i79.i = getelementptr i8, ptr %472, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 %470) #10, !srcloc !762
  tail call fastcc void @tegra_sor_mode_set(ptr noundef %add.ptr.i428, ptr noundef %adjusted_mode, ptr noundef %11)
  %473 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %panel, align 4
  %tobool197.not = icmp eq ptr %474, null
  br i1 %tobool197.not, label %if.end195.if.end208_crit_edge, label %if.then198

if.end195.if.end208_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

if.then198:                                       ; preds = %if.end195
  %475 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %476, i32 noundef 27, i32 noundef 116736) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %477 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %regs.i, align 8
  %add.ptr.i521 = getelementptr i8, ptr %478, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i521, i32 13107456) #10, !srcloc !762
  %479 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i523 = getelementptr i8, ptr %480, i32 200
  %481 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i523) #10, !srcloc !759
  %482 = tail call i32 @llvm.bswap.i32(i32 %481) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %483 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %484, i32 noundef 50, i32 noundef %482) #10
  %and.i525 = and i32 %482, -16777216
  %or.i526 = or i32 %and.i525, 1024
  %485 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %486, i32 noundef 50, i32 noundef %or.i526) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %487 = tail call i32 @llvm.bswap.i32(i32 %or.i526) #10
  %488 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %489, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %487) #10, !srcloc !762
  %490 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %491, i32 204
  %492 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #10, !srcloc !759
  %493 = tail call i32 @llvm.bswap.i32(i32 %492) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %494 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %495, i32 noundef 51, i32 noundef %493) #10
  %and2.i = and i32 %493, 1056964608
  %or5.i = or i32 %and2.i, -2147482624
  %496 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %497, i32 noundef 51, i32 noundef %or5.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %498 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #10
  %499 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %regs.i, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %500, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %498) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %501 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -25, %501
  %502 = load volatile i32, ptr @jiffies, align 128
  %sub13.i = add i32 %add.neg.i, %502
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13.i)
  %cmp14.i = icmp slt i32 %sub13.i, 0
  br i1 %cmp14.i, label %if.then198.while.body.i527_crit_edge, label %if.then198.do.end205_crit_edge

if.then198.do.end205_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end205

if.then198.while.body.i527_crit_edge:             ; preds = %if.then198
  br label %while.body.i527

while.body.i527:                                  ; preds = %if.end.i.while.body.i527_crit_edge, %if.then198.while.body.i527_crit_edge
  %503 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %regs.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %504, i32 204
  %505 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #10, !srcloc !759
  %506 = tail call i32 @llvm.bswap.i32(i32 %505) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %507 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %508, i32 noundef 51, i32 noundef %506) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %506)
  %cmp9.i = icmp sgt i32 %506, -1
  br i1 %cmp9.i, label %while.body.i527.if.end208_crit_edge, label %if.end.i

while.body.i527.if.end208_crit_edge:              ; preds = %while.body.i527
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

if.end.i:                                         ; preds = %while.body.i527
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %509 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %509, %add.neg.i
  %cmp.i528 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i528, label %if.end.i.while.body.i527_crit_edge, label %if.end.i.do.end205_crit_edge

if.end.i.do.end205_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end205

if.end.i.while.body.i527_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i527

do.end205:                                        ; preds = %if.end.i.do.end205_crit_edge, %if.then198.do.end205_crit_edge
  %510 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %511, ptr noundef nonnull @.str.210, i32 noundef -110) #13
  br label %if.end208

if.end208:                                        ; preds = %do.end205, %while.body.i527.if.end208_crit_edge, %if.end195.if.end208_crit_edge
  %512 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %513, i32 noundef 3, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %514 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i532 = getelementptr i8, ptr %515, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i532, i32 0) #10, !srcloc !762
  %516 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %517, i32 noundef 3, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %518 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i533 = getelementptr i8, ptr %519, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i533, i32 16777216) #10, !srcloc !762
  %520 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %521, i32 noundef 3, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %522 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %regs.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %523, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #10, !srcloc !762
  %call209 = tail call fastcc i32 @tegra_sor_power_up(ptr noundef %add.ptr.i428)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210 = icmp slt i32 %call209, 0
  br i1 %cmp210, label %do.end215, label %if.end208.if.end217_crit_edge

if.end208.if.end217_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

do.end215:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  %524 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %525, ptr noundef nonnull @.str.151, i32 noundef %call209) #13
  br label %if.end217

if.end217:                                        ; preds = %do.end215, %if.end208.if.end217_crit_edge
  %call218 = tail call fastcc i32 @tegra_sor_attach(ptr noundef %add.ptr.i428)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %cmp219 = icmp slt i32 %call218, 0
  br i1 %cmp219, label %do.end224, label %if.end217.if.end226_crit_edge

if.end217.if.end226_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end226

do.end224:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #12
  %526 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %527, ptr noundef nonnull @.str.154, i32 noundef %call218) #13
  br label %if.end226

if.end226:                                        ; preds = %do.end224, %if.end217.if.end226_crit_edge
  %regs.i534 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 8
  %528 = ptrtoint ptr %regs.i534 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %regs.i534, align 8
  %add.ptr.i535 = getelementptr i8, ptr %529, i32 4104
  %530 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i535) #10, !srcloc !759
  %531 = tail call i32 @llvm.bswap.i32(i32 %530) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !774
  %dev.i536 = getelementptr inbounds %struct.tegra_dc, ptr %spec.select.i, i32 0, i32 2
  %532 = ptrtoint ptr %dev.i536 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %dev.i536, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %533, i32 noundef 1026, i32 noundef %531) #10
  %index = getelementptr i8, ptr %encoder, i32 1128
  %534 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %535)
  %cmp228 = icmp ugt i32 %535, 1
  %add = zext i1 %cmp228 to i32
  %cond = add i32 %535, 25
  %add232 = add i32 %cond, %add
  %shl233 = shl nuw i32 1, %add232
  %or234 = or i32 %shl233, %531
  %536 = ptrtoint ptr %dev.i536 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %dev.i536, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %537, i32 noundef 1026, i32 noundef %or234) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !775
  tail call void @arm_heavy_mb() #10
  %538 = tail call i32 @llvm.bswap.i32(i32 %or234) #10
  %539 = ptrtoint ptr %regs.i534 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %regs.i534, align 8
  %add.ptr.i539 = getelementptr i8, ptr %540, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i539, i32 %538) #10, !srcloc !762
  tail call void @tegra_dc_commit(ptr noundef %spec.select.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %541 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i541 = sub i32 -25, %541
  %542 = load volatile i32, ptr @jiffies, align 128
  %sub5.i = add i32 %add.neg.i541, %542
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp6.i = icmp slt i32 %sub5.i, 0
  br i1 %cmp6.i, label %if.end226.while.body.i545_crit_edge, label %if.end226.do.end241_crit_edge

if.end226.do.end241_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end241

if.end226.while.body.i545_crit_edge:              ; preds = %if.end226
  br label %while.body.i545

while.body.i545:                                  ; preds = %if.end.i548.while.body.i545_crit_edge, %if.end226.while.body.i545_crit_edge
  %543 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i543 = getelementptr i8, ptr %544, i32 88
  %545 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i543) #10, !srcloc !759
  %546 = tail call i32 @llvm.bswap.i32(i32 %545) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %547 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %548, i32 noundef 22, i32 noundef %546) #10
  %and.i544 = and i32 %546, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i544)
  %cmp2.i = icmp eq i32 %and.i544, 512
  br i1 %cmp2.i, label %while.body.i545.if.end243_crit_edge, label %if.end.i548

while.body.i545.if.end243_crit_edge:              ; preds = %while.body.i545
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.end.i548:                                      ; preds = %while.body.i545
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %549 = load volatile i32, ptr @jiffies, align 128
  %sub.i546 = add i32 %549, %add.neg.i541
  %cmp.i547 = icmp slt i32 %sub.i546, 0
  br i1 %cmp.i547, label %if.end.i548.while.body.i545_crit_edge, label %if.end.i548.do.end241_crit_edge

if.end.i548.do.end241_crit_edge:                  ; preds = %if.end.i548
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end241

if.end.i548.while.body.i545_crit_edge:            ; preds = %if.end.i548
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i545

do.end241:                                        ; preds = %if.end.i548.do.end241_crit_edge, %if.end226.do.end241_crit_edge
  %550 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %551, ptr noundef nonnull @.str.157, i32 noundef -110) #13
  br label %if.end243

if.end243:                                        ; preds = %do.end241, %while.body.i545.if.end243_crit_edge
  %552 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %panel, align 4
  %tobool245.not = icmp eq ptr %553, null
  br i1 %tobool245.not, label %if.end243.cleanup_crit_edge, label %if.then246

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then246:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #12
  %call248 = tail call i32 @drm_panel_enable(ptr noundef nonnull %553) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then246, %if.end243.cleanup_crit_edge, %do.end144, %do.end135, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %config) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_power_down(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_choose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_train(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_power_up(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_compute_config(ptr nocapture noundef readonly %sor, ptr nocapture noundef readonly %mode, ptr nocapture noundef %config, ptr nocapture noundef readonly %link) unnamed_addr #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  %mul = mul i32 %1, 1000
  %conv = zext i32 %mul to i64
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %mul1 = mul i32 %3, 1000
  %conv2 = sext i32 %mul1 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %lanes = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %4 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1)
  %tobool5.not = icmp eq i32 %mul1, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %conv9 = zext i32 %7 to i64
  %mul10 = mul nsw i64 %conv9, %conv2
  %mul11 = shl nuw nsw i64 %conv, 3
  %conv13 = zext i32 %5 to i64
  %mul14 = mul i64 %mul11, %conv13
  call void @__sanitizer_cov_trace_cmp8(i64 %mul10, i64 %mul14)
  %cmp.not = icmp ult i64 %mul10, %mul14
  br i1 %cmp.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %mul18 = mul i64 %mul10, 100000
  %call = tail call i64 @div64_u64(i64 noundef %mul18, i64 noundef %mul14) #10
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv19 = zext i16 %9 to i64
  %mul20 = mul nuw nsw i64 %conv19, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul20)
  %cmp164.i.i = icmp ult i64 %mul20, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !764

if.then168.i.i:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i = trunc i64 %mul20 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul1
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul1, i64 %mul20) #14, !srcloc !780
  %asmresult1.i.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t570 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t570, %if.else174.i.i ]
  %conv54.i = zext i32 %dividend.addr.0.i.i.off0 to i64
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %for.inc.div_u64.exit.i_crit_edge, %div_u64.exit
  %i.0596 = phi i32 [ 64, %div_u64.exit ], [ %dec, %for.inc.div_u64.exit.i_crit_edge ]
  %params.sroa.24.0595 = phi i32 [ 6400000, %div_u64.exit ], [ %params.sroa.24.1, %for.inc.div_u64.exit.i_crit_edge ]
  %params.sroa.20.0594 = phi i32 [ 64, %div_u64.exit ], [ %params.sroa.20.1, %for.inc.div_u64.exit.i_crit_edge ]
  %params.sroa.17.0593 = phi i32 [ 0, %div_u64.exit ], [ %params.sroa.17.1, %for.inc.div_u64.exit.i_crit_edge ]
  %params.sroa.14.0592 = phi i32 [ 0, %div_u64.exit ], [ %params.sroa.14.1, %for.inc.div_u64.exit.i_crit_edge ]
  %params.sroa.11.0591 = phi i32 [ 0, %div_u64.exit ], [ %params.sroa.11.1, %for.inc.div_u64.exit.i_crit_edge ]
  %conv.i = zext i32 %i.0596 to i64
  %mul.i = mul i64 %call, %conv.i
  %11 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %mul.i, i32 0) #14, !srcloc !781
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %11, 1
  %12 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !782
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %div158.i.i.i582 = lshr i64 %asmresult10.i.i.i.i, 16
  %mul2.i = mul i64 %div158.i.i.i582, 100000
  %sub.i = sub i64 %mul.i, %mul2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 50000, i64 %sub.i)
  %cmp.not.i = icmp ult i64 %sub.i, 50000
  %sub4.i = sub i64 100000, %sub.i
  %frac.0.i = select i1 %cmp.not.i, i64 %sub.i, i64 %sub4.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %frac.0.i)
  %cmp5.not.i = icmp eq i64 %frac.0.i, 0
  br i1 %cmp5.not.i, label %if.end23.thread.thread.i, label %if.else174.i.i114.i

if.else174.i.i114.i:                              ; preds = %div_u64.exit.i
  %conv9.i = trunc i64 %frac.0.i to i32
  %13 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv9.i, i64 10000000000) #14, !srcloc !780
  %asmresult1.i.i.i113.i = extractvalue { i64, i64 } %13, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1500000, i64 %asmresult1.i.i.i113.i)
  %cmp12.not.i = icmp ugt i64 %asmresult1.i.i.i113.i, 1500000
  br i1 %cmp12.not.i, label %if.else20.i, label %if.end23.i

if.else20.i:                                      ; preds = %if.else174.i.i114.i
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select606.i = select i1 %cmp.not.i, i32 15, i32 1
  br label %div_u64.exit458.i

if.end23.i:                                       ; preds = %if.else174.i.i114.i
  %14 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %asmresult1.i.i.i113.i, i32 0) #14, !srcloc !781
  %asmresult.i.i.i196.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i.i197.i = extractvalue { i64, i32 } %14, 1
  %15 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %asmresult1.i.i.i113.i, i64 %asmresult.i.i.i196.i, i32 %asmresult4.i.i.i197.i) #14, !srcloc !782
  %asmresult10.i.i.i214.i = extractvalue { i64, i32 } %15, 0
  %div158.i.i219.i583 = lshr i64 %asmresult10.i.i.i214.i, 16
  %extract.t600.i = trunc i64 %div158.i.i219.i583 to i32
  %not.cmp.not601.i = xor i1 %cmp.not.i, true
  %inc.i = zext i1 %not.cmp.not601.i to i32
  %spec.select.i = add i32 %extract.t600.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp24.i = icmp eq i32 %spec.select.i, 1
  br i1 %cmp24.i, label %if.end23.i.div_u64.exit458.i_crit_edge, label %if.end23.thread.i

if.end23.i.div_u64.exit458.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %div_u64.exit458.i

if.end23.thread.i:                                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool45.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp.not.i, label %if.else44.i, label %if.then30.i

if.end23.thread.thread.i:                         ; preds = %div_u64.exit.i
  br i1 %cmp.not.i, label %if.end23.thread.thread.i.if.end51.i_crit_edge, label %if.end23.thread.thread.i.if.else41.i_crit_edge

if.end23.thread.thread.i.if.else41.i_crit_edge:   ; preds = %if.end23.thread.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41.i

if.end23.thread.thread.i.if.end51.i_crit_edge:    ; preds = %if.end23.thread.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then30.i:                                      ; preds = %if.end23.thread.i
  br i1 %tobool45.not.i, label %if.then30.i.if.else41.i_crit_edge, label %if.then32.i

if.then30.i.if.else41.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41.i

if.then32.i:                                      ; preds = %if.then30.i
  %conv33.i = zext i32 %spec.select.i to i64
  %mul36.i = mul i64 %conv33.i, 9999900000
  %add.i = add i64 %mul36.i, %mul2.i
  %conv39.i = mul i32 %spec.select.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp164.i.i335.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp164.i.i335.i, label %if.then168.i.i340.i, label %if.else174.i.i342.i, !prof !764

if.then168.i.i340.i:                              ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i337.i = trunc i64 %add.i to i32
  %div172.i.i338.i = udiv i32 %conv169.i.i337.i, %conv39.i
  %conv173.i.i339.i = zext i32 %div172.i.i338.i to i64
  br label %if.end51.i

if.else174.i.i342.i:                              ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv39.i, i64 %add.i) #14, !srcloc !780
  %asmresult1.i.i.i341.i = extractvalue { i64, i64 } %16, 1
  br label %if.end51.i

if.else41.i:                                      ; preds = %if.then30.i.if.else41.i_crit_edge, %if.end23.thread.thread.i.if.else41.i_crit_edge
  %add42.i = add i64 %mul2.i, 100000
  br label %if.end51.i

if.else44.i:                                      ; preds = %if.end23.thread.i
  br i1 %tobool45.not.i, label %if.else44.i.if.end51.i_crit_edge, label %if.else44.i.div_u64.exit458.i_crit_edge

if.else44.i.div_u64.exit458.i_crit_edge:          ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %div_u64.exit458.i

if.else44.i.if.end51.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

div_u64.exit458.i:                                ; preds = %if.else44.i.div_u64.exit458.i_crit_edge, %if.end23.i.div_u64.exit458.i_crit_edge, %if.else20.i
  %active_frac.0575583586.i = phi i32 [ %spec.select.i, %if.else44.i.div_u64.exit458.i_crit_edge ], [ 1, %if.end23.i.div_u64.exit458.i_crit_edge ], [ %spec.select606.i, %if.else20.i ]
  %div172.i.i452.i = udiv i32 100000, %active_frac.0575583586.i
  %conv173.i.i453.i = zext i32 %div172.i.i452.i to i64
  %add48.i = add i64 %mul2.i, %conv173.i.i453.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %div_u64.exit458.i, %if.else44.i.if.end51.i_crit_edge, %if.else41.i, %if.else174.i.i342.i, %if.then168.i.i340.i, %if.end23.thread.thread.i.if.end51.i_crit_edge
  %17 = phi i32 [ 1, %if.else41.i ], [ 0, %div_u64.exit458.i ], [ 0, %if.else44.i.if.end51.i_crit_edge ], [ 1, %if.then168.i.i340.i ], [ 1, %if.else174.i.i342.i ], [ 0, %if.end23.thread.thread.i.if.end51.i_crit_edge ]
  %active_frac.0576.i = phi i32 [ 0, %if.else41.i ], [ %active_frac.0575583586.i, %div_u64.exit458.i ], [ 0, %if.else44.i.if.end51.i_crit_edge ], [ %spec.select.i, %if.then168.i.i340.i ], [ %spec.select.i, %if.else174.i.i342.i ], [ 0, %if.end23.thread.thread.i.if.end51.i_crit_edge ]
  %approx.0.i = phi i64 [ %add42.i, %if.else41.i ], [ %add48.i, %div_u64.exit458.i ], [ %mul2.i, %if.else44.i.if.end51.i_crit_edge ], [ %conv173.i.i339.i, %if.then168.i.i340.i ], [ %asmresult1.i.i.i341.i, %if.else174.i.i342.i ], [ %mul2.i, %if.end23.thread.thread.i.if.end51.i_crit_edge ]
  %sub52.i = sub i64 %mul.i, %approx.0.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #10
  %18 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !757
  %call.i.i = call i64 @div_s64_rem(i64 noundef %sub52.i, i32 noundef %i.0596, ptr noundef nonnull %remainder.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #10
  %mul55.i = mul i64 %call.i.i, %conv54.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %mul55.i)
  %cmp56.i = icmp slt i64 %mul55.i, 1
  br i1 %cmp56.i, label %land.lhs.true.i, label %if.end51.i.for.inc_crit_edge

if.end51.i.for.inc_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end51.i
  %sub60.i = sub i64 0, %mul55.i
  %conv63.i = zext i32 %params.sroa.24.0595 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub60.i, i64 %conv63.i)
  %cmp64.i = icmp slt i64 %sub60.i, %conv63.i
  br i1 %cmp64.i, label %div_u64.exit572.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

div_u64.exit572.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul55.i)
  %cmp58.not.i = icmp eq i64 %mul55.i, 0
  %19 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %mul2.i, i32 0) #14, !srcloc !781
  %asmresult.i.i.i538.i = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i.i539.i = extractvalue { i64, i32 } %19, 1
  %20 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %mul2.i, i64 %asmresult.i.i.i538.i, i32 %asmresult4.i.i.i539.i) #14, !srcloc !782
  %asmresult10.i.i.i556.i = extractvalue { i64, i32 } %20, 0
  %div158.i.i561.i584 = lshr i64 %asmresult10.i.i.i556.i, 16
  %extract.t605.i = trunc i64 %div158.i.i561.i584 to i32
  %21 = trunc i64 %mul55.i to i32
  %extract.t.i = sub i32 0, %21
  br i1 %cmp58.not.i, label %for.end.split.loop.exit601, label %div_u64.exit572.i.for.inc_crit_edge

div_u64.exit572.i.for.inc_crit_edge:              ; preds = %div_u64.exit572.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %div_u64.exit572.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end51.i.for.inc_crit_edge
  %params.sroa.11.1 = phi i32 [ %17, %div_u64.exit572.i.for.inc_crit_edge ], [ %params.sroa.11.0591, %land.lhs.true.i.for.inc_crit_edge ], [ %params.sroa.11.0591, %if.end51.i.for.inc_crit_edge ]
  %params.sroa.14.1 = phi i32 [ %extract.t605.i, %div_u64.exit572.i.for.inc_crit_edge ], [ %params.sroa.14.0592, %land.lhs.true.i.for.inc_crit_edge ], [ %params.sroa.14.0592, %if.end51.i.for.inc_crit_edge ]
  %params.sroa.17.1 = phi i32 [ %active_frac.0576.i, %div_u64.exit572.i.for.inc_crit_edge ], [ %params.sroa.17.0593, %land.lhs.true.i.for.inc_crit_edge ], [ %params.sroa.17.0593, %if.end51.i.for.inc_crit_edge ]
  %params.sroa.20.1 = phi i32 [ %i.0596, %div_u64.exit572.i.for.inc_crit_edge ], [ %params.sroa.20.0594, %land.lhs.true.i.for.inc_crit_edge ], [ %params.sroa.20.0594, %if.end51.i.for.inc_crit_edge ]
  %params.sroa.24.1 = phi i32 [ %extract.t.i, %div_u64.exit572.i.for.inc_crit_edge ], [ %params.sroa.24.0595, %land.lhs.true.i.for.inc_crit_edge ], [ %params.sroa.24.0595, %if.end51.i.for.inc_crit_edge ]
  %dec = add nsw i32 %i.0596, -1
  %cmp25 = icmp ugt i32 %dec, 31
  br i1 %cmp25, label %for.inc.div_u64.exit.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.div_u64.exit.i_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %div_u64.exit.i

for.end.split.loop.exit601:                       ; preds = %div_u64.exit572.i
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t605.i.le = trunc i64 %div158.i.i561.i584 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit601, %for.inc.for.end_crit_edge
  %params.sroa.11.3 = phi i32 [ %17, %for.end.split.loop.exit601 ], [ %params.sroa.11.1, %for.inc.for.end_crit_edge ]
  %params.sroa.14.3 = phi i32 [ %extract.t605.i.le, %for.end.split.loop.exit601 ], [ %params.sroa.14.1, %for.inc.for.end_crit_edge ]
  %params.sroa.17.3 = phi i32 [ %active_frac.0576.i, %for.end.split.loop.exit601 ], [ %params.sroa.17.1, %for.inc.for.end_crit_edge ]
  %params.sroa.20.3 = phi i32 [ %i.0596, %for.end.split.loop.exit601 ], [ %params.sroa.20.1, %for.inc.for.end_crit_edge ]
  %params.sroa.24.3 = phi i32 [ 0, %for.end.split.loop.exit601 ], [ %params.sroa.24.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.sroa.17.3)
  %cmp31 = icmp eq i32 %params.sroa.17.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.sroa.11.3)
  %tobool36.not = icmp eq i32 %params.sroa.11.3, 0
  %params.sroa.11.3.sink = select i1 %cmp31, i32 0, i32 %params.sroa.11.3
  %narrow = select i1 %cmp31, i1 %tobool36.not, i1 false
  %spec.select = sext i1 %narrow to i32
  %params.sroa.14.3.sink = add i32 %params.sroa.14.3, %spec.select
  %params.sroa.17.3.sink = select i1 %cmp31, i32 1, i32 %params.sroa.17.3
  %22 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %params.sroa.11.3.sink, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %params.sroa.14.3.sink, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %params.sroa.20.3, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %params.sroa.17.3.sink, ptr %28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_sor_compute_config.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_sor_compute_config, %do.end)) #10
          to label %if.then58 [label %do.end], !srcloc !763

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %22, align 4
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %24, align 4
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %26, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_sor_compute_config.__UNIQUE_ID_ddebug341, ptr noundef %31, ptr noundef nonnull @.str.220, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39) #10
  br label %do.end

do.end:                                           ; preds = %if.then58, %for.end
  %40 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %26, align 4
  %conv66 = zext i32 %41 to i64
  %sub = sub i64 100000, %call
  %mul67 = mul i64 %sub, %call
  %mul69 = mul i64 %mul67, %conv66
  %42 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %mul69, i32 0) #14, !srcloc !781
  %asmresult.i.i.i251 = extractvalue { i64, i32 } %42, 0
  %asmresult4.i.i.i252 = extractvalue { i64, i32 } %42, 1
  %43 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %mul69, i64 %asmresult.i.i.i251, i32 %asmresult4.i.i.i252) #14, !srcloc !782
  %asmresult10.i.i.i264 = extractvalue { i64, i32 } %43, 0
  %div158.i.i269572 = lshr i64 %asmresult10.i.i.i264, 16
  %conv72 = zext i32 %params.sroa.24.3 to i64
  %add = add nuw nsw i64 %div158.i.i269572, %conv72
  %44 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %add, i32 0) #14, !srcloc !781
  %asmresult.i.i.i283 = extractvalue { i64, i32 } %44, 0
  %asmresult4.i.i.i284 = extractvalue { i64, i32 } %44, 1
  %45 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %add, i64 %asmresult.i.i.i283, i32 %asmresult4.i.i.i284) #14, !srcloc !782
  %asmresult10.i.i.i296 = extractvalue { i64, i32 } %45, 0
  %div158.i.i301573 = lshr i64 %asmresult10.i.i.i296, 16
  %46 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config, align 4
  %div235 = lshr i32 %47, 3
  %48 = trunc i64 %div158.i.i301573 to i32
  %49 = add nuw nsw i32 %div235, 2
  %conv78 = add i32 %49, %48
  %watermark79 = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 5
  %50 = ptrtoint ptr %watermark79 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv78, ptr %watermark79, align 4
  %51 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hdisplay, align 4
  %conv81 = zext i16 %52 to i32
  %mul83 = mul i32 %47, %conv81
  %53 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lanes, align 4
  %mul85 = shl i32 %54, 3
  %mul86 = mul i32 %mul83, %mul85
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %conv78)
  %cmp88 = icmp ugt i32 %conv78, 30
  br i1 %cmp88, label %if.then90, label %if.else97

if.then90:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %watermark79 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 30, ptr %watermark79, align 4
  %dev95 = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %56 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev95, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.221, i32 noundef 30) #13
  br label %if.end109

if.else97:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %conv78, i32 %mul86)
  %cmp99 = icmp ugt i32 %conv78, %mul86
  br i1 %cmp99, label %if.then101, label %if.else97.if.end109_crit_edge

if.else97.if.end109_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then101:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %watermark79 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul86, ptr %watermark79, align 4
  %dev106 = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %59 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev106, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.223, i32 noundef %mul86) #13
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.else97.if.end109_crit_edge, %if.then90
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %61 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %htotal, align 2
  %conv110 = zext i16 %62 to i32
  %63 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hdisplay, align 4
  %conv112 = zext i16 %64 to i32
  %sub113 = add nsw i32 %conv110, -7
  %sub114 = sub nsw i32 %sub113, %conv112
  %conv115 = sext i32 %sub114 to i64
  %mul116 = mul nsw i64 %conv115, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul116)
  %cmp164.i.i408 = icmp ult i64 %mul116, 4294967296
  br i1 %cmp164.i.i408, label %if.then168.i.i413, label %if.else174.i.i415, !prof !764

if.then168.i.i413:                                ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i410 = trunc i64 %mul116 to i32
  %div172.i.i411 = udiv i32 %conv169.i.i410, %mul1
  br label %div_u64.exit417

if.else174.i.i415:                                ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %65 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul1, i64 %mul116) #14, !srcloc !780
  %asmresult1.i.i.i414 = extractvalue { i64, i64 } %65, 1
  %extract.t576 = trunc i64 %asmresult1.i.i.i414 to i32
  br label %div_u64.exit417

div_u64.exit417:                                  ; preds = %if.else174.i.i415, %if.then168.i.i413
  %dividend.addr.0.i.i416.off0 = phi i32 [ %div172.i.i411, %if.then168.i.i413 ], [ %extract.t576, %if.else174.i.i415 ]
  %hblank_symbols = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 6
  %66 = ptrtoint ptr %hblank_symbols to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %dividend.addr.0.i.i416.off0, ptr %hblank_symbols, align 4
  %caps = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3
  %67 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %caps, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool120.not = icmp eq i8 %68, 0
  br i1 %tobool120.not, label %div_u64.exit417.if.end124_crit_edge, label %if.then121

div_u64.exit417.if.end124_crit_edge:              ; preds = %div_u64.exit417
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then121:                                       ; preds = %div_u64.exit417
  call void @__sanitizer_cov_trace_pc() #12
  %sub123 = add i32 %dividend.addr.0.i.i416.off0, -3
  %69 = ptrtoint ptr %hblank_symbols to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub123, ptr %hblank_symbols, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %div_u64.exit417.if.end124_crit_edge
  %70 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lanes, align 4
  %div126 = udiv i32 12, %71
  %72 = ptrtoint ptr %hblank_symbols to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hblank_symbols, align 4
  %sub128 = sub i32 %73, %div126
  store i32 %sub128, ptr %hblank_symbols, align 4
  %74 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hdisplay, align 4
  %conv130 = zext i16 %75 to i32
  %sub131 = add nsw i32 %conv130, -25
  %conv132 = sext i32 %sub131 to i64
  %mul133 = mul nsw i64 %conv132, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul133)
  %cmp164.i.i522 = icmp ult i64 %mul133, 4294967296
  br i1 %cmp164.i.i522, label %if.then168.i.i527, label %if.else174.i.i529, !prof !764

if.then168.i.i527:                                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i.i524 = trunc i64 %mul133 to i32
  %div172.i.i525 = udiv i32 %conv169.i.i524, %mul1
  br label %div_u64.exit531

if.else174.i.i529:                                ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %76 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul1, i64 %mul133) #14, !srcloc !780
  %asmresult1.i.i.i528 = extractvalue { i64, i64 } %76, 1
  %extract.t580 = trunc i64 %asmresult1.i.i.i528 to i32
  br label %div_u64.exit531

div_u64.exit531:                                  ; preds = %if.else174.i.i529, %if.then168.i.i527
  %dividend.addr.0.i.i530.off0 = phi i32 [ %div172.i.i525, %if.then168.i.i527 ], [ %extract.t580, %if.else174.i.i529 ]
  %vblank_symbols = getelementptr inbounds %struct.tegra_sor_config, ptr %config, i32 0, i32 7
  %77 = ptrtoint ptr %vblank_symbols to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %dividend.addr.0.i.i530.off0, ptr %vblank_symbols, align 4
  %78 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lanes, align 4
  %div138 = udiv i32 36, %79
  %add139.neg = add i32 %dividend.addr.0.i.i530.off0, -4
  %sub141 = sub i32 %add139.neg, %div138
  store i32 %sub141, ptr %vblank_symbols, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_sor_compute_config.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_sor_compute_config, %cleanup)) #10
          to label %if.then156 [label %cleanup], !srcloc !763

if.then156:                                       ; preds = %div_u64.exit531
  call void @__sanitizer_cov_trace_pc() #12
  %dev157 = getelementptr inbounds %struct.tegra_sor, ptr %sor, i32 0, i32 2
  %80 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev157, align 8
  %82 = ptrtoint ptr %hblank_symbols to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hblank_symbols, align 4
  %84 = ptrtoint ptr %vblank_symbols to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vblank_symbols, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_sor_compute_config.__UNIQUE_ID_ddebug342, ptr noundef %81, ptr noundef nonnull @.str.225, i32 noundef %83, i32 noundef %85) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then156, %div_u64.exit531, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ 0, %if.then156 ], [ 0, %div_u64.exit531 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_update_rates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_dp_link_apply_training(ptr nocapture noundef readonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %soc1 = getelementptr i8, ptr %link, i32 -52
  %lanes = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp176.not = icmp eq i32 %1, 0
  br i1 %cmp176.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc1, align 4
  %train = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12
  %lane_map = getelementptr inbounds %struct.tegra_sor_soc, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %lane_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lane_map, align 4
  %voltage_swing17 = getelementptr inbounds %struct.tegra_sor_soc, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %voltage_swing17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voltage_swing17, align 4
  %pre_emphasis26 = getelementptr inbounds %struct.tegra_sor_soc, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %pre_emphasis26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pre_emphasis26, align 4
  %post_cursor37 = getelementptr inbounds %struct.tegra_sor_soc, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %post_cursor37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %post_cursor37, align 4
  %tx_pu49 = getelementptr inbounds %struct.tegra_sor_soc, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %tx_pu49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_pu49, align 4
  %pattern69 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %pattern69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pattern69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %switch = icmp ult i32 %15, 4
  br i1 %switch, label %for.body.lr.ph.split, label %for.body.lr.ph.cleanup93_crit_edge

for.body.lr.ph.cleanup93_crit_edge:               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %channel_coding = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %channel_coding to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel_coding, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %18 = icmp ult i32 %15, 3
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tegra_sor_dp_link_apply_training, i32 0, i32 %15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph.split
  %i.0182 = phi i32 [ 0, %for.body.lr.ph.split ], [ %inc, %for.inc.for.body_crit_edge ]
  %tx_pu.0181 = phi i32 [ 0, %for.body.lr.ph.split ], [ %35, %for.inc.for.body_crit_edge ]
  %pattern.0180 = phi i32 [ 0, %for.body.lr.ph.split ], [ %or77, %for.inc.for.body_crit_edge ]
  %post_cursor.0179 = phi i32 [ 0, %for.body.lr.ph.split ], [ %or47, %for.inc.for.body_crit_edge ]
  %pre_emphasis.0178 = phi i32 [ 0, %for.body.lr.ph.split ], [ %or36, %for.inc.for.body_crit_edge ]
  %voltage_swing.0177 = phi i32 [ 0, %for.body.lr.ph.split ], [ %or, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr %train, i32 0, i32 %i.0182
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 0, i32 1, i32 %i.0182
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6, align 4
  %arrayidx11 = getelementptr %struct.drm_dp_link, ptr %link, i32 0, i32 12, i32 0, i32 2, i32 %i.0182
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11, align 4
  %arrayidx14 = getelementptr i8, ptr %5, i32 %i.0182
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx14, align 1
  %shl = shl i8 %26, 3
  %idxprom = and i32 %24, 255
  %idxprom19 = and i32 %20, 255
  %idxprom21 = and i32 %22, 255
  %arrayidx22 = getelementptr [4 x [4 x i8]], ptr %7, i32 %idxprom, i32 %idxprom19, i32 %idxprom21
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %28 to i32
  %conv24 = zext i8 %shl to i32
  %shl25 = shl i32 %conv23, %conv24
  %or = or i32 %shl25, %voltage_swing.0177
  %arrayidx32 = getelementptr [4 x [4 x i8]], ptr %9, i32 %idxprom, i32 %idxprom19, i32 %idxprom21
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %30 to i32
  %shl35 = shl i32 %conv33, %conv24
  %or36 = or i32 %shl35, %pre_emphasis.0178
  %arrayidx43 = getelementptr [4 x [4 x i8]], ptr %11, i32 %idxprom, i32 %idxprom19, i32 %idxprom21
  %31 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %32 to i32
  %shl46 = shl i32 %conv44, %conv24
  %or47 = or i32 %shl46, %post_cursor.0179
  %arrayidx55 = getelementptr [4 x [4 x i8]], ptr %13, i32 %idxprom, i32 %idxprom19, i32 %idxprom21
  %33 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %34 to i32
  %35 = tail call i32 @llvm.umax.i32(i32 %tx_pu.0181, i32 %conv56)
  br i1 %18, label %switch.lookup, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %for.body.for.inc_crit_edge
  %value.0 = phi i32 [ %switch.load, %switch.lookup ], [ 3, %for.body.for.inc_crit_edge ]
  %or74 = or i32 %value.0, 64
  %spec.select151 = select i1 %tobool.not, i32 %value.0, i32 %or74
  %shl76 = shl i32 %pattern.0180, 8
  %or77 = or i32 %spec.select151, %shl76
  %inc = add nuw i32 %i.0182, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = shl i32 %35, 8
  %phi.bo187 = and i32 %phi.bo, 65280
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %voltage_swing.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.end.loopexit ]
  %pre_emphasis.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or36, %for.end.loopexit ]
  %post_cursor.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or47, %for.end.loopexit ]
  %pattern.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or77, %for.end.loopexit ]
  %tx_pu.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo187, %for.end.loopexit ]
  %dev.i = getelementptr i8, ptr %link, i32 -56
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %38, i32 noundef 78, i32 noundef %voltage_swing.0.lcssa) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %39 = tail call i32 @llvm.bswap.i32(i32 %voltage_swing.0.lcssa) #10
  %regs.i = getelementptr i8, ptr %link, i32 -48
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %41, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %39) #10, !srcloc !762
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %43, i32 noundef 82, i32 noundef %pre_emphasis.0.lcssa) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %pre_emphasis.0.lcssa) #10
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 8
  %add.ptr.i154 = getelementptr i8, ptr %46, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %44) #10, !srcloc !762
  %tps3_supported = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %tps3_supported to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tps3_supported, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool82.not = icmp eq i8 %48, 0
  br i1 %tobool82.not, label %for.end.if.end84_crit_edge, label %if.then83

for.end.if.end84_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then83:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %50, i32 noundef 86, i32 noundef %post_cursor.0.lcssa) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %51 = tail call i32 @llvm.bswap.i32(i32 %post_cursor.0.lcssa) #10
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr.i157 = getelementptr i8, ptr %53, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %51) #10, !srcloc !762
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %for.end.if.end84_crit_edge
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %55, i32 noundef 109, i32 noundef %pattern.0.lcssa) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %56 = tail call i32 @llvm.bswap.i32(i32 %pattern.0.lcssa) #10
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 8
  %add.ptr.i160 = getelementptr i8, ptr %58, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %56) #10, !srcloc !762
  %59 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %soc1, align 4
  %regs = getelementptr inbounds %struct.tegra_sor_soc, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %dp_padctl0 = getelementptr inbounds %struct.tegra_sor_regs, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %dp_padctl0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dp_padctl0, align 4
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %64, 2
  %add.ptr.i162 = getelementptr i8, ptr %66, i32 %shl.i
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #10, !srcloc !759
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %70, i32 noundef %64, i32 noundef %68) #10
  %and = and i32 %68, -4259585
  %or86 = or i32 %tx_pu.0.lcssa, %and
  %or89 = or i32 %or86, 4194304
  %71 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %soc1, align 4
  %regs91 = getelementptr inbounds %struct.tegra_sor_soc, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %regs91 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs91, align 4
  %dp_padctl092 = getelementptr inbounds %struct.tegra_sor_regs, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %dp_padctl092 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dp_padctl092, align 4
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %78, i32 noundef %76, i32 noundef %or89) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %79 = tail call i32 @llvm.bswap.i32(i32 %or89) #10
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 8
  %shl.i166 = shl i32 %76, 2
  %add.ptr.i167 = getelementptr i8, ptr %81, i32 %shl.i166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 %79) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #10
  br label %cleanup93

cleanup93:                                        ; preds = %if.end84, %for.body.lr.ph.cleanup93_crit_edge
  %retval.2 = phi i32 [ 0, %if.end84 ], [ -22, %for.body.lr.ph.cleanup93_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_dp_link_configure(ptr noundef readonly %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate1 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 6
  %0 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate1, align 4
  %call = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %1) #10
  %conv = zext i8 %call to i32
  %lanes2 = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 7
  %2 = ptrtoint ptr %lanes2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lanes2, align 4
  %regs.i = getelementptr i8, ptr %link, i32 -48
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 76
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr i8, ptr %link, i32 -56
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %9, i32 noundef 19, i32 noundef %7) #10
  %and = and i32 %7, -125
  %and4 = shl nuw nsw i32 %conv, 2
  %shl = and i32 %and4, 124
  %or = or i32 %and, %shl
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %11, i32 noundef 19, i32 noundef %or) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i92 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %12) #10, !srcloc !762
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i94 = getelementptr i8, ptr %16, i32 304
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #10, !srcloc !759
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %20, i32 noundef 76, i32 noundef %18) #10
  %and6 = and i32 %18, -2031617
  %notmask = shl nsw i32 -1, %3
  %sub = xor i32 %notmask, -1
  %shl8 = shl i32 %sub, 16
  %or9 = or i32 %and6, %shl8
  %caps = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 3
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %caps, align 4, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  %or10 = or i32 %or9, 16384
  %spec.select = select i1 %tobool.not, i32 %or9, i32 %or10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %24, i32 noundef 76, i32 noundef %spec.select) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i98 = getelementptr i8, ptr %27, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %25) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 400, i32 noundef 1000, i32 noundef 2) #10
  %soc = getelementptr i8, ptr %link, i32 -52
  %28 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc, align 4
  %regs = getelementptr inbounds %struct.tegra_sor_soc, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %pll1 = getelementptr inbounds %struct.tegra_sor_regs, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pll1, align 4
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %33, 2
  %add.ptr.i100 = getelementptr i8, ptr %35, i32 %shl.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #10, !srcloc !759
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %39, i32 noundef %33, i32 noundef %37) #10
  %and12 = and i32 %37, -15728641
  %40 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.377)
  switch i8 %call, label %entry.sw.epilog_crit_edge [
    i8 6, label %sw.bb
    i8 10, label %sw.bb14
    i8 20, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or13 = or i32 %and12, 3145728
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or15 = or i32 %and12, 4194304
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or17 = or i32 %and12, 6291456
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb, %entry.sw.epilog_crit_edge
  %value.1 = phi i32 [ %and12, %entry.sw.epilog_crit_edge ], [ %or17, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb ]
  %41 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %soc, align 4
  %regs19 = getelementptr inbounds %struct.tegra_sor_soc, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %regs19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs19, align 4
  %pll120 = getelementptr inbounds %struct.tegra_sor_regs, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %pll120 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pll120, align 4
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %48, i32 noundef %46, i32 noundef %value.1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %value.1) #10
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %shl.i104 = shl i32 %46, 2
  %add.ptr.i105 = getelementptr i8, ptr %51, i32 %shl.i104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %49) #10, !srcloc !762
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr.i107 = getelementptr i8, ptr %53, i32 384
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #10, !srcloc !759
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %57, i32 noundef 96, i32 noundef %55) #10
  %edp = getelementptr inbounds %struct.drm_dp_link, ptr %link, i32 0, i32 5
  %58 = ptrtoint ptr %edp to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %edp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp = icmp eq i8 %59, 0
  %and25 = and i32 %55, -3
  %masksel = select i1 %cmp, i32 0, i32 2
  %value.2 = or i32 %masksel, %and25
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %61, i32 noundef 96, i32 noundef %value.2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %62 = tail call i32 @llvm.bswap.i32(i32 %value.2) #10
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 8
  %add.ptr.i111 = getelementptr i8, ptr %64, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %62) #10, !srcloc !762
  %65 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %soc, align 4
  %regs.i112 = getelementptr inbounds %struct.tegra_sor_soc, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %regs.i112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i112, align 4
  %dp_padctl0.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %dp_padctl0.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dp_padctl0.i, align 4
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 8
  %shl.i.i = shl i32 %70, 2
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 %shl.i.i
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !759
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %76, i32 noundef %70, i32 noundef %74) #10
  %and.i = and i32 %74, -16
  %77 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %soc, align 4
  %regs2.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs2.i, align 4
  %dp_padctl03.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %80, i32 0, i32 10
  %81 = ptrtoint ptr %dp_padctl03.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dp_padctl03.i, align 4
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %84, i32 noundef %82, i32 noundef %and.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %85 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 8
  %shl.i24.i = shl i32 %82, 2
  %add.ptr.i25.i = getelementptr i8, ptr %87, i32 %shl.i24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %85) #10, !srcloc !762
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %89, i32 noundef 33, i32 noundef -2147418112) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %91, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 384) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -25, %92
  %93 = load volatile i32, ptr @jiffies, align 128
  %sub32.i = add i32 %add.neg.i, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32.i)
  %cmp33.i = icmp slt i32 %sub32.i, 0
  br i1 %cmp33.i, label %sw.epilog.while.body.i_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.epilog.while.body.i_crit_edge:                 ; preds = %sw.epilog
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %sw.epilog.while.body.i_crit_edge
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %95, i32 132
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #10, !srcloc !759
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %99, i32 noundef 33, i32 noundef %97) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp7.i = icmp sgt i32 %97, -1
  br i1 %cmp7.i, label %if.end32, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %100, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.226, i32 noundef -110) #13
  br label %cleanup

if.end32:                                         ; preds = %while.body.i
  %103 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %soc, align 4
  %regs.i114 = getelementptr inbounds %struct.tegra_sor_soc, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %regs.i114 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i114, align 4
  %dp_padctl0.i115 = getelementptr inbounds %struct.tegra_sor_regs, ptr %106, i32 0, i32 10
  %107 = ptrtoint ptr %dp_padctl0.i115 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dp_padctl0.i115, align 4
  %109 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i, align 8
  %shl.i.i117 = shl i32 %108, 2
  %add.ptr.i.i118 = getelementptr i8, ptr %110, i32 %shl.i.i117
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118) #10, !srcloc !759
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %114, i32 noundef %108, i32 noundef %112) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i120 = icmp ult i32 %3, 3
  %115 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %soc, align 4
  %lane_map.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %116, i32 0, i32 10
  %117 = ptrtoint ptr %lane_map.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %lane_map.i, align 4
  %arrayidx.i = getelementptr i8, ptr %118, i32 3
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %120 to i32
  %shl.i121 = shl nuw i32 1, %conv.i
  %arrayidx4.i = getelementptr i8, ptr %118, i32 2
  %121 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %122 to i32
  %shl7.i = shl nuw i32 1, %conv5.i
  %or.i = or i32 %shl7.i, %shl.i121
  br i1 %cmp.i120, label %if.end.i123, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %or21.i = or i32 %or.i, %112
  br label %if.end41.thread.i

if.end.i123:                                      ; preds = %if.end32
  %neg.i = xor i32 %or.i, -1
  %and.i122 = and i32 %112, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp22.not.i = icmp eq i32 %3, 2
  br i1 %cmp22.not.i, label %if.end.i123.if.end41.thread.i_crit_edge, label %if.end41.i

if.end.i123.if.end41.thread.i_crit_edge:          ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.thread.i

if.end41.thread.i:                                ; preds = %if.end.i123.if.end41.thread.i_crit_edge, %if.end.thread.i
  %value.0117.i = phi i32 [ %or21.i, %if.end.thread.i ], [ %and.i122, %if.end.i123.if.end41.thread.i_crit_edge ]
  %arrayidx36.i = getelementptr i8, ptr %118, i32 1
  %123 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %124 to i32
  %shl39.i = shl nuw i32 1, %conv37.i
  %or40.i = or i32 %shl39.i, %value.0117.i
  br label %if.else53.i

if.end41.i:                                       ; preds = %if.end.i123
  %arrayidx27.i = getelementptr i8, ptr %118, i32 1
  %125 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %126 to i32
  %shl30.i = shl nuw i32 1, %conv28.i
  %neg31.i = xor i32 %shl30.i, -1
  %and32.i = and i32 %and.i122, %neg31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42.i = icmp eq i32 %3, 0
  br i1 %cmp42.i, label %if.then44.i, label %if.end41.i.if.else53.i_crit_edge

if.end41.i.if.else53.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else53.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %118, align 1
  %conv48.i = zext i8 %128 to i32
  %shl50.i = shl nuw i32 1, %conv48.i
  %neg51.i = xor i32 %shl50.i, -1
  %and52.i = and i32 %and32.i, %neg51.i
  br label %if.end61.i

if.else53.i:                                      ; preds = %if.end41.i.if.else53.i_crit_edge, %if.end41.thread.i
  %value.1120.i = phi i32 [ %or40.i, %if.end41.thread.i ], [ %and32.i, %if.end41.i.if.else53.i_crit_edge ]
  %129 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %118, align 1
  %conv57.i = zext i8 %130 to i32
  %shl59.i = shl nuw i32 1, %conv57.i
  %or60.i = or i32 %shl59.i, %value.1120.i
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.else53.i, %if.then44.i
  %value.2.i = phi i32 [ %and52.i, %if.then44.i ], [ %or60.i, %if.else53.i ]
  %regs63.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %116, i32 0, i32 5
  %131 = ptrtoint ptr %regs63.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs63.i, align 4
  %dp_padctl064.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %132, i32 0, i32 10
  %133 = ptrtoint ptr %dp_padctl064.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dp_padctl064.i, align 4
  %135 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %136, i32 noundef %134, i32 noundef %value.2.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %137 = tail call i32 @llvm.bswap.i32(i32 %value.2.i) #10
  %138 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i, align 8
  %shl.i107.i = shl i32 %134, 2
  %add.ptr.i108.i = getelementptr i8, ptr %139, i32 %shl.i107.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 %137) #10, !srcloc !762
  %140 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %141, i32 noundef 33, i32 noundef -2146435072) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %142 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i, align 8
  %add.ptr.i111.i = getelementptr i8, ptr %143, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 4224) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  %add66.neg.i = sub i32 -25, %144
  %145 = load volatile i32, ptr @jiffies, align 128
  %sub121.i = add i32 %add66.neg.i, %145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub121.i)
  %cmp67122.i = icmp slt i32 %sub121.i, 0
  br i1 %cmp67122.i, label %if.end61.i.while.body.i124_crit_edge, label %if.end61.i.do.end39_crit_edge

if.end61.i.do.end39_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

if.end61.i.while.body.i124_crit_edge:             ; preds = %if.end61.i
  br label %while.body.i124

while.body.i124:                                  ; preds = %if.end74.i.while.body.i124_crit_edge, %if.end61.i.while.body.i124_crit_edge
  %146 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs.i, align 8
  %add.ptr.i113.i = getelementptr i8, ptr %147, i32 132
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.i) #10, !srcloc !759
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %150 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %151, i32 noundef 33, i32 noundef %149) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %149)
  %cmp71.i = icmp sgt i32 %149, -1
  br i1 %cmp71.i, label %if.end43, label %if.end74.i

if.end74.i:                                       ; preds = %while.body.i124
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %152 = load volatile i32, ptr @jiffies, align 128
  %sub.i125 = add i32 %152, %add66.neg.i
  %cmp67.i = icmp slt i32 %sub.i125, 0
  br i1 %cmp67.i, label %if.end74.i.while.body.i124_crit_edge, label %if.end74.i.do.end39_crit_edge

if.end74.i.do.end39_crit_edge:                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

if.end74.i.while.body.i124_crit_edge:             ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i124

do.end39:                                         ; preds = %if.end74.i.do.end39_crit_edge, %if.end61.i.do.end39_crit_edge
  %153 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp41.not = icmp eq i32 %3, 1
  %cond = select i1 %cmp41.not, ptr @.str.232, ptr @.str.231
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.229, i32 noundef %3, ptr noundef nonnull %cond, i32 noundef -110) #13
  br label %cleanup

if.end43:                                         ; preds = %while.body.i124
  %155 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %soc, align 4
  %regs.i130 = getelementptr inbounds %struct.tegra_sor_soc, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %regs.i130 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i130, align 4
  %dp_padctl0.i131 = getelementptr inbounds %struct.tegra_sor_regs, ptr %158, i32 0, i32 10
  %159 = ptrtoint ptr %dp_padctl0.i131 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dp_padctl0.i131, align 4
  %161 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i, align 8
  %shl.i.i133 = shl i32 %160, 2
  %add.ptr.i.i134 = getelementptr i8, ptr %162, i32 %shl.i.i133
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i134) #10, !srcloc !759
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %165 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %166, i32 noundef %160, i32 noundef %164) #10
  %167 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %soc, align 4
  %lane_map.i137 = getelementptr inbounds %struct.tegra_sor_soc, ptr %168, i32 0, i32 10
  %169 = ptrtoint ptr %lane_map.i137 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lane_map.i137, align 4
  %arrayidx.i138 = getelementptr i8, ptr %170, i32 3
  %171 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.i138, align 1
  %conv.i139 = zext i8 %172 to i32
  %shl.i140 = shl i32 16, %conv.i139
  %arrayidx4.i141 = getelementptr i8, ptr %170, i32 2
  %173 = ptrtoint ptr %arrayidx4.i141 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx4.i141, align 1
  %conv5.i142 = zext i8 %174 to i32
  %shl7.i143 = shl i32 16, %conv5.i142
  %or.i147 = or i32 %shl7.i143, %shl.i140
  br i1 %cmp.i120, label %if.end.i151, label %if.end.thread.i146

if.end.thread.i146:                               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %or21.i145 = or i32 %or.i147, %164
  br label %if.end41.thread.i157

if.end.i151:                                      ; preds = %if.end43
  %neg.i148 = xor i32 %or.i147, -1
  %and.i149 = and i32 %164, %neg.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp22.not.i150 = icmp eq i32 %3, 2
  br i1 %cmp22.not.i150, label %if.end.i151.if.end41.thread.i157_crit_edge, label %if.end41.i165

if.end.i151.if.end41.thread.i157_crit_edge:       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.thread.i157

if.end41.thread.i157:                             ; preds = %if.end.i151.if.end41.thread.i157_crit_edge, %if.end.thread.i146
  %value.0112.i = phi i32 [ %or21.i145, %if.end.thread.i146 ], [ %and.i149, %if.end.i151.if.end41.thread.i157_crit_edge ]
  %arrayidx36.i153 = getelementptr i8, ptr %170, i32 1
  %175 = ptrtoint ptr %arrayidx36.i153 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx36.i153, align 1
  %conv37.i154 = zext i8 %176 to i32
  %shl39.i155 = shl i32 16, %conv37.i154
  %or40.i156 = or i32 %shl39.i155, %value.0112.i
  br label %if.else53.i176

if.end41.i165:                                    ; preds = %if.end.i151
  %arrayidx27.i159 = getelementptr i8, ptr %170, i32 1
  %177 = ptrtoint ptr %arrayidx27.i159 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx27.i159, align 1
  %conv28.i160 = zext i8 %178 to i32
  %shl30.i161 = shl i32 16, %conv28.i160
  %neg31.i162 = xor i32 %shl30.i161, -1
  %and32.i163 = and i32 %and.i149, %neg31.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42.i164 = icmp eq i32 %3, 0
  br i1 %cmp42.i164, label %if.then44.i171, label %if.end41.i165.if.else53.i176_crit_edge

if.end41.i165.if.else53.i176_crit_edge:           ; preds = %if.end41.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else53.i176

if.then44.i171:                                   ; preds = %if.end41.i165
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %170 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %170, align 1
  %conv48.i167 = zext i8 %180 to i32
  %shl50.i168 = shl i32 16, %conv48.i167
  %neg51.i169 = xor i32 %shl50.i168, -1
  %and52.i170 = and i32 %and32.i163, %neg51.i169
  br label %tegra_sor_dp_precharge.exit

if.else53.i176:                                   ; preds = %if.end41.i165.if.else53.i176_crit_edge, %if.end41.thread.i157
  %value.1115.i = phi i32 [ %or40.i156, %if.end41.thread.i157 ], [ %and32.i163, %if.end41.i165.if.else53.i176_crit_edge ]
  %181 = ptrtoint ptr %170 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %170, align 1
  %conv57.i173 = zext i8 %182 to i32
  %shl59.i174 = shl i32 16, %conv57.i173
  %or60.i175 = or i32 %shl59.i174, %value.1115.i
  br label %tegra_sor_dp_precharge.exit

tegra_sor_dp_precharge.exit:                      ; preds = %if.else53.i176, %if.then44.i171
  %value.2.i177 = phi i32 [ %and52.i170, %if.then44.i171 ], [ %or60.i175, %if.else53.i176 ]
  %regs63.i178 = getelementptr inbounds %struct.tegra_sor_soc, ptr %168, i32 0, i32 5
  %183 = ptrtoint ptr %regs63.i178 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs63.i178, align 4
  %dp_padctl064.i179 = getelementptr inbounds %struct.tegra_sor_regs, ptr %184, i32 0, i32 10
  %185 = ptrtoint ptr %dp_padctl064.i179 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %dp_padctl064.i179, align 4
  %187 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %188, i32 noundef %186, i32 noundef %value.2.i177) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %189 = tail call i32 @llvm.bswap.i32(i32 %value.2.i177) #10
  %190 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i, align 8
  %shl.i100.i = shl i32 %186, 2
  %add.ptr.i101.i = getelementptr i8, ptr %191, i32 %shl.i100.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 %189) #10, !srcloc !762
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 100, i32 noundef 2) #10
  %192 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %soc, align 4
  %regs66.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %193, i32 0, i32 5
  %194 = ptrtoint ptr %regs66.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs66.i, align 4
  %dp_padctl067.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %195, i32 0, i32 10
  %196 = ptrtoint ptr %dp_padctl067.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %dp_padctl067.i, align 4
  %198 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i, align 8
  %shl.i103.i = shl i32 %197, 2
  %add.ptr.i104.i = getelementptr i8, ptr %199, i32 %shl.i103.i
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104.i) #10, !srcloc !759
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %202 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %203, i32 noundef %197, i32 noundef %201) #10
  %and69.i = and i32 %201, -241
  %204 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %soc, align 4
  %regs71.i = getelementptr inbounds %struct.tegra_sor_soc, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %regs71.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs71.i, align 4
  %dp_padctl072.i = getelementptr inbounds %struct.tegra_sor_regs, ptr %207, i32 0, i32 10
  %208 = ptrtoint ptr %dp_padctl072.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %dp_padctl072.i, align 4
  %210 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %211, i32 noundef %209, i32 noundef %and69.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %212 = tail call i32 @llvm.bswap.i32(i32 %and69.i) #10
  %213 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs.i, align 8
  %shl.i108.i = shl i32 %209, 2
  %add.ptr.i109.i = getelementptr i8, ptr %214, i32 %shl.i108.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %212) #10, !srcloc !762
  br label %cleanup

cleanup:                                          ; preds = %tegra_sor_dp_precharge.exit, %do.end39, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ -110, %do.end39 ], [ 0, %tegra_sor_dp_precharge.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_connector_reset(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state1 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %1 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state1, align 8
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef nonnull %2) #10
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1, align 8
  tail call void @kfree(ptr noundef %4) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  tail call void @__drm_atomic_helper_connector_reset(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr i8, ptr %connector, i32 1284
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @drm_dp_aux_detect(ptr noundef nonnull %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @tegra_output_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_late_register(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_entry = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 51
  %4 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_entry, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef nonnull @debugfs_files, i32 noundef 32, i32 noundef 3264) #10
  %debugfs_files = getelementptr i8, ptr %connector, i32 1288
  %6 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %debugfs_files, align 8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i20 = getelementptr i8, ptr %connector, i32 -352
  %7 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debugfs_files, align 8
  %data = getelementptr %struct.drm_info_list, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i20, ptr %data, align 4
  %10 = load ptr, ptr %debugfs_files, align 8
  %data.1 = getelementptr %struct.drm_info_list, ptr %10, i32 1, i32 3
  %11 = ptrtoint ptr %data.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i20, ptr %data.1, align 4
  %12 = load ptr, ptr %debugfs_files, align 8
  tail call void @drm_debugfs_create_files(ptr noundef %12, i32 noundef 2, ptr noundef %5, ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.preheader ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_sor_early_unregister(ptr nocapture noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_files = getelementptr i8, ptr %connector, i32 1288
  %0 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_files, align 8
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  %call2 = tail call i32 @drm_debugfs_remove_files(ptr noundef %1, i32 noundef 2, ptr noundef %5) #10
  %6 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_files, align 8
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %debugfs_files to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_files, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_connector_destroy(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_sor_connector_duplicate_state(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 8
  %call2 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 128, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %connector, ptr noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_detect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_detect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_show_crc(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %crtc2 = getelementptr inbounds %struct.tegra_sor, ptr %5, i32 0, i32 1, i32 9, i32 8
  %6 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %11) #10
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %lor.lhs.false

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %lor.lhs.false.unlock_crit_edge, label %if.end

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %lor.lhs.false
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %21, i32 noundef 4, i32 noundef %19) #10
  %and = and i32 %19, -193
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %23, i32 noundef 4, i32 noundef %and) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr.i33 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %24) #10, !srcloc !762
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  %add.ptr.i35 = getelementptr i8, ptr %28, i32 68
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #10, !srcloc !759
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %32, i32 noundef 17, i32 noundef %30) #10
  %or = or i32 %30, 1
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %34, i32 noundef 17, i32 noundef %or) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %add.ptr.i39 = getelementptr i8, ptr %37, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %35) #10, !srcloc !762
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %add.ptr.i41 = getelementptr i8, ptr %39, i32 88
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #10, !srcloc !759
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %43, i32 noundef 22, i32 noundef %41) #10
  %and6 = and i32 %41, -8388609
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %45, i32 noundef 22, i32 noundef %and6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %and6) #10
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 8
  %add.ptr.i45 = getelementptr i8, ptr %48, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %46) #10, !srcloc !762
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -10, %49
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = add i32 %add.neg.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %if.end.while.body.i_crit_edge, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 116
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !759
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %56, i32 noundef 29, i32 noundef %54) #10
  %and.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %57, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end9:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %59, i32 noundef 29, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %61, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 16777216) #10, !srcloc !762
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %63, i32 120
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #10, !srcloc !759
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %67, i32 noundef 30, i32 noundef %65) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.235, i32 noundef %65) #10
  br label %unlock

unlock:                                           ; preds = %if.end9, %if.end.i.unlock_crit_edge, %if.end.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end9 ], [ -16, %lor.lhs.false.unlock_crit_edge ], [ -16, %entry.unlock_crit_edge ], [ -110, %if.end.unlock_crit_edge ], [ -110, %if.end.i.unlock_crit_edge ]
  tail call void @drm_modeset_unlock_all(ptr noundef %11) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_show_regs(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %crtc2 = getelementptr inbounds %struct.tegra_sor, ptr %5, i32 0, i32 1, i32 9, i32 8
  %6 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %11) #10
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %lor.lhs.false

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1, !range !756
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %lor.lhs.false.unlock_crit_edge, label %for.cond.preheader

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.cond.preheader:                               ; preds = %lor.lhs.false
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %5, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.015 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [115 x %struct.debugfs_reg32], ptr @tegra_sor_regs, i32 0, i32 %i.015
  %offset4 = getelementptr [115 x %struct.debugfs_reg32], ptr @tegra_sor_regs, i32 0, i32 %i.015, i32 1
  %16 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset4, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %17, 2
  %add.ptr.i = getelementptr i8, ptr %21, i32 %shl.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %25, i32 noundef %17, i32 noundef %23) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.236, ptr noundef %19, i32 noundef %17, i32 noundef %23) #10
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 115
  br i1 %exitcond.not, label %for.body.unlock_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

unlock:                                           ; preds = %for.body.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ -16, %lor.lhs.false.unlock_crit_edge ], [ -16, %entry.unlock_crit_edge ], [ 0, %for.body.unlock_crit_edge ]
  tail call void @drm_modeset_unlock_all(ptr noundef %11) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_debugfs_remove_files(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr i8, ptr %connector, i32 1284
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @drm_dp_aux_enable(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @tegra_output_connector_get_modes(ptr noundef %connector) #10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @drm_dp_aux_disable(ptr noundef nonnull %3) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  ret i32 %call4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_sor_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readnone %mode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_get_modes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_clk_sor_pad_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sor1 = getelementptr inbounds %struct.tegra_clk_sor_pad, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sor1, align 4
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %7, i32 noundef 19, i32 noundef %5) #10
  %and = and i32 %5, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cond = icmp eq i8 %index, 1
  %or4 = or i32 %and, 2
  %spec.select = select i1 %cond, i32 %or4, i32 %and
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_writel(ptr noundef %9, i32 noundef 19, i32 noundef %spec.select) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !761
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %12, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %10) #10, !srcloc !762
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @tegra_clk_sor_pad_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sor1 = getelementptr inbounds %struct.tegra_clk_sor_pad, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sor1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sor1, align 4
  %regs.i = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !759
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !760
  %dev.i = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_sor_readl(ptr noundef %7, i32 noundef 19, i32 noundef %5) #10
  %8 = trunc i32 %5 to i8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  ret i8 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %output = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @tegra_output_suspend(ptr noundef %output) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.370, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdmi_supply = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hdmi_supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi_supply, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @tegra_output_resume(ptr noundef %output) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call4, %if.then6 ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sor_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi_supply = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hdmi_supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi_supply, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %output = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 1
  %call5 = tail call i32 @tegra_output_resume(ptr noundef %output) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.372, i32 noundef %call5) #13
  %4 = ptrtoint ptr %hdmi_supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdmi_supply, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.then10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call5, %if.then10 ], [ %call5, %do.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 375)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 375)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !138, !139, !140, !141, !143, !144, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !165, !167, !169, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !235, !236, !237, !239, !241, !243, !244, !245, !247, !248, !249, !251, !253, !254, !255, !257, !258, !259, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !286, !288, !290, !291, !292, !293, !295, !296, !298, !299, !300, !302, !303, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !364, !365, !367, !368, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !387, !389, !390, !391, !392, !394, !395, !396, !397, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !647, !648, !649, !651, !652, !653, !654, !656, !657, !658, !660, !661, !663, !664, !665, !667, !668, !669, !671, !673, !675, !677, !679, !681, !682, !683, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !739, !740, !741, !743, !744, !745}
!llvm.named.register.sp = !{!746}
!llvm.module.flags = !{!747, !748, !749, !750, !751, !752, !753, !754}
!llvm.ident = !{!755}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 4057, i32 11}
!2 = !{ptr @tegra_sor_driver, !3, !"tegra_sor_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 4055, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3740, i32 43}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3757, i32 4}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tegra_sor_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra_sor_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3760, i32 4}
!16 = !{ptr @tegra_sor_probe._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tegra_sor_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3764, i32 44}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3781, i32 34}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3788, i32 4}
!24 = !{ptr @tegra_sor_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_sor_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3803, i32 3}
!28 = !{ptr @tegra_sor_probe._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_sor_probe._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3812, i32 3}
!32 = !{ptr @tegra_sor_probe._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra_sor_probe._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3816, i32 67}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3821, i32 4}
!38 = !{ptr @tegra_sor_probe._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_sor_probe._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3838, i32 3}
!42 = !{ptr @tegra_sor_probe._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_sor_probe._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3851, i32 36}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3851, i32 51}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3852, i32 11}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3859, i32 4}
!52 = !{ptr @tegra_sor_probe._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tegra_sor_probe._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3868, i32 45}
!56 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3871, i32 3}
!58 = !{ptr @tegra_sor_probe._entry.35, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra_sor_probe._entry_ptr.37, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3875, i32 43}
!62 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3878, i32 3}
!64 = !{ptr @tegra_sor_probe._entry.39, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tegra_sor_probe._entry_ptr.41, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3882, i32 41}
!68 = !{ptr @.str.44, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3885, i32 3}
!70 = !{ptr @tegra_sor_probe._entry.43, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tegra_sor_probe._entry_ptr.45, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.46, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3893, i32 42}
!74 = !{ptr @.str.48, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3915, i32 3}
!76 = !{ptr @tegra_sor_probe._entry.47, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tegra_sor_probe._entry_ptr.49, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @tegra_sor_probe.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3922, i32 2}
!80 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3933, i32 47}
!82 = !{ptr @.str.52, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3942, i32 4}
!84 = !{ptr @tegra_sor_probe._entry.51, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @tegra_sor_probe._entry_ptr.53, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.55, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3952, i32 3}
!88 = !{ptr @tegra_sor_probe._entry.54, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @tegra_sor_probe._entry_ptr.56, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.58, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3959, i32 3}
!92 = !{ptr @tegra_sor_probe._entry.57, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tegra_sor_probe._entry_ptr.59, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.60, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3013, i32 10}
!96 = !{ptr @tegra_sor_hdmi_ops, !97, !"tegra_sor_hdmi_ops", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3012, i32 35}
!98 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2966, i32 53}
!100 = !{ptr @.str.62, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2968, i32 3}
!102 = !{ptr @.str.63, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tegra_sor_hdmi_probe._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @tegra_sor_hdmi_probe._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.65, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2975, i32 3}
!107 = !{ptr @tegra_sor_hdmi_probe._entry.64, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @tegra_sor_hdmi_probe._entry_ptr.66, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2980, i32 53}
!111 = !{ptr @.str.69, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2982, i32 3}
!113 = !{ptr @tegra_sor_hdmi_probe._entry.68, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tegra_sor_hdmi_probe._entry_ptr.70, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2989, i32 3}
!117 = !{ptr @tegra_sor_hdmi_probe._entry.71, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tegra_sor_hdmi_probe._entry_ptr.73, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2994, i32 50}
!121 = !{ptr @.str.76, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2996, i32 3}
!123 = !{ptr @tegra_sor_hdmi_probe._entry.75, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @tegra_sor_hdmi_probe._entry_ptr.77, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.79, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3003, i32 3}
!127 = !{ptr @tegra_sor_hdmi_probe._entry.78, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @tegra_sor_hdmi_probe._entry_ptr.80, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @tegra_sor_hdmi_probe.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3007, i32 2}
!131 = !{ptr @.str.81, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @tegra_sor_hdmi_probe.__key.82, !130, !"__key", i1 false, i1 false}
!133 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.84, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2185, i32 3}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 58, i32 1}
!138 = !{ptr @.str.85, !137, !"<string literal>", i1 false, i1 false}
!139 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!140 = !{ptr @.str.86, !137, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!143 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 55, i32 1}
!146 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!147 = !{ptr @.str.88, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2026, i32 3}
!149 = !{ptr @.str.89, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @tegra_sor_hdmi_enable_audio_infoframe._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @tegra_sor_hdmi_enable_audio_infoframe._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.91, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2034, i32 3}
!154 = !{ptr @tegra_sor_hdmi_enable_audio_infoframe._entry.90, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tegra_sor_hdmi_enable_audio_infoframe._entry_ptr.92, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.93, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1880, i32 3}
!158 = !{ptr @.str.94, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @tegra_sor_hdmi_write_infopack._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @tegra_sor_hdmi_write_infopack._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.95, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3043, i32 10}
!163 = !{ptr @tegra_sor_dp_ops, !164, !"tegra_sor_dp_ops", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3042, i32 35}
!165 = !{ptr @.str.96, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3656, i32 34}
!167 = !{ptr @.str.97, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3674, i32 39}
!169 = !{ptr @sor_client_ops, !170, !"sor_client_ops", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3273, i32 39}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3099, i32 3}
!173 = !{ptr @.str.99, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @tegra_sor_init._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @tegra_sor_init._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.101, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3108, i32 4}
!178 = !{ptr @tegra_sor_init._entry.100, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @tegra_sor_init._entry_ptr.102, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.104, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3120, i32 4}
!182 = !{ptr @tegra_sor_init._entry.103, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @tegra_sor_init._entry_ptr.105, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3126, i32 4}
!186 = !{ptr @tegra_sor_init._entry.106, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @tegra_sor_init._entry_ptr.108, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.110, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3133, i32 4}
!190 = !{ptr @tegra_sor_init._entry.109, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @tegra_sor_init._entry_ptr.111, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.113, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3141, i32 3}
!194 = !{ptr @tegra_sor_init._entry.112, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @tegra_sor_init._entry_ptr.114, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.116, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3150, i32 4}
!198 = !{ptr @tegra_sor_init._entry.115, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @tegra_sor_init._entry_ptr.117, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @tegra_sor_hdmi_helpers, !201, !"tegra_sor_hdmi_helpers", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2648, i32 46}
!202 = !{ptr @.str.118, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2219, i32 3}
!204 = !{ptr @.str.119, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @tegra_sor_hdmi_disable._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @tegra_sor_hdmi_disable._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.121, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2238, i32 3}
!209 = !{ptr @tegra_sor_hdmi_disable._entry.120, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @tegra_sor_hdmi_disable._entry_ptr.122, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.124, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2242, i32 3}
!213 = !{ptr @tegra_sor_hdmi_disable._entry.123, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @tegra_sor_hdmi_disable._entry_ptr.125, !212, !"_entry_ptr", i1 false, i1 false}
!215 = distinct !{null, !216, !"__already_done", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 30, i32 1}
!217 = distinct !{null, !216, !"__warned", i1 false, i1 false}
!218 = distinct !{null, !219, !"__already_done", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 27, i32 1}
!220 = distinct !{null, !219, !"__warned", i1 false, i1 false}
!221 = !{ptr @.str.126, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1446, i32 3}
!223 = !{ptr @.str.127, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @tegra_sor_power_down._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @tegra_sor_power_down._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.128, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2267, i32 3}
!228 = !{ptr @tegra_sor_hdmi_enable._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @tegra_sor_hdmi_enable._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @tegra_sor_hdmi_enable._entry.129, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2274, i32 3}
!232 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.130, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.132, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2282, i32 3}
!235 = !{ptr @tegra_sor_hdmi_enable._entry.131, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.133, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.134, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2344, i32 3}
!239 = !{ptr @.str.135, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2347, i32 3}
!241 = !{ptr @.str.137, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2410, i32 3}
!243 = !{ptr @tegra_sor_hdmi_enable._entry.136, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.138, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.140, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2418, i32 3}
!247 = !{ptr @tegra_sor_hdmi_enable._entry.139, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.141, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.142, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2429, i32 2}
!251 = !{ptr @.str.144, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2470, i32 3}
!253 = !{ptr @tegra_sor_hdmi_enable._entry.143, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.145, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.147, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2489, i32 3}
!257 = !{ptr @tegra_sor_hdmi_enable._entry.146, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.148, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.149, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2579, i32 3}
!261 = !{ptr @.str.151, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2594, i32 3}
!263 = !{ptr @tegra_sor_hdmi_enable._entry.150, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.152, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.154, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2619, i32 3}
!267 = !{ptr @tegra_sor_hdmi_enable._entry.153, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.155, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.157, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2642, i32 3}
!271 = !{ptr @tegra_sor_hdmi_enable._entry.156, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @tegra_sor_hdmi_enable._entry_ptr.158, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.159, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1928, i32 3}
!275 = !{ptr @tegra_sor_hdmi_setup_avi_infoframe._entry, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @tegra_sor_hdmi_setup_avi_infoframe._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.161, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1934, i32 3}
!279 = !{ptr @tegra_sor_hdmi_setup_avi_infoframe._entry.160, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @tegra_sor_hdmi_setup_avi_infoframe._entry_ptr.162, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.163, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1828, i32 3}
!283 = !{ptr @.str.164, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @tegra_sor_encoder_atomic_check._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @tegra_sor_encoder_atomic_check._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @tegra_sor_dp_helpers, !287, !"tegra_sor_dp_helpers", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2938, i32 46}
!288 = !{ptr @.str.165, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2672, i32 4}
!290 = !{ptr @.str.166, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @tegra_sor_dp_disable._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @tegra_sor_dp_disable._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @tegra_sor_dp_disable._entry.167, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2678, i32 3}
!295 = !{ptr @tegra_sor_dp_disable._entry_ptr.168, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.170, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2698, i32 3}
!298 = !{ptr @tegra_sor_dp_disable._entry.169, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @tegra_sor_dp_disable._entry_ptr.171, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @tegra_sor_dp_disable._entry.172, !301, !"_entry", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2702, i32 3}
!302 = !{ptr @tegra_sor_dp_disable._entry_ptr.173, !301, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @tegra_sor_dp_disable._entry.174, !304, !"_entry", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2706, i32 3}
!305 = !{ptr @tegra_sor_dp_disable._entry_ptr.175, !304, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.177, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2710, i32 3}
!308 = !{ptr @tegra_sor_dp_disable._entry.176, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @tegra_sor_dp_disable._entry_ptr.178, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.179, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2737, i32 3}
!312 = !{ptr @tegra_sor_dp_enable._entry, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @tegra_sor_dp_enable._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @tegra_sor_dp_enable._entry.180, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2744, i32 3}
!316 = !{ptr @tegra_sor_dp_enable._entry_ptr.181, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.183, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2748, i32 3}
!319 = !{ptr @tegra_sor_dp_enable._entry.182, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @tegra_sor_dp_enable._entry_ptr.184, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.186, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2754, i32 3}
!323 = !{ptr @tegra_sor_dp_enable._entry.185, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @tegra_sor_dp_enable._entry_ptr.187, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.189, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2758, i32 3}
!327 = !{ptr @tegra_sor_dp_enable._entry.188, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @tegra_sor_dp_enable._entry_ptr.190, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.192, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2764, i32 3}
!331 = !{ptr @tegra_sor_dp_enable._entry.191, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @tegra_sor_dp_enable._entry_ptr.193, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @tegra_sor_dp_enable._entry.194, !334, !"_entry", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2854, i32 3}
!335 = !{ptr @tegra_sor_dp_enable._entry_ptr.195, !334, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @tegra_sor_dp_enable._entry.196, !337, !"_entry", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2862, i32 3}
!338 = !{ptr @tegra_sor_dp_enable._entry_ptr.197, !337, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.199, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2882, i32 3}
!341 = !{ptr @tegra_sor_dp_enable._entry.198, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @tegra_sor_dp_enable._entry_ptr.200, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.201, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2884, i32 3}
!345 = !{ptr @.str.202, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @tegra_sor_dp_enable.__UNIQUE_ID_ddebug347, !344, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!347 = !{ptr @.str.204, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2888, i32 3}
!349 = !{ptr @tegra_sor_dp_enable._entry.203, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @tegra_sor_dp_enable._entry_ptr.205, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.207, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2896, i32 3}
!353 = !{ptr @tegra_sor_dp_enable._entry.206, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @tegra_sor_dp_enable._entry_ptr.208, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.210, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2910, i32 4}
!357 = !{ptr @tegra_sor_dp_enable._entry.209, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @tegra_sor_dp_enable._entry_ptr.211, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @tegra_sor_dp_enable._entry.212, !360, !"_entry", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2917, i32 3}
!361 = !{ptr @tegra_sor_dp_enable._entry_ptr.213, !360, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @tegra_sor_dp_enable._entry.214, !363, !"_entry", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2922, i32 3}
!364 = !{ptr @tegra_sor_dp_enable._entry_ptr.215, !363, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @tegra_sor_dp_enable._entry.216, !366, !"_entry", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 2932, i32 3}
!367 = !{ptr @tegra_sor_dp_enable._entry_ptr.217, !366, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.218, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 633, i32 4}
!370 = !{ptr @.str.219, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1198, i32 2}
!372 = !{ptr @.str.220, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @tegra_sor_compute_config.__UNIQUE_ID_ddebug341, !371, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!374 = !{ptr @.str.221, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1213, i32 3}
!376 = !{ptr @tegra_sor_compute_config._entry, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @tegra_sor_compute_config._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.223, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1218, i32 3}
!380 = !{ptr @tegra_sor_compute_config._entry.222, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @tegra_sor_compute_config._entry_ptr.224, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.225, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1236, i32 2}
!384 = !{ptr @tegra_sor_compute_config.__UNIQUE_ID_ddebug342, !383, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!385 = !{ptr @tegra_sor_dp_link_ops, !386, !"tegra_sor_dp_link_ops", i1 false, i1 false}
!386 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 948, i32 37}
!387 = !{ptr @.str.226, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 931, i32 3}
!389 = !{ptr @.str.227, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @tegra_sor_dp_link_configure._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @tegra_sor_dp_link_configure._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.229, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 938, i32 3}
!394 = !{ptr @tegra_sor_dp_link_configure._entry.228, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @tegra_sor_dp_link_configure._entry_ptr.230, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.231, !393, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @.str.232, !393, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @tegra_sor_connector_funcs, !399, !"tegra_sor_connector_funcs", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1758, i32 41}
!400 = !{ptr @.str.233, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1678, i32 4}
!402 = !{ptr @.str.234, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1679, i32 4}
!404 = !{ptr @debugfs_files, !405, !"debugfs_files", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1677, i32 35}
!406 = !{ptr @.str.235, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1522, i32 16}
!408 = !{ptr @.str.236, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1668, i32 17}
!410 = !{ptr @.str.237, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1532, i32 2}
!412 = !{ptr @.str.238, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1533, i32 2}
!414 = !{ptr @.str.239, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1534, i32 2}
!416 = !{ptr @.str.240, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1535, i32 2}
!418 = !{ptr @.str.241, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1536, i32 2}
!420 = !{ptr @.str.242, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1537, i32 2}
!422 = !{ptr @.str.243, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1538, i32 2}
!424 = !{ptr @.str.244, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1539, i32 2}
!426 = !{ptr @.str.245, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1540, i32 2}
!428 = !{ptr @.str.246, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1541, i32 2}
!430 = !{ptr @.str.247, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1542, i32 2}
!432 = !{ptr @.str.248, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1543, i32 2}
!434 = !{ptr @.str.249, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1544, i32 2}
!436 = !{ptr @.str.250, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1545, i32 2}
!438 = !{ptr @.str.251, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1546, i32 2}
!440 = !{ptr @.str.252, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1547, i32 2}
!442 = !{ptr @.str.253, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1548, i32 2}
!444 = !{ptr @.str.254, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1549, i32 2}
!446 = !{ptr @.str.255, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1550, i32 2}
!448 = !{ptr @.str.256, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1551, i32 2}
!450 = !{ptr @.str.257, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1552, i32 2}
!452 = !{ptr @.str.258, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1553, i32 2}
!454 = !{ptr @.str.259, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1554, i32 2}
!456 = !{ptr @.str.260, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1555, i32 2}
!458 = !{ptr @.str.261, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1556, i32 2}
!460 = !{ptr @.str.262, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1557, i32 2}
!462 = !{ptr @.str.263, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1558, i32 2}
!464 = !{ptr @.str.264, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1559, i32 2}
!466 = !{ptr @.str.265, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1560, i32 2}
!468 = !{ptr @.str.266, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1561, i32 2}
!470 = !{ptr @.str.267, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1562, i32 2}
!472 = !{ptr @.str.268, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1563, i32 2}
!474 = !{ptr @.str.269, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1564, i32 2}
!476 = !{ptr @.str.270, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1565, i32 2}
!478 = !{ptr @.str.271, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1566, i32 2}
!480 = !{ptr @.str.272, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1567, i32 2}
!482 = !{ptr @.str.273, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1568, i32 2}
!484 = !{ptr @.str.274, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1569, i32 2}
!486 = !{ptr @.str.275, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1570, i32 2}
!488 = !{ptr @.str.276, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1571, i32 2}
!490 = !{ptr @.str.277, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1572, i32 2}
!492 = !{ptr @.str.278, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1573, i32 2}
!494 = !{ptr @.str.279, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1574, i32 2}
!496 = !{ptr @.str.280, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1575, i32 2}
!498 = !{ptr @.str.281, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1576, i32 2}
!500 = !{ptr @.str.282, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1577, i32 2}
!502 = !{ptr @.str.283, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1578, i32 2}
!504 = !{ptr @.str.284, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1579, i32 2}
!506 = !{ptr @.str.285, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1580, i32 2}
!508 = !{ptr @.str.286, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1581, i32 2}
!510 = !{ptr @.str.287, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1582, i32 2}
!512 = !{ptr @.str.288, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1583, i32 2}
!514 = !{ptr @.str.289, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1584, i32 2}
!516 = !{ptr @.str.290, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1585, i32 2}
!518 = !{ptr @.str.291, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1586, i32 2}
!520 = !{ptr @.str.292, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1587, i32 2}
!522 = !{ptr @.str.293, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1588, i32 2}
!524 = !{ptr @.str.294, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1589, i32 2}
!526 = !{ptr @.str.295, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1590, i32 2}
!528 = !{ptr @.str.296, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1591, i32 2}
!530 = !{ptr @.str.297, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1592, i32 2}
!532 = !{ptr @.str.298, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1593, i32 2}
!534 = !{ptr @.str.299, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1594, i32 2}
!536 = !{ptr @.str.300, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1595, i32 2}
!538 = !{ptr @.str.301, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1596, i32 2}
!540 = !{ptr @.str.302, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1597, i32 2}
!542 = !{ptr @.str.303, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1598, i32 2}
!544 = !{ptr @.str.304, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1599, i32 2}
!546 = !{ptr @.str.305, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1600, i32 2}
!548 = !{ptr @.str.306, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1601, i32 2}
!550 = !{ptr @.str.307, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1602, i32 2}
!552 = !{ptr @.str.308, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1603, i32 2}
!554 = !{ptr @.str.309, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1604, i32 2}
!556 = !{ptr @.str.310, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1605, i32 2}
!558 = !{ptr @.str.311, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1606, i32 2}
!560 = !{ptr @.str.312, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1607, i32 2}
!562 = !{ptr @.str.313, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1608, i32 2}
!564 = !{ptr @.str.314, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1609, i32 2}
!566 = !{ptr @.str.315, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1610, i32 2}
!568 = !{ptr @.str.316, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1611, i32 2}
!570 = !{ptr @.str.317, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1612, i32 2}
!572 = !{ptr @.str.318, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1613, i32 2}
!574 = !{ptr @.str.319, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1614, i32 2}
!576 = !{ptr @.str.320, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1615, i32 2}
!578 = !{ptr @.str.321, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1616, i32 2}
!580 = !{ptr @.str.322, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1617, i32 2}
!582 = !{ptr @.str.323, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1618, i32 2}
!584 = !{ptr @.str.324, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1619, i32 2}
!586 = !{ptr @.str.325, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1620, i32 2}
!588 = !{ptr @.str.326, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1621, i32 2}
!590 = !{ptr @.str.327, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1622, i32 2}
!592 = !{ptr @.str.328, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1623, i32 2}
!594 = !{ptr @.str.329, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1624, i32 2}
!596 = !{ptr @.str.330, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1625, i32 2}
!598 = !{ptr @.str.331, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1626, i32 2}
!600 = !{ptr @.str.332, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1627, i32 2}
!602 = !{ptr @.str.333, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1628, i32 2}
!604 = !{ptr @.str.334, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1629, i32 2}
!606 = !{ptr @.str.335, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1630, i32 2}
!608 = !{ptr @.str.336, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1631, i32 2}
!610 = !{ptr @.str.337, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1632, i32 2}
!612 = !{ptr @.str.338, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1633, i32 2}
!614 = !{ptr @.str.339, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1634, i32 2}
!616 = !{ptr @.str.340, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1635, i32 2}
!618 = !{ptr @.str.341, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1636, i32 2}
!620 = !{ptr @.str.342, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1637, i32 2}
!622 = !{ptr @.str.343, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1638, i32 2}
!624 = !{ptr @.str.344, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1639, i32 2}
!626 = !{ptr @.str.345, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1640, i32 2}
!628 = !{ptr @.str.346, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1641, i32 2}
!630 = !{ptr @.str.347, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1642, i32 2}
!632 = !{ptr @.str.348, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1643, i32 2}
!634 = !{ptr @.str.349, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1644, i32 2}
!636 = !{ptr @.str.350, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1645, i32 2}
!638 = !{ptr @.str.351, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1646, i32 2}
!640 = !{ptr @tegra_sor_regs, !641, !"tegra_sor_regs", i1 false, i1 false}
!641 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1531, i32 35}
!642 = !{ptr @tegra_sor_connector_helper_funcs, !643, !"tegra_sor_connector_helper_funcs", i1 false, i1 false}
!643 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 1793, i32 48}
!644 = !{ptr @.str.352, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3192, i32 4}
!646 = !{ptr @.str.353, !645, !"<string literal>", i1 false, i1 false}
!647 = !{ptr @tegra_sor_exit._entry, !645, !"_entry", i1 false, i1 false}
!648 = !{ptr @tegra_sor_exit._entry_ptr, !645, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.354, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3213, i32 4}
!651 = !{ptr @.str.355, !650, !"<string literal>", i1 false, i1 false}
!652 = !{ptr @tegra_sor_runtime_suspend._entry, !650, !"_entry", i1 false, i1 false}
!653 = !{ptr @tegra_sor_runtime_suspend._entry_ptr, !650, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.356, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3236, i32 3}
!656 = !{ptr @tegra_sor_runtime_resume._entry, !655, !"_entry", i1 false, i1 false}
!657 = !{ptr @tegra_sor_runtime_resume._entry_ptr, !655, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @tegra_sor_runtime_resume._entry.357, !659, !"_entry", i1 false, i1 false}
!659 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3242, i32 3}
!660 = !{ptr @tegra_sor_runtime_resume._entry_ptr.358, !659, !"_entry_ptr", i1 false, i1 false}
!661 = !{ptr @.str.360, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3251, i32 4}
!663 = !{ptr @tegra_sor_runtime_resume._entry.359, !662, !"_entry", i1 false, i1 false}
!664 = !{ptr @tegra_sor_runtime_resume._entry_ptr.361, !662, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @.str.363, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3257, i32 4}
!667 = !{ptr @tegra_sor_runtime_resume._entry.362, !666, !"_entry", i1 false, i1 false}
!668 = !{ptr @tegra_sor_runtime_resume._entry_ptr.364, !666, !"_entry_ptr", i1 false, i1 false}
!669 = !{ptr @.str.365, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 528, i32 4}
!671 = !{ptr @.str.366, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 528, i32 18}
!673 = !{ptr @.str.367, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 529, i32 4}
!675 = !{ptr @tegra_clk_sor_pad_parents, !676, !"tegra_clk_sor_pad_parents", i1 false, i1 false}
!676 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 527, i32 27}
!677 = !{ptr @tegra_clk_sor_pad_ops, !678, !"tegra_clk_sor_pad_ops", i1 false, i1 false}
!678 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 588, i32 29}
!679 = !{ptr @.str.368, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3988, i32 3}
!681 = !{ptr @.str.369, !680, !"<string literal>", i1 false, i1 false}
!682 = !{ptr @tegra_sor_remove._entry, !680, !"_entry", i1 false, i1 false}
!683 = !{ptr @tegra_sor_remove._entry_ptr, !680, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @tegra_sor_of_match, !685, !"tegra_sor_of_match", i1 false, i1 false}
!685 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3636, i32 34}
!686 = !{ptr @tegra194_sor, !687, !"tegra194_sor", i1 false, i1 false}
!687 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3615, i32 35}
!688 = !{ptr @tegra194_sor_regs, !689, !"tegra194_sor_regs", i1 false, i1 false}
!689 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3600, i32 36}
!690 = !{ptr @tegra194_sor_hdmi_defaults, !691, !"tegra194_sor_hdmi_defaults", i1 false, i1 false}
!691 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 279, i32 45}
!692 = !{ptr @tegra210_sor_xbar_cfg, !693, !"tegra210_sor_xbar_cfg", i1 false, i1 false}
!693 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3471, i32 17}
!694 = !{ptr @tegra124_sor_lane_map, !695, !"tegra124_sor_lane_map", i1 false, i1 false}
!695 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3300, i32 17}
!696 = !{ptr @tegra186_sor_voltage_swing, !697, !"tegra186_sor_voltage_swing", i1 false, i1 false}
!697 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3532, i32 17}
!698 = !{ptr @tegra186_sor_pre_emphasis, !699, !"tegra186_sor_pre_emphasis", i1 false, i1 false}
!699 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3556, i32 17}
!700 = !{ptr @tegra124_sor_post_cursor, !701, !"tegra124_sor_post_cursor", i1 false, i1 false}
!701 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3352, i32 17}
!702 = !{ptr @tegra124_sor_tx_pu, !703, !"tegra124_sor_tx_pu", i1 false, i1 false}
!703 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3376, i32 17}
!704 = !{ptr @tegra186_sor, !705, !"tegra186_sor", i1 false, i1 false}
!705 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3580, i32 35}
!706 = !{ptr @tegra186_sor_regs, !707, !"tegra186_sor_regs", i1 false, i1 false}
!707 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3517, i32 36}
!708 = !{ptr @tegra186_sor_hdmi_defaults, !709, !"tegra186_sor_hdmi_defaults", i1 false, i1 false}
!709 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 200, i32 45}
!710 = !{ptr @tegra124_sor_xbar_cfg, !711, !"tegra124_sor_xbar_cfg", i1 false, i1 false}
!711 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3280, i32 17}
!712 = !{ptr @tegra210_sor1, !713, !"tegra210_sor1", i1 false, i1 false}
!713 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3497, i32 35}
!714 = !{ptr @tegra210_sor_regs, !715, !"tegra210_sor_regs", i1 false, i1 false}
!715 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3456, i32 36}
!716 = !{ptr @tegra210_sor_hdmi_defaults, !717, !"tegra210_sor_hdmi_defaults", i1 false, i1 false}
!717 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 56, i32 45}
!718 = !{ptr @tegra210_sor_lane_map, !719, !"tegra210_sor_lane_map", i1 false, i1 false}
!719 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3475, i32 17}
!720 = !{ptr @tegra124_sor_voltage_swing, !721, !"tegra124_sor_voltage_swing", i1 false, i1 false}
!721 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3304, i32 17}
!722 = !{ptr @tegra124_sor_pre_emphasis, !723, !"tegra124_sor_pre_emphasis", i1 false, i1 false}
!723 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3328, i32 17}
!724 = !{ptr @tegra210_sor, !725, !"tegra210_sor", i1 false, i1 false}
!725 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3479, i32 35}
!726 = !{ptr @tegra132_sor, !727, !"tegra132_sor", i1 false, i1 false}
!727 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3440, i32 35}
!728 = !{ptr @tegra124_sor_regs, !729, !"tegra124_sor_regs", i1 false, i1 false}
!729 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3284, i32 36}
!730 = !{ptr @tegra132_sor_pre_emphasis, !731, !"tegra132_sor_pre_emphasis", i1 false, i1 false}
!731 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3416, i32 17}
!732 = !{ptr @tegra124_sor, !733, !"tegra124_sor", i1 false, i1 false}
!733 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 3400, i32 35}
!734 = !{ptr @tegra_sor_pm_ops, !735, !"tegra_sor_pm_ops", i1 false, i1 false}
!735 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 4051, i32 32}
!736 = !{ptr @.str.370, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 4012, i32 3}
!738 = !{ptr @.str.371, !737, !"<string literal>", i1 false, i1 false}
!739 = !{ptr @tegra_sor_suspend._entry, !737, !"_entry", i1 false, i1 false}
!740 = !{ptr @tegra_sor_suspend._entry_ptr, !737, !"_entry_ptr", i1 false, i1 false}
!741 = !{ptr @.str.372, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../drivers/gpu/drm/tegra/sor.c", i32 4040, i32 3}
!743 = !{ptr @.str.373, !742, !"<string literal>", i1 false, i1 false}
!744 = !{ptr @tegra_sor_resume._entry, !742, !"_entry", i1 false, i1 false}
!745 = !{ptr @tegra_sor_resume._entry_ptr, !742, !"_entry_ptr", i1 false, i1 false}
!746 = !{!"sp"}
!747 = !{i32 1, !"wchar_size", i32 2}
!748 = !{i32 1, !"min_enum_size", i32 4}
!749 = !{i32 8, !"branch-target-enforcement", i32 0}
!750 = !{i32 8, !"sign-return-address", i32 0}
!751 = !{i32 8, !"sign-return-address-all", i32 0}
!752 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!753 = !{i32 7, !"uwtable", i32 1}
!754 = !{i32 7, !"frame-pointer", i32 2}
!755 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!756 = !{i8 0, i8 2}
!757 = !{!"auto-init"}
!758 = !{!"branch_weights", i32 1, i32 2000}
!759 = !{i64 5483368}
!760 = !{i64 2157626359}
!761 = !{i64 2157626752}
!762 = !{i64 5482950}
!763 = !{i64 2148822962, i64 2148822967, i64 2148822980, i64 2148823024, i64 2148823058, i64 2148823079}
!764 = !{!"branch_weights", i32 2000, i32 1}
!765 = !{i64 2157570679}
!766 = !{i64 2157570896}
!767 = !{i64 2149399048}
!768 = !{i64 2149400084}
!769 = !{i64 2157550378}
!770 = !{i64 2157550597}
!771 = !{i64 2148340566}
!772 = !{i64 825389, i64 825414, i64 825436, i64 825452, i64 825464, i64 825484, i64 825508, i64 825524, i64 825536}
!773 = !{i64 2148340754}
!774 = !{i64 2157594045}
!775 = !{i64 2157593174}
!776 = !{i64 2157432203}
!777 = !{i64 2157432418}
!778 = !{i64 2157416055}
!779 = !{i64 2157416272}
!780 = !{i64 2148731681, i64 2148731961, i64 2148732295, i64 2148732629}
!781 = !{i64 1246137, i64 1246164, i64 1246186, i64 1246214}
!782 = !{i64 1246545, i64 1246572, i64 1246605, i64 1246626, i64 1246653, i64 1246679}
