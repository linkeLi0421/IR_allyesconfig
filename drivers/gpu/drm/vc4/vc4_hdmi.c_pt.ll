; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.vc4_hdmi_variant = type { i32, ptr, ptr, i64, ptr, i32, [4 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.vc4_hdmi_register = type { ptr, i32, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.vc4_hdmi = type { %struct.vc4_hdmi_audio, ptr, ptr, %struct.vc4_hdmi_encoder, %struct.drm_connector, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, %struct.cec_msg, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.debugfs_regset32, %struct.debugfs_regset32, %struct.spinlock, %struct.mutex, %struct.drm_display_mode, i8, i8 }
%struct.vc4_hdmi_audio = type { %struct.snd_soc_card, %struct.snd_soc_dai_link, %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component, %struct.snd_dmaengine_dai_dma_data, %struct.hdmi_audio_infoframe, ptr, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.vc4_hdmi_encoder = type { %struct.vc4_encoder, i8, i8 }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.108 }
%union.anon.108 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.113, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.114, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.105, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.109, ptr, i32, ptr, i8, i32 }
%struct.anon.105 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.109 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.113 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.114 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.vc4_hdmi_connector_state = type { %struct.drm_connector_state, i64 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.hdmi_spd_infoframe = type { i32, i8, i8, [8 x i8], [16 x i8], i32 }
%struct.cec_connector_info = type { i32, %union.anon.112 }
%union.anon.112 = type { [16 x i32] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vc4_hdmi\00", [23 x i8] zeroinitializer }, align 32
@vc4_hdmi_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hdmi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_hdmi0_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hdmi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_hdmi1_variant }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@vc4_hdmi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_hdmi_runtime_suspend, ptr @vc4_hdmi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@vc4_hdmi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vc4_hdmi_dev_probe, ptr @vc4_hdmi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_hdmi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_hdmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vc4_hdmi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vc4_hdmi_bind, ptr @vc4_hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@vc4_hdmi_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vc4_hdmi->mutex\00", [47 x i8] zeroinitializer }, align 32
@vc4_hdmi_bind.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vc4_hdmi->hw_lock\00", [45 x i8] zeroinitializer }, align 32
@vc4_hdmi_bind.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&vc4_hdmi->scrambling_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@vc4_hdmi_bind.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&vc4_hdmi->scrambling_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ddc\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to find ddc node in device tree\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get ddc i2c adapter by node\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpd\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wifi-2.4ghz-coexistence\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm,bcm2711-hdmi0\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm,bcm2711-hdmi1\00", [45 x i8] zeroinitializer }, align 32
@vc4_hdmi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr @vc4_hdmi_encoder_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr @vc4_hdmi_encoder_atomic_mode_set, ptr null, ptr null, ptr null, ptr @vc4_hdmi_encoder_disable, ptr @vc4_hdmi_encoder_enable, ptr @vc4_hdmi_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set HSM clock rate: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to retain power domain: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set pixel clock rate: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to turn on pixel clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set pixel bvb clock rate: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to turn on pixel bvb clock: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/vc4/vc4_hdmi_regs.h\00", [60 x i8] zeroinitializer }, align 32
@vc4_hdmi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.21, i32 451, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid register ID %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vc4_hdmi_write\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vc4_hdmi_write._entry_ptr = internal global ptr @vc4_hdmi_write._entry, section ".printk_index", align 4
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/vc4/vc4_hdmi.c\00", [33 x i8] zeroinitializer }, align 32
@vc4_hdmi_encoder_post_crtc_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Timeout waiting for VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\0A\00", [36 x i8] zeroinitializer }, align 32
@vc4_hdmi_encoder_post_crtc_enable.__already_done.28 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Timeout waiting for !VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't fill AVI infoframe\0A\00", [35 x i8] zeroinitializer }, align 32
@vc4_hdmi_write_infoframe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Packet RAM has to be on to store the packet.\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to wait for infoframe to go idle: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to wait for infoframe to start: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Broadcom\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Videocore\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't fill SPD infoframe\0A\00", [35 x i8] zeroinitializer }, align 32
@vc4_hdmi_recenter_fifo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Timeout waiting for VC4_HDMI_FIFO_CTL_RECENTER_DONE\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to release power domain: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@vc4_hdmi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.39, ptr @.str.21, i32 421, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vc4_hdmi_read\00", [18 x i8] zeroinitializer }, align 32
@vc4_hdmi_read._entry_ptr = internal global ptr @vc4_hdmi_read._entry, section ".printk_index", align 4
@vc4_hdmi_read._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.21, i32 429, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown register ID %u\0A\00", [40 x i8] zeroinitializer }, align 32
@vc4_hdmi_read._entry_ptr.42 = internal global ptr @vc4_hdmi_read._entry.40, section ".printk_index", align 4
@vc4_hdmi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @vc4_hdmi_connector_reset, ptr @vc4_hdmi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @vc4_hdmi_connector_destroy, ptr @vc4_hdmi_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vc4_hdmi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @vc4_hdmi_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_hdmi_connector_atomic_check, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vc4_hdmi_connector_get_modes.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@vc4_hdmi_connector_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.26, i32 261, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[drm] The core clock cannot reach frequencies high enough to support 4k @ 60Hz.\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vc4_hdmi_connector_get_modes\00", [35 x i8] zeroinitializer }, align 32
@vc4_hdmi_connector_get_modes._entry_ptr = internal global ptr @vc4_hdmi_connector_get_modes._entry, section ".printk_index", align 4
@vc4_hdmi_connector_get_modes.__print_once.45 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@vc4_hdmi_connector_get_modes._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.26, i32 262, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[drm] Please change your config.txt file to add hdmi_enable_4kp60.\00", [61 x i8] zeroinitializer }, align 32
@vc4_hdmi_connector_get_modes._entry_ptr.48 = internal global ptr @vc4_hdmi_connector_get_modes._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hpd-connected\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hpd-removed\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vc4 hdmi hpd connected\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vc4 hdmi hpd disconnected\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupts\00", [21 x i8] zeroinitializer }, align 32
@vc4_hdmi_cec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.26, i32 2190, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"'interrupts' DT property is missing, no CEC\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vc4_hdmi_cec_init\00", [46 x i8] zeroinitializer }, align 32
@vc4_hdmi_cec_init._entry_ptr = internal global ptr @vc4_hdmi_cec_init._entry, section ".printk_index", align 4
@vc4_hdmi_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @vc4_hdmi_cec_adap_enable, ptr null, ptr null, ptr @vc4_hdmi_cec_adap_log_addr, ptr @vc4_hdmi_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vc4\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cec-rx\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vc4 hdmi cec rx\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cec-tx\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vc4 hdmi cec tx\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vc4 hdmi cec\00", [19 x i8] zeroinitializer }, align 32
@vc4_hdmi_cec_adap_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.26, i32 2147, ptr @.str.64, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[drm] *ERROR* Attempting to transmit too much data (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vc4_hdmi_cec_adap_transmit\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vc4_hdmi_cec_adap_transmit._entry_ptr = internal global ptr @vc4_hdmi_cec_adap_transmit._entry, section ".printk_index", align 4
@vc4_cec_read_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.26, i32 1907, ptr @.str.64, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[drm] *ERROR* Attempting to read too much data (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vc4_cec_read_msg\00", [47 x i8] zeroinitializer }, align 32
@vc4_cec_read_msg._entry_ptr = internal global ptr @vc4_cec_read_msg._entry, section ".printk_index", align 4
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.26, i32 1704, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"'dmas' DT property is missing, no HDMI audio\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vc4_hdmi_audio_init\00", [44 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_init._entry_ptr = internal global ptr @vc4_hdmi_audio_init._entry, section ".printk_index", align 4
@vc4_hdmi_audio_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MAI isn't in the HD block\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hd\00", [29 x i8] zeroinitializer }, align 32
@pcm_conf = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @.str.88, ptr null], ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.26, i32 1733, ptr @.str.64, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not register PCM component: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_init._entry_ptr.75 = internal global ptr @vc4_hdmi_audio_init._entry.73, section ".printk_index", align 4
@vc4_hdmi_audio_cpu_dai_comp = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.89, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_cpu_dai_drv = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.90, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @vc4_hdmi_audio_cpu_dai_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.91, i64 262144, i32 7904, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.26, i32 1740, ptr @.str.64, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not register CPU DAI: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_init._entry_ptr.78 = internal global ptr @vc4_hdmi_audio_init._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@vc4_hdmi_codec_pdata = internal global { %struct.hdmi_codec_pdata, [16 x i8] } { %struct.hdmi_codec_pdata { ptr @vc4_hdmi_codec_ops, i8 -128, i32 8, ptr null }, [16 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.69, ptr @.str.26, i32 1749, ptr @.str.64, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't register the HDMI codec: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_init._entry_ptr.82 = internal global ptr @vc4_hdmi_audio_init._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAI\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAI PCM\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vc4-hdmi\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not register sound card\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audio-rx\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vc4-hdmi-cpu-dai-component\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vc4-hdmi-cpu-dai\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@vc4_hdmi_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr @vc4_hdmi_audio_startup, ptr null, ptr @vc4_hdmi_audio_prepare, ptr @vc4_hdmi_audio_shutdown, ptr null, ptr @vc4_hdmi_audio_get_eld, ptr null, ptr null, i8 0 }, [60 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_prepare.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.92, ptr @.str.26, ptr @.str.93, i8 1, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vc4_hdmi_audio_prepare\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: %u Hz, %d bit, %d channels\0A\00", [32 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.26, i32 1473, ptr @.str.64, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to stop audio infoframe: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vc4_hdmi_audio_reset\00", [43 x i8] zeroinitializer }, align 32
@vc4_hdmi_audio_reset._entry_ptr = internal global ptr @vc4_hdmi_audio_reset._entry, section ".printk_index", align 4
@bcm2835_variant = internal constant { %struct.vc4_hdmi_variant, [32 x i8] } { %struct.vc4_hdmi_variant { i32 1, ptr @.str.86, ptr @.str.96, i64 162000000, ptr @vc4_hdmi_fields, i32 81, [4 x i32] zeroinitializer, i8 0, i8 0, ptr @vc4_hdmi_init_resources, ptr @vc4_hdmi_reset, ptr @vc4_hdmi_csc_setup, ptr @vc4_hdmi_set_timings, ptr @vc4_hdmi_phy_init, ptr @vc4_hdmi_phy_disable, ptr @vc4_hdmi_phy_rng_enable, ptr @vc4_hdmi_phy_rng_disable, ptr @vc4_hdmi_channel_map, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@bcm2711_hdmi0_variant = internal constant { %struct.vc4_hdmi_variant, [32 x i8] } { %struct.vc4_hdmi_variant { i32 1, ptr @.str.159, ptr @.str.160, i64 600000000, ptr @vc5_hdmi_hdmi0_fields, i32 81, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i8 1, i8 1, ptr @vc5_hdmi_init_resources, ptr @vc5_hdmi_reset, ptr @vc5_hdmi_csc_setup, ptr @vc5_hdmi_set_timings, ptr @vc5_hdmi_phy_init, ptr @vc5_hdmi_phy_disable, ptr @vc5_hdmi_phy_rng_enable, ptr @vc5_hdmi_phy_rng_disable, ptr @vc5_hdmi_channel_map, i8 1, ptr @vc5_hdmi_hp_detect }, [32 x i8] zeroinitializer }, align 32
@bcm2711_hdmi1_variant = internal constant { %struct.vc4_hdmi_variant, [32 x i8] } { %struct.vc4_hdmi_variant { i32 2, ptr @.str.196, ptr @.str.197, i64 340000000, ptr @vc5_hdmi_hdmi1_fields, i32 81, [4 x i32] [i32 1, i32 0, i32 3, i32 2], i8 1, i8 1, ptr @vc5_hdmi_init_resources, ptr @vc5_hdmi_reset, ptr @vc5_hdmi_csc_setup, ptr @vc5_hdmi_set_timings, ptr @vc5_hdmi_phy_init, ptr @vc5_hdmi_phy_disable, ptr @vc5_hdmi_phy_rng_enable, ptr @vc5_hdmi_phy_rng_disable, ptr @vc5_hdmi_channel_map, i8 1, ptr @vc5_hdmi_hp_detect }, [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdmi_regs\00", [22 x i8] zeroinitializer }, align 32
@vc4_hdmi_fields = internal constant { [81 x %struct.vc4_hdmi_register], [244 x i8] } { [81 x %struct.vc4_hdmi_register] [%struct.vc4_hdmi_register { ptr @.str.97, i32 1, i32 156 }, %struct.vc4_hdmi_register { ptr @.str.98, i32 1, i32 232 }, %struct.vc4_hdmi_register { ptr @.str.99, i32 1, i32 236 }, %struct.vc4_hdmi_register { ptr @.str.100, i32 1, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.101, i32 1, i32 244 }, %struct.vc4_hdmi_register { ptr @.str.102, i32 1, i32 248 }, %struct.vc4_hdmi_register { ptr @.str.103, i32 1, i32 840 }, %struct.vc4_hdmi_register { ptr @.str.104, i32 1, i32 852 }, %struct.vc4_hdmi_register { ptr @.str.105, i32 1, i32 848 }, %struct.vc4_hdmi_register { ptr @.str.106, i32 1, i32 844 }, %struct.vc4_hdmi_register { ptr @.str.107, i32 1, i32 832 }, %struct.vc4_hdmi_register { ptr @.str.108, i32 1, i32 836 }, %struct.vc4_hdmi_register { ptr @.str.109, i32 1, i32 268 }, %struct.vc4_hdmi_register { ptr @.str.110, i32 1, i32 272 }, %struct.vc4_hdmi_register { ptr @.str.111, i32 1, i32 276 }, %struct.vc4_hdmi_register { ptr @.str.112, i32 1, i32 280 }, %struct.vc4_hdmi_register { ptr @.str.113, i32 1, i32 252 }, %struct.vc4_hdmi_register { ptr @.str.114, i32 1, i32 256 }, %struct.vc4_hdmi_register { ptr @.str.115, i32 1, i32 260 }, %struct.vc4_hdmi_register { ptr @.str.116, i32 1, i32 264 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.117, i32 1, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.118, i32 1, i32 168 }, %struct.vc4_hdmi_register { ptr @.str.119, i32 2, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.120, i32 2, i32 72 }, %struct.vc4_hdmi_register { ptr @.str.121, i32 2, i32 76 }, %struct.vc4_hdmi_register { ptr @.str.122, i32 2, i32 80 }, %struct.vc4_hdmi_register { ptr @.str.123, i32 2, i32 84 }, %struct.vc4_hdmi_register { ptr @.str.124, i32 2, i32 88 }, %struct.vc4_hdmi_register { ptr @.str.125, i32 2, i32 64 }, %struct.vc4_hdmi_register { ptr @.str.126, i32 1, i32 172 }, %struct.vc4_hdmi_register { ptr @.str.127, i32 1, i32 176 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.128, i32 1, i32 92 }, %struct.vc4_hdmi_register { ptr @.str.129, i32 2, i32 104 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.130, i32 1, i32 196 }, %struct.vc4_hdmi_register { ptr @.str.131, i32 1, i32 200 }, %struct.vc4_hdmi_register { ptr @.str.132, i32 1, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.133, i32 1, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.134, i32 1, i32 144 }, %struct.vc4_hdmi_register { ptr @.str.135, i32 1, i32 148 }, %struct.vc4_hdmi_register { ptr @.str.136, i32 2, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.137, i32 2, i32 32 }, %struct.vc4_hdmi_register { ptr @.str.138, i32 2, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.139, i32 1, i32 152 }, %struct.vc4_hdmi_register { ptr @.str.140, i32 2, i32 44 }, %struct.vc4_hdmi_register { ptr @.str.141, i32 2, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.142, i32 2, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.143, i32 1, i32 160 }, %struct.vc4_hdmi_register { ptr @.str.144, i32 1, i32 1024 }, %struct.vc4_hdmi_register { ptr @.str.145, i32 1, i32 164 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.146, i32 1, i32 192 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.147, i32 1, i32 4 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.148, i32 1, i32 708 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.149, i32 1, i32 704 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.150, i32 1, i32 204 }, %struct.vc4_hdmi_register { ptr @.str.151, i32 1, i32 212 }, %struct.vc4_hdmi_register { ptr @.str.152, i32 1, i32 208 }, %struct.vc4_hdmi_register { ptr @.str.153, i32 1, i32 216 }, %struct.vc4_hdmi_register { ptr @.str.154, i32 2, i32 56 }], [244 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_AUDIO_PACKET_CONFIG\00", [39 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_CEC_CNTRL_1\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_CEC_CNTRL_2\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_CEC_CNTRL_3\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_CEC_CNTRL_4\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_CEC_CNTRL_5\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_CPU_CLEAR\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CEC_CPU_MASK_CLEAR\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CEC_CPU_MASK_SET\00", [42 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CEC_CPU_MASK_STATUS\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_CEC_CPU_STATUS\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_CEC_CPU_SET\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_RX_DATA_1\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_RX_DATA_2\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_RX_DATA_3\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_RX_DATA_4\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_TX_DATA_1\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_TX_DATA_2\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_TX_DATA_3\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CEC_TX_DATA_4\00", [45 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDMI_CORE_REV\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CRP_CFG\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_CSC_12_11\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_CSC_14_13\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_CSC_22_21\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_CSC_24_23\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_CSC_32_31\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_CSC_34_33\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CSC_CTL\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDMI_CTS_0\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDMI_CTS_1\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDMI_FIFO_CTL\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_FRAME_COUNT\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDMI_HORZA\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDMI_HORZB\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_HOTPLUG\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_HOTPLUG_INT\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_MAI_CHANNEL_MAP\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HDMI_MAI_CONFIG\00", [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_MAI_CTL\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDMI_MAI_DATA\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_MAI_FMT\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HDMI_MAI_FORMAT\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_MAI_SMP\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_MAI_THR\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDMI_M_CTL\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_RAM_PACKET_CONFIG\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_RAM_PACKET_START\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_RAM_PACKET_STATUS\00", [41 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_SCHEDULER_CONTROL\00", [41 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_SW_RESET_CONTROL\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_TX_PHY_CTL_0\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_TX_PHY_RESET_CTL\00", [42 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_VERTA0\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_VERTA1\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_VERTB0\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_VERTB1\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_VID_CTL\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pixel\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get pixel clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get HDMI state machine clock\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vc4-hdmi-0\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmi0_regs\00", [21 x i8] zeroinitializer }, align 32
@vc5_hdmi_hdmi0_fields = internal constant { [81 x %struct.vc4_hdmi_register], [244 x i8] } { [81 x %struct.vc4_hdmi_register] [%struct.vc4_hdmi_register { ptr @.str.97, i32 1, i32 184 }, %struct.vc4_hdmi_register { ptr @.str.98, i32 3, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.99, i32 3, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.100, i32 3, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.101, i32 3, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.102, i32 3, i32 32 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.109, i32 3, i32 56 }, %struct.vc4_hdmi_register { ptr @.str.110, i32 3, i32 60 }, %struct.vc4_hdmi_register { ptr @.str.111, i32 3, i32 64 }, %struct.vc4_hdmi_register { ptr @.str.112, i32 3, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.113, i32 3, i32 40 }, %struct.vc4_hdmi_register { ptr @.str.114, i32 3, i32 44 }, %struct.vc4_hdmi_register { ptr @.str.115, i32 3, i32 48 }, %struct.vc4_hdmi_register { ptr @.str.116, i32 3, i32 52 }, %struct.vc4_hdmi_register { ptr @.str.161, i32 5, i32 188 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.118, i32 1, i32 200 }, %struct.vc4_hdmi_register { ptr @.str.119, i32 4, i32 4 }, %struct.vc4_hdmi_register { ptr @.str.120, i32 4, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.121, i32 4, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.122, i32 4, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.123, i32 4, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.124, i32 4, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.125, i32 4, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.126, i32 1, i32 204 }, %struct.vc4_hdmi_register { ptr @.str.127, i32 1, i32 208 }, %struct.vc4_hdmi_register { ptr @.str.162, i32 1, i32 368 }, %struct.vc4_hdmi_register { ptr @.str.163, i32 2, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.128, i32 1, i32 116 }, %struct.vc4_hdmi_register { ptr @.str.129, i32 2, i32 96 }, %struct.vc4_hdmi_register { ptr @.str.164, i32 1, i32 376 }, %struct.vc4_hdmi_register { ptr @.str.165, i32 1, i32 380 }, %struct.vc4_hdmi_register { ptr @.str.130, i32 1, i32 228 }, %struct.vc4_hdmi_register { ptr @.str.131, i32 1, i32 232 }, %struct.vc4_hdmi_register { ptr @.str.132, i32 1, i32 424 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.134, i32 1, i32 156 }, %struct.vc4_hdmi_register { ptr @.str.135, i32 1, i32 160 }, %struct.vc4_hdmi_register { ptr @.str.136, i32 2, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.137, i32 2, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.138, i32 2, i32 24 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.140, i32 2, i32 32 }, %struct.vc4_hdmi_register { ptr @.str.141, i32 2, i32 20 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.143, i32 1, i32 188 }, %struct.vc4_hdmi_register { ptr @.str.144, i32 7, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.145, i32 1, i32 196 }, %struct.vc4_hdmi_register { ptr @.str.166, i32 8, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.167, i32 8, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.168, i32 8, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.146, i32 1, i32 224 }, %struct.vc4_hdmi_register { ptr @.str.169, i32 1, i32 452 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.170, i32 6, i32 76 }, %struct.vc4_hdmi_register { ptr @.str.171, i32 6, i32 40 }, %struct.vc4_hdmi_register { ptr @.str.148, i32 6, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.172, i32 6, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.173, i32 6, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.174, i32 6, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.175, i32 6, i32 80 }, %struct.vc4_hdmi_register { ptr @.str.176, i32 6, i32 84 }, %struct.vc4_hdmi_register { ptr @.str.177, i32 6, i32 92 }, %struct.vc4_hdmi_register { ptr @.str.178, i32 6, i32 52 }, %struct.vc4_hdmi_register { ptr @.str.179, i32 6, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.180, i32 6, i32 32 }, %struct.vc4_hdmi_register { ptr @.str.181, i32 6, i32 4 }, %struct.vc4_hdmi_register { ptr @.str.149, i32 6, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.182, i32 6, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.183, i32 5, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.150, i32 1, i32 236 }, %struct.vc4_hdmi_register { ptr @.str.151, i32 1, i32 244 }, %struct.vc4_hdmi_register { ptr @.str.152, i32 1, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.153, i32 1, i32 248 }, %struct.vc4_hdmi_register { ptr @.str.154, i32 2, i32 68 }], [244 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HDMI_CLOCK_STOP\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_DEEP_COLOR_CONFIG_1\00", [39 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_DVP_CTL\00", [19 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HDMI_GCP_CONFIG\00", [16 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HDMI_GCP_WORD_1\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HDMI_RM_CONTROL\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_RM_FORMAT\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMI_RM_OFFSET\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_SCRAMBLER_CTL\00", [45 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_TX_PHY_CHANNEL_SWAP\00", [39 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_TX_PHY_CLK_DIV\00", [44 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_TX_PHY_CTL_1\00", [46 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_TX_PHY_CTL_2\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_TX_PHY_CTL_3\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1\00", [59 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2\00", [59 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4\00", [59 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_TX_PHY_PLL_CFG\00", [44 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_TX_PHY_PLL_CTL_0\00", [42 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_TX_PHY_PLL_CTL_1\00", [42 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_TX_PHY_POWERDOWN_CTL\00", [38 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_TX_PHY_TMDS_CLK_WORD_SEL\00", [34 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_VEC_INTERFACE_XBAR\00", [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csc\00", [28 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvp\00", [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"packet\00", [25 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rm\00", [29 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bvb\00", [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get pixel bvb clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get audio clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get CEC clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get HDMI reset line\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vc4-hdmi-1\00", [21 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmi1_regs\00", [21 x i8] zeroinitializer }, align 32
@vc5_hdmi_hdmi1_fields = internal constant { [81 x %struct.vc4_hdmi_register], [244 x i8] } { [81 x %struct.vc4_hdmi_register] [%struct.vc4_hdmi_register { ptr @.str.97, i32 1, i32 184 }, %struct.vc4_hdmi_register { ptr @.str.98, i32 3, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.99, i32 3, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.100, i32 3, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.101, i32 3, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.102, i32 3, i32 32 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.109, i32 3, i32 56 }, %struct.vc4_hdmi_register { ptr @.str.110, i32 3, i32 60 }, %struct.vc4_hdmi_register { ptr @.str.111, i32 3, i32 64 }, %struct.vc4_hdmi_register { ptr @.str.112, i32 3, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.113, i32 3, i32 40 }, %struct.vc4_hdmi_register { ptr @.str.114, i32 3, i32 44 }, %struct.vc4_hdmi_register { ptr @.str.115, i32 3, i32 48 }, %struct.vc4_hdmi_register { ptr @.str.116, i32 3, i32 52 }, %struct.vc4_hdmi_register { ptr @.str.161, i32 5, i32 188 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.118, i32 1, i32 200 }, %struct.vc4_hdmi_register { ptr @.str.119, i32 4, i32 4 }, %struct.vc4_hdmi_register { ptr @.str.120, i32 4, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.121, i32 4, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.122, i32 4, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.123, i32 4, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.124, i32 4, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.125, i32 4, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.126, i32 1, i32 204 }, %struct.vc4_hdmi_register { ptr @.str.127, i32 1, i32 208 }, %struct.vc4_hdmi_register { ptr @.str.162, i32 1, i32 368 }, %struct.vc4_hdmi_register { ptr @.str.163, i32 2, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.128, i32 1, i32 116 }, %struct.vc4_hdmi_register { ptr @.str.129, i32 2, i32 100 }, %struct.vc4_hdmi_register { ptr @.str.164, i32 1, i32 376 }, %struct.vc4_hdmi_register { ptr @.str.165, i32 1, i32 380 }, %struct.vc4_hdmi_register { ptr @.str.130, i32 1, i32 228 }, %struct.vc4_hdmi_register { ptr @.str.131, i32 1, i32 232 }, %struct.vc4_hdmi_register { ptr @.str.132, i32 1, i32 424 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.134, i32 1, i32 156 }, %struct.vc4_hdmi_register { ptr @.str.135, i32 1, i32 160 }, %struct.vc4_hdmi_register { ptr @.str.136, i32 2, i32 48 }, %struct.vc4_hdmi_register { ptr @.str.137, i32 2, i32 60 }, %struct.vc4_hdmi_register { ptr @.str.138, i32 2, i32 56 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.140, i32 2, i32 64 }, %struct.vc4_hdmi_register { ptr @.str.141, i32 2, i32 52 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.143, i32 1, i32 188 }, %struct.vc4_hdmi_register { ptr @.str.144, i32 7, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.145, i32 1, i32 196 }, %struct.vc4_hdmi_register { ptr @.str.166, i32 8, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.167, i32 8, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.168, i32 8, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.146, i32 1, i32 224 }, %struct.vc4_hdmi_register { ptr @.str.169, i32 1, i32 452 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.170, i32 6, i32 76 }, %struct.vc4_hdmi_register { ptr @.str.171, i32 6, i32 40 }, %struct.vc4_hdmi_register { ptr @.str.148, i32 6, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.172, i32 6, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.173, i32 6, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.174, i32 6, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.175, i32 6, i32 80 }, %struct.vc4_hdmi_register { ptr @.str.176, i32 6, i32 84 }, %struct.vc4_hdmi_register { ptr @.str.177, i32 6, i32 92 }, %struct.vc4_hdmi_register { ptr @.str.178, i32 6, i32 52 }, %struct.vc4_hdmi_register { ptr @.str.179, i32 6, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.180, i32 6, i32 32 }, %struct.vc4_hdmi_register { ptr @.str.181, i32 6, i32 4 }, %struct.vc4_hdmi_register { ptr @.str.149, i32 6, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.182, i32 6, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.183, i32 5, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.150, i32 1, i32 236 }, %struct.vc4_hdmi_register { ptr @.str.151, i32 1, i32 244 }, %struct.vc4_hdmi_register { ptr @.str.152, i32 1, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.153, i32 1, i32 248 }, %struct.vc4_hdmi_register { ptr @.str.154, i32 2, i32 72 }], [244 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.198 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.199 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.200 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.201 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.202 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.203 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.204 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.205 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.206 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.208 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.209 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.210 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.211 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.212 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.213 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.214 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.215 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.216 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.217 = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 128000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.218 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.219 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.221 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.222 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.223 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.224 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2792, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant [18 x i8] c"vc4_hdmi_dt_match\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2775, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"vc4_hdmi_pm_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2782, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"vc4_hdmi_driver\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2788, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant [13 x i8] c"vc4_hdmi_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2681, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2501, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2502, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2503, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2529, i32 44 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2531, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2538, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2545, i32 52 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2552, i32 39 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2590, i32 45 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2591, i32 45 }
@___asan_gen_.285 = private unnamed_addr constant [30 x i8] c"vc4_hdmi_encoder_helper_funcs\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1310, i32 46 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1034, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1040, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1046, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1052, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1068, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1074, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 445, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 450, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1169, i32 9 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1171, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1185, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 490, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 433, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 443, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 472, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 510, i32 44 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 510, i32 56 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 512, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 979, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 709, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 420, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 428, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [25 x i8] c"vc4_hdmi_connector_funcs\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 337, i32 41 }
@___asan_gen_.375 = private unnamed_addr constant [32 x i8] c"vc4_hdmi_connector_helper_funcs\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 346, i32 48 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 261, i32 5 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 262, i32 5 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1817, i32 56 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1818, i32 55 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1823, i32 9 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1830, i32 9 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2189, i32 38 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2190, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant [22 x i8] c"vc4_hdmi_cec_adap_ops\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2174, i32 34 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2195, i32 19 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2215, i32 60 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2218, i32 9 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2222, i32 60 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2225, i32 9 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2236, i32 9 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2147, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1907, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1702, i32 38 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1703, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1709, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1720, i32 49 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1720, i32 62 }
@___asan_gen_.480 = private unnamed_addr constant [9 x i8] c"pcm_conf\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1659, i32 46 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1733, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant [28 x i8] c"vc4_hdmi_audio_cpu_dai_comp\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1631, i32 46 }
@___asan_gen_.492 = private unnamed_addr constant [27 x i8] c"vc4_hdmi_audio_cpu_dai_drv\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1644, i32 34 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1740, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1744, i32 50 }
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c"vc4_hdmi_codec_pdata\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1684, i32 32 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1749, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1762, i32 19 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1763, i32 26 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1764, i32 31 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1772, i32 22 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1786, i32 27 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1660, i32 43 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1632, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1645, i32 10 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1648, i32 18 }
@___asan_gen_.540 = private unnamed_addr constant [19 x i8] c"vc4_hdmi_codec_ops\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1677, i32 36 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1562, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1473, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant [16 x i8] c"bcm2835_variant\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2697, i32 38 }
@___asan_gen_.561 = private unnamed_addr constant [22 x i8] c"bcm2711_hdmi0_variant\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2717, i32 38 }
@___asan_gen_.564 = private unnamed_addr constant [22 x i8] c"bcm2711_hdmi1_variant\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2746, i32 38 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2699, i32 19 }
@___asan_gen_.570 = private unnamed_addr constant [16 x i8] c"vc4_hdmi_fields\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 152, i32 54 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 177, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 190, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 191, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 192, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 193, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 194, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 207, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 210, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 209, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 208, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 205, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 206, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 199, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 200, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 201, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 202, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 195, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 196, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 197, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 198, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 169, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 180, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 161, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 162, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 163, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 164, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 165, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 166, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 160, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 181, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 182, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 173, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 167, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 184, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 185, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 172, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 171, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 174, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 175, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 154, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 157, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 156, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 176, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 158, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 155, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 153, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 178, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 211, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 179, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 183, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 170, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 204, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 203, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 186, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 188, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 187, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 189, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 159, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2344, i32 44 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2348, i32 4 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2352, i32 42 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2354, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2720, i32 16 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2719, i32 19 }
@___asan_gen_.765 = private unnamed_addr constant [22 x i8] c"vc5_hdmi_hdmi0_fields\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 214, i32 54 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 246, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 240, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 215, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 241, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 242, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 265, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 267, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 266, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 244, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 260, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 257, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 252, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 253, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 254, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 261, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 262, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 263, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 258, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 255, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 256, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 250, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 259, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 247, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2386, i32 59 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2394, i32 59 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2402, i32 59 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2410, i32 59 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2418, i32 59 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2426, i32 59 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2440, i32 48 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2442, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2446, i32 44 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2448, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2454, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2460, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2749, i32 16 }
@___asan_gen_.876 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.877 = private constant [34 x i8] c"../drivers/gpu/drm/vc4/vc4_hdmi.c\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 2748, i32 19 }
@___asan_gen_.879 = private unnamed_addr constant [22 x i8] c"vc5_hdmi_hdmi1_fields\00", align 1
@___asan_gen_.880 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h\00", align 1
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 294, i32 54 }
@llvm.compiler.used = appending global [232 x ptr] [ptr @vc4_cec_read_msg._entry, ptr @vc4_cec_read_msg._entry_ptr, ptr @vc4_hdmi_audio_init._entry, ptr @vc4_hdmi_audio_init._entry.73, ptr @vc4_hdmi_audio_init._entry.76, ptr @vc4_hdmi_audio_init._entry.80, ptr @vc4_hdmi_audio_init._entry_ptr, ptr @vc4_hdmi_audio_init._entry_ptr.75, ptr @vc4_hdmi_audio_init._entry_ptr.78, ptr @vc4_hdmi_audio_init._entry_ptr.82, ptr @vc4_hdmi_audio_reset._entry, ptr @vc4_hdmi_audio_reset._entry_ptr, ptr @vc4_hdmi_cec_adap_transmit._entry, ptr @vc4_hdmi_cec_adap_transmit._entry_ptr, ptr @vc4_hdmi_cec_init._entry, ptr @vc4_hdmi_cec_init._entry_ptr, ptr @vc4_hdmi_connector_get_modes._entry, ptr @vc4_hdmi_connector_get_modes._entry.46, ptr @vc4_hdmi_connector_get_modes._entry_ptr, ptr @vc4_hdmi_connector_get_modes._entry_ptr.48, ptr @vc4_hdmi_read._entry, ptr @vc4_hdmi_read._entry.40, ptr @vc4_hdmi_read._entry_ptr, ptr @vc4_hdmi_read._entry_ptr.42, ptr @vc4_hdmi_write._entry, ptr @vc4_hdmi_write._entry_ptr, ptr @.str, ptr @vc4_hdmi_dt_match, ptr @vc4_hdmi_pm_ops, ptr @vc4_hdmi_driver, ptr @vc4_hdmi_ops, ptr @vc4_hdmi_bind.__key, ptr @.str.1, ptr @vc4_hdmi_bind.__key.2, ptr @.str.3, ptr @vc4_hdmi_bind.__key.4, ptr @.str.5, ptr @vc4_hdmi_bind.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @vc4_hdmi_encoder_helper_funcs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @vc4_hdmi_connector_funcs, ptr @vc4_hdmi_connector_helper_funcs, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @vc4_hdmi_cec_adap_ops, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @pcm_conf, ptr @.str.74, ptr @vc4_hdmi_audio_cpu_dai_comp, ptr @vc4_hdmi_audio_cpu_dai_drv, ptr @.str.77, ptr @.str.79, ptr @vc4_hdmi_codec_pdata, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @vc4_hdmi_codec_ops, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @bcm2835_variant, ptr @bcm2711_hdmi0_variant, ptr @bcm2711_hdmi1_variant, ptr @.str.96, ptr @vc4_hdmi_fields, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @vc5_hdmi_hdmi0_fields, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @vc5_hdmi_hdmi1_fields], section "llvm.metadata"
@0 = internal global [219 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_bind.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_bind.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_bind.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_read._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_connector_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_connector_get_modes._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_cec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_cec_adap_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_cec_read_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_conf to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_audio_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_audio_cpu_dai_comp to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_audio_cpu_dai_drv to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_audio_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_codec_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_audio_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_audio_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_variant to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_hdmi0_variant to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2711_hdmi1_variant to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_fields to i32), i32 972, i32 1216, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_hdmi_hdmi0_fields to i32), i32 972, i32 1216, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_hdmi_hdmi1_fields to i32), i32 972, i32 1216, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @vc4_hdmi_ops) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_dev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @vc4_hdmi_ops) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2544, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %mutex = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 31
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @vc4_hdmi_bind.__key) #13
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @vc4_hdmi_bind.__key.2, i16 noundef signext 3) #13
  %scrambling_work = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %scrambling_work, i32 noundef 0) #13
  %2 = ptrtoint ptr %scrambling_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %scrambling_work, align 8
  %lockdep_map = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @vc4_hdmi_bind.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry16 = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vc4_hdmi_scrambling_wq, ptr %func, align 4
  %timer = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @vc4_hdmi_bind.__key.6) #13
  %driver_data.i211 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i211 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i211, align 4
  %encoder27 = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 8
  %type = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type, align 8
  %pre_crtc_configure = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %pre_crtc_configure to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vc4_hdmi_encoder_pre_crtc_configure, ptr %pre_crtc_configure, align 8
  %pre_crtc_enable = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %11 = ptrtoint ptr %pre_crtc_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vc4_hdmi_encoder_pre_crtc_enable, ptr %pre_crtc_enable, align 4
  %post_crtc_enable = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 3, i32 0, i32 5
  %12 = ptrtoint ptr %post_crtc_enable to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vc4_hdmi_encoder_post_crtc_enable, ptr %post_crtc_enable, align 8
  %post_crtc_disable = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 3, i32 0, i32 6
  %13 = ptrtoint ptr %post_crtc_disable to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vc4_hdmi_encoder_post_crtc_disable, ptr %post_crtc_disable, align 4
  %post_crtc_powerdown = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 3, i32 0, i32 7
  %14 = ptrtoint ptr %post_crtc_powerdown to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vc4_hdmi_encoder_post_crtc_powerdown, ptr %post_crtc_powerdown, align 8
  %pdev41 = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %pdev41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %pdev41, align 8
  %variant42 = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %variant42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %variant42, align 4
  %max_pixel_clock = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %max_pixel_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 340000000, i64 %18)
  %cmp = icmp ugt i64 %18, 340000000
  br i1 %cmp, label %if.then43, label %do.body.if.end44_crit_edge

do.body.if.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %scdc_enabled = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 34
  %19 = ptrtoint ptr %scdc_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %scdc_enabled, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %do.body.if.end44_crit_edge
  %init_resources = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %call, i32 0, i32 9
  %20 = ptrtoint ptr %init_resources to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_resources, align 4
  %call45 = tail call i32 %21(ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #13
  %24 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i212 = call i32 @__of_parse_phandle_with_args(ptr noundef %23, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %tobool.not.i = icmp eq i32 %call.i212, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #13
  br label %if.then51

of_parse_phandle.exit:                            ; preds = %if.end48
  %25 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #13
  %tobool50.not = icmp eq ptr %26, null
  br i1 %tobool50.not, label %of_parse_phandle.exit.if.then51_crit_edge, label %if.end52

of_parse_phandle.exit.if.then51_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

if.then51:                                        ; preds = %of_parse_phandle.exit.if.then51_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end52:                                         ; preds = %of_parse_phandle.exit
  %call53 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %26) #13
  %ddc = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call53, ptr %ddc, align 4
  call void @of_node_put(ptr noundef nonnull %26) #13
  %28 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddc, align 4
  %tobool55.not = icmp eq ptr %29, null
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %call58 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 1) #13
  %hpd_gpio = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 15
  %30 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call58, ptr %hpd_gpio, align 8
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %call58 to i32
  br label %err_put_ddc

if.end64:                                         ; preds = %if.end57
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i213 = call ptr @of_find_property(ptr noundef %33, ptr noundef nonnull @.str.12, ptr noundef null) #13
  %tobool.i = icmp ne ptr %call.i213, null
  %disable_wifi_frequencies = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 16
  %frombool = zext i1 %tobool.i to i8
  %34 = ptrtoint ptr %disable_wifi_frequencies to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %disable_wifi_frequencies, align 4
  %35 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %max_pixel_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 600000000, i64 %36)
  %cmp68 = icmp eq i64 %36, 600000000
  br i1 %cmp68, label %if.then69, label %if.end64.if.end75_crit_edge

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then69:                                        ; preds = %if.end64
  %hvs = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %hvs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hvs, align 8
  %core_clk = getelementptr inbounds %struct.vc4_hvs, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core_clk, align 4
  %call71 = call i32 @clk_round_rate(ptr noundef %40, i32 noundef 550000000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 550000000, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 550000000
  br i1 %cmp72, label %if.then73, label %if.then69.if.end75_crit_edge

if.then69.if.end75_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then73:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  %disable_4kp60 = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 17
  %41 = ptrtoint ptr %disable_4kp60 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %disable_4kp60, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.then69.if.end75_crit_edge, %if.end64.if.end75_crit_edge
  %hsm_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 24
  %42 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hsm_clock, align 4
  %call76 = call i32 @clk_set_min_rate(ptr noundef %43, i32 noundef 120000000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.err_put_ddc_crit_edge

if.end75.err_put_ddc_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_ddc

if.end79:                                         ; preds = %if.end75
  %call80 = call i32 @vc4_hdmi_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.err_put_ddc_crit_edge

if.end79.err_put_ddc_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_ddc

if.end83:                                         ; preds = %if.end79
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %44 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !439
  %call.i214 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #13
  call void @pm_runtime_enable(ptr noundef %dev) #13
  %45 = ptrtoint ptr %variant42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %variant42, align 4
  %reset = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reset, align 8
  %tobool86.not = icmp eq ptr %48, null
  br i1 %tobool86.not, label %if.end83.if.end90_crit_edge, label %if.then87

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  call void %48(ptr noundef nonnull %call.i) #13
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end83.if.end90_crit_edge
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %call92 = call i32 @of_device_is_compatible(ptr noundef %50, ptr noundef nonnull @.str.13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %lor.lhs.false, label %if.end90.land.lhs.true_crit_edge

if.end90.land.lhs.true_crit_edge:                 ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end90
  %51 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node, align 8
  %call95 = call i32 @of_device_is_compatible(ptr noundef %52, ptr noundef nonnull @.str.14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %lor.lhs.false.if.end104_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

lor.lhs.false.if.end104_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end90.land.lhs.true_crit_edge
  %call97 = call fastcc i32 @vc4_hdmi_read(ptr noundef nonnull %call.i, i32 noundef 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call97)
  %tobool98.not = icmp sgt i32 %call97, -1
  br i1 %tobool98.not, label %land.lhs.true.if.end104_crit_edge, label %if.then99

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then99:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %pixel_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 23
  %53 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pixel_clock, align 8
  %call100 = call fastcc i32 @clk_prepare_enable(ptr noundef %54)
  %55 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hsm_clock, align 4
  %call102 = call fastcc i32 @clk_prepare_enable(ptr noundef %56)
  %pixel_bvb_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 26
  %57 = ptrtoint ptr %pixel_bvb_clock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pixel_bvb_clock, align 4
  %call103 = call fastcc i32 @clk_prepare_enable(ptr noundef %58)
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %land.lhs.true.if.end104_crit_edge, %lor.lhs.false.if.end104_crit_edge
  %call105 = call i32 @drm_simple_encoder_init(ptr noundef %1, ptr noundef %encoder27, i32 noundef 2) #13
  %helper_private.i = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 11
  %59 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @vc4_hdmi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call106 = call fastcc i32 @vc4_hdmi_connector_init(ptr noundef %1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end104.err_destroy_encoder_crit_edge

if.end104.err_destroy_encoder_crit_edge:          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_destroy_encoder

if.end109:                                        ; preds = %if.end104
  %call110 = call fastcc i32 @vc4_hdmi_hotplug_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.err_destroy_conn_crit_edge

if.end109.err_destroy_conn_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_destroy_conn

if.end113:                                        ; preds = %if.end109
  %call114 = call fastcc i32 @vc4_hdmi_cec_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.err_free_hotplug_crit_edge

if.end113.err_free_hotplug_crit_edge:             ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_hotplug

if.end117:                                        ; preds = %if.end113
  %call118 = call fastcc i32 @vc4_hdmi_audio_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %err_free_cec

if.end121:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %debugfs_name = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %call, i32 0, i32 2
  %60 = ptrtoint ptr %debugfs_name to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %debugfs_name, align 8
  call void @vc4_debugfs_add_file(ptr noundef %1, ptr noundef %61, ptr noundef nonnull @vc4_hdmi_debugfs_regs, ptr noundef nonnull %call.i) #13
  %call.i215 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #13
  br label %cleanup

err_free_cec:                                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @vc4_hdmi_cec_exit(ptr noundef nonnull %call.i)
  br label %err_free_hotplug

err_free_hotplug:                                 ; preds = %err_free_cec, %if.end113.err_free_hotplug_crit_edge
  %ret.0 = phi i32 [ %call114, %if.end113.err_free_hotplug_crit_edge ], [ %call118, %err_free_cec ]
  call fastcc void @vc4_hdmi_hotplug_exit(ptr noundef nonnull %call.i)
  br label %err_destroy_conn

err_destroy_conn:                                 ; preds = %err_free_hotplug, %if.end109.err_destroy_conn_crit_edge
  %ret.1 = phi i32 [ %call110, %if.end109.err_destroy_conn_crit_edge ], [ %ret.0, %err_free_hotplug ]
  %connector = getelementptr inbounds %struct.vc4_hdmi, ptr %call.i, i32 0, i32 4
  call void @drm_connector_unregister(ptr noundef %connector) #13
  call void @drm_connector_cleanup(ptr noundef %connector) #13
  br label %err_destroy_encoder

err_destroy_encoder:                              ; preds = %err_destroy_conn, %if.end104.err_destroy_encoder_crit_edge
  %ret.2 = phi i32 [ %call106, %if.end104.err_destroy_encoder_crit_edge ], [ %ret.1, %err_destroy_conn ]
  call void @drm_encoder_cleanup(ptr noundef %encoder27) #13
  %call.i216 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #13
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  br label %err_put_ddc

err_put_ddc:                                      ; preds = %err_destroy_encoder, %if.end79.err_put_ddc_crit_edge, %if.end75.err_put_ddc_crit_edge, %if.then61
  %ret.3 = phi i32 [ %31, %if.then61 ], [ %call76, %if.end75.err_put_ddc_crit_edge ], [ %call80, %if.end79.err_put_ddc_crit_edge ], [ %ret.2, %err_destroy_encoder ]
  %62 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ddc, align 4
  %dev125 = getelementptr inbounds %struct.i2c_adapter, ptr %63, i32 0, i32 9
  call void @put_device(ptr noundef %dev125) #13
  br label %cleanup

cleanup:                                          ; preds = %err_put_ddc, %if.end121, %if.then56, %if.then51, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_put_ddc ], [ 0, %if.end121 ], [ -517, %if.then56 ], [ -19, %if.then51 ], [ -12, %entry.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi_regset = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %hdmi_regset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi_regset, align 4
  tail call void @kfree(ptr noundef %3) #13
  %hd_regset = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %hd_regset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hd_regset, align 4
  tail call void @kfree(ptr noundef %5) #13
  %codec_pdev.i = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %codec_pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %codec_pdev.i, align 8
  tail call void @platform_device_unregister(ptr noundef %7) #13
  %8 = ptrtoint ptr %codec_pdev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %codec_pdev.i, align 8
  tail call fastcc void @vc4_hdmi_cec_exit(ptr noundef %1)
  %variant.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant.i, align 4
  %external_irq_controller.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %external_irq_controller.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %external_irq_controller.i, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.vc4_hdmi_hotplug_exit.exit_crit_edge, label %if.then.i

entry.vc4_hdmi_hotplug_exit.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_hotplug_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev1.i, align 8
  %call.i = tail call i32 @platform_get_irq_byname(ptr noundef %14, ptr noundef nonnull @.str.49) #13
  %call2.i = tail call ptr @free_irq(i32 noundef %call.i, ptr noundef %1) #13
  %call3.i = tail call i32 @platform_get_irq_byname(ptr noundef %14, ptr noundef nonnull @.str.50) #13
  %call4.i = tail call ptr @free_irq(i32 noundef %call3.i, ptr noundef %1) #13
  br label %vc4_hdmi_hotplug_exit.exit

vc4_hdmi_hotplug_exit.exit:                       ; preds = %if.then.i, %entry.vc4_hdmi_hotplug_exit.exit_crit_edge
  %connector = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4
  tail call void @drm_connector_unregister(ptr noundef %connector) #13
  tail call void @drm_connector_cleanup(ptr noundef %connector) #13
  %encoder = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 3
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #13
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  %ddc = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddc, align 4
  %dev6 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev6) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_scrambling_wq(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %call1 = tail call zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef %1) #13
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 4
  %call3 = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %3, i1 noundef zeroext true) #13
  %4 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc, align 4
  %call5 = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %5, i1 noundef zeroext true) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 100) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_pre_crtc_configure(ptr noundef %encoder, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not.i = icmp eq i32 %1, 0
  br i1 %cmp20.not.i, label %entry.vc4_hdmi_encoder_get_connector_state.exit_crit_edge, label %for.body.lr.ph.i

entry.vc4_hdmi_encoder_get_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_encoder_get_connector_state.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %2 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connectors.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.__drm_connnectors_state, ptr %3, i32 %i.021.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %3, i32 %i.021.i, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %best_encoder.i = getelementptr inbounds %struct.drm_connector_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %best_encoder.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %best_encoder.i, align 4
  %cmp6.i = icmp eq ptr %9, %encoder
  br i1 %cmp6.i, label %land.lhs.true.i.vc4_hdmi_encoder_get_connector_state.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i.vc4_hdmi_encoder_get_connector_state.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_encoder_get_connector_state.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.vc4_hdmi_encoder_get_connector_state.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.vc4_hdmi_encoder_get_connector_state.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_encoder_get_connector_state.exit

vc4_hdmi_encoder_get_connector_state.exit:        ; preds = %for.inc.i.vc4_hdmi_encoder_get_connector_state.exit_crit_edge, %land.lhs.true.i.vc4_hdmi_encoder_get_connector_state.exit_crit_edge, %entry.vc4_hdmi_encoder_get_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.vc4_hdmi_encoder_get_connector_state.exit_crit_edge ], [ %7, %land.lhs.true.i.vc4_hdmi_encoder_get_connector_state.exit_crit_edge ], [ null, %for.inc.i.vc4_hdmi_encoder_get_connector_state.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -880
  %saved_adjusted_mode = getelementptr i8, ptr %encoder, i32 1548
  %pixel_rate3 = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %pixel_rate3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pixel_rate3, align 8
  %conv = trunc i64 %11 to i32
  %mutex = getelementptr i8, ptr %encoder, i32 1456
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %div = udiv i32 %conv, 100
  %mul = mul i32 %div, 101
  %12 = tail call i32 @llvm.umax.i32(i32 %mul, i32 120000000)
  %hsm_clock = getelementptr i8, ptr %encoder, i32 1364
  %13 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hsm_clock, align 4
  %call5 = tail call i32 @clk_set_min_rate(ptr noundef %14, i32 noundef %12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %vc4_hdmi_encoder_get_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call5) #13
  br label %cleanup

if.end:                                           ; preds = %vc4_hdmi_encoder_get_connector_state.exit
  %pdev = getelementptr i8, ptr %encoder, i32 -8
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !441
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !442
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then9_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !443
  br label %if.then9

if.then9:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then9_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %call.i) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %pixel_clock = getelementptr i8, ptr %encoder, i32 1360
  %18 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pixel_clock, align 8
  %call11 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %call11) #13
  br label %err_put_runtime_pm

if.end14:                                         ; preds = %if.end10
  %20 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pixel_clock, align 8
  %call.i117 = tail call i32 @clk_prepare(ptr noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %if.end.i, label %if.end14.if.then18_crit_edge

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.end.i:                                         ; preds = %if.end14
  %call1.i = tail call i32 @clk_enable(ptr noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %21) #13
  br label %if.then18

if.then18:                                        ; preds = %if.then3.i, %if.end14.if.then18_crit_edge
  %retval.0.i119.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i117, %if.end14.if.then18_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %retval.0.i119.ph) #13
  br label %err_put_runtime_pm

if.end19:                                         ; preds = %if.end.i
  tail call fastcc void @vc4_hdmi_cec_update_clk_div(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 297000000, i32 %conv)
  %cmp20 = icmp ugt i32 %conv, 297000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 148500000, i32 %conv)
  %cmp23 = icmp ugt i32 %conv, 148500000
  %. = select i1 %cmp23, i32 150000000, i32 75000000
  %bvb_rate.0 = select i1 %cmp20, i32 300000000, i32 %.
  %pixel_bvb_clock = getelementptr i8, ptr %encoder, i32 1372
  %22 = ptrtoint ptr %pixel_bvb_clock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pixel_bvb_clock, align 4
  %call29 = tail call i32 @clk_set_min_rate(ptr noundef %23, i32 noundef %bvb_rate.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %call29) #13
  br label %err_disable_pixel_clock

if.end32:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %pixel_bvb_clock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pixel_bvb_clock, align 4
  %call34 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %call34) #13
  br label %err_disable_pixel_clock

if.end37:                                         ; preds = %if.end32
  %variant = getelementptr i8, ptr %encoder, i32 -4
  %26 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %variant, align 4
  %phy_init = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_init, align 4
  %tobool38.not = icmp eq ptr %29, null
  br i1 %tobool38.not, label %if.end37.do.body43_crit_edge, label %if.then39

if.end37.do.body43_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %29(ptr noundef %add.ptr.i, ptr noundef %retval.0.i) #13
  br label %do.body43

do.body43:                                        ; preds = %if.then39, %if.end37.do.body43_crit_edge
  %hw_lock = getelementptr i8, ptr %encoder, i32 1412
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %call51 = tail call fastcc i32 @vc4_hdmi_read(ptr noundef %add.ptr.i, i32 noundef 57)
  %or52 = or i32 %call51, 32800
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 57, i32 noundef %or52)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call48) #13
  %30 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %variant, align 4
  %set_timings = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %set_timings to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_timings, align 8
  %tobool55.not = icmp eq ptr %33, null
  br i1 %tobool55.not, label %do.body43.cleanup_crit_edge, label %if.then56

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %33(ptr noundef %add.ptr.i, ptr noundef %retval.0.i, ptr noundef %saved_adjusted_mode) #13
  br label %cleanup

err_disable_pixel_clock:                          ; preds = %if.then36, %if.then31
  %34 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pixel_clock, align 8
  tail call void @clk_disable(ptr noundef %35) #13
  tail call void @clk_unprepare(ptr noundef %35) #13
  br label %err_put_runtime_pm

err_put_runtime_pm:                               ; preds = %err_disable_pixel_clock, %if.then18, %if.then13
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev63 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %call.i120 = tail call i32 @__pm_runtime_idle(ptr noundef %dev63, i32 noundef 5) #13
  br label %cleanup

cleanup:                                          ; preds = %err_put_runtime_pm, %if.then56, %do.body43.cleanup_crit_edge, %if.then9, %if.then
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_pre_crtc_enable(ptr noundef %encoder, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -880
  %mutex = getelementptr i8, ptr %encoder, i32 1456
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %hdmi_monitor = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi_monitor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdmi_monitor, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %saved_adjusted_mode = getelementptr i8, ptr %encoder, i32 1548
  %call2 = tail call i32 @drm_default_rgb_quant_range(ptr noundef %saved_adjusted_mode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %variant = getelementptr i8, ptr %encoder, i32 -4
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %csc_setup = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %csc_setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csc_setup, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.do.body16_crit_edge, label %if.then4

if.then.do.body16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %add.ptr.i, i1 noundef zeroext true) #13
  br label %do.body16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %variant7 = getelementptr i8, ptr %encoder, i32 -4
  %6 = ptrtoint ptr %variant7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant7, align 4
  %csc_setup8 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %csc_setup8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csc_setup8, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.else.do.body16_crit_edge, label %if.then10

if.else.do.body16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %9(ptr noundef %add.ptr.i, i1 noundef zeroext false) #13
  br label %do.body16

do.body16:                                        ; preds = %if.then10, %if.else.do.body16_crit_edge, %if.then4, %if.then.do.body16_crit_edge
  %.sink = phi i8 [ 1, %if.then4 ], [ 1, %if.then.do.body16_crit_edge ], [ 0, %if.then10 ], [ 0, %if.else.do.body16_crit_edge ]
  %limited_rgb_range14 = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %encoder, i32 0, i32 2
  %10 = ptrtoint ptr %limited_rgb_range14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %limited_rgb_range14, align 1
  %hw_lock = getelementptr i8, ptr %encoder, i32 1412
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef 1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call19) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_post_crtc_enable(ptr noundef %encoder, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %frame.i38.i = alloca %union.hdmi_infoframe, align 4
  %frame.i37.i = alloca %union.hdmi_infoframe, align 4
  %frame.i34.i = alloca %union.hdmi_infoframe, align 4
  %frame.i.i = alloca %union.hdmi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -880
  %flags = getelementptr i8, ptr %encoder, i32 1572
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %mutex = getelementptr i8, ptr %encoder, i32 1456
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %hw_lock = getelementptr i8, ptr %encoder, i32 1412
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %and3 = shl i32 %1, 26
  %2 = and i32 %and3, 268435456
  %and = shl i32 %1, 27
  %3 = and i32 %and, 134217728
  %4 = or i32 %3, %2
  %or17 = xor i32 %4, -125829120
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 80, i32 noundef %or17)
  %variant1.i = getelementptr i8, ptr %encoder, i32 -4
  %5 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr i8, ptr %encoder, i32 -8
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 12, i32 18
  %9 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 5
  %12 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %13)
  %cmp.not.i = icmp ugt i32 %13, 80
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 80) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %17, i32 80, i32 1
  %18 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg28.i, align 4
  %switch.tableidx = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 8
  br i1 %20, label %switch.lookup, label %if.end27.i.do.end34.i_crit_edge

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

switch.lookup:                                    ; preds = %if.end27.i
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %switch.offset = add i32 %switch.idx.mult, 1248
  %rm_regs.i.i = getelementptr i8, ptr %encoder, i32 %switch.offset
  %21 = ptrtoint ptr %rm_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.0.i.i = load ptr, ptr %rm_regs.i.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %switch.lookup.do.end34.i_crit_edge, label %if.end37.i

switch.lookup.do.end34.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %switch.lookup.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 80) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %17, i32 80, i32 2
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %retval.0.i.i, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #13, !srcloc !445
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %27, %if.end37.i ], [ 0, %do.end34.i ]
  %and19 = and i32 %retval.0.i, -262145
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 80, i32 noundef %and19)
  %hdmi_monitor = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %encoder, i32 0, i32 1
  %28 = ptrtoint ptr %hdmi_monitor to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hdmi_monitor, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %variant1.i, align 4
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i384 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 12, i32 18
  %34 = ptrtoint ptr %runtime_status.i.i384 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %runtime_status.i.i384, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i385 = icmp eq i32 %35, 0
  br i1 %tobool20.not, label %if.else, label %if.then

if.then:                                          ; preds = %vc4_hdmi_read.exit
  br i1 %cmp.i.i385, label %if.then.if.end.i305_crit_edge, label %pm_runtime_active.exit.i301

if.then.if.end.i305_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i305

pm_runtime_active.exit.i301:                      ; preds = %if.then
  %disable_depth.i.i298 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 12, i32 15
  %36 = ptrtoint ptr %disable_depth.i.i298 to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i.i299 = load i16, ptr %disable_depth.i.i298, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i299)
  %tobool.i.i300 = icmp ugt i16 %bf.load.i.i299, 8191
  br i1 %tobool.i.i300, label %pm_runtime_active.exit.i301.if.end.i305_crit_edge, label %do.end.i302, !prof !444

pm_runtime_active.exit.i301.if.end.i305_crit_edge: ; preds = %pm_runtime_active.exit.i301
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i305

do.end.i302:                                      ; preds = %pm_runtime_active.exit.i301
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i305

if.end.i305:                                      ; preds = %do.end.i302, %pm_runtime_active.exit.i301.if.end.i305_crit_edge, %if.then.if.end.i305_crit_edge
  %num_registers.i303 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %31, i32 0, i32 5
  %37 = ptrtoint ptr %num_registers.i303 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_registers.i303, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %38)
  %cmp.not.i304 = icmp ugt i32 %38, 57
  br i1 %cmp.not.i304, label %if.end27.i310, label %do.end24.i307

do.end24.i307:                                    ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 8
  %dev26.i306 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i306, ptr noundef nonnull @.str.22, i32 noundef 57) #16
  br label %vc4_hdmi_read.exit337

if.end27.i310:                                    ; preds = %if.end.i305
  %registers.i308 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %31, i32 0, i32 4
  %41 = ptrtoint ptr %registers.i308 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %registers.i308, align 8
  %reg28.i309 = getelementptr %struct.vc4_hdmi_register, ptr %42, i32 57, i32 1
  %43 = ptrtoint ptr %reg28.i309 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg28.i309, align 4
  %switch.tableidx642 = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx642)
  %45 = icmp ult i32 %switch.tableidx642, 8
  br i1 %45, label %switch.lookup641, label %if.end27.i310.do.end34.i332_crit_edge

if.end27.i310.do.end34.i332_crit_edge:            ; preds = %if.end27.i310
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i332

switch.lookup641:                                 ; preds = %if.end27.i310
  %switch.idx.mult643 = shl i32 %switch.tableidx642, 2
  %switch.offset644 = add i32 %switch.idx.mult643, 1248
  %rm_regs.i.i325 = getelementptr i8, ptr %encoder, i32 %switch.offset644
  %46 = ptrtoint ptr %rm_regs.i.i325 to i32
  call void @__asan_load4_noabort(i32 %46)
  %retval.0.i.i328 = load ptr, ptr %rm_regs.i.i325, align 4
  %tobool30.not.i329 = icmp eq ptr %retval.0.i.i328, null
  br i1 %tobool30.not.i329, label %switch.lookup641.do.end34.i332_crit_edge, label %if.end37.i335

switch.lookup641.do.end34.i332_crit_edge:         ; preds = %switch.lookup641
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i332

do.end34.i332:                                    ; preds = %switch.lookup641.do.end34.i332_crit_edge, %if.end27.i310.do.end34.i332_crit_edge
  %47 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev.i, align 8
  %dev36.i331 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i331, ptr noundef nonnull @.str.41, i32 noundef 57) #16
  br label %vc4_hdmi_read.exit337

if.end37.i335:                                    ; preds = %switch.lookup641
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i333 = getelementptr %struct.vc4_hdmi_register, ptr %42, i32 57, i32 2
  %49 = ptrtoint ptr %offset.i333 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset.i333, align 4
  %add.ptr.i334 = getelementptr i8, ptr %retval.0.i.i328, i32 %50
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334) #13, !srcloc !445
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit337

vc4_hdmi_read.exit337:                            ; preds = %if.end37.i335, %do.end34.i332, %do.end24.i307
  %retval.0.i336 = phi i32 [ 0, %do.end24.i307 ], [ %52, %if.end37.i335 ], [ 0, %do.end34.i332 ]
  %or22 = or i32 %retval.0.i336, 1
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 57, i32 noundef %or22)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call9) #13
  %call24 = tail call i64 @ktime_get_raw() #13
  %add = add i64 %call24, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 1170) #13
  %rm_regs.i.i369 = getelementptr i8, ptr %encoder, i32 1276
  %ram_regs.i.i367 = getelementptr i8, ptr %encoder, i32 1272
  %phy_regs.i.i365 = getelementptr i8, ptr %encoder, i32 1268
  %dvp_regs.i.i363 = getelementptr i8, ptr %encoder, i32 1264
  %cec_regs.i.i361 = getelementptr i8, ptr %encoder, i32 1256
  %csc_regs.i.i359 = getelementptr i8, ptr %encoder, i32 1260
  %hdmicore_regs.i.i357 = getelementptr i8, ptr %encoder, i32 1248
  %hd_regs.i.i355 = getelementptr i8, ptr %encoder, i32 1252
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %vc4_hdmi_read.exit337
  %wait__.0 = phi i32 [ 10, %vc4_hdmi_read.exit337 ], [ %spec.select, %cleanup ]
  %call31 = tail call i64 @ktime_get_raw() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call31, i64 %add)
  %cmp3.i.i = icmp sgt i64 %call31, %add
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !447
  %53 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %variant1.i, align 4
  %55 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i340 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3, i32 12, i32 18
  %57 = ptrtoint ptr %runtime_status.i.i340 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %runtime_status.i.i340, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i341 = icmp eq i32 %58, 0
  br i1 %cmp.i.i341, label %for.cond.if.end.i349_crit_edge, label %pm_runtime_active.exit.i345

for.cond.if.end.i349_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i349

pm_runtime_active.exit.i345:                      ; preds = %for.cond
  %disable_depth.i.i342 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3, i32 12, i32 15
  %59 = ptrtoint ptr %disable_depth.i.i342 to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i.i343 = load i16, ptr %disable_depth.i.i342, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i343)
  %tobool.i.i344 = icmp ugt i16 %bf.load.i.i343, 8191
  br i1 %tobool.i.i344, label %pm_runtime_active.exit.i345.if.end.i349_crit_edge, label %do.end.i346, !prof !444

pm_runtime_active.exit.i345.if.end.i349_crit_edge: ; preds = %pm_runtime_active.exit.i345
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i349

do.end.i346:                                      ; preds = %pm_runtime_active.exit.i345
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i349

if.end.i349:                                      ; preds = %do.end.i346, %pm_runtime_active.exit.i345.if.end.i349_crit_edge, %for.cond.if.end.i349_crit_edge
  %num_registers.i347 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %54, i32 0, i32 5
  %60 = ptrtoint ptr %num_registers.i347 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_registers.i347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %61)
  %cmp.not.i348 = icmp ugt i32 %61, 57
  br i1 %cmp.not.i348, label %if.end27.i354, label %do.end24.i351

do.end24.i351:                                    ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i, align 8
  %dev26.i350 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i350, ptr noundef nonnull @.str.22, i32 noundef 57) #16
  br label %vc4_hdmi_read.exit381

if.end27.i354:                                    ; preds = %if.end.i349
  %registers.i352 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %54, i32 0, i32 4
  %64 = ptrtoint ptr %registers.i352 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %registers.i352, align 8
  %reg28.i353 = getelementptr %struct.vc4_hdmi_register, ptr %65, i32 57, i32 1
  %66 = ptrtoint ptr %reg28.i353 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg28.i353, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %67, label %if.end27.i354.do.end34.i376_crit_edge [
    i32 2, label %if.end27.i354.__vc4_hdmi_get_field_base.exit.i374_crit_edge
    i32 1, label %sw.bb1.i.i358
    i32 4, label %sw.bb2.i.i360
    i32 3, label %sw.bb3.i.i362
    i32 5, label %sw.bb4.i.i364
    i32 6, label %sw.bb5.i.i366
    i32 7, label %sw.bb6.i.i368
    i32 8, label %sw.bb7.i.i370
  ]

if.end27.i354.__vc4_hdmi_get_field_base.exit.i374_crit_edge: ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i374

if.end27.i354.do.end34.i376_crit_edge:            ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i376

sw.bb1.i.i358:                                    ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i374

sw.bb2.i.i360:                                    ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i374

sw.bb3.i.i362:                                    ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i374

sw.bb4.i.i364:                                    ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i374

sw.bb5.i.i366:                                    ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i374

sw.bb6.i.i368:                                    ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i374

sw.bb7.i.i370:                                    ; preds = %if.end27.i354
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i374

__vc4_hdmi_get_field_base.exit.i374:              ; preds = %sw.bb7.i.i370, %sw.bb6.i.i368, %sw.bb5.i.i366, %sw.bb4.i.i364, %sw.bb3.i.i362, %sw.bb2.i.i360, %sw.bb1.i.i358, %if.end27.i354.__vc4_hdmi_get_field_base.exit.i374_crit_edge
  %retval.0.i.in.i371 = phi ptr [ %rm_regs.i.i369, %sw.bb7.i.i370 ], [ %ram_regs.i.i367, %sw.bb6.i.i368 ], [ %phy_regs.i.i365, %sw.bb5.i.i366 ], [ %dvp_regs.i.i363, %sw.bb4.i.i364 ], [ %cec_regs.i.i361, %sw.bb3.i.i362 ], [ %csc_regs.i.i359, %sw.bb2.i.i360 ], [ %hdmicore_regs.i.i357, %sw.bb1.i.i358 ], [ %hd_regs.i.i355, %if.end27.i354.__vc4_hdmi_get_field_base.exit.i374_crit_edge ]
  %69 = ptrtoint ptr %retval.0.i.in.i371 to i32
  call void @__asan_load4_noabort(i32 %69)
  %retval.0.i.i372 = load ptr, ptr %retval.0.i.in.i371, align 4
  %tobool30.not.i373 = icmp eq ptr %retval.0.i.i372, null
  br i1 %tobool30.not.i373, label %__vc4_hdmi_get_field_base.exit.i374.do.end34.i376_crit_edge, label %if.end37.i379

__vc4_hdmi_get_field_base.exit.i374.do.end34.i376_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i374
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i376

do.end34.i376:                                    ; preds = %__vc4_hdmi_get_field_base.exit.i374.do.end34.i376_crit_edge, %if.end27.i354.do.end34.i376_crit_edge
  %70 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i, align 8
  %dev36.i375 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i375, ptr noundef nonnull @.str.41, i32 noundef 57) #16
  br label %vc4_hdmi_read.exit381

if.end37.i379:                                    ; preds = %__vc4_hdmi_get_field_base.exit.i374
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i377 = getelementptr %struct.vc4_hdmi_register, ptr %65, i32 57, i32 2
  %72 = ptrtoint ptr %offset.i377 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset.i377, align 4
  %add.ptr.i378 = getelementptr i8, ptr %retval.0.i.i372, i32 %73
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i378) #13, !srcloc !445
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit381

vc4_hdmi_read.exit381:                            ; preds = %if.end37.i379, %do.end34.i376, %do.end24.i351
  %retval.0.i380 = phi i32 [ 0, %do.end24.i351 ], [ %75, %if.end37.i379 ], [ 0, %do.end34.i376 ]
  %and35 = and i32 %retval.0.i380, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp ne i32 %and35, 0
  %brmerge = select i1 %tobool36.not, i1 true, i1 %cmp3.i.i
  br i1 %brmerge, label %for.end, label %cleanup

cleanup:                                          ; preds = %vc4_hdmi_read.exit381
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %wait__.0, 1
  tail call void @usleep_range_state(i32 noundef %wait__.0, i32 noundef %mul, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.0)
  %cmp41 = icmp slt i32 %wait__.0, 1000
  %spec.select = select i1 %cmp41, i32 %mul, i32 %wait__.0
  br label %for.cond

for.end:                                          ; preds = %vc4_hdmi_read.exit381
  br i1 %tobool36.not, label %for.end.if.end185_crit_edge, label %land.rhs

for.end.if.end185_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

land.rhs:                                         ; preds = %for.end
  %.b288 = load i1, ptr @vc4_hdmi_encoder_post_crtc_enable.__already_done, align 1
  br i1 %.b288, label %land.rhs.if.end185_crit_edge, label %if.then56, !prof !444

land.rhs.if.end185_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then56:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vc4_hdmi_encoder_post_crtc_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1172, i32 noundef 9, ptr noundef nonnull @.str.27) #13
  br label %if.end185

if.else:                                          ; preds = %vc4_hdmi_read.exit
  br i1 %cmp.i.i385, label %if.else.if.end.i393_crit_edge, label %pm_runtime_active.exit.i389

if.else.if.end.i393_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i393

pm_runtime_active.exit.i389:                      ; preds = %if.else
  %disable_depth.i.i386 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 12, i32 15
  %76 = ptrtoint ptr %disable_depth.i.i386 to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load.i.i387 = load i16, ptr %disable_depth.i.i386, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i387)
  %tobool.i.i388 = icmp ugt i16 %bf.load.i.i387, 8191
  br i1 %tobool.i.i388, label %pm_runtime_active.exit.i389.if.end.i393_crit_edge, label %do.end.i390, !prof !444

pm_runtime_active.exit.i389.if.end.i393_crit_edge: ; preds = %pm_runtime_active.exit.i389
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i393

do.end.i390:                                      ; preds = %pm_runtime_active.exit.i389
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i393

if.end.i393:                                      ; preds = %do.end.i390, %pm_runtime_active.exit.i389.if.end.i393_crit_edge, %if.else.if.end.i393_crit_edge
  %num_registers.i391 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %31, i32 0, i32 5
  %77 = ptrtoint ptr %num_registers.i391 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_registers.i391, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %78)
  %cmp.not.i392 = icmp ugt i32 %78, 51
  br i1 %cmp.not.i392, label %if.end27.i398, label %do.end24.i395

do.end24.i395:                                    ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev.i, align 8
  %dev26.i394 = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i394, ptr noundef nonnull @.str.22, i32 noundef 51) #16
  br label %vc4_hdmi_read.exit425

if.end27.i398:                                    ; preds = %if.end.i393
  %registers.i396 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %31, i32 0, i32 4
  %81 = ptrtoint ptr %registers.i396 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %registers.i396, align 8
  %reg28.i397 = getelementptr %struct.vc4_hdmi_register, ptr %82, i32 51, i32 1
  %83 = ptrtoint ptr %reg28.i397 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reg28.i397, align 4
  %switch.tableidx646 = add i32 %84, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx646)
  %85 = icmp ult i32 %switch.tableidx646, 8
  br i1 %85, label %switch.lookup645, label %if.end27.i398.do.end34.i420_crit_edge

if.end27.i398.do.end34.i420_crit_edge:            ; preds = %if.end27.i398
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i420

switch.lookup645:                                 ; preds = %if.end27.i398
  %switch.idx.mult647 = shl i32 %switch.tableidx646, 2
  %switch.offset648 = add i32 %switch.idx.mult647, 1248
  %rm_regs.i.i413 = getelementptr i8, ptr %encoder, i32 %switch.offset648
  %86 = ptrtoint ptr %rm_regs.i.i413 to i32
  call void @__asan_load4_noabort(i32 %86)
  %retval.0.i.i416 = load ptr, ptr %rm_regs.i.i413, align 4
  %tobool30.not.i417 = icmp eq ptr %retval.0.i.i416, null
  br i1 %tobool30.not.i417, label %switch.lookup645.do.end34.i420_crit_edge, label %if.end37.i423

switch.lookup645.do.end34.i420_crit_edge:         ; preds = %switch.lookup645
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i420

do.end34.i420:                                    ; preds = %switch.lookup645.do.end34.i420_crit_edge, %if.end27.i398.do.end34.i420_crit_edge
  %87 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev.i, align 8
  %dev36.i419 = getelementptr inbounds %struct.platform_device, ptr %88, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i419, ptr noundef nonnull @.str.41, i32 noundef 51) #16
  br label %vc4_hdmi_read.exit425

if.end37.i423:                                    ; preds = %switch.lookup645
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i421 = getelementptr %struct.vc4_hdmi_register, ptr %82, i32 51, i32 2
  %89 = ptrtoint ptr %offset.i421 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offset.i421, align 4
  %add.ptr.i422 = getelementptr i8, ptr %retval.0.i.i416, i32 %90
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422) #13, !srcloc !445
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit425

vc4_hdmi_read.exit425:                            ; preds = %if.end37.i423, %do.end34.i420, %do.end24.i395
  %retval.0.i424 = phi i32 [ 0, %do.end24.i395 ], [ %92, %if.end37.i423 ], [ 0, %do.end34.i420 ]
  %and91 = and i32 %retval.0.i424, -65537
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 51, i32 noundef %and91)
  %93 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %variant1.i, align 4
  %95 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i428 = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3, i32 12, i32 18
  %97 = ptrtoint ptr %runtime_status.i.i428 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %runtime_status.i.i428, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.i.i429 = icmp eq i32 %98, 0
  br i1 %cmp.i.i429, label %vc4_hdmi_read.exit425.if.end.i437_crit_edge, label %pm_runtime_active.exit.i433

vc4_hdmi_read.exit425.if.end.i437_crit_edge:      ; preds = %vc4_hdmi_read.exit425
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i437

pm_runtime_active.exit.i433:                      ; preds = %vc4_hdmi_read.exit425
  %disable_depth.i.i430 = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3, i32 12, i32 15
  %99 = ptrtoint ptr %disable_depth.i.i430 to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load.i.i431 = load i16, ptr %disable_depth.i.i430, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i431)
  %tobool.i.i432 = icmp ugt i16 %bf.load.i.i431, 8191
  br i1 %tobool.i.i432, label %pm_runtime_active.exit.i433.if.end.i437_crit_edge, label %do.end.i434, !prof !444

pm_runtime_active.exit.i433.if.end.i437_crit_edge: ; preds = %pm_runtime_active.exit.i433
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i437

do.end.i434:                                      ; preds = %pm_runtime_active.exit.i433
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i437

if.end.i437:                                      ; preds = %do.end.i434, %pm_runtime_active.exit.i433.if.end.i437_crit_edge, %vc4_hdmi_read.exit425.if.end.i437_crit_edge
  %num_registers.i435 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %94, i32 0, i32 5
  %100 = ptrtoint ptr %num_registers.i435 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_registers.i435, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %101)
  %cmp.not.i436 = icmp ugt i32 %101, 57
  br i1 %cmp.not.i436, label %if.end27.i442, label %do.end24.i439

do.end24.i439:                                    ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i, align 8
  %dev26.i438 = getelementptr inbounds %struct.platform_device, ptr %103, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i438, ptr noundef nonnull @.str.22, i32 noundef 57) #16
  br label %vc4_hdmi_read.exit469

if.end27.i442:                                    ; preds = %if.end.i437
  %registers.i440 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %94, i32 0, i32 4
  %104 = ptrtoint ptr %registers.i440 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %registers.i440, align 8
  %reg28.i441 = getelementptr %struct.vc4_hdmi_register, ptr %105, i32 57, i32 1
  %106 = ptrtoint ptr %reg28.i441 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %reg28.i441, align 4
  %switch.tableidx650 = add i32 %107, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx650)
  %108 = icmp ult i32 %switch.tableidx650, 8
  br i1 %108, label %switch.lookup649, label %if.end27.i442.do.end34.i464_crit_edge

if.end27.i442.do.end34.i464_crit_edge:            ; preds = %if.end27.i442
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i464

switch.lookup649:                                 ; preds = %if.end27.i442
  %switch.idx.mult651 = shl i32 %switch.tableidx650, 2
  %switch.offset652 = add i32 %switch.idx.mult651, 1248
  %rm_regs.i.i457 = getelementptr i8, ptr %encoder, i32 %switch.offset652
  %109 = ptrtoint ptr %rm_regs.i.i457 to i32
  call void @__asan_load4_noabort(i32 %109)
  %retval.0.i.i460 = load ptr, ptr %rm_regs.i.i457, align 4
  %tobool30.not.i461 = icmp eq ptr %retval.0.i.i460, null
  br i1 %tobool30.not.i461, label %switch.lookup649.do.end34.i464_crit_edge, label %if.end37.i467

switch.lookup649.do.end34.i464_crit_edge:         ; preds = %switch.lookup649
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i464

do.end34.i464:                                    ; preds = %switch.lookup649.do.end34.i464_crit_edge, %if.end27.i442.do.end34.i464_crit_edge
  %110 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i, align 8
  %dev36.i463 = getelementptr inbounds %struct.platform_device, ptr %111, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i463, ptr noundef nonnull @.str.41, i32 noundef 57) #16
  br label %vc4_hdmi_read.exit469

if.end37.i467:                                    ; preds = %switch.lookup649
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i465 = getelementptr %struct.vc4_hdmi_register, ptr %105, i32 57, i32 2
  %112 = ptrtoint ptr %offset.i465 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset.i465, align 4
  %add.ptr.i466 = getelementptr i8, ptr %retval.0.i.i460, i32 %113
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466) #13, !srcloc !445
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit469

vc4_hdmi_read.exit469:                            ; preds = %if.end37.i467, %do.end34.i464, %do.end24.i439
  %retval.0.i468 = phi i32 [ 0, %do.end24.i439 ], [ %115, %if.end37.i467 ], [ 0, %do.end34.i464 ]
  %and93 = and i32 %retval.0.i468, -2
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 57, i32 noundef %and93)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call9) #13
  %call96 = tail call i64 @ktime_get_raw() #13
  %add97 = add i64 %call96, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 1184) #13
  %rm_regs.i.i502 = getelementptr i8, ptr %encoder, i32 1276
  %ram_regs.i.i500 = getelementptr i8, ptr %encoder, i32 1272
  %phy_regs.i.i498 = getelementptr i8, ptr %encoder, i32 1268
  %dvp_regs.i.i496 = getelementptr i8, ptr %encoder, i32 1264
  %cec_regs.i.i494 = getelementptr i8, ptr %encoder, i32 1256
  %csc_regs.i.i492 = getelementptr i8, ptr %encoder, i32 1260
  %hdmicore_regs.i.i490 = getelementptr i8, ptr %encoder, i32 1248
  %hd_regs.i.i488 = getelementptr i8, ptr %encoder, i32 1252
  br label %for.cond106

for.cond106:                                      ; preds = %cleanup125, %vc4_hdmi_read.exit469
  %wait__98.0 = phi i32 [ 10, %vc4_hdmi_read.exit469 ], [ %spec.select289, %cleanup125 ]
  %call108 = tail call i64 @ktime_get_raw() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call108, i64 %add97)
  %cmp3.i.i470 = icmp sgt i64 %call108, %add97
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !448
  %116 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %variant1.i, align 4
  %118 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i473 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3, i32 12, i32 18
  %120 = ptrtoint ptr %runtime_status.i.i473 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %runtime_status.i.i473, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i.i474 = icmp eq i32 %121, 0
  br i1 %cmp.i.i474, label %for.cond106.if.end.i482_crit_edge, label %pm_runtime_active.exit.i478

for.cond106.if.end.i482_crit_edge:                ; preds = %for.cond106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i482

pm_runtime_active.exit.i478:                      ; preds = %for.cond106
  %disable_depth.i.i475 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3, i32 12, i32 15
  %122 = ptrtoint ptr %disable_depth.i.i475 to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load.i.i476 = load i16, ptr %disable_depth.i.i475, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i476)
  %tobool.i.i477 = icmp ugt i16 %bf.load.i.i476, 8191
  br i1 %tobool.i.i477, label %pm_runtime_active.exit.i478.if.end.i482_crit_edge, label %do.end.i479, !prof !444

pm_runtime_active.exit.i478.if.end.i482_crit_edge: ; preds = %pm_runtime_active.exit.i478
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i482

do.end.i479:                                      ; preds = %pm_runtime_active.exit.i478
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i482

if.end.i482:                                      ; preds = %do.end.i479, %pm_runtime_active.exit.i478.if.end.i482_crit_edge, %for.cond106.if.end.i482_crit_edge
  %num_registers.i480 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %117, i32 0, i32 5
  %123 = ptrtoint ptr %num_registers.i480 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_registers.i480, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %124)
  %cmp.not.i481 = icmp ugt i32 %124, 57
  br i1 %cmp.not.i481, label %if.end27.i487, label %do.end24.i484

do.end24.i484:                                    ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev.i, align 8
  %dev26.i483 = getelementptr inbounds %struct.platform_device, ptr %126, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i483, ptr noundef nonnull @.str.22, i32 noundef 57) #16
  br label %if.end185

if.end27.i487:                                    ; preds = %if.end.i482
  %registers.i485 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %117, i32 0, i32 4
  %127 = ptrtoint ptr %registers.i485 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %registers.i485, align 8
  %reg28.i486 = getelementptr %struct.vc4_hdmi_register, ptr %128, i32 57, i32 1
  %129 = ptrtoint ptr %reg28.i486 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %reg28.i486, align 4
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %130, label %if.end27.i487.do.end34.i509_crit_edge [
    i32 2, label %if.end27.i487.__vc4_hdmi_get_field_base.exit.i507_crit_edge
    i32 1, label %sw.bb1.i.i491
    i32 4, label %sw.bb2.i.i493
    i32 3, label %sw.bb3.i.i495
    i32 5, label %sw.bb4.i.i497
    i32 6, label %sw.bb5.i.i499
    i32 7, label %sw.bb6.i.i501
    i32 8, label %sw.bb7.i.i503
  ]

if.end27.i487.__vc4_hdmi_get_field_base.exit.i507_crit_edge: ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i507

if.end27.i487.do.end34.i509_crit_edge:            ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i509

sw.bb1.i.i491:                                    ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i507

sw.bb2.i.i493:                                    ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i507

sw.bb3.i.i495:                                    ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i507

sw.bb4.i.i497:                                    ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i507

sw.bb5.i.i499:                                    ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i507

sw.bb6.i.i501:                                    ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i507

sw.bb7.i.i503:                                    ; preds = %if.end27.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i507

__vc4_hdmi_get_field_base.exit.i507:              ; preds = %sw.bb7.i.i503, %sw.bb6.i.i501, %sw.bb5.i.i499, %sw.bb4.i.i497, %sw.bb3.i.i495, %sw.bb2.i.i493, %sw.bb1.i.i491, %if.end27.i487.__vc4_hdmi_get_field_base.exit.i507_crit_edge
  %retval.0.i.in.i504 = phi ptr [ %rm_regs.i.i502, %sw.bb7.i.i503 ], [ %ram_regs.i.i500, %sw.bb6.i.i501 ], [ %phy_regs.i.i498, %sw.bb5.i.i499 ], [ %dvp_regs.i.i496, %sw.bb4.i.i497 ], [ %cec_regs.i.i494, %sw.bb3.i.i495 ], [ %csc_regs.i.i492, %sw.bb2.i.i493 ], [ %hdmicore_regs.i.i490, %sw.bb1.i.i491 ], [ %hd_regs.i.i488, %if.end27.i487.__vc4_hdmi_get_field_base.exit.i507_crit_edge ]
  %132 = ptrtoint ptr %retval.0.i.in.i504 to i32
  call void @__asan_load4_noabort(i32 %132)
  %retval.0.i.i505 = load ptr, ptr %retval.0.i.in.i504, align 4
  %tobool30.not.i506 = icmp eq ptr %retval.0.i.i505, null
  br i1 %tobool30.not.i506, label %__vc4_hdmi_get_field_base.exit.i507.do.end34.i509_crit_edge, label %vc4_hdmi_read.exit514

__vc4_hdmi_get_field_base.exit.i507.do.end34.i509_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i507
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i509

do.end34.i509:                                    ; preds = %__vc4_hdmi_get_field_base.exit.i507.do.end34.i509_crit_edge, %if.end27.i487.do.end34.i509_crit_edge
  %133 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev.i, align 8
  %dev36.i508 = getelementptr inbounds %struct.platform_device, ptr %134, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i508, ptr noundef nonnull @.str.41, i32 noundef 57) #16
  br label %if.end185

vc4_hdmi_read.exit514:                            ; preds = %__vc4_hdmi_get_field_base.exit.i507
  %offset.i510 = getelementptr %struct.vc4_hdmi_register, ptr %128, i32 57, i32 2
  %135 = ptrtoint ptr %offset.i510 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %offset.i510, align 4
  %add.ptr.i511 = getelementptr i8, ptr %retval.0.i.i505, i32 %136
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i511) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %138 = and i32 %137, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool113.not = icmp eq i32 %138, 0
  %brmerge291 = select i1 %tobool113.not, i1 true, i1 %cmp3.i.i470
  br i1 %brmerge291, label %for.end128, label %cleanup125

cleanup125:                                       ; preds = %vc4_hdmi_read.exit514
  call void @__sanitizer_cov_trace_pc() #15
  %mul119 = shl i32 %wait__98.0, 1
  tail call void @usleep_range_state(i32 noundef %wait__98.0, i32 noundef %mul119, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__98.0)
  %cmp120 = icmp slt i32 %wait__98.0, 1000
  %spec.select289 = select i1 %cmp120, i32 %mul119, i32 %wait__98.0
  br label %for.cond106

for.end128:                                       ; preds = %vc4_hdmi_read.exit514
  br i1 %tobool113.not, label %for.end128.if.end185_crit_edge, label %land.rhs139

for.end128.if.end185_crit_edge:                   ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

land.rhs139:                                      ; preds = %for.end128
  %.b286287 = load i1, ptr @vc4_hdmi_encoder_post_crtc_enable.__already_done.28, align 1
  br i1 %.b286287, label %land.rhs139.if.end185_crit_edge, label %if.then150, !prof !444

land.rhs139.if.end185_crit_edge:                  ; preds = %land.rhs139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then150:                                       ; preds = %land.rhs139
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vc4_hdmi_encoder_post_crtc_enable.__already_done.28, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1186, i32 noundef 9, ptr noundef nonnull @.str.29) #13
  br label %if.end185

if.end185:                                        ; preds = %if.then150, %land.rhs139.if.end185_crit_edge, %for.end128.if.end185_crit_edge, %do.end34.i509, %do.end24.i484, %if.then56, %land.rhs.if.end185_crit_edge, %for.end.if.end185_crit_edge
  %139 = ptrtoint ptr %hdmi_monitor to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %hdmi_monitor, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool187.not = icmp eq i8 %140, 0
  br i1 %tobool187.not, label %if.end185.if.end241_crit_edge, label %do.body190

if.end185.if.end241_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241

do.body190:                                       ; preds = %if.end185
  %call198 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %141 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %variant1.i, align 4
  %143 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i517 = getelementptr inbounds %struct.platform_device, ptr %144, i32 0, i32 3, i32 12, i32 18
  %145 = ptrtoint ptr %runtime_status.i.i517 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %runtime_status.i.i517, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp.i.i518 = icmp eq i32 %146, 0
  br i1 %cmp.i.i518, label %do.body190.if.end.i526_crit_edge, label %pm_runtime_active.exit.i522

do.body190.if.end.i526_crit_edge:                 ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i526

pm_runtime_active.exit.i522:                      ; preds = %do.body190
  %disable_depth.i.i519 = getelementptr inbounds %struct.platform_device, ptr %144, i32 0, i32 3, i32 12, i32 15
  %147 = ptrtoint ptr %disable_depth.i.i519 to i32
  call void @__asan_load2_noabort(i32 %147)
  %bf.load.i.i520 = load i16, ptr %disable_depth.i.i519, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i520)
  %tobool.i.i521 = icmp ugt i16 %bf.load.i.i520, 8191
  br i1 %tobool.i.i521, label %pm_runtime_active.exit.i522.if.end.i526_crit_edge, label %do.end.i523, !prof !444

pm_runtime_active.exit.i522.if.end.i526_crit_edge: ; preds = %pm_runtime_active.exit.i522
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i526

do.end.i523:                                      ; preds = %pm_runtime_active.exit.i522
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i526

if.end.i526:                                      ; preds = %do.end.i523, %pm_runtime_active.exit.i522.if.end.i526_crit_edge, %do.body190.if.end.i526_crit_edge
  %num_registers.i524 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %142, i32 0, i32 5
  %148 = ptrtoint ptr %num_registers.i524 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_registers.i524, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %149)
  %cmp.not.i525 = icmp ugt i32 %149, 57
  br i1 %cmp.not.i525, label %if.end27.i531, label %if.end.i526.do.end224.sink.split_crit_edge

if.end.i526.do.end224.sink.split_crit_edge:       ; preds = %if.end.i526
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end224.sink.split

if.end27.i531:                                    ; preds = %if.end.i526
  %registers.i529 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %142, i32 0, i32 4
  %150 = ptrtoint ptr %registers.i529 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %registers.i529, align 8
  %reg28.i530 = getelementptr %struct.vc4_hdmi_register, ptr %151, i32 57, i32 1
  %152 = ptrtoint ptr %reg28.i530 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %reg28.i530, align 4
  %switch.tableidx654 = add i32 %153, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx654)
  %154 = icmp ult i32 %switch.tableidx654, 8
  br i1 %154, label %switch.lookup653, label %if.end27.i531.do.end224.sink.split_crit_edge

if.end27.i531.do.end224.sink.split_crit_edge:     ; preds = %if.end27.i531
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end224.sink.split

switch.lookup653:                                 ; preds = %if.end27.i531
  %switch.idx.mult655 = shl i32 %switch.tableidx654, 2
  %switch.offset656 = add i32 %switch.idx.mult655, 1248
  %rm_regs.i.i546 = getelementptr i8, ptr %encoder, i32 %switch.offset656
  %155 = ptrtoint ptr %rm_regs.i.i546 to i32
  call void @__asan_load4_noabort(i32 %155)
  %retval.0.i.i549 = load ptr, ptr %rm_regs.i.i546, align 4
  %tobool30.not.i550 = icmp eq ptr %retval.0.i.i549, null
  br i1 %tobool30.not.i550, label %switch.lookup653.do.end224.sink.split_crit_edge, label %vc4_hdmi_read.exit558

switch.lookup653.do.end224.sink.split_crit_edge:  ; preds = %switch.lookup653
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end224.sink.split

vc4_hdmi_read.exit558:                            ; preds = %switch.lookup653
  %offset.i554 = getelementptr %struct.vc4_hdmi_register, ptr %151, i32 57, i32 2
  %156 = ptrtoint ptr %offset.i554 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %offset.i554, align 4
  %add.ptr.i555 = getelementptr i8, ptr %retval.0.i.i549, i32 %157
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i555) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %159 = and i32 %158, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool206.not = icmp eq i32 %159, 0
  br i1 %tobool206.not, label %vc4_hdmi_read.exit558.do.end224_crit_edge, label %vc4_hdmi_read.exit558.if.end230_crit_edge, !prof !449

vc4_hdmi_read.exit558.if.end230_crit_edge:        ; preds = %vc4_hdmi_read.exit558
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end230

vc4_hdmi_read.exit558.do.end224_crit_edge:        ; preds = %vc4_hdmi_read.exit558
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end224

do.end224.sink.split:                             ; preds = %switch.lookup653.do.end224.sink.split_crit_edge, %if.end27.i531.do.end224.sink.split_crit_edge, %if.end.i526.do.end224.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.22, %if.end.i526.do.end224.sink.split_crit_edge ], [ @.str.41, %switch.lookup653.do.end224.sink.split_crit_edge ], [ @.str.41, %if.end27.i531.do.end224.sink.split_crit_edge ]
  %160 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev.i, align 8
  %dev36.i552 = getelementptr inbounds %struct.platform_device, ptr %161, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i552, ptr noundef nonnull %.str.41.sink, i32 noundef 57) #16
  br label %do.end224

do.end224:                                        ; preds = %do.end224.sink.split, %vc4_hdmi_read.exit558.do.end224_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1193, i32 noundef 9, ptr noundef null) #13
  br label %if.end230

if.end230:                                        ; preds = %do.end224, %vc4_hdmi_read.exit558.if.end230_crit_edge
  %162 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %variant1.i, align 4
  %164 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i561 = getelementptr inbounds %struct.platform_device, ptr %165, i32 0, i32 3, i32 12, i32 18
  %166 = ptrtoint ptr %runtime_status.i.i561 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %runtime_status.i.i561, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp.i.i562 = icmp eq i32 %167, 0
  br i1 %cmp.i.i562, label %if.end230.if.end.i570_crit_edge, label %pm_runtime_active.exit.i566

if.end230.if.end.i570_crit_edge:                  ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i570

pm_runtime_active.exit.i566:                      ; preds = %if.end230
  %disable_depth.i.i563 = getelementptr inbounds %struct.platform_device, ptr %165, i32 0, i32 3, i32 12, i32 15
  %168 = ptrtoint ptr %disable_depth.i.i563 to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load.i.i564 = load i16, ptr %disable_depth.i.i563, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i564)
  %tobool.i.i565 = icmp ugt i16 %bf.load.i.i564, 8191
  br i1 %tobool.i.i565, label %pm_runtime_active.exit.i566.if.end.i570_crit_edge, label %do.end.i567, !prof !444

pm_runtime_active.exit.i566.if.end.i570_crit_edge: ; preds = %pm_runtime_active.exit.i566
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i570

do.end.i567:                                      ; preds = %pm_runtime_active.exit.i566
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i570

if.end.i570:                                      ; preds = %do.end.i567, %pm_runtime_active.exit.i566.if.end.i570_crit_edge, %if.end230.if.end.i570_crit_edge
  %num_registers.i568 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %163, i32 0, i32 5
  %169 = ptrtoint ptr %num_registers.i568 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %num_registers.i568, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %170)
  %cmp.not.i569 = icmp ugt i32 %170, 57
  br i1 %cmp.not.i569, label %if.end27.i575, label %do.end24.i572

do.end24.i572:                                    ; preds = %if.end.i570
  call void @__sanitizer_cov_trace_pc() #15
  %171 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pdev.i, align 8
  %dev26.i571 = getelementptr inbounds %struct.platform_device, ptr %172, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i571, ptr noundef nonnull @.str.22, i32 noundef 57) #16
  br label %vc4_hdmi_read.exit602

if.end27.i575:                                    ; preds = %if.end.i570
  %registers.i573 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %163, i32 0, i32 4
  %173 = ptrtoint ptr %registers.i573 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %registers.i573, align 8
  %reg28.i574 = getelementptr %struct.vc4_hdmi_register, ptr %174, i32 57, i32 1
  %175 = ptrtoint ptr %reg28.i574 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %reg28.i574, align 4
  %switch.tableidx658 = add i32 %176, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx658)
  %177 = icmp ult i32 %switch.tableidx658, 8
  br i1 %177, label %switch.lookup657, label %if.end27.i575.do.end34.i597_crit_edge

if.end27.i575.do.end34.i597_crit_edge:            ; preds = %if.end27.i575
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i597

switch.lookup657:                                 ; preds = %if.end27.i575
  %switch.idx.mult659 = shl i32 %switch.tableidx658, 2
  %switch.offset660 = add i32 %switch.idx.mult659, 1248
  %rm_regs.i.i590 = getelementptr i8, ptr %encoder, i32 %switch.offset660
  %178 = ptrtoint ptr %rm_regs.i.i590 to i32
  call void @__asan_load4_noabort(i32 %178)
  %retval.0.i.i593 = load ptr, ptr %rm_regs.i.i590, align 4
  %tobool30.not.i594 = icmp eq ptr %retval.0.i.i593, null
  br i1 %tobool30.not.i594, label %switch.lookup657.do.end34.i597_crit_edge, label %if.end37.i600

switch.lookup657.do.end34.i597_crit_edge:         ; preds = %switch.lookup657
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i597

do.end34.i597:                                    ; preds = %switch.lookup657.do.end34.i597_crit_edge, %if.end27.i575.do.end34.i597_crit_edge
  %179 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pdev.i, align 8
  %dev36.i596 = getelementptr inbounds %struct.platform_device, ptr %180, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i596, ptr noundef nonnull @.str.41, i32 noundef 57) #16
  br label %vc4_hdmi_read.exit602

if.end37.i600:                                    ; preds = %switch.lookup657
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i598 = getelementptr %struct.vc4_hdmi_register, ptr %174, i32 57, i32 2
  %181 = ptrtoint ptr %offset.i598 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %offset.i598, align 4
  %add.ptr.i599 = getelementptr i8, ptr %retval.0.i.i593, i32 %182
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i599) #13, !srcloc !445
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit602

vc4_hdmi_read.exit602:                            ; preds = %if.end37.i600, %do.end34.i597, %do.end24.i572
  %retval.0.i601 = phi i32 [ 0, %do.end24.i572 ], [ %184, %if.end37.i600 ], [ 0, %do.end34.i597 ]
  %or239 = or i32 %retval.0.i601, 8
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 57, i32 noundef %or239)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 51, i32 noundef 65536)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call198) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %185 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i = icmp eq i32 %185, 0
  br i1 %tobool.not.i, label %if.end.thread.i, label %land.rhs.i

if.end.thread.i:                                  ; preds = %vc4_hdmi_read.exit602
  call void @__sanitizer_cov_trace_pc() #15
  %state.i48.i = getelementptr i8, ptr %encoder, i32 1096
  %186 = ptrtoint ptr %state.i48.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %state.i48.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i.i) #13
  %188 = call ptr @memset(ptr %frame.i.i, i32 255, i32 68)
  br label %if.end.i.i

land.rhs.i:                                       ; preds = %vc4_hdmi_read.exit602
  %dep_map.i = getelementptr i8, ptr %encoder, i32 1520
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i603 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i603, label %do.end.i604, label %land.rhs.i.if.end.i605_crit_edge, !prof !449

land.rhs.i.if.end.i605_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i605

do.end.i604:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 556, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i605

if.end.i605:                                      ; preds = %do.end.i604, %land.rhs.i.if.end.i605_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  %state.i.i = getelementptr i8, ptr %encoder, i32 1096
  %189 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %state.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i.i) #13
  %191 = call ptr @memset(ptr %frame.i.i, i32 255, i32 68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i, label %if.end.i605.if.end.i.i_crit_edge, label %land.rhs.i.i

if.end.i605.if.end.i.i_crit_edge:                 ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.end.i605
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !449

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 485, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.end.i605.if.end.i.i_crit_edge, %if.end.thread.i
  %192 = phi ptr [ %187, %if.end.thread.i ], [ %190, %do.end.i.i ], [ %190, %land.rhs.i.i.if.end.i.i_crit_edge ], [ %190, %if.end.i605.if.end.i.i_crit_edge ]
  %state.i52.i = phi ptr [ %state.i48.i, %if.end.thread.i ], [ %state.i.i, %do.end.i.i ], [ %state.i.i, %land.rhs.i.i.if.end.i.i_crit_edge ], [ %state.i.i, %if.end.i605.if.end.i.i_crit_edge ]
  %connector2.i51.i = getelementptr i8, ptr %encoder, i32 104
  %saved_adjusted_mode.i53.i = getelementptr i8, ptr %encoder, i32 1548
  %call27.i.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i.i, ptr noundef %connector2.i51.i, ptr noundef %saved_adjusted_mode.i53.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp28.i.i = icmp slt i32 %call27.i.i, 0
  br i1 %cmp28.i.i, label %if.then29.i.i, label %if.end30.i.i

if.then29.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #13
  br label %vc4_hdmi_set_avi_infoframe.exit.i

if.end30.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %limited_rgb_range.i.i = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %encoder, i32 0, i32 2
  %193 = ptrtoint ptr %limited_rgb_range.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %limited_rgb_range.i.i, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool31.not.i.i = icmp eq i8 %194, 0
  %cond.i.i = select i1 %tobool31.not.i.i, i32 2, i32 1
  call void @drm_hdmi_avi_infoframe_quant_range(ptr noundef nonnull %frame.i.i, ptr noundef %connector2.i51.i, ptr noundef %saved_adjusted_mode.i53.i, i32 noundef %cond.i.i) #13
  call void @drm_hdmi_avi_infoframe_colorspace(ptr noundef nonnull %frame.i.i, ptr noundef %192) #13
  call void @drm_hdmi_avi_infoframe_bars(ptr noundef nonnull %frame.i.i, ptr noundef %192) #13
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %encoder, ptr noundef nonnull %frame.i.i) #13
  br label %vc4_hdmi_set_avi_infoframe.exit.i

vc4_hdmi_set_avi_infoframe.exit.i:                ; preds = %if.end30.i.i, %if.then29.i.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i.i) #13
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i34.i) #13
  %195 = call ptr @memset(ptr %frame.i34.i, i32 255, i32 68)
  %call.i35.i = call i32 @hdmi_spd_infoframe_init(ptr noundef nonnull %frame.i34.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %cmp.i.i606 = icmp slt i32 %call.i35.i, 0
  br i1 %cmp.i.i606, label %if.then.i.i, label %if.end.i36.i

if.then.i.i:                                      ; preds = %vc4_hdmi_set_avi_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #13
  br label %vc4_hdmi_set_spd_infoframe.exit.i

if.end.i36.i:                                     ; preds = %vc4_hdmi_set_avi_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %sdi.i.i = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %frame.i34.i, i32 0, i32 5
  %196 = ptrtoint ptr %sdi.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 9, ptr %sdi.i.i, align 4
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %encoder, ptr noundef nonnull %frame.i34.i) #13
  br label %vc4_hdmi_set_spd_infoframe.exit.i

vc4_hdmi_set_spd_infoframe.exit.i:                ; preds = %if.end.i36.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i34.i) #13
  %streaming.i = getelementptr i8, ptr %encoder, i32 -12
  %197 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %streaming.i, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool25.not.i = icmp eq i8 %198, 0
  br i1 %tobool25.not.i, label %vc4_hdmi_set_spd_infoframe.exit.i.if.end27.i607_crit_edge, label %if.then26.i

vc4_hdmi_set_spd_infoframe.exit.i.if.end27.i607_crit_edge: ; preds = %vc4_hdmi_set_spd_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i607

if.then26.i:                                      ; preds = %vc4_hdmi_set_spd_infoframe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %infoframe.i.i = getelementptr i8, ptr %encoder, i32 -44
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i37.i) #13
  %199 = getelementptr inbounds i8, ptr %frame.i37.i, i32 28
  %200 = call ptr @memset(ptr %199, i32 255, i32 40)
  %201 = call ptr @memcpy(ptr %frame.i37.i, ptr %infoframe.i.i, i32 28)
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %encoder, ptr noundef nonnull %frame.i37.i) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i37.i) #13
  br label %if.end27.i607

if.end27.i607:                                    ; preds = %if.then26.i, %vc4_hdmi_set_spd_infoframe.exit.i.if.end27.i607_crit_edge
  %202 = ptrtoint ptr %state.i52.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %state.i52.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i38.i) #13
  %204 = call ptr @memset(ptr %frame.i38.i, i32 255, i32 68)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %205 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i40.i = icmp eq i32 %205, 0
  br i1 %tobool.not.i40.i, label %if.end27.i607.if.end.i46.i_crit_edge, label %land.rhs.i44.i

if.end27.i607.if.end.i46.i_crit_edge:             ; preds = %if.end27.i607
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i46.i

land.rhs.i44.i:                                   ; preds = %if.end27.i607
  %dep_map.i41.i = getelementptr i8, ptr %encoder, i32 1520
  %call.i.i42.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i41.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i)
  %cmp.not.i43.i = icmp eq i32 %call.i.i42.i, 0
  br i1 %cmp.not.i43.i, label %do.end.i45.i, label %land.rhs.i44.i.if.end.i46.i_crit_edge, !prof !449

land.rhs.i44.i.if.end.i46.i_crit_edge:            ; preds = %land.rhs.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i46.i

do.end.i45.i:                                     ; preds = %land.rhs.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 538, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i46.i

if.end.i46.i:                                     ; preds = %do.end.i45.i, %land.rhs.i44.i.if.end.i46.i_crit_edge, %if.end27.i607.if.end.i46.i_crit_edge
  %206 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %variant1.i, align 4
  %supports_hdr.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %207, i32 0, i32 18
  %208 = ptrtoint ptr %supports_hdr.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %supports_hdr.i.i, align 8, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool26.not.i.i = icmp eq i8 %209, 0
  br i1 %tobool26.not.i.i, label %if.end.i46.i.vc4_hdmi_set_infoframes.exit_crit_edge, label %if.end28.i.i

if.end.i46.i.vc4_hdmi_set_infoframes.exit_crit_edge: ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_set_infoframes.exit

if.end28.i.i:                                     ; preds = %if.end.i46.i
  %hdr_output_metadata.i.i = getelementptr inbounds %struct.drm_connector_state, ptr %203, i32 0, i32 18
  %210 = ptrtoint ptr %hdr_output_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hdr_output_metadata.i.i, align 4
  %tobool29.not.i.i = icmp eq ptr %211, null
  br i1 %tobool29.not.i.i, label %if.end28.i.i.vc4_hdmi_set_infoframes.exit_crit_edge, label %if.end31.i.i

if.end28.i.i.vc4_hdmi_set_infoframes.exit_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_set_infoframes.exit

if.end31.i.i:                                     ; preds = %if.end28.i.i
  %call32.i.i = call i32 @drm_hdmi_infoframe_set_hdr_metadata(ptr noundef nonnull %frame.i38.i, ptr noundef %203) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end35.i.i, label %if.end31.i.i.vc4_hdmi_set_infoframes.exit_crit_edge

if.end31.i.i.vc4_hdmi_set_infoframes.exit_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_set_infoframes.exit

if.end35.i.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %encoder, ptr noundef nonnull %frame.i38.i) #13
  br label %vc4_hdmi_set_infoframes.exit

vc4_hdmi_set_infoframes.exit:                     ; preds = %if.end35.i.i, %if.end31.i.i.vc4_hdmi_set_infoframes.exit_crit_edge, %if.end28.i.i.vc4_hdmi_set_infoframes.exit_crit_edge, %if.end.i46.i.vc4_hdmi_set_infoframes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i38.i) #13
  br label %if.end241

if.end241:                                        ; preds = %vc4_hdmi_set_infoframes.exit, %if.end185.if.end241_crit_edge
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %212 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %variant1.i, align 4
  %214 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i.i = getelementptr inbounds %struct.platform_device, ptr %215, i32 0, i32 3, i32 12, i32 18
  %216 = ptrtoint ptr %runtime_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %runtime_status.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp.i.i.i = icmp eq i32 %217, 0
  br i1 %cmp.i.i.i, label %if.end241.if.end.i.i610_crit_edge, label %pm_runtime_active.exit.i.i

if.end241.if.end.i.i610_crit_edge:                ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i610

pm_runtime_active.exit.i.i:                       ; preds = %if.end241
  %disable_depth.i.i.i = getelementptr inbounds %struct.platform_device, ptr %215, i32 0, i32 3, i32 12, i32 15
  %218 = ptrtoint ptr %disable_depth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %bf.load.i.i.i = load i16, ptr %disable_depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i.i)
  %tobool.i.i.i = icmp ugt i16 %bf.load.i.i.i, 8191
  br i1 %tobool.i.i.i, label %pm_runtime_active.exit.i.i.if.end.i.i610_crit_edge, label %do.end.i.i608, !prof !444

pm_runtime_active.exit.i.i.if.end.i.i610_crit_edge: ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i610

do.end.i.i608:                                    ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i610

if.end.i.i610:                                    ; preds = %do.end.i.i608, %pm_runtime_active.exit.i.i.if.end.i.i610_crit_edge, %if.end241.if.end.i.i610_crit_edge
  %num_registers.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %213, i32 0, i32 5
  %219 = ptrtoint ptr %num_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_registers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %220)
  %cmp.not.i.i609 = icmp ugt i32 %220, 34
  br i1 %cmp.not.i.i609, label %if.end27.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.end.i.i610
  call void @__sanitizer_cov_trace_pc() #15
  %221 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pdev.i, align 8
  %dev26.i.i = getelementptr inbounds %struct.platform_device, ptr %222, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.22, i32 noundef 34) #16
  br label %vc4_hdmi_read.exit.i

if.end27.i.i:                                     ; preds = %if.end.i.i610
  %registers.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %213, i32 0, i32 4
  %223 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %registers.i.i, align 8
  %reg28.i.i = getelementptr %struct.vc4_hdmi_register, ptr %224, i32 34, i32 1
  %225 = ptrtoint ptr %reg28.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %reg28.i.i, align 4
  %switch.tableidx662 = add i32 %226, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx662)
  %227 = icmp ult i32 %switch.tableidx662, 8
  br i1 %227, label %switch.lookup661, label %if.end27.i.i.do.end34.i.i_crit_edge

if.end27.i.i.do.end34.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

switch.lookup661:                                 ; preds = %if.end27.i.i
  %switch.idx.mult663 = shl i32 %switch.tableidx662, 2
  %switch.offset664 = add i32 %switch.idx.mult663, 1248
  %rm_regs.i.i.i = getelementptr i8, ptr %encoder, i32 %switch.offset664
  %228 = ptrtoint ptr %rm_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %retval.0.i.i.i = load ptr, ptr %rm_regs.i.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool30.not.i.i, label %switch.lookup661.do.end34.i.i_crit_edge, label %if.end37.i.i

switch.lookup661.do.end34.i.i_crit_edge:          ; preds = %switch.lookup661
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

do.end34.i.i:                                     ; preds = %switch.lookup661.do.end34.i.i_crit_edge, %if.end27.i.i.do.end34.i.i_crit_edge
  %229 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pdev.i, align 8
  %dev36.i.i = getelementptr inbounds %struct.platform_device, ptr %230, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i.i, ptr noundef nonnull @.str.41, i32 noundef 34) #16
  br label %vc4_hdmi_read.exit.i

if.end37.i.i:                                     ; preds = %switch.lookup661
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i.i = getelementptr %struct.vc4_hdmi_register, ptr %224, i32 34, i32 2
  %231 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i.i, i32 %232
  %233 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !445
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %234 = and i32 %233, -1074855936
  %235 = call i32 @llvm.bswap.i32(i32 %234) #13
  br label %vc4_hdmi_read.exit.i

vc4_hdmi_read.exit.i:                             ; preds = %if.end37.i.i, %do.end34.i.i, %do.end24.i.i
  %retval.0.i.i611 = phi i32 [ 0, %do.end24.i.i ], [ %235, %if.end37.i.i ], [ 0, %do.end34.i.i ]
  call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef %retval.0.i.i611) #13
  %or.i = or i32 %retval.0.i.i611, 64
  call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef %or.i) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2.i) #13
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #13
  %call17.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef %retval.0.i.i611) #13
  call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 34, i32 noundef %or.i) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call17.i) #13
  %call25.i = call i64 @ktime_get_raw() #13
  %add.i = add i64 %call25.i, 1000000
  call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 978) #13
  %rm_regs.i.i139.i = getelementptr i8, ptr %encoder, i32 1276
  %ram_regs.i.i137.i = getelementptr i8, ptr %encoder, i32 1272
  %phy_regs.i.i135.i = getelementptr i8, ptr %encoder, i32 1268
  %dvp_regs.i.i133.i = getelementptr i8, ptr %encoder, i32 1264
  %cec_regs.i.i131.i = getelementptr i8, ptr %encoder, i32 1256
  %csc_regs.i.i129.i = getelementptr i8, ptr %encoder, i32 1260
  %hdmicore_regs.i.i127.i = getelementptr i8, ptr %encoder, i32 1248
  %hd_regs.i.i125.i = getelementptr i8, ptr %encoder, i32 1252
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %vc4_hdmi_read.exit.i
  %wait__.0.i = phi i32 [ 10, %vc4_hdmi_read.exit.i ], [ %spec.select.i, %cleanup.i ]
  %call32.i = call i64 @ktime_get_raw() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call32.i, i64 %add.i)
  %cmp3.i.i.i = icmp sgt i64 %call32.i, %add.i
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !450
  %236 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %variant1.i, align 4
  %238 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i110.i = getelementptr inbounds %struct.platform_device, ptr %239, i32 0, i32 3, i32 12, i32 18
  %240 = ptrtoint ptr %runtime_status.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %runtime_status.i.i110.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp.i.i111.i = icmp eq i32 %241, 0
  br i1 %cmp.i.i111.i, label %for.cond.i.if.end.i119.i_crit_edge, label %pm_runtime_active.exit.i115.i

for.cond.i.if.end.i119.i_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i119.i

pm_runtime_active.exit.i115.i:                    ; preds = %for.cond.i
  %disable_depth.i.i112.i = getelementptr inbounds %struct.platform_device, ptr %239, i32 0, i32 3, i32 12, i32 15
  %242 = ptrtoint ptr %disable_depth.i.i112.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %bf.load.i.i113.i = load i16, ptr %disable_depth.i.i112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i113.i)
  %tobool.i.i114.i = icmp ugt i16 %bf.load.i.i113.i, 8191
  br i1 %tobool.i.i114.i, label %pm_runtime_active.exit.i115.i.if.end.i119.i_crit_edge, label %do.end.i116.i, !prof !444

pm_runtime_active.exit.i115.i.if.end.i119.i_crit_edge: ; preds = %pm_runtime_active.exit.i115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i119.i

do.end.i116.i:                                    ; preds = %pm_runtime_active.exit.i115.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i119.i

if.end.i119.i:                                    ; preds = %do.end.i116.i, %pm_runtime_active.exit.i115.i.if.end.i119.i_crit_edge, %for.cond.i.if.end.i119.i_crit_edge
  %num_registers.i117.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %237, i32 0, i32 5
  %243 = ptrtoint ptr %num_registers.i117.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %num_registers.i117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %244)
  %cmp.not.i118.i = icmp ugt i32 %244, 34
  br i1 %cmp.not.i118.i, label %if.end27.i124.i, label %do.end24.i121.i

do.end24.i121.i:                                  ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #15
  %245 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pdev.i, align 8
  %dev26.i120.i = getelementptr inbounds %struct.platform_device, ptr %246, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i120.i, ptr noundef nonnull @.str.22, i32 noundef 34) #16
  br label %vc4_hdmi_read.exit151.i

if.end27.i124.i:                                  ; preds = %if.end.i119.i
  %registers.i122.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %237, i32 0, i32 4
  %247 = ptrtoint ptr %registers.i122.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %registers.i122.i, align 8
  %reg28.i123.i = getelementptr %struct.vc4_hdmi_register, ptr %248, i32 34, i32 1
  %249 = ptrtoint ptr %reg28.i123.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %reg28.i123.i, align 4
  %251 = zext i32 %250 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %250, label %if.end27.i124.i.do.end34.i146.i_crit_edge [
    i32 2, label %if.end27.i124.i.__vc4_hdmi_get_field_base.exit.i144.i_crit_edge
    i32 1, label %sw.bb1.i.i128.i
    i32 4, label %sw.bb2.i.i130.i
    i32 3, label %sw.bb3.i.i132.i
    i32 5, label %sw.bb4.i.i134.i
    i32 6, label %sw.bb5.i.i136.i
    i32 7, label %sw.bb6.i.i138.i
    i32 8, label %sw.bb7.i.i140.i
  ]

if.end27.i124.i.__vc4_hdmi_get_field_base.exit.i144.i_crit_edge: ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i144.i

if.end27.i124.i.do.end34.i146.i_crit_edge:        ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i146.i

sw.bb1.i.i128.i:                                  ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i144.i

sw.bb2.i.i130.i:                                  ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i144.i

sw.bb3.i.i132.i:                                  ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i144.i

sw.bb4.i.i134.i:                                  ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i144.i

sw.bb5.i.i136.i:                                  ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i144.i

sw.bb6.i.i138.i:                                  ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i144.i

sw.bb7.i.i140.i:                                  ; preds = %if.end27.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i144.i

__vc4_hdmi_get_field_base.exit.i144.i:            ; preds = %sw.bb7.i.i140.i, %sw.bb6.i.i138.i, %sw.bb5.i.i136.i, %sw.bb4.i.i134.i, %sw.bb3.i.i132.i, %sw.bb2.i.i130.i, %sw.bb1.i.i128.i, %if.end27.i124.i.__vc4_hdmi_get_field_base.exit.i144.i_crit_edge
  %retval.0.i.in.i141.i = phi ptr [ %rm_regs.i.i139.i, %sw.bb7.i.i140.i ], [ %ram_regs.i.i137.i, %sw.bb6.i.i138.i ], [ %phy_regs.i.i135.i, %sw.bb5.i.i136.i ], [ %dvp_regs.i.i133.i, %sw.bb4.i.i134.i ], [ %cec_regs.i.i131.i, %sw.bb3.i.i132.i ], [ %csc_regs.i.i129.i, %sw.bb2.i.i130.i ], [ %hdmicore_regs.i.i127.i, %sw.bb1.i.i128.i ], [ %hd_regs.i.i125.i, %if.end27.i124.i.__vc4_hdmi_get_field_base.exit.i144.i_crit_edge ]
  %252 = ptrtoint ptr %retval.0.i.in.i141.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %retval.0.i.i142.i = load ptr, ptr %retval.0.i.in.i141.i, align 4
  %tobool30.not.i143.i = icmp eq ptr %retval.0.i.i142.i, null
  br i1 %tobool30.not.i143.i, label %__vc4_hdmi_get_field_base.exit.i144.i.do.end34.i146.i_crit_edge, label %if.end37.i149.i

__vc4_hdmi_get_field_base.exit.i144.i.do.end34.i146.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i146.i

do.end34.i146.i:                                  ; preds = %__vc4_hdmi_get_field_base.exit.i144.i.do.end34.i146.i_crit_edge, %if.end27.i124.i.do.end34.i146.i_crit_edge
  %253 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %pdev.i, align 8
  %dev36.i145.i = getelementptr inbounds %struct.platform_device, ptr %254, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i145.i, ptr noundef nonnull @.str.41, i32 noundef 34) #16
  br label %vc4_hdmi_read.exit151.i

if.end37.i149.i:                                  ; preds = %__vc4_hdmi_get_field_base.exit.i144.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i147.i = getelementptr %struct.vc4_hdmi_register, ptr %248, i32 34, i32 2
  %255 = ptrtoint ptr %offset.i147.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %offset.i147.i, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %retval.0.i.i142.i, i32 %256
  %257 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148.i) #13, !srcloc !445
  %258 = call i32 @llvm.bswap.i32(i32 %257) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit151.i

vc4_hdmi_read.exit151.i:                          ; preds = %if.end37.i149.i, %do.end34.i146.i, %do.end24.i121.i
  %retval.0.i150.i = phi i32 [ 0, %do.end24.i121.i ], [ %258, %if.end37.i149.i ], [ 0, %do.end34.i146.i ]
  %and35.i = and i32 %retval.0.i150.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool.not.i612 = icmp ne i32 %and35.i, 0
  %brmerge.i = select i1 %tobool.not.i612, i1 true, i1 %cmp3.i.i.i
  br i1 %brmerge.i, label %for.end.i, label %cleanup.i

cleanup.i:                                        ; preds = %vc4_hdmi_read.exit151.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = shl i32 %wait__.0.i, 1
  call void @usleep_range_state(i32 noundef %wait__.0.i, i32 noundef %mul.i, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.0.i)
  %cmp39.i = icmp slt i32 %wait__.0.i, 1000
  %spec.select.i = select i1 %cmp39.i, i32 %mul.i, i32 %wait__.0.i
  br label %for.cond.i

for.end.i:                                        ; preds = %vc4_hdmi_read.exit151.i
  br i1 %tobool.not.i612, label %for.end.i.vc4_hdmi_recenter_fifo.exit_crit_edge, label %land.rhs.i613

for.end.i.vc4_hdmi_recenter_fifo.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_recenter_fifo.exit

land.rhs.i613:                                    ; preds = %for.end.i
  %.b107.i = load i1, ptr @vc4_hdmi_recenter_fifo.__already_done, align 1
  br i1 %.b107.i, label %land.rhs.i613.vc4_hdmi_recenter_fifo.exit_crit_edge, label %if.then54.i, !prof !444

land.rhs.i613.vc4_hdmi_recenter_fifo.exit_crit_edge: ; preds = %land.rhs.i613
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_recenter_fifo.exit

if.then54.i:                                      ; preds = %land.rhs.i613
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vc4_hdmi_recenter_fifo.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 980, i32 noundef 9, ptr noundef nonnull @.str.37) #13
  br label %vc4_hdmi_recenter_fifo.exit

vc4_hdmi_recenter_fifo.exit:                      ; preds = %if.then54.i, %land.rhs.i613.vc4_hdmi_recenter_fifo.exit_crit_edge, %for.end.i.vc4_hdmi_recenter_fifo.exit_crit_edge
  call fastcc void @vc4_hdmi_enable_scrambling(ptr noundef %encoder)
  call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_post_crtc_disable(ptr noundef %encoder, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -880
  %mutex = getelementptr i8, ptr %encoder, i32 1456
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %hw_lock = getelementptr i8, ptr %encoder, i32 1412
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 51, i32 noundef 0)
  %variant1.i = getelementptr i8, ptr %encoder, i32 -4
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr i8, ptr %encoder, i32 -8
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 80
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 80) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 80, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %switch.tableidx = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 8
  br i1 %15, label %switch.lookup, label %if.end27.i.do.end34.i_crit_edge

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

switch.lookup:                                    ; preds = %if.end27.i
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %switch.offset = add i32 %switch.idx.mult, 1248
  %rm_regs.i.i = getelementptr i8, ptr %encoder, i32 %switch.offset
  %16 = ptrtoint ptr %rm_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %rm_regs.i.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %switch.lookup.do.end34.i_crit_edge, label %if.end37.i

switch.lookup.do.end34.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %switch.lookup.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 80) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 80, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %22 = or i32 %21, 32768
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 8388608, %do.end24.i ], [ %23, %if.end37.i ], [ 8388608, %do.end34.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 80, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #13
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %25 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %variant1.i, align 4
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i40 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 12, i32 18
  %29 = ptrtoint ptr %runtime_status.i.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %runtime_status.i.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i41 = icmp eq i32 %30, 0
  br i1 %cmp.i.i41, label %vc4_hdmi_read.exit.if.end.i49_crit_edge, label %pm_runtime_active.exit.i45

vc4_hdmi_read.exit.if.end.i49_crit_edge:          ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i49

pm_runtime_active.exit.i45:                       ; preds = %vc4_hdmi_read.exit
  %disable_depth.i.i42 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 12, i32 15
  %31 = ptrtoint ptr %disable_depth.i.i42 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i.i43 = load i16, ptr %disable_depth.i.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i43)
  %tobool.i.i44 = icmp ugt i16 %bf.load.i.i43, 8191
  br i1 %tobool.i.i44, label %pm_runtime_active.exit.i45.if.end.i49_crit_edge, label %do.end.i46, !prof !444

pm_runtime_active.exit.i45.if.end.i49_crit_edge:  ; preds = %pm_runtime_active.exit.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i49

do.end.i46:                                       ; preds = %pm_runtime_active.exit.i45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i49

if.end.i49:                                       ; preds = %do.end.i46, %pm_runtime_active.exit.i45.if.end.i49_crit_edge, %vc4_hdmi_read.exit.if.end.i49_crit_edge
  %num_registers.i47 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %26, i32 0, i32 5
  %32 = ptrtoint ptr %num_registers.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_registers.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %33)
  %cmp.not.i48 = icmp ugt i32 %33, 80
  br i1 %cmp.not.i48, label %if.end27.i54, label %do.end24.i51

do.end24.i51:                                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 8
  %dev26.i50 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i50, ptr noundef nonnull @.str.22, i32 noundef 80) #16
  br label %vc4_hdmi_read.exit81

if.end27.i54:                                     ; preds = %if.end.i49
  %registers.i52 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %26, i32 0, i32 4
  %36 = ptrtoint ptr %registers.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %registers.i52, align 8
  %reg28.i53 = getelementptr %struct.vc4_hdmi_register, ptr %37, i32 80, i32 1
  %38 = ptrtoint ptr %reg28.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg28.i53, align 4
  %switch.tableidx90 = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx90)
  %40 = icmp ult i32 %switch.tableidx90, 8
  br i1 %40, label %switch.lookup89, label %if.end27.i54.do.end34.i76_crit_edge

if.end27.i54.do.end34.i76_crit_edge:              ; preds = %if.end27.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i76

switch.lookup89:                                  ; preds = %if.end27.i54
  %switch.idx.mult91 = shl i32 %switch.tableidx90, 2
  %switch.offset92 = add i32 %switch.idx.mult91, 1248
  %rm_regs.i.i69 = getelementptr i8, ptr %encoder, i32 %switch.offset92
  %41 = ptrtoint ptr %rm_regs.i.i69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.0.i.i72 = load ptr, ptr %rm_regs.i.i69, align 4
  %tobool30.not.i73 = icmp eq ptr %retval.0.i.i72, null
  br i1 %tobool30.not.i73, label %switch.lookup89.do.end34.i76_crit_edge, label %if.end37.i79

switch.lookup89.do.end34.i76_crit_edge:           ; preds = %switch.lookup89
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i76

do.end34.i76:                                     ; preds = %switch.lookup89.do.end34.i76_crit_edge, %if.end27.i54.do.end34.i76_crit_edge
  %42 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev.i, align 8
  %dev36.i75 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i75, ptr noundef nonnull @.str.41, i32 noundef 80) #16
  br label %vc4_hdmi_read.exit81

if.end37.i79:                                     ; preds = %switch.lookup89
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i77 = getelementptr %struct.vc4_hdmi_register, ptr %37, i32 80, i32 2
  %44 = ptrtoint ptr %offset.i77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset.i77, align 4
  %add.ptr.i78 = getelementptr i8, ptr %retval.0.i.i72, i32 %45
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %47 = and i32 %46, -129
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  br label %vc4_hdmi_read.exit81

vc4_hdmi_read.exit81:                             ; preds = %if.end37.i79, %do.end34.i76, %do.end24.i51
  %retval.0.i80 = phi i32 [ 0, %do.end24.i51 ], [ %48, %if.end37.i79 ], [ 0, %do.end34.i76 ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 80, i32 noundef %retval.0.i80)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call17) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %49 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %vc4_hdmi_read.exit81.if.end.i84_crit_edge, label %land.rhs.i

vc4_hdmi_read.exit81.if.end.i84_crit_edge:        ; preds = %vc4_hdmi_read.exit81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i84

land.rhs.i:                                       ; preds = %vc4_hdmi_read.exit81
  %dep_map.i = getelementptr i8, ptr %encoder, i32 1520
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i82 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i82, label %do.end.i83, label %land.rhs.i.if.end.i84_crit_edge, !prof !449

land.rhs.i.if.end.i84_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i84

do.end.i83:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 624, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i84

if.end.i84:                                       ; preds = %do.end.i83, %land.rhs.i.if.end.i84_crit_edge, %vc4_hdmi_read.exit81.if.end.i84_crit_edge
  %scdc_enabled.i = getelementptr i8, ptr %encoder, i32 1661
  %50 = ptrtoint ptr %scdc_enabled.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %scdc_enabled.i, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool25.not.i = icmp eq i8 %51, 0
  br i1 %tobool25.not.i, label %if.end.i84.vc4_hdmi_disable_scrambling.exit_crit_edge, label %if.end27.i86

if.end.i84.vc4_hdmi_disable_scrambling.exit_crit_edge: ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_disable_scrambling.exit

if.end27.i86:                                     ; preds = %if.end.i84
  %52 = ptrtoint ptr %scdc_enabled.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %scdc_enabled.i, align 1
  %scrambling_work.i = getelementptr i8, ptr %encoder, i32 1144
  %53 = ptrtoint ptr %scrambling_work.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %scrambling_work.i, align 4
  %and1.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool30.not.i85 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool30.not.i85, label %if.end27.i86.do.body36.i_crit_edge, label %if.then31.i

if.end27.i86.do.body36.i_crit_edge:               ; preds = %if.end27.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body36.i

if.then31.i:                                      ; preds = %if.end27.i86
  call void @__sanitizer_cov_trace_pc() #15
  %call33.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %scrambling_work.i) #13
  br label %do.body36.i

do.body36.i:                                      ; preds = %if.then31.i, %if.end27.i86.do.body36.i_crit_edge
  %call40.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %55 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %variant1.i, align 4
  %57 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i.i = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3, i32 12, i32 18
  %59 = ptrtoint ptr %runtime_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %runtime_status.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i, label %do.body36.i.if.end.i.i_crit_edge, label %pm_runtime_active.exit.i.i

do.body36.i.if.end.i.i_crit_edge:                 ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

pm_runtime_active.exit.i.i:                       ; preds = %do.body36.i
  %disable_depth.i.i.i = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3, i32 12, i32 15
  %61 = ptrtoint ptr %disable_depth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i.i.i = load i16, ptr %disable_depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i.i)
  %tobool.i.i.i = icmp ugt i16 %bf.load.i.i.i, 8191
  br i1 %tobool.i.i.i, label %pm_runtime_active.exit.i.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !444

pm_runtime_active.exit.i.i.if.end.i.i_crit_edge:  ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %pm_runtime_active.exit.i.i.if.end.i.i_crit_edge, %do.body36.i.if.end.i.i_crit_edge
  %num_registers.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %56, i32 0, i32 5
  %62 = ptrtoint ptr %num_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_registers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %63)
  %cmp.not.i.i = icmp ugt i32 %63, 58
  br i1 %cmp.not.i.i, label %if.end27.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev.i, align 8
  %dev26.i.i = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.22, i32 noundef 58) #16
  br label %vc4_hdmi_read.exit.i

if.end27.i.i:                                     ; preds = %if.end.i.i
  %registers.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %56, i32 0, i32 4
  %66 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %registers.i.i, align 8
  %reg28.i.i = getelementptr %struct.vc4_hdmi_register, ptr %67, i32 58, i32 1
  %68 = ptrtoint ptr %reg28.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg28.i.i, align 4
  %switch.tableidx94 = add i32 %69, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx94)
  %70 = icmp ult i32 %switch.tableidx94, 8
  br i1 %70, label %switch.lookup93, label %if.end27.i.i.do.end34.i.i_crit_edge

if.end27.i.i.do.end34.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

switch.lookup93:                                  ; preds = %if.end27.i.i
  %switch.idx.mult95 = shl i32 %switch.tableidx94, 2
  %switch.offset96 = add i32 %switch.idx.mult95, 1248
  %rm_regs.i.i.i = getelementptr i8, ptr %encoder, i32 %switch.offset96
  %71 = ptrtoint ptr %rm_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %retval.0.i.i.i = load ptr, ptr %rm_regs.i.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool30.not.i.i, label %switch.lookup93.do.end34.i.i_crit_edge, label %if.end37.i.i

switch.lookup93.do.end34.i.i_crit_edge:           ; preds = %switch.lookup93
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

do.end34.i.i:                                     ; preds = %switch.lookup93.do.end34.i.i_crit_edge, %if.end27.i.i.do.end34.i.i_crit_edge
  %72 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev.i, align 8
  %dev36.i.i = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i.i, ptr noundef nonnull @.str.41, i32 noundef 58) #16
  br label %vc4_hdmi_read.exit.i

if.end37.i.i:                                     ; preds = %switch.lookup93
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i.i = getelementptr %struct.vc4_hdmi_register, ptr %67, i32 58, i32 2
  %74 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %retval.0.i.i.i, i32 %75
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %77 = and i32 %76, -16777217
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #13
  br label %vc4_hdmi_read.exit.i

vc4_hdmi_read.exit.i:                             ; preds = %if.end37.i.i, %do.end34.i.i, %do.end24.i.i
  %retval.0.i.i87 = phi i32 [ 0, %do.end24.i.i ], [ %78, %if.end37.i.i ], [ 0, %do.end34.i.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 58, i32 noundef %retval.0.i.i87) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call40.i) #13
  %ddc.i = getelementptr i8, ptr %encoder, i32 1244
  %79 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ddc.i, align 4
  %call47.i = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %80, i1 noundef zeroext false) #13
  %81 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ddc.i, align 4
  %call49.i = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %82, i1 noundef zeroext false) #13
  br label %vc4_hdmi_disable_scrambling.exit

vc4_hdmi_disable_scrambling.exit:                 ; preds = %vc4_hdmi_read.exit.i, %if.end.i84.vc4_hdmi_disable_scrambling.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_post_crtc_powerdown(ptr noundef %encoder, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -880
  %mutex = getelementptr i8, ptr %encoder, i32 1456
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %hw_lock = getelementptr i8, ptr %encoder, i32 1412
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %variant1.i = getelementptr i8, ptr %encoder, i32 -4
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr i8, ptr %encoder, i32 -8
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 80
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 80) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 80, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %switch.tableidx = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 8
  br i1 %15, label %switch.lookup, label %if.end27.i.do.end34.i_crit_edge

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

switch.lookup:                                    ; preds = %if.end27.i
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %switch.offset = add i32 %switch.idx.mult, 1248
  %rm_regs.i.i = getelementptr i8, ptr %encoder, i32 %switch.offset
  %16 = ptrtoint ptr %rm_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %rm_regs.i.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %switch.lookup.do.end34.i_crit_edge, label %if.end37.i

switch.lookup.do.end34.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %switch.lookup.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 80) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 80, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %22 = or i32 %21, 1024
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 262144, %do.end24.i ], [ %23, %if.end37.i ], [ 262144, %do.end34.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 80, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #13
  %24 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant1.i, align 4
  %phy_disable = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %phy_disable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_disable, align 8
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %vc4_hdmi_read.exit.if.end_crit_edge, label %if.then

vc4_hdmi_read.exit.if.end_crit_edge:              ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %27(ptr noundef %add.ptr.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %vc4_hdmi_read.exit.if.end_crit_edge
  %pixel_bvb_clock = getelementptr i8, ptr %encoder, i32 1372
  %28 = ptrtoint ptr %pixel_bvb_clock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pixel_bvb_clock, align 4
  tail call void @clk_disable(ptr noundef %29) #13
  tail call void @clk_unprepare(ptr noundef %29) #13
  %pixel_clock = getelementptr i8, ptr %encoder, i32 1360
  %30 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pixel_clock, align 8
  tail call void @clk_disable(ptr noundef %31) #13
  tail call void @clk_unprepare(ptr noundef %31) #13
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp slt i32 %call.i, 0
  br i1 %cmp11, label %if.then13, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %call.i) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_min_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hsm_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsm_clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %3) #13
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_read(ptr nocapture noundef readonly %hdmi, i32 noundef %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %variant1 = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1, align 4
  %pdev = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %pm_runtime_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pm_runtime_active.exit:                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end_crit_edge, label %do.end, !prof !444

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %pm_runtime_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %num_registers = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %reg)
  %cmp.not = icmp ugt i32 %8, %reg
  br i1 %cmp.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26, ptr noundef nonnull @.str.22, i32 noundef %reg) #16
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %registers = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers, align 8
  %reg28 = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 %reg, i32 1
  %13 = ptrtoint ptr %reg28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %14, label %if.end27.do.end34_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 6, label %sw.bb5.i
    i32 7, label %sw.bb6.i
    i32 8, label %sw.bb7.i
  ]

if.end27.do.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34

sw.bb.i:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit

sw.bb1.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit

sw.bb2.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit

sw.bb3.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit

sw.bb4.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit

sw.bb5.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit

sw.bb6.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit

sw.bb7.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit

__vc4_hdmi_get_field_base.exit:                   ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i.in = phi ptr [ %rm_regs.i, %sw.bb7.i ], [ %ram_regs.i, %sw.bb6.i ], [ %phy_regs.i, %sw.bb5.i ], [ %dvp_regs.i, %sw.bb4.i ], [ %cec_regs.i, %sw.bb3.i ], [ %csc_regs.i, %sw.bb2.i ], [ %hdmicore_regs.i, %sw.bb1.i ], [ %hd_regs.i, %sw.bb.i ]
  %16 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool30.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool30.not, label %__vc4_hdmi_get_field_base.exit.do.end34_crit_edge, label %if.end37

__vc4_hdmi_get_field_base.exit.do.end34_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34

do.end34:                                         ; preds = %__vc4_hdmi_get_field_base.exit.do.end34_crit_edge, %if.end27.do.end34_crit_edge
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36, ptr noundef nonnull @.str.41, i32 noundef %reg) #16
  br label %cleanup

if.end37:                                         ; preds = %__vc4_hdmi_get_field_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  %offset = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 %reg, i32 2
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !445
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end34, %do.end24
  %retval.0 = phi i32 [ 0, %do.end24 ], [ %22, %if.end37 ], [ 0, %do.end34 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %clk) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_connector_init(ptr noundef %dev, ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %connector1 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 4
  %encoder2 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 3
  %ddc = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 6
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %call = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef %connector1, ptr noundef nonnull @vc4_hdmi_connector_funcs, i32 noundef 11, ptr noundef %1) #13
  %helper_private.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 4, i32 35
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vc4_hdmi_connector_helper_funcs, ptr %helper_private.i, align 4
  %funcs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 4, i32 21
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 8
  %reset = getelementptr inbounds %struct.drm_connector_funcs, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %6(ptr noundef %connector1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call6 = tail call i32 @drm_mode_create_tv_margin_properties(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @drm_mode_create_hdmi_colorspace_property(ptr noundef %connector1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @drm_connector_attach_colorspace_property(ptr noundef %connector1) #13
  tail call void @drm_connector_attach_tv_margin_properties(ptr noundef %connector1) #13
  %call15 = tail call i32 @drm_connector_attach_max_bpc_property(ptr noundef %connector1, i32 noundef 8, i32 noundef 12) #13
  %polled = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 4, i32 33
  %7 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %polled, align 4
  %interlace_allowed = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 4, i32 12
  %8 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %interlace_allowed, align 8
  %doublescan_allowed = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 4, i32 13
  %9 = ptrtoint ptr %doublescan_allowed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %doublescan_allowed, align 1
  %variant = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 4
  %supports_hdr = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %supports_hdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %supports_hdr, align 8, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %if.end13.if.end19_crit_edge, label %if.then17

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 @drm_connector_attach_hdr_output_metadata_property(ptr noundef %connector1) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13.if.end19_crit_edge
  %call20 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector1, ptr noundef %encoder2) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call6, %if.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_hotplug_init(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %external_irq_controller = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %external_irq_controller to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %external_irq_controller, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup14_crit_edge, label %if.then

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup14

if.then:                                          ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev2, align 8
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %5, ptr noundef nonnull @.str.49) #13
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %5, ptr noundef nonnull @.str.50) #13
  %call4 = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef null, ptr noundef nonnull @vc4_hdmi_hpd_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.51, ptr noundef %vc4_hdmi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup14_crit_edge

if.then.cleanup14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup14

if.end:                                           ; preds = %if.then
  %call7 = tail call i32 @request_threaded_irq(i32 noundef %call3, ptr noundef null, ptr noundef nonnull @vc4_hdmi_hpd_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.52, ptr noundef %vc4_hdmi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %vc4_hdmi) #13
  br label %cleanup14

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %polled = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 4, i32 33
  %6 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %polled, align 4
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup, %if.then9, %if.then.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %entry.cleanup14_crit_edge ], [ %call4, %if.then.cleanup14_crit_edge ], [ %call7, %if.then9 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_cec_init(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  %conn_info = alloca %struct.cec_connector_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %conn_info) #13
  %0 = call ptr @memset(ptr %conn_info, i32 255, i32 68)
  %pdev1 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.53, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.54) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @vc4_hdmi_cec_adap_ops, ptr noundef %vc4_hdmi, ptr noundef nonnull @.str.56, i32 noundef 286, i8 noundef zeroext 1) #13
  %cec_adap = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 18
  %5 = ptrtoint ptr %cec_adap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %cec_adap, align 8
  %cmp.i.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call3 to i32
  %cmp124 = icmp slt ptr %call3, null
  %cmp = and i1 %cmp.i.i, %cmp124
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %connector = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 4
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %conn_info, ptr noundef %connector) #13
  %7 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cec_adap, align 8
  call void @cec_s_conn_info(ptr noundef %8, ptr noundef nonnull %conn_info) #13
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %9 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant1.i, align 4
  %11 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev1, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 12, i32 18
  %13 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i123 = icmp eq i32 %14, 0
  br i1 %cmp.i.i123, label %if.end7.if.end.i_crit_edge, label %pm_runtime_active.exit.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %if.end7
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 12, i32 15
  %15 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not.i = icmp ugt i32 %17, 1
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev1, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %10, i32 0, i32 4
  %20 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %21, i32 1, i32 1
  %22 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg28.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %23, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %25 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %26 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev1, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %21, i32 1, i32 2
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %29
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %31 = or i32 %30, 15728640
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 61440, %do.end24.i ], [ %32, %if.end37.i ], [ 61440, %do.end34.i ]
  call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 1, i32 noundef %retval.0.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call13) #13
  call fastcc void @vc4_hdmi_cec_update_clk_div(ptr noundef %vc4_hdmi)
  %33 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %variant1.i, align 4
  %external_irq_controller = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %external_irq_controller to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %external_irq_controller, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool20.not = icmp eq i8 %36, 0
  br i1 %tobool20.not, label %do.body33, label %if.then21

if.then21:                                        ; preds = %vc4_hdmi_read.exit
  %call22 = call i32 @platform_get_irq_byname(ptr noundef %2, ptr noundef nonnull @.str.57) #13
  %call23 = call i32 @request_threaded_irq(i32 noundef %call22, ptr noundef nonnull @vc4_cec_irq_handler_rx_bare, ptr noundef nonnull @vc4_cec_irq_handler_rx_thread, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef %vc4_hdmi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then21.err_delete_cec_adap_crit_edge

if.then21.err_delete_cec_adap_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_delete_cec_adap

if.end26:                                         ; preds = %if.then21
  %call27 = call i32 @platform_get_irq_byname(ptr noundef %2, ptr noundef nonnull @.str.59) #13
  %call28 = call i32 @request_threaded_irq(i32 noundef %call27, ptr noundef nonnull @vc4_cec_irq_handler_tx_bare, ptr noundef nonnull @vc4_cec_irq_handler_tx_thread, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef %vc4_hdmi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.if.end52_crit_edge, label %if.end26.err_remove_cec_rx_handler_crit_edge

if.end26.err_remove_cec_rx_handler_crit_edge:     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_remove_cec_rx_handler

if.end26.if.end52_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

do.body33:                                        ; preds = %vc4_hdmi_read.exit
  %call41 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 8, i32 noundef -1)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call41) #13
  %call47 = call i32 @platform_get_irq(ptr noundef %2, i32 noundef 0) #13
  %call48 = call i32 @request_threaded_irq(i32 noundef %call47, ptr noundef nonnull @vc4_cec_irq_handler, ptr noundef nonnull @vc4_cec_irq_handler_thread, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef %vc4_hdmi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body33.if.end52_crit_edge, label %do.body33.err_delete_cec_adap_crit_edge

do.body33.err_delete_cec_adap_crit_edge:          ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_delete_cec_adap

do.body33.if.end52_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.end52:                                         ; preds = %do.body33.if.end52_crit_edge, %if.end26.if.end52_crit_edge
  %37 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cec_adap, align 8
  %call55 = call i32 @cec_register_adapter(ptr noundef %38, ptr noundef %dev2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %err_remove_handlers, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_remove_handlers:                              ; preds = %if.end52
  %39 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %variant1.i, align 4
  %external_irq_controller61 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %external_irq_controller61 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %external_irq_controller61, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool62.not = icmp eq i8 %42, 0
  br i1 %tobool62.not, label %if.else66, label %if.then63

if.then63:                                        ; preds = %err_remove_handlers
  call void @__sanitizer_cov_trace_pc() #15
  %call64 = call i32 @platform_get_irq_byname(ptr noundef %2, ptr noundef nonnull @.str.59) #13
  br label %err_remove_cec_rx_handler.sink.split

if.else66:                                        ; preds = %err_remove_handlers
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = call i32 @platform_get_irq(ptr noundef %2, i32 noundef 0) #13
  br label %err_remove_cec_rx_handler.sink.split

err_remove_cec_rx_handler.sink.split:             ; preds = %if.else66, %if.then63
  %call64.sink = phi i32 [ %call64, %if.then63 ], [ %call67, %if.else66 ]
  %call65 = call ptr @free_irq(i32 noundef %call64.sink, ptr noundef %vc4_hdmi) #13
  br label %err_remove_cec_rx_handler

err_remove_cec_rx_handler:                        ; preds = %err_remove_cec_rx_handler.sink.split, %if.end26.err_remove_cec_rx_handler_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end26.err_remove_cec_rx_handler_crit_edge ], [ %call55, %err_remove_cec_rx_handler.sink.split ]
  %43 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %variant1.i, align 4
  %external_irq_controller71 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %external_irq_controller71 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %external_irq_controller71, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool72.not = icmp eq i8 %46, 0
  br i1 %tobool72.not, label %err_remove_cec_rx_handler.err_delete_cec_adap_crit_edge, label %if.then73

err_remove_cec_rx_handler.err_delete_cec_adap_crit_edge: ; preds = %err_remove_cec_rx_handler
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_delete_cec_adap

if.then73:                                        ; preds = %err_remove_cec_rx_handler
  call void @__sanitizer_cov_trace_pc() #15
  %call74 = call i32 @platform_get_irq_byname(ptr noundef %2, ptr noundef nonnull @.str.57) #13
  %call75 = call ptr @free_irq(i32 noundef %call74, ptr noundef %vc4_hdmi) #13
  br label %err_delete_cec_adap

err_delete_cec_adap:                              ; preds = %if.then73, %err_remove_cec_rx_handler.err_delete_cec_adap_crit_edge, %do.body33.err_delete_cec_adap_crit_edge, %if.then21.err_delete_cec_adap_crit_edge
  %ret.1 = phi i32 [ %call23, %if.then21.err_delete_cec_adap_crit_edge ], [ %ret.0, %if.then73 ], [ %ret.0, %err_remove_cec_rx_handler.err_delete_cec_adap_crit_edge ], [ %call48, %do.body33.err_delete_cec_adap_crit_edge ]
  %47 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cec_adap, align 8
  call void @cec_delete_adapter(ptr noundef %48) #13
  br label %cleanup

cleanup:                                          ; preds = %err_delete_cec_adap, %if.end52.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %err_delete_cec_adap ], [ 0, %do.end ], [ %6, %if.end.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_audio_init(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %registers = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers, align 8
  %link = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.67, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.68) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr %struct.vc4_hdmi_register, ptr %3, i32 45, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %if.end43, label %land.end

land.end:                                         ; preds = %if.end
  %.b174 = load i1, ptr @vc4_hdmi_audio_init.__already_done, align 1
  br i1 %.b174, label %land.end.cleanup_crit_edge, label %if.then10, !prof !444

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vc4_hdmi_audio_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1709, i32 noundef 9, ptr noundef nonnull @.str.70) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call45 = tail call i32 @of_property_match_string(ptr noundef %11, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  %spec.store.select = select i1 %cmp46, i32 1, i32 %call45
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__of_get_address(ptr noundef %13, i32 noundef %spec.store.select, i32 noundef -1, ptr noundef null, ptr noundef null) #13
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 4
  %offset = getelementptr %struct.vc4_hdmi_register, ptr %3, i32 45, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add = add i32 %17, %15
  %dma_data = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 5
  %18 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %dma_data, align 8
  %addr_width = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %addr_width, align 4
  %maxburst = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %maxburst, align 8
  %call58 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev3, ptr noundef nonnull @pcm_conf, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end64, label %do.end63

do.end63:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.74, i32 noundef %call58) #16
  br label %cleanup

if.end64:                                         ; preds = %if.end43
  %call65 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev3, ptr noundef nonnull @vc4_hdmi_audio_cpu_dai_comp, ptr noundef nonnull @vc4_hdmi_audio_cpu_dai_drv, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.77, i32 noundef %call65) #16
  br label %cleanup

if.end71:                                         ; preds = %if.end64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #13
  %21 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 255, i32 48)
  %23 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev3, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %fwnode.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.79, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @vc4_hdmi_codec_pdata, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #13
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.81, i32 noundef %34) #16
  br label %cleanup

if.end80:                                         ; preds = %if.end71
  %codec_pdev82 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 7
  %35 = ptrtoint ptr %codec_pdev82 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %codec_pdev82, align 8
  %cpu = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 2
  %cpus = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %cpu, ptr %cpus, align 4
  %codec = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 3
  %codecs = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %codec, ptr %codecs, align 4
  %platform = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 4
  %platforms = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 1, i32 6
  %38 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %platform, ptr %platforms, align 4
  %num_cpus = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %num_cpus, align 4
  %num_codecs = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %num_codecs, align 4
  %num_platforms = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 1, i32 7
  %41 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %num_platforms, align 4
  %42 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.83, ptr %link, align 4
  %stream_name = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.84, ptr %stream_name, align 4
  %dai_name = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.85, ptr %dai_name, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end80.dev_name.exit_crit_edge

if.end80.dev_name.exit_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end80.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %48, %if.end.i ], [ %46, %if.end80.dev_name.exit_crit_edge ]
  %dai_name89 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %vc4_hdmi, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %dai_name89 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %retval.0.i, ptr %dai_name89, align 4
  %init_name.i175 = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %init_name.i175 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i175, align 8
  %tobool.not.i176 = icmp eq ptr %51, null
  br i1 %tobool.not.i176, label %if.end.i177, label %dev_name.exit.dev_name.exit179_crit_edge

dev_name.exit.dev_name.exit179_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit179

if.end.i177:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev90 = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev90, align 4
  br label %dev_name.exit179

dev_name.exit179:                                 ; preds = %if.end.i177, %dev_name.exit.dev_name.exit179_crit_edge
  %retval.0.i178 = phi ptr [ %53, %if.end.i177 ], [ %51, %dev_name.exit.dev_name.exit179_crit_edge ]
  %54 = ptrtoint ptr %codec to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %retval.0.i178, ptr %codec, align 4
  %55 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i181 = icmp eq ptr %56, null
  br i1 %tobool.not.i181, label %if.end.i182, label %dev_name.exit179.dev_name.exit184_crit_edge

dev_name.exit179.dev_name.exit184_crit_edge:      ; preds = %dev_name.exit179
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit184

if.end.i182:                                      ; preds = %dev_name.exit179
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit184

dev_name.exit184:                                 ; preds = %if.end.i182, %dev_name.exit179.dev_name.exit184_crit_edge
  %retval.0.i183 = phi ptr [ %58, %if.end.i182 ], [ %56, %dev_name.exit179.dev_name.exit184_crit_edge ]
  %59 = ptrtoint ptr %platform to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i183, ptr %platform, align 4
  %dai_link97 = getelementptr inbounds %struct.snd_soc_card, ptr %vc4_hdmi, i32 0, i32 24
  %60 = ptrtoint ptr %dai_link97 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %link, ptr %dai_link97, align 4
  %num_links = getelementptr inbounds %struct.snd_soc_card, ptr %vc4_hdmi, i32 0, i32 25
  %61 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %num_links, align 4
  %62 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %variant, align 4
  %card_name = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card_name, align 4
  %66 = ptrtoint ptr %vc4_hdmi to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %vc4_hdmi, align 4
  %driver_name = getelementptr inbounds %struct.snd_soc_card, ptr %vc4_hdmi, i32 0, i32 2
  %67 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.86, ptr %driver_name, align 4
  %dev100 = getelementptr inbounds %struct.snd_soc_card, ptr %vc4_hdmi, i32 0, i32 5
  %68 = ptrtoint ptr %dev100 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %dev3, ptr %dev100, align 4
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %vc4_hdmi, i32 0, i32 7
  %69 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %owner, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %vc4_hdmi, i32 0, i32 57
  %70 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %vc4_hdmi, ptr %drvdata.i, align 4
  %call101 = call i32 @devm_snd_soc_register_card(ptr noundef %dev3, ptr noundef %vc4_hdmi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %dev_name.exit184.cleanup_crit_edge, label %if.then103

dev_name.exit184.cleanup_crit_edge:               ; preds = %dev_name.exit184
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then103:                                       ; preds = %dev_name.exit184
  call void @__sanitizer_cov_trace_pc() #15
  %call104 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev3, i32 noundef %call101, ptr noundef nonnull @.str.87) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %dev_name.exit184.cleanup_crit_edge, %do.end77, %do.end70, %do.end63, %if.then10, %land.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call58, %do.end63 ], [ %call65, %do.end70 ], [ %34, %do.end77 ], [ 0, %do.end ], [ -22, %if.then10 ], [ -22, %land.end.cleanup_crit_edge ], [ %call101, %if.then103 ], [ 0, %dev_name.exit184.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_debugfs_regs(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #13
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !451
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__drm_puts_seq_file, ptr %6, align 4, !alias.scope !451
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %7, align 4, !alias.scope !451
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4, !alias.scope !451
  %hdmi_regset = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 28
  call void @drm_print_regset32(ptr noundef nonnull %p, ptr noundef %hdmi_regset) #13
  %hd_regset = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 29
  call void @drm_print_regset32(ptr noundef nonnull %p, ptr noundef %hd_regset) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_cec_exit(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %variant = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %external_irq_controller = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %external_irq_controller to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %external_irq_controller, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %1, ptr noundef nonnull @.str.57) #13
  %call2 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %vc4_hdmi) #13
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %1, ptr noundef nonnull @.str.59) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @platform_get_irq(ptr noundef %1, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5.sink = phi i32 [ %call5, %if.else ], [ %call3, %if.then ]
  %call6 = tail call ptr @free_irq(i32 noundef %call5.sink, ptr noundef %vc4_hdmi) #13
  %cec_adap = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 18
  %6 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cec_adap, align 8
  tail call void @cec_unregister_adapter(ptr noundef %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_hotplug_exit(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %external_irq_controller = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %external_irq_controller to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %external_irq_controller, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev1 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1, align 8
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %5, ptr noundef nonnull @.str.49) #13
  %call2 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %vc4_hdmi) #13
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %5, ptr noundef nonnull @.str.50) #13
  %call4 = tail call ptr @free_irq(i32 noundef %call3, ptr noundef %vc4_hdmi) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #13
  tail call void @drm_connector_cleanup(ptr noundef %connector) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_set_scrambling(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_cec_update_clk_div(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 22
  %0 = ptrtoint ptr %cec_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec_clock, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #13
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %2 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not.i = icmp ugt i32 %10, 1
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %14, i32 1, i32 1
  %15 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg28.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %16, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %18 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %14, i32 1, i32 2
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %24 = and i32 %23, 15794175
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %25, %if.end37.i ], [ 0, %do.end34.i ]
  %div = udiv i32 %call, 40000
  %conv8 = and i32 %div, 65535
  %or = or i32 %retval.0.i, %conv8
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 1, i32 noundef %or)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_write(ptr noundef %hdmi, i32 noundef %reg, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %variant1 = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 30, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !449

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 445, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pdev = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.if.end50_crit_edge, label %pm_runtime_active.exit

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

pm_runtime_active.exit:                           ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end50_crit_edge, label %do.end44, !prof !444

pm_runtime_active.exit.if.end50_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

do.end44:                                         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 447, i32 noundef 9, ptr noundef null) #13
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %pm_runtime_active.exit.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %num_registers = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_registers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_registers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %reg)
  %cmp58.not = icmp ugt i32 %9, %reg
  br i1 %cmp58.not, label %if.end65, label %do.end62

do.end62:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev64 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev64, ptr noundef nonnull @.str.22, i32 noundef %reg) #16
  br label %cleanup

if.end65:                                         ; preds = %if.end50
  %registers = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers, align 8
  %reg66 = getelementptr %struct.vc4_hdmi_register, ptr %13, i32 %reg, i32 1
  %14 = ptrtoint ptr %reg66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg66, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %15, label %if.end65.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 6, label %sw.bb5.i
    i32 7, label %sw.bb6.i
    i32 8, label %sw.bb7.i
  ]

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit

sw.bb1.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit

sw.bb2.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit

sw.bb3.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit

sw.bb4.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit

sw.bb5.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit

sw.bb6.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit

sw.bb7.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit

__vc4_hdmi_get_field_base.exit:                   ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i.in = phi ptr [ %rm_regs.i, %sw.bb7.i ], [ %ram_regs.i, %sw.bb6.i ], [ %phy_regs.i, %sw.bb5.i ], [ %dvp_regs.i, %sw.bb4.i ], [ %cec_regs.i, %sw.bb3.i ], [ %csc_regs.i, %sw.bb2.i ], [ %hdmicore_regs.i, %sw.bb1.i ], [ %hd_regs.i, %sw.bb.i ]
  %17 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool68.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool68.not, label %__vc4_hdmi_get_field_base.exit.cleanup_crit_edge, label %do.body71

__vc4_hdmi_get_field_base.exit.cleanup_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body71:                                        ; preds = %__vc4_hdmi_get_field_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !454
  tail call void @arm_heavy_mb() #13
  %18 = tail call i32 @llvm.bswap.i32(i32 %value)
  %offset = getelementptr %struct.vc4_hdmi_register, ptr %13, i32 %reg, i32 2
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #13, !srcloc !455
  br label %cleanup

cleanup:                                          ; preds = %do.body71, %__vc4_hdmi_get_field_base.exit.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %do.end62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_default_rgb_quant_range(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_enable_scrambling(ptr noundef %encoder) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -880
  %saved_adjusted_mode = getelementptr i8, ptr %encoder, i32 1548
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end.i_crit_edge, label %land.rhs

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr i8, ptr %encoder, i32 1520
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !449

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 597, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !449

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 577, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %hdmi_monitor.i = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %encoder, i32 0, i32 1
  %1 = ptrtoint ptr %hdmi_monitor.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hdmi_monitor.i, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool26.not.i = icmp eq i8 %2, 0
  br i1 %tobool26.not.i, label %if.end.i.cleanup_crit_edge, label %if.end28.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28.i:                                       ; preds = %if.end.i
  %hdmi.i = getelementptr i8, ptr %encoder, i32 344
  %3 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hdmi.i, align 8, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool29.not.i = icmp eq i8 %4, 0
  br i1 %tobool29.not.i, label %if.end28.i.cleanup_crit_edge, label %vc4_hdmi_supports_scrambling.exit

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

vc4_hdmi_supports_scrambling.exit:                ; preds = %if.end28.i
  %scrambling.i = getelementptr i8, ptr %encoder, i32 346
  %5 = ptrtoint ptr %scrambling.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scrambling.i, align 2, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool33.not.i.not = icmp eq i8 %6, 0
  br i1 %tobool33.not.i.not, label %vc4_hdmi_supports_scrambling.exit.cleanup_crit_edge, label %if.end27

vc4_hdmi_supports_scrambling.exit.cleanup_crit_edge: ; preds = %vc4_hdmi_supports_scrambling.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %vc4_hdmi_supports_scrambling.exit
  %7 = ptrtoint ptr %saved_adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %saved_adjusted_mode, align 4
  %mul.i = mul i32 %8, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000000, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 340000000
  br i1 %cmp.i, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %ddc = getelementptr i8, ptr %encoder, i32 1244
  %9 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc, align 4
  %call31 = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %10, i1 noundef zeroext true) #13
  %11 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddc, align 4
  %call33 = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %12, i1 noundef zeroext true) #13
  %hw_lock = getelementptr i8, ptr %encoder, i32 1412
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %variant1.i = getelementptr i8, ptr %encoder, i32 -4
  %13 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr i8, ptr %encoder, i32 -8
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 12, i32 18
  %17 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i, label %if.end30.if.end.i64_crit_edge, label %pm_runtime_active.exit.i

if.end30.if.end.i64_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i64

pm_runtime_active.exit.i:                         ; preds = %if.end30
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 12, i32 15
  %19 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i64_crit_edge, label %do.end.i62, !prof !444

pm_runtime_active.exit.i.if.end.i64_crit_edge:    ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i64

do.end.i62:                                       ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i64

if.end.i64:                                       ; preds = %do.end.i62, %pm_runtime_active.exit.i.if.end.i64_crit_edge, %if.end30.if.end.i64_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %14, i32 0, i32 5
  %20 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %21)
  %cmp.not.i63 = icmp ugt i32 %21, 58
  br i1 %cmp.not.i63, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 58) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i64
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %14, i32 0, i32 4
  %24 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %25, i32 58, i32 1
  %26 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg28.i, align 4
  %switch.tableidx = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %28 = icmp ult i32 %switch.tableidx, 8
  br i1 %28, label %switch.lookup, label %if.end27.i.do.end34.i_crit_edge

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

switch.lookup:                                    ; preds = %if.end27.i
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %switch.offset = add i32 %switch.idx.mult, 1248
  %rm_regs.i.i = getelementptr i8, ptr %encoder, i32 %switch.offset
  %29 = ptrtoint ptr %rm_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.0.i.i = load ptr, ptr %rm_regs.i.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %switch.lookup.do.end34.i_crit_edge, label %if.end37.i

switch.lookup.do.end34.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %switch.lookup.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 58) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %25, i32 58, i32 2
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %retval.0.i.i, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %35 = or i32 %34, 16777216
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i66 = phi i32 [ 1, %do.end24.i ], [ %36, %if.end37.i ], [ 1, %do.end34.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 58, i32 noundef %retval.0.i66)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call39) #13
  %scdc_enabled = getelementptr i8, ptr %encoder, i32 1661
  %37 = ptrtoint ptr %scdc_enabled to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %scdc_enabled, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %scrambling_work = getelementptr i8, ptr %encoder, i32 1144
  %call.i67 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %scrambling_work, i32 noundef 100) #13
  br label %cleanup

cleanup:                                          ; preds = %vc4_hdmi_read.exit, %if.end27.cleanup_crit_edge, %vc4_hdmi_supports_scrambling.exit.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_quant_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_colorspace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_bars(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_write_infoframe(ptr noundef %encoder, ptr noundef %frame) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -880
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame, align 4
  %sub = add i32 %1, -128
  %variant = getelementptr i8, ptr %encoder, i32 -4
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %registers = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers, align 8
  %offset = getelementptr %struct.vc4_hdmi_register, ptr %5, i32 52, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %mul = mul i32 %sub, 36
  %add = add i32 %7, %mul
  %reg = getelementptr %struct.vc4_hdmi_register, ptr %5, i32 52, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %9, label %entry.__vc4_hdmi_get_field_base.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 6, label %sw.bb5.i
    i32 7, label %sw.bb6.i
    i32 8, label %sw.bb7.i
  ]

entry.__vc4_hdmi_get_field_base.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i = getelementptr i8, ptr %encoder, i32 1252
  %11 = ptrtoint ptr %hd_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hd_regs.i, align 4
  br label %__vc4_hdmi_get_field_base.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i = getelementptr i8, ptr %encoder, i32 1248
  %13 = ptrtoint ptr %hdmicore_regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdmicore_regs.i, align 8
  br label %__vc4_hdmi_get_field_base.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i = getelementptr i8, ptr %encoder, i32 1260
  %15 = ptrtoint ptr %csc_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csc_regs.i, align 4
  br label %__vc4_hdmi_get_field_base.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i = getelementptr i8, ptr %encoder, i32 1256
  %17 = ptrtoint ptr %cec_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cec_regs.i, align 8
  br label %__vc4_hdmi_get_field_base.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i = getelementptr i8, ptr %encoder, i32 1264
  %19 = ptrtoint ptr %dvp_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dvp_regs.i, align 8
  br label %__vc4_hdmi_get_field_base.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i = getelementptr i8, ptr %encoder, i32 1268
  %21 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_regs.i, align 4
  br label %__vc4_hdmi_get_field_base.exit

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i = getelementptr i8, ptr %encoder, i32 1272
  %23 = ptrtoint ptr %ram_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ram_regs.i, align 8
  br label %__vc4_hdmi_get_field_base.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i = getelementptr i8, ptr %encoder, i32 1276
  %25 = ptrtoint ptr %rm_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rm_regs.i, align 4
  br label %__vc4_hdmi_get_field_base.exit

__vc4_hdmi_get_field_base.exit:                   ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %entry.__vc4_hdmi_get_field_base.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %sw.bb7.i ], [ %24, %sw.bb6.i ], [ %22, %sw.bb5.i ], [ %20, %sw.bb4.i ], [ %18, %sw.bb3.i ], [ %16, %sw.bb2.i ], [ %14, %sw.bb1.i ], [ %12, %sw.bb.i ], [ null, %entry.__vc4_hdmi_get_field_base.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %buffer) #13
  %27 = call ptr @memset(ptr %buffer, i32 255, i32 36)
  %pdev.i = getelementptr i8, ptr %encoder, i32 -8
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 12, i32 18
  %30 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i, label %__vc4_hdmi_get_field_base.exit.if.end.i_crit_edge, label %pm_runtime_active.exit.i

__vc4_hdmi_get_field_base.exit.if.end.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %__vc4_hdmi_get_field_base.exit
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 12, i32 15
  %32 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %__vc4_hdmi_get_field_base.exit.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 5
  %33 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %34)
  %cmp.not.i = icmp ugt i32 %34, 51
  br i1 %cmp.not.i, label %if.end27.i, label %if.end.i.land.rhs.sink.split_crit_edge

if.end.i.land.rhs.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.sink.split

if.end27.i:                                       ; preds = %if.end.i
  %35 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %registers, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %36, i32 51, i32 1
  %37 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg28.i, align 4
  %switch.tableidx = add i32 %38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %39 = icmp ult i32 %switch.tableidx, 8
  br i1 %39, label %switch.lookup, label %if.end27.i.land.rhs.sink.split_crit_edge

if.end27.i.land.rhs.sink.split_crit_edge:         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.sink.split

switch.lookup:                                    ; preds = %if.end27.i
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %switch.offset = add i32 %switch.idx.mult, 1248
  %rm_regs.i.i = getelementptr i8, ptr %encoder, i32 %switch.offset
  %40 = ptrtoint ptr %rm_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i.i = load ptr, ptr %rm_regs.i.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %switch.lookup.land.rhs.sink.split_crit_edge, label %vc4_hdmi_read.exit

switch.lookup.land.rhs.sink.split_crit_edge:      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.sink.split

vc4_hdmi_read.exit:                               ; preds = %switch.lookup
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %36, i32 51, i32 2
  %41 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset.i, align 4
  %add.ptr.i183 = getelementptr i8, ptr %retval.0.i.i, i32 %42
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %44 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  br i1 %tobool.not, label %vc4_hdmi_read.exit.land.rhs_crit_edge, label %vc4_hdmi_read.exit.if.end31_crit_edge

vc4_hdmi_read.exit.if.end31_crit_edge:            ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

vc4_hdmi_read.exit.land.rhs_crit_edge:            ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs.sink.split:                              ; preds = %switch.lookup.land.rhs.sink.split_crit_edge, %if.end27.i.land.rhs.sink.split_crit_edge, %if.end.i.land.rhs.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.22, %if.end.i.land.rhs.sink.split_crit_edge ], [ @.str.41, %switch.lookup.land.rhs.sink.split_crit_edge ], [ @.str.41, %if.end27.i.land.rhs.sink.split_crit_edge ]
  %45 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull %.str.41.sink, i32 noundef 51) #16
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.sink.split, %vc4_hdmi_read.exit.land.rhs_crit_edge
  %.b182 = load i1, ptr @vc4_hdmi_write_infoframe.__already_done, align 1
  br i1 %.b182, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !444

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vc4_hdmi_write_infoframe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 435, i32 noundef 9, ptr noundef nonnull @.str.31) #13
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %vc4_hdmi_read.exit.if.end31_crit_edge
  %call39 = call i32 @hdmi_infoframe_pack(ptr noundef %frame, ptr noundef nonnull %buffer, i32 noundef 36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.end31.cleanup136_crit_edge, label %if.end41

if.end31.cleanup136_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup136

if.end41:                                         ; preds = %if.end31
  %47 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %frame, align 4
  %call43 = call fastcc i32 @vc4_hdmi_stop_packet(ptr noundef %encoder, i32 noundef %48, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body48, label %if.then45

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %call43) #13
  br label %cleanup136

do.body48:                                        ; preds = %if.end41
  %hw_lock = getelementptr i8, ptr %encoder, i32 1412
  %call52 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp57281.not = icmp eq i32 %call39, 0
  br i1 %cmp57281.not, label %do.body48.for.end_crit_edge, label %do.body48.do.body59_crit_edge

do.body48.do.body59_crit_edge:                    ; preds = %do.body48
  br label %do.body59

do.body48.for.end_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body59:                                        ; preds = %do.body59.do.body59_crit_edge, %do.body48.do.body59_crit_edge
  %packet_reg.0283 = phi i32 [ %add98, %do.body59.do.body59_crit_edge ], [ %add, %do.body48.do.body59_crit_edge ]
  %i.0282 = phi i32 [ %add99, %do.body59.do.body59_crit_edge ], [ 0, %do.body48.do.body59_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !456
  call void @arm_heavy_mb() #13
  %arrayidx63 = getelementptr [36 x i8], ptr %buffer, i32 0, i32 %i.0282
  %49 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %50 to i32
  %add65 = add nsw i32 %i.0282, 1
  %arrayidx66 = getelementptr [36 x i8], ptr %buffer, i32 0, i32 %add65
  %51 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %52 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %or = or i32 %shl68, %conv64
  %add69 = add i32 %i.0282, 2
  %arrayidx70 = getelementptr [36 x i8], ptr %buffer, i32 0, i32 %add69
  %53 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %54 to i32
  %shl72 = shl nuw nsw i32 %conv71, 16
  %or73 = or i32 %or, %shl72
  %55 = call i32 @llvm.bswap.i32(i32 %or73)
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %packet_reg.0283
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %55) #13, !srcloc !455
  %add74 = add i32 %packet_reg.0283, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !457
  call void @arm_heavy_mb() #13
  %add78 = add i32 %i.0282, 3
  %arrayidx79 = getelementptr [36 x i8], ptr %buffer, i32 0, i32 %add78
  %56 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %57 to i32
  %add82 = add i32 %i.0282, 4
  %arrayidx83 = getelementptr [36 x i8], ptr %buffer, i32 0, i32 %add82
  %58 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %59 to i32
  %shl85 = shl nuw nsw i32 %conv84, 8
  %or86 = or i32 %shl85, %conv80
  %add87 = add i32 %i.0282, 5
  %arrayidx88 = getelementptr [36 x i8], ptr %buffer, i32 0, i32 %add87
  %60 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %61 to i32
  %shl90 = shl nuw nsw i32 %conv89, 16
  %or91 = or i32 %or86, %shl90
  %add92 = add i32 %i.0282, 6
  %arrayidx93 = getelementptr [36 x i8], ptr %buffer, i32 0, i32 %add92
  %62 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %63 to i32
  %shl95 = shl nuw i32 %conv94, 24
  %or96 = or i32 %or91, %shl95
  %64 = call i32 @llvm.bswap.i32(i32 %or96)
  %add.ptr97 = getelementptr i8, ptr %retval.0.i, i32 %add74
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %64) #13, !srcloc !455
  %add98 = add i32 %packet_reg.0283, 8
  %add99 = add i32 %i.0282, 7
  %cmp57 = icmp slt i32 %add99, %call39
  br i1 %cmp57, label %do.body59.do.body59_crit_edge, label %do.body59.for.end_crit_edge

do.body59.for.end_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body59.do.body59_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body59

for.end:                                          ; preds = %do.body59.for.end_crit_edge, %do.body48.for.end_crit_edge
  %65 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %variant, align 4
  %67 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i187 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3, i32 12, i32 18
  %69 = ptrtoint ptr %runtime_status.i.i187 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %runtime_status.i.i187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i188 = icmp eq i32 %70, 0
  br i1 %cmp.i.i188, label %for.end.if.end.i196_crit_edge, label %pm_runtime_active.exit.i192

for.end.if.end.i196_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i196

pm_runtime_active.exit.i192:                      ; preds = %for.end
  %disable_depth.i.i189 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3, i32 12, i32 15
  %71 = ptrtoint ptr %disable_depth.i.i189 to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i.i190 = load i16, ptr %disable_depth.i.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i190)
  %tobool.i.i191 = icmp ugt i16 %bf.load.i.i190, 8191
  br i1 %tobool.i.i191, label %pm_runtime_active.exit.i192.if.end.i196_crit_edge, label %do.end.i193, !prof !444

pm_runtime_active.exit.i192.if.end.i196_crit_edge: ; preds = %pm_runtime_active.exit.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i196

do.end.i193:                                      ; preds = %pm_runtime_active.exit.i192
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i196

if.end.i196:                                      ; preds = %do.end.i193, %pm_runtime_active.exit.i192.if.end.i196_crit_edge, %for.end.if.end.i196_crit_edge
  %num_registers.i194 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %66, i32 0, i32 5
  %72 = ptrtoint ptr %num_registers.i194 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_registers.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %73)
  %cmp.not.i195 = icmp ugt i32 %73, 51
  br i1 %cmp.not.i195, label %if.end27.i201, label %do.end24.i198

do.end24.i198:                                    ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev.i, align 8
  %dev26.i197 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i197, ptr noundef nonnull @.str.22, i32 noundef 51) #16
  br label %vc4_hdmi_read.exit228

if.end27.i201:                                    ; preds = %if.end.i196
  %registers.i199 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %66, i32 0, i32 4
  %76 = ptrtoint ptr %registers.i199 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %registers.i199, align 8
  %reg28.i200 = getelementptr %struct.vc4_hdmi_register, ptr %77, i32 51, i32 1
  %78 = ptrtoint ptr %reg28.i200 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reg28.i200, align 4
  %switch.tableidx288 = add i32 %79, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx288)
  %80 = icmp ult i32 %switch.tableidx288, 8
  br i1 %80, label %switch.lookup287, label %if.end27.i201.do.end34.i223_crit_edge

if.end27.i201.do.end34.i223_crit_edge:            ; preds = %if.end27.i201
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i223

switch.lookup287:                                 ; preds = %if.end27.i201
  %switch.idx.mult289 = shl i32 %switch.tableidx288, 2
  %switch.offset290 = add i32 %switch.idx.mult289, 1248
  %rm_regs.i.i216 = getelementptr i8, ptr %encoder, i32 %switch.offset290
  %81 = ptrtoint ptr %rm_regs.i.i216 to i32
  call void @__asan_load4_noabort(i32 %81)
  %retval.0.i.i219 = load ptr, ptr %rm_regs.i.i216, align 4
  %tobool30.not.i220 = icmp eq ptr %retval.0.i.i219, null
  br i1 %tobool30.not.i220, label %switch.lookup287.do.end34.i223_crit_edge, label %if.end37.i226

switch.lookup287.do.end34.i223_crit_edge:         ; preds = %switch.lookup287
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i223

do.end34.i223:                                    ; preds = %switch.lookup287.do.end34.i223_crit_edge, %if.end27.i201.do.end34.i223_crit_edge
  %82 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev.i, align 8
  %dev36.i222 = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i222, ptr noundef nonnull @.str.41, i32 noundef 51) #16
  br label %vc4_hdmi_read.exit228

if.end37.i226:                                    ; preds = %switch.lookup287
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i224 = getelementptr %struct.vc4_hdmi_register, ptr %77, i32 51, i32 2
  %84 = ptrtoint ptr %offset.i224 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset.i224, align 4
  %add.ptr.i225 = getelementptr i8, ptr %retval.0.i.i219, i32 %85
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #13, !srcloc !445
  %87 = call i32 @llvm.bswap.i32(i32 %86) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit228

vc4_hdmi_read.exit228:                            ; preds = %if.end37.i226, %do.end34.i223, %do.end24.i198
  %retval.0.i227 = phi i32 [ 0, %do.end24.i198 ], [ %87, %if.end37.i226 ], [ 0, %do.end34.i223 ]
  %shl101 = shl nuw i32 1, %sub
  %or102 = or i32 %retval.0.i227, %shl101
  call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 51, i32 noundef %or102)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call52) #13
  %call104 = call i64 @ktime_get_raw() #13
  %add105 = add i64 %call104, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 470) #13
  %rm_regs.i.i260 = getelementptr i8, ptr %encoder, i32 1276
  %ram_regs.i.i258 = getelementptr i8, ptr %encoder, i32 1272
  %phy_regs.i.i256 = getelementptr i8, ptr %encoder, i32 1268
  %dvp_regs.i.i254 = getelementptr i8, ptr %encoder, i32 1264
  %cec_regs.i.i252 = getelementptr i8, ptr %encoder, i32 1256
  %csc_regs.i.i250 = getelementptr i8, ptr %encoder, i32 1260
  %hdmicore_regs.i.i248 = getelementptr i8, ptr %encoder, i32 1248
  %hd_regs.i.i246 = getelementptr i8, ptr %encoder, i32 1252
  br label %for.cond112

for.cond112:                                      ; preds = %cleanup, %vc4_hdmi_read.exit228
  %wait__.0 = phi i32 [ 10, %vc4_hdmi_read.exit228 ], [ %spec.select, %cleanup ]
  %call113 = call i64 @ktime_get_raw() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call113, i64 %add105)
  %cmp3.i.i = icmp sgt i64 %call113, %add105
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !458
  %88 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %variant, align 4
  %90 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i231 = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3, i32 12, i32 18
  %92 = ptrtoint ptr %runtime_status.i.i231 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %runtime_status.i.i231, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i.i232 = icmp eq i32 %93, 0
  br i1 %cmp.i.i232, label %for.cond112.if.end.i240_crit_edge, label %pm_runtime_active.exit.i236

for.cond112.if.end.i240_crit_edge:                ; preds = %for.cond112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i240

pm_runtime_active.exit.i236:                      ; preds = %for.cond112
  %disable_depth.i.i233 = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3, i32 12, i32 15
  %94 = ptrtoint ptr %disable_depth.i.i233 to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i.i234 = load i16, ptr %disable_depth.i.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i234)
  %tobool.i.i235 = icmp ugt i16 %bf.load.i.i234, 8191
  br i1 %tobool.i.i235, label %pm_runtime_active.exit.i236.if.end.i240_crit_edge, label %do.end.i237, !prof !444

pm_runtime_active.exit.i236.if.end.i240_crit_edge: ; preds = %pm_runtime_active.exit.i236
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i240

do.end.i237:                                      ; preds = %pm_runtime_active.exit.i236
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i240

if.end.i240:                                      ; preds = %do.end.i237, %pm_runtime_active.exit.i236.if.end.i240_crit_edge, %for.cond112.if.end.i240_crit_edge
  %num_registers.i238 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %89, i32 0, i32 5
  %95 = ptrtoint ptr %num_registers.i238 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_registers.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %96)
  %cmp.not.i239 = icmp ugt i32 %96, 53
  br i1 %cmp.not.i239, label %if.end27.i245, label %do.end24.i242

do.end24.i242:                                    ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev.i, align 8
  %dev26.i241 = getelementptr inbounds %struct.platform_device, ptr %98, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i241, ptr noundef nonnull @.str.22, i32 noundef 53) #16
  br label %vc4_hdmi_read.exit272

if.end27.i245:                                    ; preds = %if.end.i240
  %registers.i243 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %89, i32 0, i32 4
  %99 = ptrtoint ptr %registers.i243 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %registers.i243, align 8
  %reg28.i244 = getelementptr %struct.vc4_hdmi_register, ptr %100, i32 53, i32 1
  %101 = ptrtoint ptr %reg28.i244 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reg28.i244, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %102, label %if.end27.i245.do.end34.i267_crit_edge [
    i32 2, label %if.end27.i245.__vc4_hdmi_get_field_base.exit.i265_crit_edge
    i32 1, label %sw.bb1.i.i249
    i32 4, label %sw.bb2.i.i251
    i32 3, label %sw.bb3.i.i253
    i32 5, label %sw.bb4.i.i255
    i32 6, label %sw.bb5.i.i257
    i32 7, label %sw.bb6.i.i259
    i32 8, label %sw.bb7.i.i261
  ]

if.end27.i245.__vc4_hdmi_get_field_base.exit.i265_crit_edge: ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i265

if.end27.i245.do.end34.i267_crit_edge:            ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i267

sw.bb1.i.i249:                                    ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i265

sw.bb2.i.i251:                                    ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i265

sw.bb3.i.i253:                                    ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i265

sw.bb4.i.i255:                                    ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i265

sw.bb5.i.i257:                                    ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i265

sw.bb6.i.i259:                                    ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i265

sw.bb7.i.i261:                                    ; preds = %if.end27.i245
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i265

__vc4_hdmi_get_field_base.exit.i265:              ; preds = %sw.bb7.i.i261, %sw.bb6.i.i259, %sw.bb5.i.i257, %sw.bb4.i.i255, %sw.bb3.i.i253, %sw.bb2.i.i251, %sw.bb1.i.i249, %if.end27.i245.__vc4_hdmi_get_field_base.exit.i265_crit_edge
  %retval.0.i.in.i262 = phi ptr [ %rm_regs.i.i260, %sw.bb7.i.i261 ], [ %ram_regs.i.i258, %sw.bb6.i.i259 ], [ %phy_regs.i.i256, %sw.bb5.i.i257 ], [ %dvp_regs.i.i254, %sw.bb4.i.i255 ], [ %cec_regs.i.i252, %sw.bb3.i.i253 ], [ %csc_regs.i.i250, %sw.bb2.i.i251 ], [ %hdmicore_regs.i.i248, %sw.bb1.i.i249 ], [ %hd_regs.i.i246, %if.end27.i245.__vc4_hdmi_get_field_base.exit.i265_crit_edge ]
  %104 = ptrtoint ptr %retval.0.i.in.i262 to i32
  call void @__asan_load4_noabort(i32 %104)
  %retval.0.i.i263 = load ptr, ptr %retval.0.i.in.i262, align 4
  %tobool30.not.i264 = icmp eq ptr %retval.0.i.i263, null
  br i1 %tobool30.not.i264, label %__vc4_hdmi_get_field_base.exit.i265.do.end34.i267_crit_edge, label %if.end37.i270

__vc4_hdmi_get_field_base.exit.i265.do.end34.i267_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i265
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i267

do.end34.i267:                                    ; preds = %__vc4_hdmi_get_field_base.exit.i265.do.end34.i267_crit_edge, %if.end27.i245.do.end34.i267_crit_edge
  %105 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev.i, align 8
  %dev36.i266 = getelementptr inbounds %struct.platform_device, ptr %106, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i266, ptr noundef nonnull @.str.41, i32 noundef 53) #16
  br label %vc4_hdmi_read.exit272

if.end37.i270:                                    ; preds = %__vc4_hdmi_get_field_base.exit.i265
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i268 = getelementptr %struct.vc4_hdmi_register, ptr %100, i32 53, i32 2
  %107 = ptrtoint ptr %offset.i268 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset.i268, align 4
  %add.ptr.i269 = getelementptr i8, ptr %retval.0.i.i263, i32 %108
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269) #13, !srcloc !445
  %110 = call i32 @llvm.bswap.i32(i32 %109) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit272

vc4_hdmi_read.exit272:                            ; preds = %if.end37.i270, %do.end34.i267, %do.end24.i242
  %retval.0.i271 = phi i32 [ 0, %do.end24.i242 ], [ %110, %if.end37.i270 ], [ 0, %do.end34.i267 ]
  %and118 = and i32 %retval.0.i271, %shl101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp ne i32 %and118, 0
  %brmerge = select i1 %tobool119.not, i1 true, i1 %cmp3.i.i
  br i1 %brmerge, label %for.end131, label %cleanup

cleanup:                                          ; preds = %vc4_hdmi_read.exit272
  call void @__sanitizer_cov_trace_pc() #15
  %mul125 = shl i32 %wait__.0, 1
  call void @usleep_range_state(i32 noundef %wait__.0, i32 noundef %mul125, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.0)
  %cmp126 = icmp slt i32 %wait__.0, 1000
  %spec.select = select i1 %cmp126, i32 %mul125, i32 %wait__.0
  br label %for.cond112

for.end131:                                       ; preds = %vc4_hdmi_read.exit272
  br i1 %tobool119.not, label %for.end131.cleanup136_crit_edge, label %if.then134

for.end131.cleanup136_crit_edge:                  ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup136

if.then134:                                       ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef -110) #13
  br label %cleanup136

cleanup136:                                       ; preds = %if.then134, %for.end131.cleanup136_crit_edge, %if.then45, %if.end31.cleanup136_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %buffer) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_stop_packet(ptr noundef %encoder, i32 noundef %type, i1 noundef zeroext %poll) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -880
  %sub = add i32 %type, -128
  %hw_lock = getelementptr i8, ptr %encoder, i32 1412
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %variant1.i = getelementptr i8, ptr %encoder, i32 -4
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr i8, ptr %encoder, i32 -8
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 51
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 51) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 51, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %switch.tableidx = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 8
  br i1 %15, label %switch.lookup, label %if.end27.i.do.end34.i_crit_edge

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

switch.lookup:                                    ; preds = %if.end27.i
  %switch.idx.mult = shl i32 %switch.tableidx, 2
  %switch.offset = add i32 %switch.idx.mult, 1248
  %rm_regs.i.i = getelementptr i8, ptr %encoder, i32 %switch.offset
  %16 = ptrtoint ptr %rm_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %rm_regs.i.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %switch.lookup.do.end34.i_crit_edge, label %if.end37.i

switch.lookup.do.end34.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %switch.lookup.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 51) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 51, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #13, !srcloc !445
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %22, %if.end37.i ], [ 0, %do.end34.i ]
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and = and i32 %retval.0.i, %neg
  tail call fastcc void @vc4_hdmi_write(ptr noundef %add.ptr.i, i32 noundef 51, i32 noundef %and)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #13
  br i1 %poll, label %if.end, label %vc4_hdmi_read.exit.cleanup33_crit_edge

vc4_hdmi_read.exit.cleanup33_crit_edge:           ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup33

if.end:                                           ; preds = %vc4_hdmi_read.exit
  %call8 = tail call i64 @ktime_get_raw() #13
  %add = add i64 %call8, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 415) #13
  %rm_regs.i.i76 = getelementptr i8, ptr %encoder, i32 1276
  %ram_regs.i.i74 = getelementptr i8, ptr %encoder, i32 1272
  %phy_regs.i.i72 = getelementptr i8, ptr %encoder, i32 1268
  %dvp_regs.i.i70 = getelementptr i8, ptr %encoder, i32 1264
  %cec_regs.i.i68 = getelementptr i8, ptr %encoder, i32 1256
  %csc_regs.i.i66 = getelementptr i8, ptr %encoder, i32 1260
  %hdmicore_regs.i.i64 = getelementptr i8, ptr %encoder, i32 1248
  %hd_regs.i.i62 = getelementptr i8, ptr %encoder, i32 1252
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %wait__.0 = phi i32 [ 10, %if.end ], [ %spec.select, %cleanup ]
  %call15 = tail call i64 @ktime_get_raw() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add)
  %cmp3.i.i = icmp sgt i64 %call15, %add
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !459
  %23 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant1.i, align 4
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i47 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 18
  %27 = ptrtoint ptr %runtime_status.i.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %runtime_status.i.i47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i48 = icmp eq i32 %28, 0
  br i1 %cmp.i.i48, label %for.cond.if.end.i56_crit_edge, label %pm_runtime_active.exit.i52

for.cond.if.end.i56_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i56

pm_runtime_active.exit.i52:                       ; preds = %for.cond
  %disable_depth.i.i49 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 15
  %29 = ptrtoint ptr %disable_depth.i.i49 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i50 = load i16, ptr %disable_depth.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i50)
  %tobool.i.i51 = icmp ugt i16 %bf.load.i.i50, 8191
  br i1 %tobool.i.i51, label %pm_runtime_active.exit.i52.if.end.i56_crit_edge, label %do.end.i53, !prof !444

pm_runtime_active.exit.i52.if.end.i56_crit_edge:  ; preds = %pm_runtime_active.exit.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i56

do.end.i53:                                       ; preds = %pm_runtime_active.exit.i52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i56

if.end.i56:                                       ; preds = %do.end.i53, %pm_runtime_active.exit.i52.if.end.i56_crit_edge, %for.cond.if.end.i56_crit_edge
  %num_registers.i54 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %24, i32 0, i32 5
  %30 = ptrtoint ptr %num_registers.i54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_registers.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %31)
  %cmp.not.i55 = icmp ugt i32 %31, 53
  br i1 %cmp.not.i55, label %if.end27.i61, label %do.end24.i58

do.end24.i58:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 8
  %dev26.i57 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i57, ptr noundef nonnull @.str.22, i32 noundef 53) #16
  br label %vc4_hdmi_read.exit88

if.end27.i61:                                     ; preds = %if.end.i56
  %registers.i59 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %24, i32 0, i32 4
  %34 = ptrtoint ptr %registers.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %registers.i59, align 8
  %reg28.i60 = getelementptr %struct.vc4_hdmi_register, ptr %35, i32 53, i32 1
  %36 = ptrtoint ptr %reg28.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg28.i60, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %37, label %if.end27.i61.do.end34.i83_crit_edge [
    i32 2, label %if.end27.i61.__vc4_hdmi_get_field_base.exit.i81_crit_edge
    i32 1, label %sw.bb1.i.i65
    i32 4, label %sw.bb2.i.i67
    i32 3, label %sw.bb3.i.i69
    i32 5, label %sw.bb4.i.i71
    i32 6, label %sw.bb5.i.i73
    i32 7, label %sw.bb6.i.i75
    i32 8, label %sw.bb7.i.i77
  ]

if.end27.i61.__vc4_hdmi_get_field_base.exit.i81_crit_edge: ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i81

if.end27.i61.do.end34.i83_crit_edge:              ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i83

sw.bb1.i.i65:                                     ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i81

sw.bb2.i.i67:                                     ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i81

sw.bb3.i.i69:                                     ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i81

sw.bb4.i.i71:                                     ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i81

sw.bb5.i.i73:                                     ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i81

sw.bb6.i.i75:                                     ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i81

sw.bb7.i.i77:                                     ; preds = %if.end27.i61
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i81

__vc4_hdmi_get_field_base.exit.i81:               ; preds = %sw.bb7.i.i77, %sw.bb6.i.i75, %sw.bb5.i.i73, %sw.bb4.i.i71, %sw.bb3.i.i69, %sw.bb2.i.i67, %sw.bb1.i.i65, %if.end27.i61.__vc4_hdmi_get_field_base.exit.i81_crit_edge
  %retval.0.i.in.i78 = phi ptr [ %rm_regs.i.i76, %sw.bb7.i.i77 ], [ %ram_regs.i.i74, %sw.bb6.i.i75 ], [ %phy_regs.i.i72, %sw.bb5.i.i73 ], [ %dvp_regs.i.i70, %sw.bb4.i.i71 ], [ %cec_regs.i.i68, %sw.bb3.i.i69 ], [ %csc_regs.i.i66, %sw.bb2.i.i67 ], [ %hdmicore_regs.i.i64, %sw.bb1.i.i65 ], [ %hd_regs.i.i62, %if.end27.i61.__vc4_hdmi_get_field_base.exit.i81_crit_edge ]
  %39 = ptrtoint ptr %retval.0.i.in.i78 to i32
  call void @__asan_load4_noabort(i32 %39)
  %retval.0.i.i79 = load ptr, ptr %retval.0.i.in.i78, align 4
  %tobool30.not.i80 = icmp eq ptr %retval.0.i.i79, null
  br i1 %tobool30.not.i80, label %__vc4_hdmi_get_field_base.exit.i81.do.end34.i83_crit_edge, label %if.end37.i86

__vc4_hdmi_get_field_base.exit.i81.do.end34.i83_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i83

do.end34.i83:                                     ; preds = %__vc4_hdmi_get_field_base.exit.i81.do.end34.i83_crit_edge, %if.end27.i61.do.end34.i83_crit_edge
  %40 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i, align 8
  %dev36.i82 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i82, ptr noundef nonnull @.str.41, i32 noundef 53) #16
  br label %vc4_hdmi_read.exit88

if.end37.i86:                                     ; preds = %__vc4_hdmi_get_field_base.exit.i81
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i84 = getelementptr %struct.vc4_hdmi_register, ptr %35, i32 53, i32 2
  %42 = ptrtoint ptr %offset.i84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %retval.0.i.i79, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #13, !srcloc !445
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit88

vc4_hdmi_read.exit88:                             ; preds = %if.end37.i86, %do.end34.i83, %do.end24.i58
  %retval.0.i87 = phi i32 [ 0, %do.end24.i58 ], [ %45, %if.end37.i86 ], [ 0, %do.end34.i83 ]
  %and20 = and i32 %retval.0.i87, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %brmerge = select i1 %tobool21.not, i1 true, i1 %cmp3.i.i
  br i1 %brmerge, label %cleanup33.loopexit, label %cleanup

cleanup:                                          ; preds = %vc4_hdmi_read.exit88
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %wait__.0, 1
  tail call void @usleep_range_state(i32 noundef %wait__.0, i32 noundef %mul, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %wait__.0)
  %cmp27 = icmp slt i32 %wait__.0, 1000
  %spec.select = select i1 %cmp27, i32 %mul, i32 %wait__.0
  br label %for.cond

cleanup33.loopexit:                               ; preds = %vc4_hdmi_read.exit88
  call void @__sanitizer_cov_trace_pc() #15
  %.mux.le = select i1 %tobool21.not, i32 0, i32 -110
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup33.loopexit, %vc4_hdmi_read.exit.cleanup33_crit_edge
  %retval.0 = phi i32 [ 0, %vc4_hdmi_read.exit.cleanup33_crit_edge ], [ %.mux.le, %cleanup33.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_spd_infoframe_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_infoframe_set_hdr_metadata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vc4_hdmi_encoder_mode_valid(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr i8, ptr %encoder, i32 -4
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %unsupported_odd_h_timings = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %unsupported_odd_h_timings to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %unsupported_odd_h_timings, align 8, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp eq i16 %8, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %9 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hsync_start, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool6.not = icmp eq i16 %11, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %12 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hsync_end, align 4
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool10.not = icmp eq i16 %14, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %15 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %htotal, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool14.not = icmp eq i16 %17, 0
  br i1 %tobool14.not, label %lor.lhs.false11.if.end_crit_edge, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false11.if.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false11.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  %mul = mul i32 %19, 1000
  %conv15 = sext i32 %mul to i64
  %max_pixel_clock = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %max_pixel_clock, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv15)
  %cmp = icmp ult i64 %21, %conv15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %disable_4kp60 = getelementptr i8, ptr %encoder, i32 1285
  %22 = ptrtoint ptr %disable_4kp60 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %disable_4kp60, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp ne i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000000, i32 %mul)
  %cmp.i = icmp sgt i32 %mul, 340000000
  %or.cond = select i1 %tobool20.not, i1 %cmp.i, i1 false
  %spec.select = select i1 %or.cond, i32 15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %lor.lhs.false11.cleanup_crit_edge ], [ 3, %lor.lhs.false7.cleanup_crit_edge ], [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %land.lhs.true2.cleanup_crit_edge ], [ 15, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_atomic_mode_set(ptr noundef %encoder, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef readnone %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %encoder, i32 1456
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %saved_adjusted_mode = getelementptr i8, ptr %encoder, i32 1548
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %0 = call ptr @memcpy(ptr %saved_adjusted_mode, ptr %adjusted_mode, i32 112)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %encoder, i32 1456
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %output_enabled = getelementptr i8, ptr %encoder, i32 1660
  %0 = ptrtoint ptr %output_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %output_enabled, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %encoder, i32 1456
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %output_enabled = getelementptr i8, ptr %encoder, i32 1660
  %0 = ptrtoint ptr %output_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %output_enabled, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr nocapture noundef %crtc_state, ptr nocapture noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %0 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %1, 1000
  %conv = sext i32 %mul to i64
  %variant = getelementptr i8, ptr %encoder, i32 -4
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %unsupported_odd_h_timings = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %unsupported_odd_h_timings to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unsupported_odd_h_timings, align 8, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool6.not = icmp eq i16 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hsync_start, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not = icmp eq i16 %13, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hsync_end, align 4
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool13.not = icmp eq i16 %16, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %htotal, align 2
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool17.not = icmp eq i16 %19, 0
  br i1 %tobool17.not, label %lor.lhs.false14.if.end_crit_edge, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false14.if.end_crit_edge:                 ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false14.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mul18 = mul nsw i64 %conv, 10
  %disable_wifi_frequencies = getelementptr i8, ptr %encoder, i32 1284
  %20 = ptrtoint ptr %disable_wifi_frequencies to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %disable_wifi_frequencies, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 2399999999, i64 %mul18)
  %cmp = icmp ugt i64 %mul18, 2399999999
  %or.cond = select i1 %tobool19.not, i1 %cmp, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 2422000001, i64 %mul18)
  %cmp24 = icmp ult i64 %mul18, 2422000001
  %or.cond654 = select i1 %or.cond, i1 %cmp24, i1 false
  br i1 %or.cond654, label %if.then26, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 238560, ptr %adjusted_mode, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end.if.end31_crit_edge
  %pixel_rate.0 = phi i64 [ 238560000, %if.then26 ], [ %conv, %if.end.if.end31_crit_edge ]
  %max_bpc = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 16
  %23 = ptrtoint ptr %max_bpc to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %max_bpc, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %24, label %if.end31.if.end456_crit_edge [
    i8 12, label %if.end225
    i8 10, label %if.end453
  ]

if.end31.if.end456_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end456

if.end225:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %mul36 = mul nsw i64 %pixel_rate.0, 150
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul36, i32 0) #17, !srcloc !460
  %asmresult.i = extractvalue { i64, i32 } %26, 0
  %asmresult4.i = extractvalue { i64, i32 } %26, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul36, i64 %asmresult.i, i32 %asmresult4.i) #17, !srcloc !461
  %asmresult10.i = extractvalue { i64, i32 } %27, 0
  %pixel_rate.1 = lshr i64 %asmresult10.i, 6
  br label %if.end456

if.end453:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %mul233 = mul nsw i64 %pixel_rate.0, 125
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul233, i32 0) #17, !srcloc !460
  %asmresult.i656 = extractvalue { i64, i32 } %28, 0
  %asmresult4.i657 = extractvalue { i64, i32 } %28, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul233, i64 %asmresult.i656, i32 %asmresult4.i657) #17, !srcloc !461
  %asmresult10.i658 = extractvalue { i64, i32 } %29, 0
  %pixel_rate.2 = lshr i64 %asmresult10.i658, 6
  br label %if.end456

if.end456:                                        ; preds = %if.end453, %if.end225, %if.end31.if.end456_crit_edge
  %pixel_rate.3 = phi i64 [ %pixel_rate.1, %if.end225 ], [ %pixel_rate.2, %if.end453 ], [ %pixel_rate.0, %if.end31.if.end456_crit_edge ]
  %flags457 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 11
  %30 = ptrtoint ptr %flags457 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags457, align 4
  %and458 = lshr i32 %31, 12
  %and458.lobit = and i32 %and458, 1
  %32 = zext i32 %and458.lobit to i64
  %spec.select = shl nsw i64 %pixel_rate.3, %32
  %33 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %variant, align 4
  %max_pixel_clock = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %max_pixel_clock, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select, i64 %36)
  %cmp464 = icmp ugt i64 %spec.select, %36
  br i1 %cmp464, label %if.end456.cleanup_crit_edge, label %if.end467

if.end456.cleanup_crit_edge:                      ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end467:                                        ; preds = %if.end456
  %disable_4kp60 = getelementptr i8, ptr %encoder, i32 1285
  %37 = ptrtoint ptr %disable_4kp60 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %disable_4kp60, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool468.not = icmp ne i8 %38, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 340000000, i64 %spec.select)
  %cmp471 = icmp ugt i64 %spec.select, 340000000
  %or.cond655 = select i1 %tobool468.not, i1 %cmp471, i1 false
  br i1 %or.cond655, label %if.end467.cleanup_crit_edge, label %if.end474

if.end467.cleanup_crit_edge:                      ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end474:                                        ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #15
  %pixel_rate475 = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %conn_state, i32 0, i32 1
  %39 = ptrtoint ptr %pixel_rate475 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %spec.select, ptr %pixel_rate475, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end474, %if.end467.cleanup_crit_edge, %if.end456.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end474 ], [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true4.cleanup_crit_edge ], [ -22, %if.end456.cleanup_crit_edge ], [ -22, %if.end467.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_margin_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_hdmi_colorspace_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_colorspace_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_attach_tv_margin_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_max_bpc_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_hdr_output_metadata_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_connector_reset(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 128) #18
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef nonnull %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #13
  tail call void @__drm_atomic_helper_connector_reset(ptr noundef %connector, ptr noundef %call7.i.i) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %max_bpc = getelementptr inbounds %struct.drm_connector_state, ptr %call7.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %max_bpc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %max_bpc, align 1
  %max_requested_bpc = getelementptr inbounds %struct.drm_connector_state, ptr %call7.i.i, i32 0, i32 15
  %6 = ptrtoint ptr %max_requested_bpc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %max_requested_bpc, align 8
  tail call void @drm_atomic_helper_connector_tv_reset(ptr noundef %connector) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %connector, i32 -984
  %mutex = getelementptr i8, ptr %connector, i32 1352
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %pdev = getelementptr i8, ptr %connector, i32 -112
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !441
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !442
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !443
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 193, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hpd_gpio = getelementptr i8, ptr %connector, i32 1176
  %3 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hpd_gpio, align 8
  %tobool21.not = icmp eq ptr %4, null
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %call24 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not.not, label %if.then22.if.end51_crit_edge, label %if.then22.if.then36_crit_edge

if.then22.if.then36_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36

if.then22.if.end51_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.else:                                          ; preds = %if.end
  %variant = getelementptr i8, ptr %connector, i32 -108
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant, align 4
  %hp_detect = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %hp_detect to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hp_detect, align 4
  %tobool28.not = icmp eq ptr %8, null
  br i1 %tobool28.not, label %if.else.if.end51_crit_edge, label %if.end34

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end34:                                         ; preds = %if.else
  %call31 = tail call zeroext i1 %8(ptr noundef %add.ptr.i) #13
  br i1 %call31, label %if.end34.if.then36_crit_edge, label %if.end34.if.end51_crit_edge

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %if.then22.if.then36_crit_edge
  %status = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not = icmp eq i32 %10, 1
  br i1 %cmp.not, label %if.then36.if.end44_crit_edge, label %if.then37

if.then36.if.end44_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then37:                                        ; preds = %if.then36
  %ddc = getelementptr i8, ptr %connector, i32 1140
  %11 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddc, align 4
  %call38 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %12) #13
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then37.if.end44_crit_edge, label %if.then40

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %cec_adap = getelementptr i8, ptr %connector, i32 1184
  %13 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cec_adap, align 8
  tail call void @cec_s_phys_addr_from_edid(ptr noundef %14, ptr noundef nonnull %call38) #13
  %call41 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %call38) #13
  %hdmi_monitor = getelementptr i8, ptr %connector, i32 -4
  %frombool42 = zext i1 %call41 to i8
  %15 = ptrtoint ptr %hdmi_monitor to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool42, ptr %hdmi_monitor, align 4
  tail call void @kfree(ptr noundef nonnull %call38) #13
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then37.if.end44_crit_edge, %if.then36.if.end44_crit_edge
  %encoder45 = getelementptr i8, ptr %connector, i32 -104
  tail call fastcc void @vc4_hdmi_enable_scrambling(ptr noundef %encoder45)
  br label %cleanup

if.end51:                                         ; preds = %if.end34.if.end51_crit_edge, %if.else.if.end51_crit_edge, %if.then22.if.end51_crit_edge
  %cec_adap52 = getelementptr i8, ptr %connector, i32 1184
  %16 = ptrtoint ptr %cec_adap52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cec_adap52, align 8
  tail call void @cec_s_phys_addr(ptr noundef %17, i16 noundef zeroext -1, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end44
  %retval.0 = phi i32 [ 1, %if.end44 ], [ 2, %if.end51 ]
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev54 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %call.i82 = tail call i32 @__pm_runtime_idle(ptr noundef %dev54, i32 noundef 5) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vc4_hdmi_connector_duplicate_state(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 128) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pixel_rate = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pixel_rate, align 8
  %pixel_rate2 = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pixel_rate2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %pixel_rate2, align 8
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_tv_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %connector, i32 1352
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %ddc = getelementptr i8, ptr %connector, i32 1140
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %call1 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %1) #13
  %cec_adap = getelementptr i8, ptr %connector, i32 1184
  %2 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_adap, align 8
  tail call void @cec_s_phys_addr_from_edid(ptr noundef %3, ptr noundef %call1) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %call1) #13
  %hdmi_monitor = getelementptr i8, ptr %connector, i32 -4
  %frombool = zext i1 %call2 to i8
  %4 = ptrtoint ptr %hdmi_monitor to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %hdmi_monitor, align 4
  %call3 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call1) #13
  %call4 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call1) #13
  tail call void @kfree(ptr noundef nonnull %call1) #13
  %disable_4kp60 = getelementptr i8, ptr %connector, i32 1181
  %5 = ptrtoint ptr %disable_4kp60 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %disable_4kp60, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.then6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then6:                                         ; preds = %if.end
  %probed_modes = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 19
  %7 = ptrtoint ptr %probed_modes to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn57 = load ptr, ptr %probed_modes, align 4
  %cmp.not58 = icmp eq ptr %.pn57, %probed_modes
  br i1 %cmp.not58, label %if.then6.out_crit_edge, label %for.body.lr.ph

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %if.then6
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 8
  %dev13 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn59 = phi ptr [ %.pn57, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %mode.0 = getelementptr i8, ptr %.pn59, i32 -64
  %10 = ptrtoint ptr %mode.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode.0, align 4
  %mul.i = mul i32 %11, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000000, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 340000000
  br i1 %cmp.i, label %do.body, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body:                                          ; preds = %for.body
  %.b55 = load i1, ptr @vc4_hdmi_connector_get_modes.__print_once, align 1
  br i1 %.b55, label %do.body.do.body17_crit_edge, label %if.then11

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body17

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vc4_hdmi_connector_get_modes.__print_once, align 1
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.43) #16
  br label %do.body17

do.body17:                                        ; preds = %if.then11, %do.body.do.body17_crit_edge
  %.b5456 = load i1, ptr @vc4_hdmi_connector_get_modes.__print_once.45, align 1
  br i1 %.b5456, label %do.body17.for.inc_crit_edge, label %if.then19

do.body17.for.inc_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then19:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @vc4_hdmi_connector_get_modes.__print_once.45, align 1
  %14 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.47) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %do.body17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn59, align 4
  %cmp.not = icmp eq ptr %.pn, %probed_modes
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ -19, %entry.out_crit_edge ], [ %call4, %if.then6.out_crit_edge ], [ %call4, %for.inc.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_connector_atomic_check(ptr nocapture noundef readonly %connector, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i28, label %entry.drm_atomic_get_new_connector_state.exit_crit_edge

entry.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %drm_atomic_get_new_connector_state.exit

if.end.i28:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  %old_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 2
  %6 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_state.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i28, %entry.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i31 = phi ptr [ %7, %if.end.i28 ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %retval.0.i29 = phi ptr [ %9, %if.end.i28 ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %crtc2 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i29, i32 0, i32 1
  %10 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc2, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %drm_atomic_get_new_connector_state.exit.cleanup12_crit_edge, label %if.end

drm_atomic_get_new_connector_state.exit.cleanup12_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup12

if.end:                                           ; preds = %drm_atomic_get_new_connector_state.exit
  %colorspace = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i31, i32 0, i32 13
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %colorspace, align 4
  %colorspace3 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i29, i32 0, i32 13
  %14 = ptrtoint ptr %colorspace3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %colorspace3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @drm_connector_atomic_hdr_metadata_equal(ptr noundef %retval.0.i31, ptr noundef %retval.0.i29) #13
  br i1 %call4, label %lor.lhs.false.cleanup12_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

lor.lhs.false.cleanup12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup12

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %call6 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %11) #13
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call6 to i32
  br label %cleanup12

cleanup:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %call6, i32 0, i32 3
  %17 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %cleanup12

cleanup12:                                        ; preds = %cleanup, %cleanup.thread, %lor.lhs.false.cleanup12_crit_edge, %drm_atomic_get_new_connector_state.exit.cleanup12_crit_edge
  %retval.1 = phi i32 [ 0, %drm_atomic_get_new_connector_state.exit.cleanup12_crit_edge ], [ %16, %cleanup.thread ], [ 0, %cleanup ], [ 0, %lor.lhs.false.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_connector_atomic_hdr_metadata_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_hpd_irq_thread(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %connector1 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %connector1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %registered = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @drm_connector_helper_hpd_irq_event(ptr noundef %connector1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_connector_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_conn_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_cec_irq_handler_rx_bare(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 30
  tail call void @_raw_spin_lock(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_cec_irq_handler_rx_bare_locked(ptr noundef %priv)
  tail call void @_raw_spin_unlock(ptr noundef %hw_lock) #13
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_cec_irq_handler_rx_thread(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 19, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cec_rx_msg = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 19
  %cec_adap = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %cec_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_adap, align 8
  %call.i = tail call i64 @ktime_get() #13
  tail call void @cec_received_msg_ts(ptr noundef %3, ptr noundef %cec_rx_msg, i64 noundef %call.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_cec_irq_handler_tx_bare(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 30
  tail call void @_raw_spin_lock(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_cec_irq_handler_tx_bare_locked(ptr noundef %priv)
  tail call void @_raw_spin_unlock(ptr noundef %hw_lock) #13
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_cec_irq_handler_tx_thread(i32 noundef %irq, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_tx_ok = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %cec_tx_ok to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cec_tx_ok, align 8, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cec_adap1 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %cec_adap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cec_adap1, align 8
  %call.i4 = tail call i64 @ktime_get() #13
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cec_transmit_done_ts(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i4) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cec_transmit_done_ts(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i4) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_cec_irq_handler(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 10
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 10) #16
  br label %cleanup

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 10, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %14, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %vc4_hdmi_read.exit

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 10) #16
  br label %cleanup

vc4_hdmi_read.exit:                               ; preds = %__vc4_hdmi_get_field_base.exit.i
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 10, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %22 = and i32 %21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %vc4_hdmi_read.exit.cleanup_crit_edge, label %if.end

vc4_hdmi_read.exit.cleanup_crit_edge:             ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %vc4_hdmi_read.exit
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 30
  tail call void @_raw_spin_lock(ptr noundef %hw_lock) #13
  %23 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant1.i, align 4
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i24 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 18
  %27 = ptrtoint ptr %runtime_status.i.i24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %runtime_status.i.i24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i25 = icmp eq i32 %28, 0
  br i1 %cmp.i.i25, label %if.end.if.end.i33_crit_edge, label %pm_runtime_active.exit.i29

if.end.if.end.i33_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i33

pm_runtime_active.exit.i29:                       ; preds = %if.end
  %disable_depth.i.i26 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 15
  %29 = ptrtoint ptr %disable_depth.i.i26 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i27 = load i16, ptr %disable_depth.i.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i27)
  %tobool.i.i28 = icmp ugt i16 %bf.load.i.i27, 8191
  br i1 %tobool.i.i28, label %pm_runtime_active.exit.i29.if.end.i33_crit_edge, label %do.end.i30, !prof !444

pm_runtime_active.exit.i29.if.end.i33_crit_edge:  ; preds = %pm_runtime_active.exit.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i33

do.end.i30:                                       ; preds = %pm_runtime_active.exit.i29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i33

if.end.i33:                                       ; preds = %do.end.i30, %pm_runtime_active.exit.i29.if.end.i33_crit_edge, %if.end.if.end.i33_crit_edge
  %num_registers.i31 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %24, i32 0, i32 5
  %30 = ptrtoint ptr %num_registers.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_registers.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp.not.i32 = icmp ugt i32 %31, 5
  br i1 %cmp.not.i32, label %if.end27.i38, label %if.end.i33.vc4_hdmi_read.exit65.thread_crit_edge

if.end.i33.vc4_hdmi_read.exit65.thread_crit_edge: ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_read.exit65.thread

if.end27.i38:                                     ; preds = %if.end.i33
  %registers.i36 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %24, i32 0, i32 4
  %32 = ptrtoint ptr %registers.i36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %registers.i36, align 8
  %reg28.i37 = getelementptr %struct.vc4_hdmi_register, ptr %33, i32 5, i32 1
  %34 = ptrtoint ptr %reg28.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg28.i37, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %35, label %if.end27.i38.vc4_hdmi_read.exit65.thread_crit_edge [
    i32 2, label %sw.bb.i.i40
    i32 1, label %sw.bb1.i.i42
    i32 4, label %sw.bb2.i.i44
    i32 3, label %sw.bb3.i.i46
    i32 5, label %sw.bb4.i.i48
    i32 6, label %sw.bb5.i.i50
    i32 7, label %sw.bb6.i.i52
    i32 8, label %sw.bb7.i.i54
  ]

if.end27.i38.vc4_hdmi_read.exit65.thread_crit_edge: ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_read.exit65.thread

sw.bb.i.i40:                                      ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i39 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i58

sw.bb1.i.i42:                                     ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i41 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i58

sw.bb2.i.i44:                                     ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i43 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i58

sw.bb3.i.i46:                                     ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i45 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i58

sw.bb4.i.i48:                                     ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i47 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i58

sw.bb5.i.i50:                                     ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i49 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i58

sw.bb6.i.i52:                                     ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i51 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i58

sw.bb7.i.i54:                                     ; preds = %if.end27.i38
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i53 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i58

__vc4_hdmi_get_field_base.exit.i58:               ; preds = %sw.bb7.i.i54, %sw.bb6.i.i52, %sw.bb5.i.i50, %sw.bb4.i.i48, %sw.bb3.i.i46, %sw.bb2.i.i44, %sw.bb1.i.i42, %sw.bb.i.i40
  %retval.0.i.in.i55 = phi ptr [ %rm_regs.i.i53, %sw.bb7.i.i54 ], [ %ram_regs.i.i51, %sw.bb6.i.i52 ], [ %phy_regs.i.i49, %sw.bb5.i.i50 ], [ %dvp_regs.i.i47, %sw.bb4.i.i48 ], [ %cec_regs.i.i45, %sw.bb3.i.i46 ], [ %csc_regs.i.i43, %sw.bb2.i.i44 ], [ %hdmicore_regs.i.i41, %sw.bb1.i.i42 ], [ %hd_regs.i.i39, %sw.bb.i.i40 ]
  %37 = ptrtoint ptr %retval.0.i.in.i55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %retval.0.i.i56 = load ptr, ptr %retval.0.i.in.i55, align 4
  %tobool30.not.i57 = icmp eq ptr %retval.0.i.i56, null
  br i1 %tobool30.not.i57, label %__vc4_hdmi_get_field_base.exit.i58.vc4_hdmi_read.exit65.thread_crit_edge, label %vc4_hdmi_read.exit65

__vc4_hdmi_get_field_base.exit.i58.vc4_hdmi_read.exit65.thread_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_read.exit65.thread

vc4_hdmi_read.exit65.thread:                      ; preds = %__vc4_hdmi_get_field_base.exit.i58.vc4_hdmi_read.exit65.thread_crit_edge, %if.end27.i38.vc4_hdmi_read.exit65.thread_crit_edge, %if.end.i33.vc4_hdmi_read.exit65.thread_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %if.end.i33.vc4_hdmi_read.exit65.thread_crit_edge ], [ @.str.41, %__vc4_hdmi_get_field_base.exit.i58.vc4_hdmi_read.exit65.thread_crit_edge ], [ @.str.41, %if.end27.i38.vc4_hdmi_read.exit65.thread_crit_edge ]
  %38 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i, align 8
  %dev26.i34 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i34, ptr noundef nonnull %.str.22.sink, i32 noundef 5) #16
  %cec_irq_was_rx72 = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 21
  %40 = ptrtoint ptr %cec_irq_was_rx72 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %cec_irq_was_rx72, align 1
  br label %if.else

vc4_hdmi_read.exit65:                             ; preds = %__vc4_hdmi_get_field_base.exit.i58
  %offset.i61 = getelementptr %struct.vc4_hdmi_register, ptr %33, i32 5, i32 2
  %41 = ptrtoint ptr %offset.i61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %retval.0.i.i56, i32 %42
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #13, !srcloc !445
  %44 = shl i32 %43, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %and2 = and i32 %44, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %cec_irq_was_rx = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 21
  %and2.lobit = lshr exact i32 %and2, 23
  %45 = trunc i32 %and2.lobit to i8
  %46 = ptrtoint ptr %cec_irq_was_rx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %cec_irq_was_rx, align 1
  br i1 %tobool3.not, label %vc4_hdmi_read.exit65.if.else_crit_edge, label %if.then6

vc4_hdmi_read.exit65.if.else_crit_edge:           ; preds = %vc4_hdmi_read.exit65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then6:                                         ; preds = %vc4_hdmi_read.exit65
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @vc4_cec_irq_handler_rx_bare_locked(ptr noundef %priv)
  br label %if.end9

if.else:                                          ; preds = %vc4_hdmi_read.exit65.if.else_crit_edge, %vc4_hdmi_read.exit65.thread
  tail call fastcc void @vc4_cec_irq_handler_tx_bare_locked(ptr noundef %priv)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  tail call fastcc void @vc4_hdmi_write(ptr noundef %priv, i32 noundef 6, i32 noundef 64)
  tail call void @_raw_spin_unlock(ptr noundef %hw_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %vc4_hdmi_read.exit.cleanup_crit_edge, %do.end34.i, %do.end24.i
  %retval.0 = phi i32 [ 2, %if.end9 ], [ 0, %vc4_hdmi_read.exit.cleanup_crit_edge ], [ 0, %do.end24.i ], [ 0, %do.end34.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_cec_irq_handler_thread(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_irq_was_rx = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %cec_irq_was_rx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cec_irq_was_rx, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %cec_rx_msg.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 19
  %cec_adap.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 18
  %4 = ptrtoint ptr %cec_adap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec_adap.i, align 8
  %call.i.i = tail call i64 @ktime_get() #13
  tail call void @cec_received_msg_ts(ptr noundef %5, ptr noundef %cec_rx_msg.i, i64 noundef %call.i.i) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %cec_tx_ok.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 20
  %6 = ptrtoint ptr %cec_tx_ok.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cec_tx_ok.i, align 8, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i5 = icmp eq i8 %7, 0
  %cec_adap1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %priv, i32 0, i32 18
  %8 = ptrtoint ptr %cec_adap1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cec_adap1.i, align 8
  %call.i4.i = tail call i64 @ktime_get() #13
  br i1 %tobool.not.i5, label %if.else.i, label %if.then.i6

if.then.i6:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cec_transmit_done_ts(ptr noundef %9, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i4.i) #13
  br label %if.end

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cec_transmit_done_ts(ptr noundef %9, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i4.i) #13
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i6, %if.then.i, %if.then.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body2.i

if.then.i.i:                                      ; preds = %if.then
  %usage_count.i.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !441
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #13, !srcloc !442
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.return_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.return_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !443
  br label %return

do.body2.i:                                       ; preds = %if.then
  %hw_lock.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 30
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  %variant1.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %variant1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant1.i.i, align 4
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 12, i32 18
  %9 = ptrtoint ptr %runtime_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runtime_status.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i, label %do.body2.i.if.end.i.i_crit_edge, label %pm_runtime_active.exit.i.i

do.body2.i.if.end.i.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

pm_runtime_active.exit.i.i:                       ; preds = %do.body2.i
  %disable_depth.i.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i.i = load i16, ptr %disable_depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i.i)
  %tobool.i.i.i = icmp ugt i16 %bf.load.i.i.i, 8191
  br i1 %tobool.i.i.i, label %pm_runtime_active.exit.i.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !444

pm_runtime_active.exit.i.i.if.end.i.i_crit_edge:  ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %pm_runtime_active.exit.i.i.if.end.i.i_crit_edge, %do.body2.i.if.end.i.i_crit_edge
  %num_registers.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 5
  %12 = ptrtoint ptr %num_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_registers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp.not.i.i = icmp ugt i32 %13, 5
  br i1 %cmp.not.i.i, label %if.end27.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %dev26.i.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.22, i32 noundef 5) #16
  br label %vc4_hdmi_read.exit.i

if.end27.i.i:                                     ; preds = %if.end.i.i
  %registers.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %registers.i.i, align 8
  %reg28.i.i = getelementptr %struct.vc4_hdmi_register, ptr %17, i32 5, i32 1
  %18 = ptrtoint ptr %reg28.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg28.i.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %19, label %if.end27.i.i.do.end34.i.i_crit_edge [
    i32 2, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 4, label %sw.bb2.i.i.i
    i32 3, label %sw.bb3.i.i.i
    i32 5, label %sw.bb4.i.i.i
    i32 6, label %sw.bb5.i.i.i
    i32 7, label %sw.bb6.i.i.i
    i32 8, label %sw.bb7.i.i.i
  ]

if.end27.i.i.do.end34.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

sw.bb.i.i.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb6.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i.i

__vc4_hdmi_get_field_base.exit.i.i:               ; preds = %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.i.in.i.i = phi ptr [ %rm_regs.i.i.i, %sw.bb7.i.i.i ], [ %ram_regs.i.i.i, %sw.bb6.i.i.i ], [ %phy_regs.i.i.i, %sw.bb5.i.i.i ], [ %dvp_regs.i.i.i, %sw.bb4.i.i.i ], [ %cec_regs.i.i.i, %sw.bb3.i.i.i ], [ %csc_regs.i.i.i, %sw.bb2.i.i.i ], [ %hdmicore_regs.i.i.i, %sw.bb1.i.i.i ], [ %hd_regs.i.i.i, %sw.bb.i.i.i ]
  %21 = ptrtoint ptr %retval.0.i.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.0.i.i.i = load ptr, ptr %retval.0.i.in.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool30.not.i.i, label %__vc4_hdmi_get_field_base.exit.i.i.do.end34.i.i_crit_edge, label %if.end37.i.i

__vc4_hdmi_get_field_base.exit.i.i.do.end34.i.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

do.end34.i.i:                                     ; preds = %__vc4_hdmi_get_field_base.exit.i.i.do.end34.i.i_crit_edge, %if.end27.i.i.do.end34.i.i_crit_edge
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev36.i.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i.i, ptr noundef nonnull @.str.41, i32 noundef 5) #16
  br label %vc4_hdmi_read.exit.i

if.end37.i.i:                                     ; preds = %__vc4_hdmi_get_field_base.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i.i = getelementptr %struct.vc4_hdmi_register, ptr %17, i32 5, i32 2
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i.i, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %27 = and i32 %26, 65523
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #13
  br label %vc4_hdmi_read.exit.i

vc4_hdmi_read.exit.i:                             ; preds = %if.end37.i.i, %do.end34.i.i, %do.end24.i.i
  %retval.0.i32.i = phi i32 [ 0, %do.end24.i.i ], [ %28, %if.end37.i.i ], [ 0, %do.end34.i.i ]
  %or.i = or i32 %retval.0.i32.i, 48308
  %or9.i = or i32 %retval.0.i32.i, 201374900
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 5, i32 noundef %or9.i) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 5, i32 noundef %or.i) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 2, i32 noundef 1013515024) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 3, i32 noundef 1851806276) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 4, i32 noundef -1399025524) #13
  %29 = ptrtoint ptr %variant1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant1.i.i, align 4
  %external_irq_controller.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %external_irq_controller.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %external_irq_controller.i, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool10.not.i = icmp eq i8 %32, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %vc4_hdmi_read.exit.i.if.end12.i_crit_edge

vc4_hdmi_read.exit.i.if.end12.i_crit_edge:        ; preds = %vc4_hdmi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then11.i:                                      ; preds = %vc4_hdmi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 7, i32 noundef 64) #13
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %vc4_hdmi_read.exit.i.if.end12.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call4.i) #13
  br label %return

if.else:                                          ; preds = %entry
  %hw_lock.i4 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 30
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i4) #13
  %variant.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %variant.i, align 4
  %external_irq_controller.i5 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %external_irq_controller.i5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %external_irq_controller.i5, align 1, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 8, i32 noundef 64) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %37 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %variant.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i.i, align 8
  %runtime_status.i.i.i6 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3, i32 12, i32 18
  %41 = ptrtoint ptr %runtime_status.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %runtime_status.i.i.i6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i7 = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i7, label %if.end.i.if.end.i.i15_crit_edge, label %pm_runtime_active.exit.i.i11

if.end.i.if.end.i.i15_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i15

pm_runtime_active.exit.i.i11:                     ; preds = %if.end.i
  %disable_depth.i.i.i8 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3, i32 12, i32 15
  %43 = ptrtoint ptr %disable_depth.i.i.i8 to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i.i.i9 = load i16, ptr %disable_depth.i.i.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i.i9)
  %tobool.i.i.i10 = icmp ugt i16 %bf.load.i.i.i9, 8191
  br i1 %tobool.i.i.i10, label %pm_runtime_active.exit.i.i11.if.end.i.i15_crit_edge, label %do.end.i.i12, !prof !444

pm_runtime_active.exit.i.i11.if.end.i.i15_crit_edge: ; preds = %pm_runtime_active.exit.i.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i15

do.end.i.i12:                                     ; preds = %pm_runtime_active.exit.i.i11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i15

if.end.i.i15:                                     ; preds = %do.end.i.i12, %pm_runtime_active.exit.i.i11.if.end.i.i15_crit_edge, %if.end.i.if.end.i.i15_crit_edge
  %num_registers.i.i13 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %38, i32 0, i32 5
  %44 = ptrtoint ptr %num_registers.i.i13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_registers.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %45)
  %cmp.not.i.i14 = icmp ugt i32 %45, 5
  br i1 %cmp.not.i.i14, label %if.end27.i.i20, label %do.end24.i.i17

do.end24.i.i17:                                   ; preds = %if.end.i.i15
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i.i, align 8
  %dev26.i.i16 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i.i16, ptr noundef nonnull @.str.22, i32 noundef 5) #16
  br label %vc4_hdmi_cec_disable.exit

if.end27.i.i20:                                   ; preds = %if.end.i.i15
  %registers.i.i18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %38, i32 0, i32 4
  %48 = ptrtoint ptr %registers.i.i18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %registers.i.i18, align 8
  %reg28.i.i19 = getelementptr %struct.vc4_hdmi_register, ptr %49, i32 5, i32 1
  %50 = ptrtoint ptr %reg28.i.i19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg28.i.i19, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %51, label %if.end27.i.i20.do.end34.i.i42_crit_edge [
    i32 2, label %sw.bb.i.i.i22
    i32 1, label %sw.bb1.i.i.i24
    i32 4, label %sw.bb2.i.i.i26
    i32 3, label %sw.bb3.i.i.i28
    i32 5, label %sw.bb4.i.i.i30
    i32 6, label %sw.bb5.i.i.i32
    i32 7, label %sw.bb6.i.i.i34
    i32 8, label %sw.bb7.i.i.i36
  ]

if.end27.i.i20.do.end34.i.i42_crit_edge:          ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i42

sw.bb.i.i.i22:                                    ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i.i21 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i.i40

sw.bb1.i.i.i24:                                   ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i.i23 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i.i40

sw.bb2.i.i.i26:                                   ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i.i25 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i.i40

sw.bb3.i.i.i28:                                   ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i.i27 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i.i40

sw.bb4.i.i.i30:                                   ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i.i29 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i.i40

sw.bb5.i.i.i32:                                   ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i.i31 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i.i40

sw.bb6.i.i.i34:                                   ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i.i33 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i.i40

sw.bb7.i.i.i36:                                   ; preds = %if.end27.i.i20
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i.i35 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i.i40

__vc4_hdmi_get_field_base.exit.i.i40:             ; preds = %sw.bb7.i.i.i36, %sw.bb6.i.i.i34, %sw.bb5.i.i.i32, %sw.bb4.i.i.i30, %sw.bb3.i.i.i28, %sw.bb2.i.i.i26, %sw.bb1.i.i.i24, %sw.bb.i.i.i22
  %retval.0.i.in.i.i37 = phi ptr [ %rm_regs.i.i.i35, %sw.bb7.i.i.i36 ], [ %ram_regs.i.i.i33, %sw.bb6.i.i.i34 ], [ %phy_regs.i.i.i31, %sw.bb5.i.i.i32 ], [ %dvp_regs.i.i.i29, %sw.bb4.i.i.i30 ], [ %cec_regs.i.i.i27, %sw.bb3.i.i.i28 ], [ %csc_regs.i.i.i25, %sw.bb2.i.i.i26 ], [ %hdmicore_regs.i.i.i23, %sw.bb1.i.i.i24 ], [ %hd_regs.i.i.i21, %sw.bb.i.i.i22 ]
  %53 = ptrtoint ptr %retval.0.i.in.i.i37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %retval.0.i.i.i38 = load ptr, ptr %retval.0.i.in.i.i37, align 4
  %tobool30.not.i.i39 = icmp eq ptr %retval.0.i.i.i38, null
  br i1 %tobool30.not.i.i39, label %__vc4_hdmi_get_field_base.exit.i.i40.do.end34.i.i42_crit_edge, label %if.end37.i.i45

__vc4_hdmi_get_field_base.exit.i.i40.do.end34.i.i42_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i42

do.end34.i.i42:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i.i40.do.end34.i.i42_crit_edge, %if.end27.i.i20.do.end34.i.i42_crit_edge
  %54 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev.i.i, align 8
  %dev36.i.i41 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i.i41, ptr noundef nonnull @.str.41, i32 noundef 5) #16
  br label %vc4_hdmi_cec_disable.exit

if.end37.i.i45:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i.i40
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i.i43 = getelementptr %struct.vc4_hdmi_register, ptr %49, i32 5, i32 2
  %56 = ptrtoint ptr %offset.i.i43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset.i.i43, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %retval.0.i.i.i38, i32 %57
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %59 = or i32 %58, 12
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #13
  br label %vc4_hdmi_cec_disable.exit

vc4_hdmi_cec_disable.exit:                        ; preds = %if.end37.i.i45, %do.end34.i.i42, %do.end24.i.i17
  %retval.0.i.i = phi i32 [ 201326592, %do.end24.i.i17 ], [ %60, %if.end37.i.i45 ], [ 201326592, %do.end34.i.i42 ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 5, i32 noundef %retval.0.i.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i4, i32 noundef %call3.i) #13
  %61 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev.i.i, align 8
  %dev.i46 = getelementptr inbounds %struct.platform_device, ptr %62, i32 0, i32 3
  %call.i.i47 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i46, i32 noundef 5) #13
  br label %return

return:                                           ; preds = %vc4_hdmi_cec_disable.exit, %if.end12.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %vc4_hdmi_cec_disable.exit ], [ 0, %if.end12.i ], [ %call.i.i, %if.then.i.i.return_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %log_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not.i = icmp ugt i32 %10, 1
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %14, i32 1, i32 1
  %15 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg28.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %16, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %18 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %14, i32 1, i32 2
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %24 = and i32 %23, -15728641
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %25, %if.end37.i ], [ 0, %do.end34.i ]
  %26 = and i8 %log_addr, 15
  %and8 = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %and8, 12
  %or = or i32 %retval.0.i, %shl
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 1, i32 noundef %or)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %connector = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.62, i32 noundef %3) #16
  br label %cleanup

do.body5:                                         ; preds = %entry
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 30
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1470.not = icmp eq i32 %9, 0
  br i1 %cmp1470.not, label %do.body5.for.end_crit_edge, label %do.body5.for.body_crit_edge

do.body5.for.body_crit_edge:                      ; preds = %do.body5
  br label %for.body

do.body5.for.end_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body5.for.body_crit_edge
  %i.071 = phi i32 [ %add34, %for.body.for.body_crit_edge ], [ 0, %do.body5.for.body_crit_edge ]
  %shr = lshr exact i32 %i.071, 2
  %add = add nuw nsw i32 %shr, 16
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.071
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %11 to i32
  %add19 = or i32 %i.071, 1
  %arrayidx20 = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %add19
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv21, 8
  %or = or i32 %shl, %conv17
  %add23 = or i32 %i.071, 2
  %arrayidx24 = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %add23
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %15 to i32
  %shl26 = shl nuw nsw i32 %conv25, 16
  %or27 = or i32 %or, %shl26
  %add29 = or i32 %i.071, 3
  %arrayidx30 = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %add29
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %17 to i32
  %shl32 = shl nuw i32 %conv31, 24
  %or33 = or i32 %or27, %shl32
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef %add, i32 noundef %or33)
  %add34 = add i32 %i.071, 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 8
  %cmp14 = icmp ult i32 %add34, %19
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body5.for.end_crit_edge
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3, i32 12, i32 18
  %24 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %for.end.if.end.i_crit_edge, label %pm_runtime_active.exit.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %for.end
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3, i32 12, i32 15
  %26 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %21, i32 0, i32 5
  %27 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.not.i = icmp ugt i32 %28, 1
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %21, i32 0, i32 4
  %31 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %32, i32 1, i32 1
  %33 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg28.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %34, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %36 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %32, i32 1, i32 2
  %39 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %42, %if.end37.i ], [ 0, %do.end34.i ]
  %and = and i32 %retval.0.i, -1048577
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 1, i32 noundef %and)
  %and36 = and i32 %retval.0.i, -2031617
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 8
  %sub = shl i32 %44, 16
  %shl38 = add i32 %sub, -65536
  %or39 = or i32 %and36, %shl38
  %or40 = or i32 %or39, 1048576
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 1, i32 noundef %or40)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call8) #13
  br label %cleanup

cleanup:                                          ; preds = %vc4_hdmi_read.exit, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %vc4_hdmi_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_cec_irq_handler_rx_bare_locked(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !449

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1951, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 19, i32 2
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %len, align 8
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %2 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %if.end.if.end.i_crit_edge, label %pm_runtime_active.exit.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %if.end
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not.i = icmp ugt i32 %10, 1
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %14, i32 1, i32 1
  %15 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg28.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %16, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %18 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %14, i32 1, i32 2
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %24, %if.end37.i ], [ 0, %do.end34.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %vc4_hdmi_read.exit.for.body.lr.ph.i_crit_edge, label %land.rhs.i

vc4_hdmi_read.exit.for.body.lr.ph.i_crit_edge:    ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph.i

land.rhs.i:                                       ; preds = %vc4_hdmi_read.exit
  %dep_map.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i1 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i1, label %do.end.i2, label %land.rhs.i.for.body.lr.ph.i_crit_edge, !prof !449

land.rhs.i.for.body.lr.ph.i_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph.i

do.end.i2:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1901, i32 noundef 9, ptr noundef null) #13
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %do.end.i2, %land.rhs.i.for.body.lr.ph.i_crit_edge, %vc4_hdmi_read.exit.for.body.lr.ph.i_crit_edge
  %and.i = lshr i32 %retval.0.i, 24
  %shr.i = and i32 %and.i, 15
  %add.i = add nuw nsw i32 %shr.i, 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %len, align 8
  %rm_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  %ram_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  %phy_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  %dvp_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  %cec_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  %csc_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  %hdmicore_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  %hd_regs.i.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %vc4_hdmi_read.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add59.i, %vc4_hdmi_read.exit.i.for.body.i_crit_edge ]
  %shr36.i = lshr exact i32 %i.083.i, 2
  %add37.i = add nuw nsw i32 %shr36.i, 12
  %27 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %variant1.i, align 4
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3, i32 12, i32 18
  %31 = ptrtoint ptr %runtime_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %runtime_status.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i, label %for.body.i.if.end.i.i_crit_edge, label %pm_runtime_active.exit.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

pm_runtime_active.exit.i.i:                       ; preds = %for.body.i
  %disable_depth.i.i.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3, i32 12, i32 15
  %33 = ptrtoint ptr %disable_depth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i.i = load i16, ptr %disable_depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i.i)
  %tobool.i.i.i = icmp ugt i16 %bf.load.i.i.i, 8191
  br i1 %tobool.i.i.i, label %pm_runtime_active.exit.i.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !444

pm_runtime_active.exit.i.i.if.end.i.i_crit_edge:  ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %pm_runtime_active.exit.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %num_registers.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %28, i32 0, i32 5
  %34 = ptrtoint ptr %num_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_registers.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add37.i)
  %cmp.not.i.i = icmp ugt i32 %35, %add37.i
  br i1 %cmp.not.i.i, label %if.end27.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i, align 8
  %dev26.i.i = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.22, i32 noundef %add37.i) #16
  br label %vc4_hdmi_read.exit.i

if.end27.i.i:                                     ; preds = %if.end.i.i
  %registers.i.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %28, i32 0, i32 4
  %38 = ptrtoint ptr %registers.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %registers.i.i, align 8
  %reg28.i.i = getelementptr %struct.vc4_hdmi_register, ptr %39, i32 %add37.i, i32 1
  %40 = ptrtoint ptr %reg28.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg28.i.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %41, label %if.end27.i.i.do.end34.i.i_crit_edge [
    i32 2, label %if.end27.i.i.__vc4_hdmi_get_field_base.exit.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
    i32 4, label %sw.bb2.i.i.i
    i32 3, label %sw.bb3.i.i.i
    i32 5, label %sw.bb4.i.i.i
    i32 6, label %sw.bb5.i.i.i
    i32 7, label %sw.bb6.i.i.i
    i32 8, label %sw.bb7.i.i.i
  ]

if.end27.i.i.__vc4_hdmi_get_field_base.exit.i.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i.i

if.end27.i.i.do.end34.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb6.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__vc4_hdmi_get_field_base.exit.i.i

__vc4_hdmi_get_field_base.exit.i.i:               ; preds = %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.end27.i.i.__vc4_hdmi_get_field_base.exit.i.i_crit_edge
  %retval.0.i.in.i.i = phi ptr [ %rm_regs.i.i.i, %sw.bb7.i.i.i ], [ %ram_regs.i.i.i, %sw.bb6.i.i.i ], [ %phy_regs.i.i.i, %sw.bb5.i.i.i ], [ %dvp_regs.i.i.i, %sw.bb4.i.i.i ], [ %cec_regs.i.i.i, %sw.bb3.i.i.i ], [ %csc_regs.i.i.i, %sw.bb2.i.i.i ], [ %hdmicore_regs.i.i.i, %sw.bb1.i.i.i ], [ %hd_regs.i.i.i, %if.end27.i.i.__vc4_hdmi_get_field_base.exit.i.i_crit_edge ]
  %43 = ptrtoint ptr %retval.0.i.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %retval.0.i.i.i = load ptr, ptr %retval.0.i.in.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool30.not.i.i, label %__vc4_hdmi_get_field_base.exit.i.i.do.end34.i.i_crit_edge, label %if.end37.i.i

__vc4_hdmi_get_field_base.exit.i.i.do.end34.i.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i.i

do.end34.i.i:                                     ; preds = %__vc4_hdmi_get_field_base.exit.i.i.do.end34.i.i_crit_edge, %if.end27.i.i.do.end34.i.i_crit_edge
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 8
  %dev36.i.i = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i.i, ptr noundef nonnull @.str.41, i32 noundef %add37.i) #16
  br label %vc4_hdmi_read.exit.i

if.end37.i.i:                                     ; preds = %__vc4_hdmi_get_field_base.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i.i = getelementptr %struct.vc4_hdmi_register, ptr %39, i32 %add37.i, i32 2
  %46 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i.i, i32 %47
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !445
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit.i

vc4_hdmi_read.exit.i:                             ; preds = %if.end37.i.i, %do.end34.i.i, %do.end24.i.i
  %retval.0.i.i3 = phi i32 [ 0, %do.end24.i.i ], [ %49, %if.end37.i.i ], [ 0, %do.end34.i.i ]
  %conv.i = trunc i32 %retval.0.i.i3 to i8
  %arrayidx.i = getelementptr %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 19, i32 6, i32 %i.083.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %shr41.i = lshr i32 %retval.0.i.i3, 8
  %conv43.i = trunc i32 %shr41.i to i8
  %add45.i = or i32 %i.083.i, 1
  %arrayidx46.i = getelementptr %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 19, i32 6, i32 %add45.i
  %51 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv43.i, ptr %arrayidx46.i, align 1
  %shr47.i = lshr i32 %retval.0.i.i3, 16
  %conv49.i = trunc i32 %shr47.i to i8
  %add51.i = or i32 %i.083.i, 2
  %arrayidx52.i = getelementptr %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 19, i32 6, i32 %add51.i
  %52 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv49.i, ptr %arrayidx52.i, align 1
  %shr53.i = lshr i32 %retval.0.i.i3, 24
  %conv55.i = trunc i32 %shr53.i to i8
  %add57.i = or i32 %i.083.i, 3
  %arrayidx58.i = getelementptr %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 19, i32 6, i32 %add57.i
  %53 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv55.i, ptr %arrayidx58.i, align 1
  %add59.i = add i32 %i.083.i, 4
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 8
  %cmp35.i = icmp ult i32 %add59.i, %55
  br i1 %cmp35.i, label %vc4_hdmi_read.exit.i.for.body.i_crit_edge, label %vc4_cec_read_msg.exit

vc4_hdmi_read.exit.i.for.body.i_crit_edge:        ; preds = %vc4_hdmi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

vc4_cec_read_msg.exit:                            ; preds = %vc4_hdmi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %retval.0.i, 2097152
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 1, i32 noundef %or)
  %and = and i32 %retval.0.i, -2097153
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 1, i32 noundef %and)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_cec_irq_handler_tx_bare_locked(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !449

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1925, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %1 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i, label %if.end.if.end.i_crit_edge, label %pm_runtime_active.exit.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %if.end
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %2, i32 0, i32 5
  %8 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not.i = icmp ugt i32 %9, 1
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %13, i32 1, i32 1
  %14 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg28.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %15, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %17 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %18 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 1) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %13, i32 1, i32 2
  %20 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %21
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %23, %if.end37.i ], [ 0, %do.end34.i ]
  %cec_tx_ok = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 20
  %and = lshr i32 %retval.0.i, 30
  %24 = trunc i32 %and to i8
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %cec_tx_ok to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %cec_tx_ok, align 8
  %and26 = and i32 %retval.0.i, -1048577
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 1, i32 noundef %and26)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vc4_hdmi_audio_cpu_dai_probe(ptr nocapture noundef %dai) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i.i, align 4
  %dma_data = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %5, i32 0, i32 5
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %6 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %7 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_audio_startup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call1 = tail call fastcc zeroext i1 @vc4_hdmi_audio_can_stream(ptr noundef %1)
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %streaming = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %streaming, align 4
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 30
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 44, i32 noundef 33287)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call5) #13
  %variant = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant, align 4
  %phy_rng_enable = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %phy_rng_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_rng_enable, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %6(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_audio_prepare(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %daifmt, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %frame.i = alloca %union.hdmi_infoframe, align 4
  %n.i = alloca i32, align 4
  %m.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %encoder1 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 3
  %sample_rate3 = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %sample_rate3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample_rate3, align 4
  %channels4 = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 4
  %4 = ptrtoint ptr %channels4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vc4_hdmi_audio_prepare.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vc4_hdmi_audio_prepare, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !462

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 3
  %6 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sample_width, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vc4_hdmi_audio_prepare.__UNIQUE_ID_ddebug627, ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.92, i32 noundef %3, i32 noundef %7, i32 noundef %5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %call8 = tail call fastcc zeroext i1 @vc4_hdmi_audio_can_stream(ptr noundef %1)
  br i1 %call8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %audio_clock.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %audio_clock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %audio_clock.i, align 8
  %call.i = tail call i32 @clk_get_rate(ptr noundef %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #13
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %n.i, align 4, !annotation !463
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i) #13
  %11 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %m.i, align 4, !annotation !463
  call void @rational_best_approximation(i32 noundef %call.i, i32 noundef %3, i32 noundef 16777215, i32 noundef 256, ptr noundef nonnull %n.i, ptr noundef nonnull %m.i) #13
  %hw_lock.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 30
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  %12 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n.i, align 4
  %14 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m.i, align 4
  %sub.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.i)
  %tobool93.not.i = icmp ult i32 %sub.i, 256
  br i1 %tobool93.not.i, label %if.end11.vc4_hdmi_audio_set_mai_clock.exit_crit_edge, label %do.end114.i, !prof !444

if.end11.vc4_hdmi_audio_set_mai_clock.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_audio_set_mai_clock.exit

do.end114.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1372, i32 noundef 9, ptr noundef null) #13
  br label %vc4_hdmi_audio_set_mai_clock.exit

vc4_hdmi_audio_set_mai_clock.exit:                ; preds = %do.end114.i, %if.end11.vc4_hdmi_audio_set_mai_clock.exit_crit_edge
  %16 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m.i, align 4
  %shl72.i = shl i32 %13, 8
  %sub153.i = add i32 %17, 255
  %and155.i = and i32 %sub153.i, 255
  %or.i = or i32 %and155.i, %shl72.i
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 48, i32 noundef %or.i) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call3.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #13
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock.i) #13
  %shl = shl i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %shl)
  %tobool37.not = icmp ult i32 %shl, 256
  br i1 %tobool37.not, label %vc4_hdmi_audio_set_mai_clock.exit.do.end91_crit_edge, label %do.end58, !prof !444

vc4_hdmi_audio_set_mai_clock.exit.do.end91_crit_edge: ; preds = %vc4_hdmi_audio_set_mai_clock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end91

do.end58:                                         ; preds = %vc4_hdmi_audio_set_mai_clock.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1576, i32 noundef 9, ptr noundef null) #13
  br label %do.end91

do.end91:                                         ; preds = %do.end58, %vc4_hdmi_audio_set_mai_clock.exit.do.end91_crit_edge
  %and94 = and i32 %shl, 240
  %or96 = or i32 %and94, 12296
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 44, i32 noundef %or96)
  %18 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %3, label %sw.default.i [
    i32 8000, label %do.end91.sample_rate_to_mai_fmt.exit_crit_edge
    i32 11025, label %sw.bb1.i
    i32 12000, label %sw.bb2.i
    i32 16000, label %sw.bb3.i
    i32 22050, label %sw.bb4.i
    i32 24000, label %sw.bb5.i
    i32 32000, label %sw.bb6.i
    i32 44100, label %sw.bb7.i
    i32 48000, label %sw.bb8.i
    i32 64000, label %sw.bb9.i
    i32 88200, label %sw.bb10.i
    i32 96000, label %sw.bb11.i
    i32 128000, label %sw.bb12.i
    i32 176400, label %sw.bb13.i
    i32 192000, label %sw.bb14.i
  ]

do.end91.sample_rate_to_mai_fmt.exit_crit_edge:   ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb1.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb2.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb3.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb4.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb5.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb6.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb7.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb8.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb9.i:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb10.i:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb11.i:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb12.i:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb13.i:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.bb14.i:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sw.default.i:                                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample_rate_to_mai_fmt.exit

sample_rate_to_mai_fmt.exit:                      ; preds = %sw.default.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end91.sample_rate_to_mai_fmt.exit_crit_edge
  %retval.0.i835 = phi i32 [ 0, %sw.default.i ], [ 3840, %sw.bb14.i ], [ 3584, %sw.bb13.i ], [ 3328, %sw.bb12.i ], [ 3072, %sw.bb11.i ], [ 2816, %sw.bb10.i ], [ 2560, %sw.bb9.i ], [ 2304, %sw.bb8.i ], [ 2048, %sw.bb7.i ], [ 1792, %sw.bb6.i ], [ 1536, %sw.bb5.i ], [ 1280, %sw.bb4.i ], [ 1024, %sw.bb3.i ], [ 768, %sw.bb2.i ], [ 512, %sw.bb1.i ], [ 256, %do.end91.sample_rate_to_mai_fmt.exit_crit_edge ]
  %iec = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 1
  %19 = ptrtoint ptr %iec to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %iec, align 4
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool100.not = icmp eq i8 %21, 0
  br i1 %tobool100.not, label %sample_rate_to_mai_fmt.exit.if.else_crit_edge, label %land.lhs.true

sample_rate_to_mai_fmt.exit.if.else_crit_edge:    ; preds = %sample_rate_to_mai_fmt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %sample_rate_to_mai_fmt.exit
  %22 = ptrtoint ptr %channels4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp102 = icmp eq i32 %23, 8
  br i1 %cmp102, label %land.lhs.true.if.end105_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.if.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sample_rate_to_mai_fmt.exit.if.else_crit_edge
  br label %if.end105

if.end105:                                        ; preds = %if.else, %land.lhs.true.if.end105_crit_edge
  %mai_audio_format.0 = phi i32 [ 131072, %if.else ], [ 13107200, %land.lhs.true.if.end105_crit_edge ]
  %or264 = or i32 %mai_audio_format.0, %retval.0.i835
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 46, i32 noundef %or264)
  %sub332 = sub i32 32, %5
  %shr = lshr i32 -1, %sub332
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %shr)
  %tobool353.not = icmp ult i32 %shr, 256
  br i1 %tobool353.not, label %if.end105.do.end409_crit_edge, label %do.end374, !prof !444

if.end105.do.end409_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end409

do.end374:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1601, i32 noundef 9, ptr noundef null) #13
  br label %do.end409

do.end409:                                        ; preds = %do.end374, %if.end105.do.end409_crit_edge
  %and412 = and i32 %shr, 255
  %or413 = or i32 %and412, 553656320
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 49, i32 noundef 269488144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shr)
  %tobool700.not = icmp ult i32 %shr, 65536
  br i1 %tobool700.not, label %do.end409.do.end756_crit_edge, label %if.end727, !prof !444

do.end409.do.end756_crit_edge:                    ; preds = %do.end409
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end756

if.end727:                                        ; preds = %do.end409
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1613, i32 noundef 9, ptr noundef null) #13
  br label %do.end756

do.end756:                                        ; preds = %if.end727, %do.end409.do.end756_crit_edge
  %and759 = and i32 %shr, 65535
  %or760 = or i32 %and759, 201326592
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 43, i32 noundef %or760)
  %variant = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant, align 4
  %channel_map761 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %channel_map761 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %channel_map761, align 4
  %call762 = call i32 %27(ptr noundef %1, i32 noundef %shr) #13
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 42, i32 noundef %call762)
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 0, i32 noundef %or413)
  %saved_adjusted_mode.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %do.end756.if.end56.i_crit_edge, label %land.rhs.i

do.end756.if.end56.i_crit_edge:                   ; preds = %do.end756
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

land.rhs.i:                                       ; preds = %do.end756
  %dep_map.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 31, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !449

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1382, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool27.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool27.not.i, label %if.end.i.if.end56.i_crit_edge, label %land.rhs28.i

if.end.i.if.end56.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

land.rhs28.i:                                     ; preds = %if.end.i
  %dep_map29.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 30, i32 0, i32 0, i32 4
  %call.i438.i = call i32 @lock_is_held_type(ptr noundef %dep_map29.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i438.i)
  %cmp31.not.i = icmp eq i32 %call.i438.i, 0
  br i1 %cmp31.not.i, label %do.end50.i, label %land.rhs28.i.if.end56.i_crit_edge, !prof !449

land.rhs28.i.if.end56.i_crit_edge:                ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

do.end50.i:                                       ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1383, i32 noundef 9, ptr noundef null) #13
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end50.i, %land.rhs28.i.if.end56.i_crit_edge, %if.end.i.if.end56.i_crit_edge, %do.end756.if.end56.i_crit_edge
  %mul.i = shl i32 %3, 7
  %div.i = udiv i32 %mul.i, 1000
  %29 = ptrtoint ptr %saved_adjusted_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %saved_adjusted_mode.i, align 4
  %mul66.i = mul i32 %30, 1000
  %conv.i = sext i32 %mul66.i to i64
  %conv67.i = zext i32 %div.i to i64
  %mul68.i = mul nsw i64 %conv.i, %conv67.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul68.i)
  %cmp243.i = icmp ult i64 %mul68.i, 4294967296
  br i1 %cmp243.i, label %if.then251.i, label %if.else257.i, !prof !444

if.then251.i:                                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv252.i = trunc i64 %mul68.i to i32
  %div255.i = udiv i32 %conv252.i, %mul.i
  br label %if.end261.i

if.else257.i:                                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  %31 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %mul68.i) #17, !srcloc !464
  %asmresult1.i.i = extractvalue { i64, i64 } %31, 1
  %extract.t465.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end261.i

if.end261.i:                                      ; preds = %if.else257.i, %if.then251.i
  %tmp.0.off0.i = phi i32 [ %div255.i, %if.then251.i ], [ %extract.t465.i, %if.else257.i ]
  %and282.i = and i32 %div.i, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282.i)
  %tobool283.not.i = icmp eq i32 %and282.i, 0
  br i1 %tobool283.not.i, label %if.end261.i.vc4_hdmi_set_n_cts.exit_crit_edge, label %do.end304.i, !prof !444

if.end261.i.vc4_hdmi_set_n_cts.exit_crit_edge:    ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_set_n_cts.exit

do.end304.i:                                      ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1392, i32 noundef 9, ptr noundef null) #13
  br label %vc4_hdmi_set_n_cts.exit

vc4_hdmi_set_n_cts.exit:                          ; preds = %do.end304.i, %if.end261.i.vc4_hdmi_set_n_cts.exit_crit_edge
  %and342.i = and i32 %div.i, 1048575
  %or343.i = or i32 %and342.i, 16777216
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 22, i32 noundef %or343.i) #13
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 30, i32 noundef %tmp.0.off0.i) #13
  call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 31, i32 noundef %tmp.0.off0.i) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock.i, i32 noundef %call16) #13
  %infoframe = getelementptr %struct.vc4_hdmi_audio, ptr %1, i32 0, i32 6
  %32 = call ptr @memcpy(ptr %infoframe, ptr %params, i32 28)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #13
  %33 = getelementptr inbounds i8, ptr %frame.i, i32 28
  %34 = call ptr @memset(ptr %33, i32 255, i32 40)
  %35 = call ptr @memcpy(ptr %frame.i, ptr %infoframe, i32 28)
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %encoder1, ptr noundef nonnull %frame.i) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #13
  call void @mutex_unlock(ptr noundef %mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %vc4_hdmi_set_n_cts.exit, %if.then9
  %retval.0 = phi i32 [ 0, %vc4_hdmi_set_n_cts.exit ], [ -22, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 44, i32 noundef 32774)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #13
  %variant = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %phy_rng_disable = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %phy_rng_disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_rng_disable, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %streaming = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %streaming, align 4
  %encoder1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 3
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 31, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !449

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1468, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %streaming, align 4
  %call27.i = tail call fastcc i32 @vc4_hdmi_stop_packet(ptr noundef %encoder1.i, i32 noundef 132, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end.i.vc4_hdmi_audio_reset.exit_crit_edge, label %do.end32.i

if.end.i.vc4_hdmi_audio_reset.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %vc4_hdmi_audio_reset.exit

do.end32.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.94, i32 noundef %call27.i) #16
  br label %vc4_hdmi_audio_reset.exit

vc4_hdmi_audio_reset.exit:                        ; preds = %do.end32.i, %if.end.i.vc4_hdmi_audio_reset.exit_crit_edge
  %call39.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 44, i32 noundef 1) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 44, i32 noundef 2) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %1, i32 noundef 44, i32 noundef 512) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call39.i) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_audio_get_eld(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %2 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %eld = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4, i32 42
  %3 = call ptr @memcpy(ptr %buf, ptr %eld, i32 %2)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vc4_hdmi_audio_can_stream(ptr noundef %vc4_hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 31, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !449

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1412, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %output_enabled = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 33
  %1 = ptrtoint ptr %output_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %output_enabled, align 4, !range !440
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool24.not = icmp eq i8 %2, 0
  br i1 %tobool24.not, label %if.end.return_crit_edge, label %if.end26

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end26:                                         ; preds = %if.end
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %3 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 12, i32 18
  %7 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i, label %if.end26.if.end.i_crit_edge, label %pm_runtime_active.exit.i

if.end26.if.end.i_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %if.end26
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 12, i32 15
  %9 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %if.end26.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 5
  %10 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %11)
  %cmp.not.i = icmp ugt i32 %11, 51
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 51) #16
  br label %return

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 4
  %14 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %15, i32 51, i32 1
  %16 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg28.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %17, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %19 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 51) #16
  br label %return

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %15, i32 51, i32 2
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %phi.cmp = icmp ne i32 %25, 0
  br label %return

return:                                           ; preds = %if.end37.i, %do.end34.i, %do.end24.i, %if.end.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end.return_crit_edge ], [ false, %do.end24.i ], [ %phi.cmp, %if.end37.i ], [ false, %do.end34.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_print_regset32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_init_resources(ptr nocapture noundef %vc4_hdmi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @vc4_ioremap_regs(ptr noundef %1, i32 noundef 0) #13
  %hdmicore_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  %2 = ptrtoint ptr %hdmicore_regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %hdmicore_regs, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @vc4_ioremap_regs(ptr noundef %1, i32 noundef 1) #13
  %hd_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  %4 = ptrtoint ptr %hd_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %hd_regs, align 4
  %cmp.i69 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %hd_regset = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 29
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %6 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant1.i, align 4
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_registers.i, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 8) #13
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end13.cleanup_crit_edge, label %if.end7.i.i.i, !prof !449

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end13
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #19
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %13 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp43.not.i = icmp eq i32 %14, 0
  br i1 %cmp43.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc11.i, %cleanup.i.for.body.i_crit_edge ]
  %count.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.1.i, %cleanup.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %registers.i, align 8
  %reg3.i = getelementptr %struct.vc4_hdmi_register, ptr %16, i32 %i.045.i, i32 1
  %17 = ptrtoint ptr %reg3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp4.not.i = icmp eq i32 %18, 2
  br i1 %cmp4.not.i, label %if.end6.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end6.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.vc4_hdmi_register, ptr %16, i32 %i.045.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr %struct.debugfs_reg32, ptr %call8.i.i.i, i32 %count.044.i
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx7.i, align 8
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %16, i32 %i.045.i, i32 2
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %offset10.i = getelementptr %struct.debugfs_reg32, ptr %call8.i.i.i, i32 %count.044.i, i32 1
  %24 = ptrtoint ptr %offset10.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %offset10.i, align 4
  %inc.i = add i32 %count.044.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end6.i, %for.body.i.cleanup.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.end6.i ], [ %count.044.i, %for.body.i.cleanup.i_crit_edge ]
  %inc11.i = add nuw i32 %i.045.i, 1
  %25 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_registers.i, align 4
  %cmp.i70 = icmp ult i32 %inc11.i, %26
  br i1 %cmp.i70, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %count.1.i, %cleanup.i.for.end.i_crit_edge ]
  %mul.i = shl i32 %count.0.lcssa.i, 3
  %call12.i = tail call noalias ptr @krealloc(ptr noundef nonnull %call8.i.i.i, i32 noundef %mul.i, i32 noundef 3264) #20
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %for.end.i.cleanup_crit_edge, label %if.end16

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %for.end.i
  %27 = ptrtoint ptr %hd_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hd_regs, align 4
  %base.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 29, i32 2
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %base.i, align 4
  %30 = ptrtoint ptr %hd_regset to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call12.i, ptr %hd_regset, align 4
  %nregs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 29, i32 1
  %31 = ptrtoint ptr %nregs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %count.0.lcssa.i, ptr %nregs.i, align 4
  %hdmi_regset = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 28
  %32 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %variant1.i, align 4
  %num_registers.i72 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %num_registers.i72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_registers.i72, align 4
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 8) #13
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.end16.cleanup_crit_edge, label %if.end7.i.i.i103, !prof !449

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i.i103:                                 ; preds = %if.end16
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i.i102 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #19
  %tobool.not.i105 = icmp eq ptr %call8.i.i.i102, null
  br i1 %tobool.not.i105, label %if.end7.i.i.i103.cleanup_crit_edge, label %for.cond.preheader.i109

if.end7.i.i.i103.cleanup_crit_edge:               ; preds = %if.end7.i.i.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i109:                          ; preds = %if.end7.i.i.i103
  %39 = ptrtoint ptr %num_registers.i72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_registers.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp43.not.i108 = icmp eq i32 %40, 0
  br i1 %cmp43.not.i108, label %for.cond.preheader.i109.for.end.i131_crit_edge, label %for.body.lr.ph.i111

for.cond.preheader.i109.for.end.i131_crit_edge:   ; preds = %for.cond.preheader.i109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i131

for.body.lr.ph.i111:                              ; preds = %for.cond.preheader.i109
  %registers.i110 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %33, i32 0, i32 4
  br label %for.body.i116

for.body.i116:                                    ; preds = %cleanup.i126.for.body.i116_crit_edge, %for.body.lr.ph.i111
  %i.045.i112 = phi i32 [ 0, %for.body.lr.ph.i111 ], [ %inc11.i124, %cleanup.i126.for.body.i116_crit_edge ]
  %count.044.i113 = phi i32 [ 0, %for.body.lr.ph.i111 ], [ %count.1.i123, %cleanup.i126.for.body.i116_crit_edge ]
  %41 = ptrtoint ptr %registers.i110 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %registers.i110, align 8
  %reg3.i114 = getelementptr %struct.vc4_hdmi_register, ptr %42, i32 %i.045.i112, i32 1
  %43 = ptrtoint ptr %reg3.i114 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg3.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp4.not.i115 = icmp eq i32 %44, 1
  br i1 %cmp4.not.i115, label %if.end6.i122, label %for.body.i116.cleanup.i126_crit_edge

for.body.i116.cleanup.i126_crit_edge:             ; preds = %for.body.i116
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i126

if.end6.i122:                                     ; preds = %for.body.i116
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i117 = getelementptr %struct.vc4_hdmi_register, ptr %42, i32 %i.045.i112
  %45 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i117, align 4
  %arrayidx7.i118 = getelementptr %struct.debugfs_reg32, ptr %call8.i.i.i102, i32 %count.044.i113
  %47 = ptrtoint ptr %arrayidx7.i118 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %arrayidx7.i118, align 8
  %offset.i119 = getelementptr %struct.vc4_hdmi_register, ptr %42, i32 %i.045.i112, i32 2
  %48 = ptrtoint ptr %offset.i119 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i119, align 4
  %offset10.i120 = getelementptr %struct.debugfs_reg32, ptr %call8.i.i.i102, i32 %count.044.i113, i32 1
  %50 = ptrtoint ptr %offset10.i120 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %offset10.i120, align 4
  %inc.i121 = add i32 %count.044.i113, 1
  br label %cleanup.i126

cleanup.i126:                                     ; preds = %if.end6.i122, %for.body.i116.cleanup.i126_crit_edge
  %count.1.i123 = phi i32 [ %inc.i121, %if.end6.i122 ], [ %count.044.i113, %for.body.i116.cleanup.i126_crit_edge ]
  %inc11.i124 = add nuw i32 %i.045.i112, 1
  %51 = ptrtoint ptr %num_registers.i72 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_registers.i72, align 4
  %cmp.i125 = icmp ult i32 %inc11.i124, %52
  br i1 %cmp.i125, label %cleanup.i126.for.body.i116_crit_edge, label %cleanup.i126.for.end.i131_crit_edge

cleanup.i126.for.end.i131_crit_edge:              ; preds = %cleanup.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i131

cleanup.i126.for.body.i116_crit_edge:             ; preds = %cleanup.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i116

for.end.i131:                                     ; preds = %cleanup.i126.for.end.i131_crit_edge, %for.cond.preheader.i109.for.end.i131_crit_edge
  %count.0.lcssa.i127 = phi i32 [ 0, %for.cond.preheader.i109.for.end.i131_crit_edge ], [ %count.1.i123, %cleanup.i126.for.end.i131_crit_edge ]
  %mul.i128 = shl i32 %count.0.lcssa.i127, 3
  %call12.i129 = tail call noalias ptr @krealloc(ptr noundef nonnull %call8.i.i.i102, i32 noundef %mul.i128, i32 noundef 3264) #20
  %tobool13.not.i130 = icmp eq ptr %call12.i129, null
  br i1 %tobool13.not.i130, label %for.end.i131.cleanup_crit_edge, label %if.end20

for.end.i131.cleanup_crit_edge:                   ; preds = %for.end.i131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %for.end.i131
  %53 = ptrtoint ptr %hdmicore_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdmicore_regs, align 8
  %base.i133 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 28, i32 2
  %55 = ptrtoint ptr %base.i133 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %base.i133, align 4
  %56 = ptrtoint ptr %hdmi_regset to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call12.i129, ptr %hdmi_regset, align 4
  %nregs.i134 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 28, i32 1
  %57 = ptrtoint ptr %nregs.i134 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %count.0.lcssa.i127, ptr %nregs.i134, align 4
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.155) #13
  %pixel_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 23
  %58 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call21, ptr %pixel_clock, align 8
  %cmp.i137 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end20
  %cmp.not = icmp eq ptr %call21, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then24.cleanup_crit_edge, label %if.then27

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.156) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.157) #13
  %hsm_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 24
  %60 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call30, ptr %hsm_clock, align 4
  %cmp.i138 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.158) #13
  %61 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hsm_clock, align 4
  %63 = ptrtoint ptr %62 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %audio_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 25
  %64 = ptrtoint ptr %audio_clock to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call30, ptr %audio_clock, align 8
  %cec_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 22
  %65 = ptrtoint ptr %cec_clock to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call30, ptr %cec_clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33, %if.then27, %if.then24.cleanup_crit_edge, %for.end.i131.cleanup_crit_edge, %if.end7.i.i.i103.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end7.i.i.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %5, %if.then10 ], [ %63, %if.then33 ], [ 0, %if.end36 ], [ %59, %if.then27 ], [ -517, %if.then24.cleanup_crit_edge ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -12, %if.end7.i.i.i103.cleanup_crit_edge ], [ -12, %for.end.i131.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_reset(ptr noundef %vc4_hdmi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 50, i32 noundef 4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 50, i32 noundef 0)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 50, i32 noundef 1)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 59, i32 noundef 3)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 59, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_csc_setup(ptr noundef %vc4_hdmi, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  br i1 %enable, label %if.end106, label %entry.if.end132_crit_edge

entry.if.end132_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.end106:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 23, i32 noundef 0)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 24, i32 noundef 16778976)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 25, i32 noundef 115343360)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 26, i32 noundef 16777216)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 27, i32 noundef 1760)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 28, i32 noundef 16777216)
  br label %if.end132

if.end132:                                        ; preds = %if.end106, %entry.if.end132_crit_edge
  %csc_ctl.0 = phi i32 [ 47, %if.end106 ], [ 32, %entry.if.end132_crit_edge ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 29, i32 noundef %csc_ctl.0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_hdmi_set_timings(ptr noundef %vc4_hdmi, ptr nocapture noundef readnone %state, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and10 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond = select i1 %tobool11.not, i32 1, i32 2
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %2 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %crtc_vsync_end, align 2
  %conv = zext i16 %3 to i32
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %4 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %crtc_vsync_start, align 4
  %conv24 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv, %conv24
  %6 = and i32 %sub, 4064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool26.not = icmp eq i32 %6, 0
  br i1 %tobool26.not, label %entry.if.end_crit_edge, label %do.end43, !prof !444

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 816, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end43, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %crtc_vsync_end, align 2
  %9 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_vsync_start, align 4
  %conv67 = zext i16 %10 to i32
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %11 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_vdisplay, align 2
  %conv113 = zext i16 %12 to i32
  %sub114 = sub nsw i32 %conv67, %conv113
  %13 = and i32 %sub114, 524160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool117.not = icmp eq i32 %13, 0
  br i1 %tobool117.not, label %if.end.if.end144_crit_edge, label %do.end138, !prof !444

if.end.if.end144_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

do.end138:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 818, i32 noundef 9, ptr noundef null) #13
  br label %if.end144

if.end144:                                        ; preds = %do.end138, %if.end.if.end144_crit_edge
  %14 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %crtc_vsync_start, align 4
  %16 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %crtc_vdisplay, align 2
  %conv163 = zext i16 %17 to i32
  %and212 = and i32 %conv163, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.end144.if.end240_crit_edge, label %do.end234, !prof !444

if.end144.if.end240_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240

do.end234:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 819, i32 noundef 9, ptr noundef null) #13
  br label %if.end240

if.end240:                                        ; preds = %do.end234, %if.end144.if.end240_crit_edge
  %18 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %crtc_vdisplay, align 2
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %20 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %crtc_vtotal, align 4
  %conv362 = zext i16 %21 to i32
  %22 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %crtc_vsync_end, align 2
  %conv364 = zext i16 %23 to i32
  %sub365 = sub nsw i32 %conv362, %conv364
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub365)
  %tobool368.not = icmp ult i32 %sub365, 512
  br i1 %tobool368.not, label %if.end240.if.end395_crit_edge, label %do.end389, !prof !444

if.end240.if.end395_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end395

do.end389:                                        ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 822, i32 noundef 9, ptr noundef null) #13
  br label %if.end395

if.end395:                                        ; preds = %do.end389, %if.end240.if.end395_crit_edge
  %24 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %crtc_vtotal, align 4
  %conv412 = zext i16 %25 to i32
  %26 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %crtc_vsync_end, align 2
  %conv414 = zext i16 %27 to i32
  %28 = shl i32 %1, 27
  %29 = ashr i32 %28, 31
  %.neg = add nsw i32 %29, %conv412
  %sub534 = sub nsw i32 %.neg, %conv414
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub534)
  %tobool537.not = icmp ult i32 %sub534, 512
  br i1 %tobool537.not, label %if.end395.if.end564_crit_edge, label %do.end558, !prof !444

if.end395.if.end564_crit_edge:                    ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end564

do.end558:                                        ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 827, i32 noundef 9, ptr noundef null) #13
  br label %if.end564

if.end564:                                        ; preds = %do.end558, %if.end395.if.end564_crit_edge
  %30 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %crtc_vtotal, align 4
  %32 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %crtc_vsync_end, align 2
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call627 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %and2 = shl i32 %1, 12
  %34 = and i32 %and2, 16384
  %and = shl i32 %1, 13
  %35 = and i32 %and, 8192
  %or638 = or i32 %34, %35
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %36 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay, align 4
  %conv656 = zext i16 %37 to i32
  %mul = mul nuw nsw i32 %cond, %conv656
  %and658 = and i32 %mul, 253952
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and658)
  %tobool659.not = icmp eq i32 %and658, 0
  br i1 %tobool659.not, label %if.end564.do.end721_crit_edge, label %do.end680, !prof !444

if.end564.do.end721_crit_edge:                    ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end721

do.end680:                                        ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 836, i32 noundef 9, ptr noundef null) #13
  br label %do.end721

do.end721:                                        ; preds = %do.end680, %if.end564.do.end721_crit_edge
  %38 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hdisplay, align 4
  %conv703 = zext i16 %39 to i32
  %mul704 = mul nuw nsw i32 %cond, %conv703
  %and727 = and i32 %mul704, 8191
  %or728 = or i32 %or638, %and727
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 38, i32 noundef %or728)
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %40 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %htotal, align 2
  %conv746 = zext i16 %41 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %42 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hsync_end, align 4
  %conv747 = zext i16 %43 to i32
  %sub748 = sub nsw i32 %conv746, %conv747
  %mul749 = mul nsw i32 %sub748, %cond
  %44 = and i32 %mul749, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool752.not = icmp eq i32 %44, 0
  br i1 %tobool752.not, label %do.end721.if.end779_crit_edge, label %do.end773, !prof !444

do.end721.if.end779_crit_edge:                    ; preds = %do.end721
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end779

do.end773:                                        ; preds = %do.end721
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 841, i32 noundef 9, ptr noundef null) #13
  br label %if.end779

if.end779:                                        ; preds = %do.end773, %do.end721.if.end779_crit_edge
  %45 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %htotal, align 2
  %47 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hsync_end, align 4
  %conv798 = zext i16 %48 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %49 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hsync_start, align 2
  %conv849 = zext i16 %50 to i32
  %sub850 = sub nsw i32 %conv798, %conv849
  %mul851 = mul nsw i32 %sub850, %cond
  %51 = and i32 %mul851, 4193280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool854.not = icmp eq i32 %51, 0
  br i1 %tobool854.not, label %if.end779.if.end881_crit_edge, label %do.end875, !prof !444

if.end779.if.end881_crit_edge:                    ; preds = %if.end779
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end881

do.end875:                                        ; preds = %if.end779
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 844, i32 noundef 9, ptr noundef null) #13
  br label %if.end881

if.end881:                                        ; preds = %do.end875, %if.end779.if.end881_crit_edge
  %52 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hsync_end, align 4
  %54 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hsync_start, align 2
  %conv900 = zext i16 %55 to i32
  %56 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hdisplay, align 4
  %conv953 = zext i16 %57 to i32
  %sub954 = sub nsw i32 %conv900, %conv953
  %mul955 = mul nsw i32 %sub954, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul955)
  %tobool958.not = icmp ult i32 %mul955, 1024
  br i1 %tobool958.not, label %if.end881.do.end1026_crit_edge, label %do.end979, !prof !444

if.end881.do.end1026_crit_edge:                   ; preds = %if.end881
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1026

do.end979:                                        ; preds = %if.end881
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 847, i32 noundef 9, ptr noundef null) #13
  br label %do.end1026

do.end1026:                                       ; preds = %do.end979, %if.end881.do.end1026_crit_edge
  %58 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hsync_start, align 2
  %conv1002 = zext i16 %59 to i32
  %60 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hdisplay, align 4
  %conv1004 = zext i16 %61 to i32
  %sub1005 = sub nsw i32 %conv1002, %conv1004
  %mul1006 = mul nsw i32 %sub1005, %cond
  %conv898 = zext i16 %53 to i32
  %sub901 = sub nsw i32 %conv898, %conv900
  %mul902 = mul nsw i32 %sub901, %cond
  %conv796 = zext i16 %46 to i32
  %sub799 = sub nsw i32 %conv796, %conv798
  %mul800 = mul nsw i32 %sub799, %cond
  %conv581 = zext i16 %31 to i32
  %.neg1158 = add nsw i32 %29, %conv581
  %conv583 = zext i16 %33 to i32
  %sub587 = sub nsw i32 %.neg1158, %conv583
  %sub415 = sub nsw i32 %conv412, %conv414
  %conv161 = zext i16 %15 to i32
  %sub164 = sub nsw i32 %conv161, %conv163
  %conv65 = zext i16 %8 to i32
  %sub68 = sub nsw i32 %conv65, %conv67
  %shl828 = shl i32 %mul800, 20
  %and829 = and i32 %shl828, 1072693248
  %shl930 = shl nsw i32 %mul902, 10
  %and931 = and i32 %shl930, 1047552
  %or932 = or i32 %and931, %and829
  %and620 = and i32 %sub587, 511
  %and442 = and i32 %sub415, 511
  %shl92 = shl i32 %sub68, 20
  %and93 = and i32 %shl92, 32505856
  %shl190 = shl nsw i32 %sub164, 13
  %and191 = and i32 %shl190, 1040384
  %or = or i32 %and191, %and93
  %62 = and i16 %19, 8191
  %and277 = zext i16 %62 to i32
  %or278 = or i32 %or, %and277
  %and1035 = and i32 %mul1006, 1023
  %or1036 = or i32 %or932, %and1035
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 39, i32 noundef %or1036)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 76, i32 noundef %or278)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 77, i32 noundef %or278)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 78, i32 noundef %and620)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 79, i32 noundef %and442)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call627) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hdmi_phy_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hdmi_phy_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hdmi_phy_rng_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hdmi_phy_rng_disable(ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_channel_map(ptr nocapture noundef readnone %vc4_hdmi, i32 noundef %channel_mask) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.1 = shl i32 %channel_mask, 2
  %0 = and i32 %and.1, 8
  %and.2 = shl i32 %channel_mask, 5
  %1 = and i32 %and.2, 128
  %channel_map.1.2 = or i32 %1, %0
  %and.3 = and i32 %channel_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %or.3 = select i1 %tobool.not.3, i32 0, i32 1536
  %channel_map.1.3 = or i32 %or.3, %channel_map.1.2
  %and.4 = shl i32 %channel_mask, 10
  %2 = and i32 %and.4, 16384
  %channel_map.1.4 = or i32 %2, %channel_map.1.3
  %and.5 = and i32 %channel_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %or.5 = select i1 %tobool.not.5, i32 0, i32 163840
  %channel_map.1.5 = or i32 %or.5, %channel_map.1.4
  %and.6 = and i32 %channel_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %or.6 = select i1 %tobool.not.6, i32 0, i32 1572864
  %channel_map.1.6 = or i32 %or.6, %channel_map.1.5
  %and.7 = and i32 %channel_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %or.7 = select i1 %tobool.not.7, i32 0, i32 14680064
  %channel_map.1.7 = or i32 %or.7, %channel_map.1.6
  ret i32 %channel_map.1.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_hdmi_init_resources(ptr nocapture noundef %vc4_hdmi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.157) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call4 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %3, i32 noundef %add.i) #13
  %hdmicore_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  %6 = ptrtoint ptr %hdmicore_regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %hdmicore_regs, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.72) #13
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call9, align 4
  %end.i197 = getelementptr inbounds %struct.resource, ptr %call9, i32 0, i32 1
  %9 = ptrtoint ptr %end.i197 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i197, align 4
  %sub.i198 = sub i32 1, %8
  %add.i199 = add i32 %sub.i198, %10
  %call15 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %8, i32 noundef %add.i199) #13
  %hd_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  %11 = ptrtoint ptr %hd_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %hd_regs, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.184) #13
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %12 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call20, align 4
  %end.i200 = getelementptr inbounds %struct.resource, ptr %call20, i32 0, i32 1
  %14 = ptrtoint ptr %end.i200 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i200, align 4
  %sub.i201 = sub i32 1, %13
  %add.i202 = add i32 %sub.i201, %15
  %call26 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %13, i32 noundef %add.i202) #13
  %cec_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  %16 = ptrtoint ptr %cec_regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call26, ptr %cec_regs, align 8
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %call31 = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.185) #13
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %17 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call31, align 4
  %end.i203 = getelementptr inbounds %struct.resource, ptr %call31, i32 0, i32 1
  %19 = ptrtoint ptr %end.i203 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i203, align 4
  %sub.i204 = sub i32 1, %18
  %add.i205 = add i32 %sub.i204, %20
  %call37 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %18, i32 noundef %add.i205) #13
  %csc_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  %21 = ptrtoint ptr %csc_regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %csc_regs, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %if.end34.cleanup_crit_edge, label %if.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %call42 = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.186) #13
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %22 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call42, align 4
  %end.i206 = getelementptr inbounds %struct.resource, ptr %call42, i32 0, i32 1
  %24 = ptrtoint ptr %end.i206 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i206, align 4
  %sub.i207 = sub i32 1, %23
  %add.i208 = add i32 %sub.i207, %25
  %call48 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %23, i32 noundef %add.i208) #13
  %dvp_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  %26 = ptrtoint ptr %dvp_regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call48, ptr %dvp_regs, align 8
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %if.end45.cleanup_crit_edge, label %if.end52

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %call53 = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.187) #13
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %27 = ptrtoint ptr %call53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call53, align 4
  %end.i209 = getelementptr inbounds %struct.resource, ptr %call53, i32 0, i32 1
  %29 = ptrtoint ptr %end.i209 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i209, align 4
  %sub.i210 = sub i32 1, %28
  %add.i211 = add i32 %sub.i210, %30
  %call59 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %28, i32 noundef %add.i211) #13
  %phy_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  %31 = ptrtoint ptr %phy_regs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call59, ptr %phy_regs, align 4
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %if.end56.cleanup_crit_edge, label %if.end63

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end63:                                         ; preds = %if.end56
  %call64 = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.188) #13
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %if.end67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %32 = ptrtoint ptr %call64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call64, align 4
  %end.i212 = getelementptr inbounds %struct.resource, ptr %call64, i32 0, i32 1
  %34 = ptrtoint ptr %end.i212 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.i212, align 4
  %sub.i213 = sub i32 1, %33
  %add.i214 = add i32 %sub.i213, %35
  %call70 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %33, i32 noundef %add.i214) #13
  %ram_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  %36 = ptrtoint ptr %ram_regs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call70, ptr %ram_regs, align 8
  %tobool72.not = icmp eq ptr %call70, null
  br i1 %tobool72.not, label %if.end67.cleanup_crit_edge, label %if.end74

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end74:                                         ; preds = %if.end67
  %call75 = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str.189) #13
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.end74.cleanup_crit_edge, label %if.end78

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  %37 = ptrtoint ptr %call75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call75, align 4
  %end.i215 = getelementptr inbounds %struct.resource, ptr %call75, i32 0, i32 1
  %39 = ptrtoint ptr %end.i215 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end.i215, align 4
  %sub.i216 = sub i32 1, %38
  %add.i217 = add i32 %sub.i216, %40
  %call81 = tail call ptr @devm_ioremap(ptr noundef %dev2, i32 noundef %38, i32 noundef %add.i217) #13
  %rm_regs = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  %41 = ptrtoint ptr %rm_regs to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call81, ptr %rm_regs, align 4
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %if.end78.cleanup_crit_edge, label %if.end85

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end85:                                         ; preds = %if.end78
  %call86 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.157) #13
  %hsm_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 24
  %42 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call86, ptr %hsm_clock, align 4
  %cmp.i = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.158) #13
  %43 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hsm_clock, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %cleanup

if.end92:                                         ; preds = %if.end85
  %call93 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.190) #13
  %pixel_bvb_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 26
  %46 = ptrtoint ptr %pixel_bvb_clock to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call93, ptr %pixel_bvb_clock, align 4
  %cmp.i218 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.191) #13
  %47 = ptrtoint ptr %pixel_bvb_clock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pixel_bvb_clock, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.end99:                                         ; preds = %if.end92
  %call100 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.192) #13
  %audio_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 25
  %50 = ptrtoint ptr %audio_clock to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call100, ptr %audio_clock, align 8
  %cmp.i219 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then103, label %if.end106

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.193) #13
  %51 = ptrtoint ptr %audio_clock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %audio_clock, align 8
  %53 = ptrtoint ptr %52 to i32
  br label %cleanup

if.end106:                                        ; preds = %if.end99
  %call107 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.184) #13
  %cec_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 22
  %54 = ptrtoint ptr %cec_clock to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call107, ptr %cec_clock, align 4
  %cmp.i220 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then110, label %if.end113

if.then110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.194) #13
  %55 = ptrtoint ptr %cec_clock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cec_clock, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %cleanup

if.end113:                                        ; preds = %if.end106
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %reset = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 27
  %58 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i, ptr %reset, align 8
  %cmp.i221 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %if.then117, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.195) #13
  %59 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset, align 8
  %61 = ptrtoint ptr %60 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %if.end113.cleanup_crit_edge, %if.then110, %if.then103, %if.then96, %if.then89, %if.end78.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %45, %if.then89 ], [ %49, %if.then96 ], [ %53, %if.then103 ], [ %57, %if.then110 ], [ %61, %if.then117 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -19, %if.end19.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ -19, %if.end30.cleanup_crit_edge ], [ -12, %if.end34.cleanup_crit_edge ], [ -19, %if.end41.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ], [ -19, %if.end52.cleanup_crit_edge ], [ -12, %if.end56.cleanup_crit_edge ], [ -19, %if.end63.cleanup_crit_edge ], [ -12, %if.end67.cleanup_crit_edge ], [ -19, %if.end74.cleanup_crit_edge ], [ -12, %if.end78.cleanup_crit_edge ], [ 0, %if.end113.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc5_hdmi_reset(ptr noundef %vc4_hdmi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 27
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 8
  %call = tail call i32 @reset_control_reset(ptr noundef %1) #13
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 33, i32 noundef 0)
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %2 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %10)
  %cmp.not.i = icmp ugt i32 %10, 20
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 20) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %14, i32 20, i32 1
  %15 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg28.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %16, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %18 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 20) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %14, i32 20, i32 2
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %24 = or i32 %23, 33554432
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 2, %do.end24.i ], [ %25, %if.end37.i ], [ 2, %do.end34.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 20, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc5_hdmi_csc_setup(ptr noundef %vc4_hdmi, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %. = select i1 %enable, i32 7040, i32 8192
  %.24 = select i1 %enable, i32 67108864, i32 0
  %.25 = select i1 %enable, i32 461373440, i32 536870912
  %.26 = select i1 %enable, i32 67115904, i32 8192
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 23, i32 noundef %.)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 24, i32 noundef %.24)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 25, i32 noundef %.25)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 26, i32 noundef %.24)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 27, i32 noundef 0)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 28, i32 noundef %.26)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 29, i32 noundef 7)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc5_hdmi_set_timings(ptr noundef %vc4_hdmi, ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and10 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond = select i1 %tobool11.not, i32 1, i32 2
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %2 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %crtc_vsync_end, align 2
  %conv = zext i16 %3 to i32
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %4 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %crtc_vsync_start, align 4
  %conv24 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv, %conv24
  %6 = and i32 %sub, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool26.not = icmp eq i32 %6, 0
  br i1 %tobool26.not, label %entry.do.end85_crit_edge, label %do.end43, !prof !444

entry.do.end85_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end85

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 867, i32 noundef 9, ptr noundef null) #13
  br label %do.end85

do.end85:                                         ; preds = %do.end43, %entry.do.end85_crit_edge
  %7 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %crtc_vsync_end, align 2
  %conv65 = zext i16 %8 to i32
  %9 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_vsync_start, align 4
  %conv67 = zext i16 %10 to i32
  %sub68 = sub nsw i32 %conv65, %conv67
  %shl92 = shl i32 %sub68, 24
  %and93 = and i32 %shl92, 520093696
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %11 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_vdisplay, align 2
  %conv113 = zext i16 %12 to i32
  %sub114 = sub nsw i32 %conv67, %conv113
  %13 = and i32 %sub114, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool117.not = icmp eq i32 %13, 0
  br i1 %tobool117.not, label %do.end85.do.end183_crit_edge, label %do.end138, !prof !444

do.end85.do.end183_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end183

do.end138:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 869, i32 noundef 9, ptr noundef null) #13
  br label %do.end183

do.end183:                                        ; preds = %do.end138, %do.end85.do.end183_crit_edge
  %14 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %crtc_vsync_start, align 4
  %conv161 = zext i16 %15 to i32
  %16 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %crtc_vdisplay, align 2
  %conv163 = zext i16 %17 to i32
  %sub164 = sub nsw i32 %conv161, %conv163
  %shl190 = shl i32 %sub164, 16
  %and191 = and i32 %shl190, 8323072
  %or = or i32 %and191, %and93
  %and212 = and i32 %conv163, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %do.end183.do.end272_crit_edge, label %do.end234, !prof !444

do.end183.do.end272_crit_edge:                    ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end272

do.end234:                                        ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 870, i32 noundef 9, ptr noundef null) #13
  br label %do.end272

do.end272:                                        ; preds = %do.end234, %do.end183.do.end272_crit_edge
  %18 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %crtc_vdisplay, align 2
  %20 = and i16 %19, 8191
  %and277 = zext i16 %20 to i32
  %or278 = or i32 %or, %and277
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %21 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %crtc_vtotal, align 4
  %conv362 = zext i16 %22 to i32
  %23 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %crtc_vsync_end, align 2
  %conv364 = zext i16 %24 to i32
  %sub365 = sub nsw i32 %conv362, %conv364
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub365)
  %tobool368.not = icmp ult i32 %sub365, 512
  br i1 %tobool368.not, label %do.end272.do.end434_crit_edge, label %do.end389, !prof !444

do.end272.do.end434_crit_edge:                    ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end434

do.end389:                                        ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 873, i32 noundef 9, ptr noundef null) #13
  br label %do.end434

do.end434:                                        ; preds = %do.end389, %do.end272.do.end434_crit_edge
  %25 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %crtc_vtotal, align 4
  %conv412 = zext i16 %26 to i32
  %27 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %crtc_vsync_end, align 2
  %conv414 = zext i16 %28 to i32
  %sub415 = sub nsw i32 %conv412, %conv414
  %and442 = and i32 %sub415, 511
  %29 = shl i32 %1, 27
  %30 = ashr i32 %29, 31
  %.neg = add nsw i32 %30, %conv412
  %sub534 = sub nsw i32 %.neg, %conv414
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub534)
  %tobool537.not = icmp ult i32 %sub534, 512
  br i1 %tobool537.not, label %do.end434.do.end609_crit_edge, label %do.end558, !prof !444

do.end434.do.end609_crit_edge:                    ; preds = %do.end434
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end609

do.end558:                                        ; preds = %do.end434
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 878, i32 noundef 9, ptr noundef null) #13
  br label %do.end609

do.end609:                                        ; preds = %do.end558, %do.end434.do.end609_crit_edge
  %31 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %crtc_vtotal, align 4
  %conv581 = zext i16 %32 to i32
  %.neg1518 = add nsw i32 %30, %conv581
  %33 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %crtc_vsync_end, align 2
  %conv583 = zext i16 %34 to i32
  %sub587 = sub nsw i32 %.neg1518, %conv583
  %and620 = and i32 %sub587, 511
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call627 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 75, i32 noundef 3489825)
  %and2 = shl i32 %1, 13
  %35 = and i32 %and2, 32768
  %and = shl i32 %1, 14
  %36 = and i32 %and, 16384
  %or638 = or i32 %35, %36
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %37 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hdisplay, align 4
  %conv656 = zext i16 %38 to i32
  %mul = mul nuw nsw i32 %cond, %conv656
  %and658 = and i32 %mul, 245760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and658)
  %tobool659.not = icmp eq i32 %and658, 0
  br i1 %tobool659.not, label %do.end609.do.end721_crit_edge, label %do.end680, !prof !444

do.end609.do.end721_crit_edge:                    ; preds = %do.end609
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end721

do.end680:                                        ; preds = %do.end609
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 891, i32 noundef 9, ptr noundef null) #13
  br label %do.end721

do.end721:                                        ; preds = %do.end680, %do.end609.do.end721_crit_edge
  %39 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay, align 4
  %conv703 = zext i16 %40 to i32
  %mul704 = mul nuw nsw i32 %cond, %conv703
  %and727 = and i32 %mul704, 16383
  %or728 = or i32 %or638, %and727
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %41 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hsync_start, align 2
  %conv746 = zext i16 %42 to i32
  %sub749 = sub nsw i32 %conv746, %conv703
  %mul750 = mul nsw i32 %sub749, %cond
  %43 = and i32 %mul750, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool753.not = icmp eq i32 %43, 0
  br i1 %tobool753.not, label %do.end721.do.end821_crit_edge, label %do.end774, !prof !444

do.end721.do.end821_crit_edge:                    ; preds = %do.end721
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end821

do.end774:                                        ; preds = %do.end721
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 894, i32 noundef 9, ptr noundef null) #13
  br label %do.end821

do.end821:                                        ; preds = %do.end774, %do.end721.do.end821_crit_edge
  %44 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hsync_start, align 2
  %conv797 = zext i16 %45 to i32
  %46 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hdisplay, align 4
  %conv799 = zext i16 %47 to i32
  %sub800 = sub nsw i32 %conv797, %conv799
  %mul801 = mul nsw i32 %sub800, %cond
  %shl829 = shl i32 %mul801, 16
  %and830 = and i32 %shl829, 536805376
  %or831 = or i32 %or728, %and830
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 38, i32 noundef %or831)
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %48 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %htotal, align 2
  %conv849 = zext i16 %49 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %50 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hsync_end, align 4
  %conv850 = zext i16 %51 to i32
  %sub851 = sub nsw i32 %conv849, %conv850
  %mul852 = mul nsw i32 %sub851, %cond
  %52 = and i32 %mul852, 63488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool855.not = icmp eq i32 %52, 0
  br i1 %tobool855.not, label %do.end821.do.end923_crit_edge, label %do.end876, !prof !444

do.end821.do.end923_crit_edge:                    ; preds = %do.end821
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end923

do.end876:                                        ; preds = %do.end821
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 899, i32 noundef 9, ptr noundef null) #13
  br label %do.end923

do.end923:                                        ; preds = %do.end876, %do.end821.do.end923_crit_edge
  %53 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %htotal, align 2
  %conv899 = zext i16 %54 to i32
  %55 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hsync_end, align 4
  %conv901 = zext i16 %56 to i32
  %sub902 = sub nsw i32 %conv899, %conv901
  %mul903 = mul nsw i32 %sub902, %cond
  %shl931 = shl i32 %mul903, 16
  %and932 = and i32 %shl931, 134152192
  %57 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %hsync_start, align 2
  %conv953 = zext i16 %58 to i32
  %sub954 = sub nsw i32 %conv901, %conv953
  %mul955 = mul nsw i32 %sub954, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %mul955)
  %tobool958.not = icmp ult i32 %mul955, 2048
  br i1 %tobool958.not, label %do.end923.do.end1026_crit_edge, label %do.end979, !prof !444

do.end923.do.end1026_crit_edge:                   ; preds = %do.end923
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1026

do.end979:                                        ; preds = %do.end923
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 902, i32 noundef 9, ptr noundef null) #13
  br label %do.end1026

do.end1026:                                       ; preds = %do.end979, %do.end923.do.end1026_crit_edge
  %59 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hsync_end, align 4
  %conv1002 = zext i16 %60 to i32
  %61 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hsync_start, align 2
  %conv1004 = zext i16 %62 to i32
  %sub1005 = sub nsw i32 %conv1002, %conv1004
  %mul1006 = mul nsw i32 %sub1005, %cond
  %and1035 = and i32 %mul1006, 2047
  %or1036 = or i32 %and1035, %and932
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 39, i32 noundef %or1036)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 76, i32 noundef %or278)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 77, i32 noundef %or278)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 78, i32 noundef %and620)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 79, i32 noundef %and442)
  %max_bpc = getelementptr inbounds %struct.drm_connector_state, ptr %state, i32 0, i32 16
  %63 = ptrtoint ptr %max_bpc to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %max_bpc, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.220)
  switch i8 %64, label %sw.default [
    i8 12, label %do.end1026.sw.epilog_crit_edge
    i8 10, label %sw.bb1038
  ]

do.end1026.sw.epilog_crit_edge:                   ; preds = %do.end1026
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1038:                                        ; preds = %do.end1026
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %do.end1026
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1038, %do.end1026.sw.epilog_crit_edge
  %gcp_en.0.off0 = phi i32 [ 0, %sw.default ], [ -2147483648, %sw.bb1038 ], [ -2147483648, %do.end1026.sw.epilog_crit_edge ]
  %gcp.0 = phi i32 [ 4, %sw.default ], [ 5, %sw.bb1038 ], [ 6, %do.end1026.sw.epilog_crit_edge ]
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %66 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %68 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3, i32 12, i32 18
  %70 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i, label %sw.epilog.if.end.i_crit_edge, label %pm_runtime_active.exit.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %sw.epilog
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3, i32 12, i32 15
  %72 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %sw.epilog.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %67, i32 0, i32 5
  %73 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %74)
  %cmp.not.i = icmp ugt i32 %74, 32
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 32) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %67, i32 0, i32 4
  %77 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %78, i32 32, i32 1
  %79 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg28.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %80, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %82 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %83 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 32) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %78, i32 32, i32 2
  %85 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %86
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %88, %if.end37.i ], [ 0, %do.end34.i ]
  %and1041 = and i32 %retval.0.i, -1808
  %or1190 = or i32 %gcp.0, %and1041
  %or1191 = or i32 %or1190, 512
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 32, i32 noundef %or1191)
  %89 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %variant1.i, align 4
  %91 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i1432 = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3, i32 12, i32 18
  %93 = ptrtoint ptr %runtime_status.i.i1432 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %runtime_status.i.i1432, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i.i1433 = icmp eq i32 %94, 0
  br i1 %cmp.i.i1433, label %vc4_hdmi_read.exit.if.end.i1441_crit_edge, label %pm_runtime_active.exit.i1437

vc4_hdmi_read.exit.if.end.i1441_crit_edge:        ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i1441

pm_runtime_active.exit.i1437:                     ; preds = %vc4_hdmi_read.exit
  %disable_depth.i.i1434 = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3, i32 12, i32 15
  %95 = ptrtoint ptr %disable_depth.i.i1434 to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load.i.i1435 = load i16, ptr %disable_depth.i.i1434, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i1435)
  %tobool.i.i1436 = icmp ugt i16 %bf.load.i.i1435, 8191
  br i1 %tobool.i.i1436, label %pm_runtime_active.exit.i1437.if.end.i1441_crit_edge, label %do.end.i1438, !prof !444

pm_runtime_active.exit.i1437.if.end.i1441_crit_edge: ; preds = %pm_runtime_active.exit.i1437
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i1441

do.end.i1438:                                     ; preds = %pm_runtime_active.exit.i1437
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i1441

if.end.i1441:                                     ; preds = %do.end.i1438, %pm_runtime_active.exit.i1437.if.end.i1441_crit_edge, %vc4_hdmi_read.exit.if.end.i1441_crit_edge
  %num_registers.i1439 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %90, i32 0, i32 5
  %96 = ptrtoint ptr %num_registers.i1439 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_registers.i1439, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %97)
  %cmp.not.i1440 = icmp ugt i32 %97, 37
  br i1 %cmp.not.i1440, label %if.end27.i1446, label %do.end24.i1443

do.end24.i1443:                                   ; preds = %if.end.i1441
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev.i, align 8
  %dev26.i1442 = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i1442, ptr noundef nonnull @.str.22, i32 noundef 37) #16
  br label %vc4_hdmi_read.exit1473

if.end27.i1446:                                   ; preds = %if.end.i1441
  %registers.i1444 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %90, i32 0, i32 4
  %100 = ptrtoint ptr %registers.i1444 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %registers.i1444, align 8
  %reg28.i1445 = getelementptr %struct.vc4_hdmi_register, ptr %101, i32 37, i32 1
  %102 = ptrtoint ptr %reg28.i1445 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %reg28.i1445, align 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %103, label %if.end27.i1446.do.end34.i1468_crit_edge [
    i32 2, label %sw.bb.i.i1448
    i32 1, label %sw.bb1.i.i1450
    i32 4, label %sw.bb2.i.i1452
    i32 3, label %sw.bb3.i.i1454
    i32 5, label %sw.bb4.i.i1456
    i32 6, label %sw.bb5.i.i1458
    i32 7, label %sw.bb6.i.i1460
    i32 8, label %sw.bb7.i.i1462
  ]

if.end27.i1446.do.end34.i1468_crit_edge:          ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i1468

sw.bb.i.i1448:                                    ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i1447 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i1466

sw.bb1.i.i1450:                                   ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i1449 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i1466

sw.bb2.i.i1452:                                   ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i1451 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i1466

sw.bb3.i.i1454:                                   ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i1453 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i1466

sw.bb4.i.i1456:                                   ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i1455 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i1466

sw.bb5.i.i1458:                                   ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i1457 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i1466

sw.bb6.i.i1460:                                   ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i1459 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i1466

sw.bb7.i.i1462:                                   ; preds = %if.end27.i1446
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i1461 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i1466

__vc4_hdmi_get_field_base.exit.i1466:             ; preds = %sw.bb7.i.i1462, %sw.bb6.i.i1460, %sw.bb5.i.i1458, %sw.bb4.i.i1456, %sw.bb3.i.i1454, %sw.bb2.i.i1452, %sw.bb1.i.i1450, %sw.bb.i.i1448
  %retval.0.i.in.i1463 = phi ptr [ %rm_regs.i.i1461, %sw.bb7.i.i1462 ], [ %ram_regs.i.i1459, %sw.bb6.i.i1460 ], [ %phy_regs.i.i1457, %sw.bb5.i.i1458 ], [ %dvp_regs.i.i1455, %sw.bb4.i.i1456 ], [ %cec_regs.i.i1453, %sw.bb3.i.i1454 ], [ %csc_regs.i.i1451, %sw.bb2.i.i1452 ], [ %hdmicore_regs.i.i1449, %sw.bb1.i.i1450 ], [ %hd_regs.i.i1447, %sw.bb.i.i1448 ]
  %105 = ptrtoint ptr %retval.0.i.in.i1463 to i32
  call void @__asan_load4_noabort(i32 %105)
  %retval.0.i.i1464 = load ptr, ptr %retval.0.i.in.i1463, align 4
  %tobool30.not.i1465 = icmp eq ptr %retval.0.i.i1464, null
  br i1 %tobool30.not.i1465, label %__vc4_hdmi_get_field_base.exit.i1466.do.end34.i1468_crit_edge, label %if.end37.i1471

__vc4_hdmi_get_field_base.exit.i1466.do.end34.i1468_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i1466
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i1468

do.end34.i1468:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i1466.do.end34.i1468_crit_edge, %if.end27.i1446.do.end34.i1468_crit_edge
  %106 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev.i, align 8
  %dev36.i1467 = getelementptr inbounds %struct.platform_device, ptr %107, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i1467, ptr noundef nonnull @.str.41, i32 noundef 37) #16
  br label %vc4_hdmi_read.exit1473

if.end37.i1471:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i1466
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i1469 = getelementptr %struct.vc4_hdmi_register, ptr %101, i32 37, i32 2
  %108 = ptrtoint ptr %offset.i1469 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %offset.i1469, align 4
  %add.ptr.i1470 = getelementptr i8, ptr %retval.0.i.i1464, i32 %109
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1470) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %111 = and i32 %110, -16711681
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  br label %vc4_hdmi_read.exit1473

vc4_hdmi_read.exit1473:                           ; preds = %if.end37.i1471, %do.end34.i1468, %do.end24.i1443
  %retval.0.i1472 = phi i32 [ 0, %do.end24.i1443 ], [ %112, %if.end37.i1471 ], [ 0, %do.end34.i1468 ]
  %shl1212 = shl nuw nsw i32 %gcp.0, 8
  %or1276 = or i32 %retval.0.i1472, %shl1212
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 37, i32 noundef %or1276)
  %113 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %variant1.i, align 4
  %115 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i1476 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3, i32 12, i32 18
  %117 = ptrtoint ptr %runtime_status.i.i1476 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %runtime_status.i.i1476, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i.i1477 = icmp eq i32 %118, 0
  br i1 %cmp.i.i1477, label %vc4_hdmi_read.exit1473.if.end.i1485_crit_edge, label %pm_runtime_active.exit.i1481

vc4_hdmi_read.exit1473.if.end.i1485_crit_edge:    ; preds = %vc4_hdmi_read.exit1473
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i1485

pm_runtime_active.exit.i1481:                     ; preds = %vc4_hdmi_read.exit1473
  %disable_depth.i.i1478 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3, i32 12, i32 15
  %119 = ptrtoint ptr %disable_depth.i.i1478 to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load.i.i1479 = load i16, ptr %disable_depth.i.i1478, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i1479)
  %tobool.i.i1480 = icmp ugt i16 %bf.load.i.i1479, 8191
  br i1 %tobool.i.i1480, label %pm_runtime_active.exit.i1481.if.end.i1485_crit_edge, label %do.end.i1482, !prof !444

pm_runtime_active.exit.i1481.if.end.i1485_crit_edge: ; preds = %pm_runtime_active.exit.i1481
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i1485

do.end.i1482:                                     ; preds = %pm_runtime_active.exit.i1481
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i1485

if.end.i1485:                                     ; preds = %do.end.i1482, %pm_runtime_active.exit.i1481.if.end.i1485_crit_edge, %vc4_hdmi_read.exit1473.if.end.i1485_crit_edge
  %num_registers.i1483 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %114, i32 0, i32 5
  %120 = ptrtoint ptr %num_registers.i1483 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_registers.i1483, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %121)
  %cmp.not.i1484 = icmp ugt i32 %121, 36
  br i1 %cmp.not.i1484, label %if.end27.i1490, label %do.end24.i1487

do.end24.i1487:                                   ; preds = %if.end.i1485
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev.i, align 8
  %dev26.i1486 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i1486, ptr noundef nonnull @.str.22, i32 noundef 36) #16
  br label %vc4_hdmi_read.exit1517

if.end27.i1490:                                   ; preds = %if.end.i1485
  %registers.i1488 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %114, i32 0, i32 4
  %124 = ptrtoint ptr %registers.i1488 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %registers.i1488, align 8
  %reg28.i1489 = getelementptr %struct.vc4_hdmi_register, ptr %125, i32 36, i32 1
  %126 = ptrtoint ptr %reg28.i1489 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %reg28.i1489, align 4
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %127, label %if.end27.i1490.do.end34.i1512_crit_edge [
    i32 2, label %sw.bb.i.i1492
    i32 1, label %sw.bb1.i.i1494
    i32 4, label %sw.bb2.i.i1496
    i32 3, label %sw.bb3.i.i1498
    i32 5, label %sw.bb4.i.i1500
    i32 6, label %sw.bb5.i.i1502
    i32 7, label %sw.bb6.i.i1504
    i32 8, label %sw.bb7.i.i1506
  ]

if.end27.i1490.do.end34.i1512_crit_edge:          ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i1512

sw.bb.i.i1492:                                    ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i1491 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i1510

sw.bb1.i.i1494:                                   ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i1493 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i1510

sw.bb2.i.i1496:                                   ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i1495 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i1510

sw.bb3.i.i1498:                                   ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i1497 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i1510

sw.bb4.i.i1500:                                   ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i1499 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i1510

sw.bb5.i.i1502:                                   ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i1501 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i1510

sw.bb6.i.i1504:                                   ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i1503 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i1510

sw.bb7.i.i1506:                                   ; preds = %if.end27.i1490
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i1505 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i1510

__vc4_hdmi_get_field_base.exit.i1510:             ; preds = %sw.bb7.i.i1506, %sw.bb6.i.i1504, %sw.bb5.i.i1502, %sw.bb4.i.i1500, %sw.bb3.i.i1498, %sw.bb2.i.i1496, %sw.bb1.i.i1494, %sw.bb.i.i1492
  %retval.0.i.in.i1507 = phi ptr [ %rm_regs.i.i1505, %sw.bb7.i.i1506 ], [ %ram_regs.i.i1503, %sw.bb6.i.i1504 ], [ %phy_regs.i.i1501, %sw.bb5.i.i1502 ], [ %dvp_regs.i.i1499, %sw.bb4.i.i1500 ], [ %cec_regs.i.i1497, %sw.bb3.i.i1498 ], [ %csc_regs.i.i1495, %sw.bb2.i.i1496 ], [ %hdmicore_regs.i.i1493, %sw.bb1.i.i1494 ], [ %hd_regs.i.i1491, %sw.bb.i.i1492 ]
  %129 = ptrtoint ptr %retval.0.i.in.i1507 to i32
  call void @__asan_load4_noabort(i32 %129)
  %retval.0.i.i1508 = load ptr, ptr %retval.0.i.in.i1507, align 4
  %tobool30.not.i1509 = icmp eq ptr %retval.0.i.i1508, null
  br i1 %tobool30.not.i1509, label %__vc4_hdmi_get_field_base.exit.i1510.do.end34.i1512_crit_edge, label %if.end37.i1515

__vc4_hdmi_get_field_base.exit.i1510.do.end34.i1512_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i1510
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i1512

do.end34.i1512:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i1510.do.end34.i1512_crit_edge, %if.end27.i1490.do.end34.i1512_crit_edge
  %130 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev.i, align 8
  %dev36.i1511 = getelementptr inbounds %struct.platform_device, ptr %131, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i1511, ptr noundef nonnull @.str.41, i32 noundef 36) #16
  br label %vc4_hdmi_read.exit1517

if.end37.i1515:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i1510
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i1513 = getelementptr %struct.vc4_hdmi_register, ptr %125, i32 36, i32 2
  %132 = ptrtoint ptr %offset.i1513 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %offset.i1513, align 4
  %add.ptr.i1514 = getelementptr i8, ptr %retval.0.i.i1508, i32 %133
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1514) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %135 = and i32 %134, -129
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  br label %vc4_hdmi_read.exit1517

vc4_hdmi_read.exit1517:                           ; preds = %if.end37.i1515, %do.end34.i1512, %do.end24.i1487
  %retval.0.i1516 = phi i32 [ 0, %do.end24.i1487 ], [ %136, %if.end37.i1515 ], [ 0, %do.end34.i1512 ]
  %or1282 = or i32 %retval.0.i1516, %gcp_en.0.off0
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 36, i32 noundef %or1282)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 20, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call627) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc5_hdmi_phy_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc5_hdmi_phy_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc5_hdmi_phy_rng_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc5_hdmi_phy_rng_disable(ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @vc5_hdmi_channel_map(ptr nocapture noundef readnone %vc4_hdmi, i32 noundef %channel_mask) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.1 = shl i32 %channel_mask, 3
  %0 = and i32 %and.1, 16
  %and.2 = shl i32 %channel_mask, 7
  %1 = and i32 %and.2, 512
  %channel_map.1.2 = or i32 %1, %0
  %and.3 = and i32 %channel_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %or.3 = select i1 %tobool.not.3, i32 0, i32 12288
  %channel_map.1.3 = or i32 %or.3, %channel_map.1.2
  %and.4 = shl i32 %channel_mask, 14
  %2 = and i32 %and.4, 262144
  %channel_map.1.4 = or i32 %2, %channel_map.1.3
  %and.5 = and i32 %channel_mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %or.5 = select i1 %tobool.not.5, i32 0, i32 5242880
  %channel_map.1.5 = or i32 %or.5, %channel_map.1.4
  %and.6 = and i32 %channel_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %or.6 = select i1 %tobool.not.6, i32 0, i32 100663296
  %channel_map.1.6 = or i32 %or.6, %channel_map.1.5
  %and.7 = and i32 %channel_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  %or.7 = select i1 %tobool.not.7, i32 0, i32 1879048192
  %channel_map.1.7 = or i32 %or.7, %channel_map.1.6
  ret i32 %channel_map.1.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vc5_hdmi_hp_detect(ptr noundef %vc4_hdmi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #13
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !444

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 417, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 40
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.22, i32 noundef 40) #16
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 40, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %14, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.41, i32 noundef 40) #16
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 40, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %phi.cmp = icmp ne i32 %22, 0
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i1 [ false, %do.end24.i ], [ %phi.cmp, %if.end37.i ], [ false, %do.end34.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #13
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hsm_clock = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %hsm_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hsm_clock, align 4
  tail call void @clk_disable(ptr noundef %3) #13
  tail call void @clk_unprepare(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !56, !57, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !97, !98, !99, !100, !102, !103, !104, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !140, !142, !143, !144, !145, !147, !149, !150, !151, !152, !154, !155, !157, !159, !161, !162, !163, !165, !166, !167, !169, !171, !172, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !204, !205, !207, !208, !209, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428}
!llvm.module.flags = !{!430, !431, !432, !433, !434, !435, !436, !437}
!llvm.ident = !{!438}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2792, i32 11}
!2 = !{ptr @vc4_hdmi_driver, !3, !"vc4_hdmi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2788, i32 24}
!4 = !{ptr @vc4_hdmi_ops, !5, !"vc4_hdmi_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2681, i32 35}
!6 = !{ptr @vc4_hdmi_bind.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2501, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vc4_hdmi_bind.__key.2, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2502, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vc4_hdmi_bind.__key.4, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2503, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @vc4_hdmi_bind.__key.6, !13, !"__key", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2529, i32 44}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2531, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2538, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2545, i32 52}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2552, i32 39}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2590, i32 45}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2591, i32 45}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1034, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1040, i32 3}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1046, i32 3}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1052, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1068, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1074, i32 3}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 445, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 450, i32 3}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vc4_hdmi_write._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @vc4_hdmi_write._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1169, i32 9}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1171, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1185, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 490, i32 3}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 433, i32 2}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 443, i32 3}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 472, i32 3}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 510, i32 44}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 510, i32 56}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 512, i32 3}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 979, i32 2}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 709, i32 3}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 420, i32 3}
!82 = !{ptr @vc4_hdmi_read._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vc4_hdmi_read._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 428, i32 3}
!86 = !{ptr @vc4_hdmi_read._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @vc4_hdmi_read._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @vc4_hdmi_encoder_helper_funcs, !89, !"vc4_hdmi_encoder_helper_funcs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1310, i32 46}
!90 = !{ptr @vc4_hdmi_connector_funcs, !91, !"vc4_hdmi_connector_funcs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 337, i32 41}
!92 = !{ptr @vc4_hdmi_connector_helper_funcs, !93, !"vc4_hdmi_connector_helper_funcs", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 346, i32 48}
!94 = distinct !{null, !95, !"__print_once", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 261, i32 5}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @vc4_hdmi_connector_get_modes._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @vc4_hdmi_connector_get_modes._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = distinct !{null, !101, !"__print_once", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 262, i32 5}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vc4_hdmi_connector_get_modes._entry.46, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @vc4_hdmi_connector_get_modes._entry_ptr.48, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1817, i32 56}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1818, i32 55}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1823, i32 9}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1830, i32 9}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2189, i32 38}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2190, i32 3}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vc4_hdmi_cec_init._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @vc4_hdmi_cec_init._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2195, i32 19}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2215, i32 60}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2218, i32 9}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2222, i32 60}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2225, i32 9}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2236, i32 9}
!132 = !{ptr @vc4_hdmi_cec_adap_ops, !133, !"vc4_hdmi_cec_adap_ops", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2174, i32 34}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2147, i32 3}
!136 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @vc4_hdmi_cec_adap_transmit._entry, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @vc4_hdmi_cec_adap_transmit._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1907, i32 3}
!142 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @vc4_cec_read_msg._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @vc4_cec_read_msg._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1702, i32 38}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1703, i32 3}
!149 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @vc4_hdmi_audio_init._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @vc4_hdmi_audio_init._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1709, i32 3}
!154 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1720, i32 49}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1720, i32 62}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1733, i32 3}
!161 = !{ptr @vc4_hdmi_audio_init._entry.73, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @vc4_hdmi_audio_init._entry_ptr.75, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1740, i32 3}
!165 = !{ptr @vc4_hdmi_audio_init._entry.76, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @vc4_hdmi_audio_init._entry_ptr.78, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1744, i32 50}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1749, i32 3}
!171 = !{ptr @vc4_hdmi_audio_init._entry.80, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @vc4_hdmi_audio_init._entry_ptr.82, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1762, i32 19}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1763, i32 26}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1764, i32 31}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1772, i32 22}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1786, i32 27}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1660, i32 43}
!185 = !{ptr @pcm_conf, !186, !"pcm_conf", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1659, i32 46}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1632, i32 10}
!189 = !{ptr @vc4_hdmi_audio_cpu_dai_comp, !190, !"vc4_hdmi_audio_cpu_dai_comp", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1631, i32 46}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1645, i32 10}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1648, i32 18}
!195 = !{ptr @vc4_hdmi_audio_cpu_dai_drv, !196, !"vc4_hdmi_audio_cpu_dai_drv", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1644, i32 34}
!197 = !{ptr @vc4_hdmi_codec_pdata, !198, !"vc4_hdmi_codec_pdata", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1684, i32 32}
!199 = !{ptr @vc4_hdmi_codec_ops, !200, !"vc4_hdmi_codec_ops", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1677, i32 36}
!201 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1562, i32 2}
!203 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @vc4_hdmi_audio_prepare.__UNIQUE_ID_ddebug627, !202, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 1473, i32 3}
!207 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @vc4_hdmi_audio_reset._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @vc4_hdmi_audio_reset._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @vc4_hdmi_dt_match, !211, !"vc4_hdmi_dt_match", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2775, i32 34}
!212 = !{ptr @.str.96, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2699, i32 19}
!214 = !{ptr @bcm2835_variant, !215, !"bcm2835_variant", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2697, i32 38}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 177, i32 2}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 190, i32 2}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 191, i32 2}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 192, i32 2}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 193, i32 2}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 194, i32 2}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 207, i32 2}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 210, i32 2}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 209, i32 2}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 208, i32 2}
!236 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 205, i32 2}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 206, i32 2}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 199, i32 2}
!242 = !{ptr @.str.110, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 200, i32 2}
!244 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 201, i32 2}
!246 = !{ptr @.str.112, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 202, i32 2}
!248 = !{ptr @.str.113, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 195, i32 2}
!250 = !{ptr @.str.114, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 196, i32 2}
!252 = !{ptr @.str.115, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 197, i32 2}
!254 = !{ptr @.str.116, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 198, i32 2}
!256 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 169, i32 2}
!258 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 180, i32 2}
!260 = !{ptr @.str.119, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 161, i32 2}
!262 = !{ptr @.str.120, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 162, i32 2}
!264 = !{ptr @.str.121, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 163, i32 2}
!266 = !{ptr @.str.122, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 164, i32 2}
!268 = !{ptr @.str.123, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 165, i32 2}
!270 = !{ptr @.str.124, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 166, i32 2}
!272 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 160, i32 2}
!274 = !{ptr @.str.126, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 181, i32 2}
!276 = !{ptr @.str.127, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 182, i32 2}
!278 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 173, i32 2}
!280 = !{ptr @.str.129, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 167, i32 2}
!282 = !{ptr @.str.130, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 184, i32 2}
!284 = !{ptr @.str.131, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 185, i32 2}
!286 = !{ptr @.str.132, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 172, i32 2}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 171, i32 2}
!290 = !{ptr @.str.134, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 174, i32 2}
!292 = !{ptr @.str.135, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 175, i32 2}
!294 = !{ptr @.str.136, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 154, i32 2}
!296 = !{ptr @.str.137, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 157, i32 2}
!298 = !{ptr @.str.138, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 156, i32 2}
!300 = !{ptr @.str.139, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 176, i32 2}
!302 = !{ptr @.str.140, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 158, i32 2}
!304 = !{ptr @.str.141, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 155, i32 2}
!306 = !{ptr @.str.142, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 153, i32 2}
!308 = !{ptr @.str.143, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 178, i32 2}
!310 = !{ptr @.str.144, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 211, i32 2}
!312 = !{ptr @.str.145, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 179, i32 2}
!314 = !{ptr @.str.146, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 183, i32 2}
!316 = !{ptr @.str.147, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 170, i32 2}
!318 = !{ptr @.str.148, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 204, i32 2}
!320 = !{ptr @.str.149, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 203, i32 2}
!322 = !{ptr @.str.150, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 186, i32 2}
!324 = !{ptr @.str.151, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 188, i32 2}
!326 = !{ptr @.str.152, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 187, i32 2}
!328 = !{ptr @.str.153, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 189, i32 2}
!330 = !{ptr @.str.154, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 159, i32 2}
!332 = !{ptr @vc4_hdmi_fields, !333, !"vc4_hdmi_fields", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 152, i32 54}
!334 = !{ptr @.str.155, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2344, i32 44}
!336 = !{ptr @.str.156, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2348, i32 4}
!338 = !{ptr @.str.157, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2352, i32 42}
!340 = !{ptr @.str.158, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2354, i32 3}
!342 = !{ptr @.str.159, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2720, i32 16}
!344 = !{ptr @.str.160, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2719, i32 19}
!346 = !{ptr @bcm2711_hdmi0_variant, !347, !"bcm2711_hdmi0_variant", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2717, i32 38}
!348 = !{ptr @.str.161, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 246, i32 2}
!350 = !{ptr @.str.162, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 240, i32 2}
!352 = !{ptr @.str.163, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 215, i32 2}
!354 = !{ptr @.str.164, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 241, i32 2}
!356 = !{ptr @.str.165, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 242, i32 2}
!358 = !{ptr @.str.166, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 265, i32 2}
!360 = !{ptr @.str.167, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 267, i32 2}
!362 = !{ptr @.str.168, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 266, i32 2}
!364 = !{ptr @.str.169, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 244, i32 2}
!366 = !{ptr @.str.170, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 260, i32 2}
!368 = !{ptr @.str.171, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 257, i32 2}
!370 = !{ptr @.str.172, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 252, i32 2}
!372 = !{ptr @.str.173, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 253, i32 2}
!374 = !{ptr @.str.174, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 254, i32 2}
!376 = !{ptr @.str.175, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 261, i32 2}
!378 = !{ptr @.str.176, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 262, i32 2}
!380 = !{ptr @.str.177, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 263, i32 2}
!382 = !{ptr @.str.178, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 258, i32 2}
!384 = !{ptr @.str.179, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 255, i32 2}
!386 = !{ptr @.str.180, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 256, i32 2}
!388 = !{ptr @.str.181, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 250, i32 2}
!390 = !{ptr @.str.182, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 259, i32 2}
!392 = !{ptr @.str.183, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 247, i32 2}
!394 = !{ptr @vc5_hdmi_hdmi0_fields, !395, !"vc5_hdmi_hdmi0_fields", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 214, i32 54}
!396 = !{ptr @.str.184, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2386, i32 59}
!398 = !{ptr @.str.185, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2394, i32 59}
!400 = !{ptr @.str.186, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2402, i32 59}
!402 = !{ptr @.str.187, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2410, i32 59}
!404 = !{ptr @.str.188, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2418, i32 59}
!406 = !{ptr @.str.189, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2426, i32 59}
!408 = !{ptr @.str.190, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2440, i32 48}
!410 = !{ptr @.str.191, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2442, i32 3}
!412 = !{ptr @.str.192, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2446, i32 44}
!414 = !{ptr @.str.193, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2448, i32 3}
!416 = !{ptr @.str.194, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2454, i32 3}
!418 = !{ptr @.str.195, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2460, i32 3}
!420 = !{ptr @.str.196, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2749, i32 16}
!422 = !{ptr @.str.197, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2748, i32 19}
!424 = !{ptr @bcm2711_hdmi1_variant, !425, !"bcm2711_hdmi1_variant", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2746, i32 38}
!426 = !{ptr @vc5_hdmi_hdmi1_fields, !427, !"vc5_hdmi_hdmi1_fields", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 294, i32 54}
!428 = !{ptr @vc4_hdmi_pm_ops, !429, !"vc4_hdmi_pm_ops", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi.c", i32 2782, i32 32}
!430 = !{i32 1, !"wchar_size", i32 2}
!431 = !{i32 1, !"min_enum_size", i32 4}
!432 = !{i32 8, !"branch-target-enforcement", i32 0}
!433 = !{i32 8, !"sign-return-address", i32 0}
!434 = !{i32 8, !"sign-return-address-all", i32 0}
!435 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!436 = !{i32 7, !"uwtable", i32 1}
!437 = !{i32 7, !"frame-pointer", i32 2}
!438 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!439 = !{i64 2148476740, i64 2148476766, i64 2148476795, i64 2148476829, i64 2148476860, i64 2148476883}
!440 = !{i8 0, i8 2}
!441 = !{i64 2148476159}
!442 = !{i64 960982, i64 961007, i64 961029, i64 961045, i64 961057, i64 961077, i64 961101, i64 961117, i64 961129}
!443 = !{i64 2148476347}
!444 = !{!"branch_weights", i32 2000, i32 1}
!445 = !{i64 6957414}
!446 = !{i64 2158213780}
!447 = !{i64 2160988837}
!448 = !{i64 2160992059}
!449 = !{!"branch_weights", i32 1, i32 2000}
!450 = !{i64 2160979750}
!451 = !{!452}
!452 = distinct !{!452, !453, !"drm_seq_file_printer: %agg.result"}
!453 = distinct !{!453, !"drm_seq_file_printer"}
!454 = !{i64 2158217117}
!455 = !{i64 6956996}
!456 = !{i64 2158303001}
!457 = !{i64 2158303725}
!458 = !{i64 2158305980}
!459 = !{i64 2158300854}
!460 = !{i64 1660675, i64 1660702, i64 1660724, i64 1660752}
!461 = !{i64 1661083, i64 1661110, i64 1661143, i64 1661164, i64 1661191, i64 1661217}
!462 = !{i64 2149121032, i64 2149121037, i64 2149121050, i64 2149121094, i64 2149121128, i64 2149121149}
!463 = !{!"auto-init"}
!464 = !{i64 2149146219, i64 2149146499, i64 2149146833, i64 2149147167}
