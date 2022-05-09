; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.component_ops = type { ptr, ptr }
%struct.anon.101 = type { ptr, i8, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.hdmi_platform_config = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, [6 x %struct.hdmi_gpio_data] }
%struct.hdmi_gpio_data = type { ptr, i8, i32 }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.92 = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.100, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.100 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HDMI Core: %s, HDMI_CTRL=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to create HDMI bridge: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to create HDMI connector: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to get irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_isr\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to request IRQ%u: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* failed to enable HPD: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@msm_hdmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msm_hdmi_dev_probe, ptr @msm_hdmi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_hdmi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_msm\00", [23 x i8] zeroinitializer }, align 32
@msm_hdmi_dt_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8996_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8994_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8084\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8084_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8974_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8960_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-tx-8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hdmi_tx_8660_config }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@msm_hdmi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @msm_hdmi_bind, ptr @msm_hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* unknown hdmi_cfg: %pOFn\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core_physical\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qfprom_physical\00", [16 x i8] zeroinitializer }, align 32
@msm_hdmi_gpio_pdata = internal constant { [6 x %struct.anon.101], [32 x i8] } { [6 x %struct.anon.101] [%struct.anon.101 { ptr @.str.17, i8 1, i32 1, ptr @.str.18 }, %struct.anon.101 { ptr @.str.19, i8 1, i32 1, ptr @.str.20 }, %struct.anon.101 { ptr @.str.21, i8 0, i32 1, ptr @.str.22 }, %struct.anon.101 { ptr @.str.23, i8 1, i32 1, ptr @.str.24 }, %struct.anon.101 { ptr @.str.25, i8 1, i32 0, ptr @.str.26 }, %struct.anon.101 { ptr @.str.27, i8 1, i32 1, ptr @.str.28 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,hdmi-tx-%s\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get gpio: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to attach an audio codec %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,hdmi-tx-ddc-clk\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_DDC_CLK\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,hdmi-tx-ddc-data\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDMI_DDC_DATA\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,hdmi-tx-hpd\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDMI_HPD\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,hdmi-tx-mux-en\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_MUX_EN\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,hdmi-tx-mux-sel\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_MUX_SEL\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,hdmi-tx-mux-lpm\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_MUX_LPM\00", [19 x i8] zeroinitializer }, align 32
@msm_hdmi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&hdmi->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_QFPROM\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't find qfprom resource\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to get hpd regulator: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to get pwr regulator: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to get hpd clk: %s (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to get pwr clk: %s (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msm_hdmi\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to get i2c: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"*ERROR* failed to get phy\0A\00", [37 x i8] zeroinitializer }, align 32
@msm_hdmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.43, i32 250, ptr @.str.44, ptr @.str.45 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init hdcp: disabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msm_hdmi_init\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/msm/hdmi/hdmi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_hdmi_init._entry_ptr = internal global ptr @msm_hdmi_init._entry, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* cannot find phy device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* phy driver is not ready\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@codec_data = internal global { %struct.hdmi_codec_pdata, [16 x i8] } { %struct.hdmi_codec_pdata { ptr @msm_hdmi_audio_codec_ops, i8 -128, i32 8, ptr null }, [16 x i8] zeroinitializer }, align 32
@msm_hdmi_audio_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @msm_hdmi_audio_hw_params, ptr null, ptr @msm_hdmi_audio_shutdown, ptr null, ptr null, ptr null, ptr null, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%u Hz, %d bit, %d channels\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* rate[%d] not supported!\0A\00", [63 x i8] zeroinitializer }, align 32
@hdmi_tx_8996_config = internal global { %struct.hdmi_platform_config, [44 x i8] } { %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_none, i32 0, ptr @pwr_reg_names_none, i32 0, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, i32 3, ptr @pwr_clk_names_8x74, i32 2, [6 x %struct.hdmi_gpio_data] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@hdmi_tx_8994_config = internal global { %struct.hdmi_platform_config, [44 x i8] } { %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_none, i32 0, ptr @pwr_reg_names_8x74, i32 2, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, i32 3, ptr @pwr_clk_names_8x74, i32 2, [6 x %struct.hdmi_gpio_data] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@hdmi_tx_8084_config = internal global { %struct.hdmi_platform_config, [44 x i8] } { %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_8084, i32 3, ptr @pwr_reg_names_8x74, i32 2, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, i32 3, ptr @pwr_clk_names_8x74, i32 2, [6 x %struct.hdmi_gpio_data] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@hdmi_tx_8974_config = internal global { %struct.hdmi_platform_config, [44 x i8] } { %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_8x74, i32 2, ptr @pwr_reg_names_8x74, i32 2, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, i32 3, ptr @pwr_clk_names_8x74, i32 2, [6 x %struct.hdmi_gpio_data] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@hdmi_tx_8960_config = internal global { %struct.hdmi_platform_config, [44 x i8] } { %struct.hdmi_platform_config { ptr null, ptr null, ptr @hpd_reg_names_8960, i32 2, ptr null, i32 0, ptr @hpd_clk_names_8960, ptr null, i32 3, ptr null, i32 0, [6 x %struct.hdmi_gpio_data] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@hdmi_tx_8660_config = internal global { %struct.hdmi_platform_config, [44 x i8] } zeroinitializer, align 32
@hpd_reg_names_none = internal global { [0 x ptr], [32 x i8] } zeroinitializer, align 32
@pwr_reg_names_none = internal global { [0 x ptr], [32 x i8] } zeroinitializer, align 32
@hpd_clk_names_8x74 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54], [20 x i8] zeroinitializer }, align 32
@hpd_clk_freq_8x74 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 19200000, i32 0], [20 x i8] zeroinitializer }, align 32
@pwr_clk_names_8x74 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.56], [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdp_core\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"extp\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alt_iface\00", [22 x i8] zeroinitializer }, align 32
@pwr_reg_names_8x74 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.57, ptr @.str.58], [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"core-vdda\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core-vcc\00", [23 x i8] zeroinitializer }, align 32
@hpd_reg_names_8084 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61], [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hpd-gdsc\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hpd-5v\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hpd-5v-en\00", [22 x i8] zeroinitializer }, align 32
@hpd_reg_names_8x74 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.59, ptr @.str.60], [24 x i8] zeroinitializer }, align 32
@hpd_reg_names_8960 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.57, ptr @.str.62], [24 x i8] zeroinitializer }, align 32
@hpd_clk_names_8960 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.53, ptr @.str.63, ptr @.str.64], [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi-mux\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"master_iface\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slave_iface\00", [20 x i8] zeroinitializer }, align 32
@switch.table.msm_hdmi_audio_hw_params = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.msm_hdmi_audio_hw_params.65 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 3, i32 0, i32 11, i32 0, i32 31], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 37, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 286, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 294, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 304, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 310, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 312, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 321, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"msm_hdmi_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 636, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 640, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"msm_hdmi_dt_match\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 626, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"msm_hdmi_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 610, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 537, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 541, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 542, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"msm_hdmi_gpio_pdata\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 412, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 566, i32 21 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 571, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 589, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 413, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 413, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 414, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 414, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 415, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 415, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 416, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 416, i32 36 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 417, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 417, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 418, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 418, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 134, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 136, i32 52 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 148, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 150, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 167, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 182, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 200, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 222, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 232, i32 16 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 237, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 244, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 250, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 88, i32 49 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 90, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 101, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 519, i32 9 }
@___asan_gen_.234 = private unnamed_addr constant [11 x i8] c"codec_data\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 510, i32 32 }
@___asan_gen_.237 = private unnamed_addr constant [25 x i8] c"msm_hdmi_audio_codec_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 505, i32 36 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 435, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 486, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"hdmi_tx_8996_config\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 399, i32 36 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"hdmi_tx_8994_config\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 391, i32 36 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"hdmi_tx_8084_config\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 383, i32 36 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"hdmi_tx_8974_config\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 373, i32 36 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"hdmi_tx_8960_config\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 362, i32 36 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"hdmi_tx_8660_config\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 357, i32 36 }
@___asan_gen_.264 = private unnamed_addr constant [19 x i8] c"hpd_reg_names_none\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 355, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"pwr_reg_names_none\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 354, i32 20 }
@___asan_gen_.270 = private unnamed_addr constant [19 x i8] c"hpd_clk_names_8x74\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 370, i32 20 }
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"hpd_clk_freq_8x74\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 371, i32 22 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"pwr_clk_names_8x74\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 369, i32 20 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 370, i32 44 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 370, i32 53 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 370, i32 61 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 369, i32 44 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 369, i32 52 }
@___asan_gen_.294 = private unnamed_addr constant [19 x i8] c"pwr_reg_names_8x74\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 367, i32 20 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 367, i32 44 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 367, i32 57 }
@___asan_gen_.303 = private unnamed_addr constant [19 x i8] c"hpd_reg_names_8084\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 381, i32 20 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 381, i32 44 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 381, i32 56 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 381, i32 66 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"hpd_reg_names_8x74\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 368, i32 20 }
@___asan_gen_.318 = private unnamed_addr constant [19 x i8] c"hpd_reg_names_8960\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 359, i32 20 }
@___asan_gen_.321 = private unnamed_addr constant [19 x i8] c"hpd_clk_names_8960\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 360, i32 20 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 359, i32 57 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 360, i32 52 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.331 = private constant [35 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi.c\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 360, i32 68 }
@___asan_gen_.333 = private unnamed_addr constant [38 x i8] c"switch.table.msm_hdmi_audio_hw_params\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [41 x i8] c"switch.table.msm_hdmi_audio_hw_params.65\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @msm_hdmi_init._entry, ptr @msm_hdmi_init._entry_ptr, ptr @msm_hdmi_unregister, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @msm_hdmi_driver, ptr @.str.10, ptr @msm_hdmi_dt_match, ptr @msm_hdmi_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @msm_hdmi_gpio_pdata, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @msm_hdmi_init.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @codec_data, ptr @msm_hdmi_audio_codec_ops, ptr @.str.50, ptr @.str.51, ptr @hdmi_tx_8996_config, ptr @hdmi_tx_8994_config, ptr @hdmi_tx_8084_config, ptr @hdmi_tx_8974_config, ptr @hdmi_tx_8960_config, ptr @hdmi_tx_8660_config, ptr @hpd_reg_names_none, ptr @pwr_reg_names_none, ptr @hpd_clk_names_8x74, ptr @hpd_clk_freq_8x74, ptr @pwr_clk_names_8x74, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @pwr_reg_names_8x74, ptr @.str.57, ptr @.str.58, ptr @hpd_reg_names_8084, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @hpd_reg_names_8x74, ptr @hpd_reg_names_8960, ptr @hpd_clk_names_8960, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @switch.table.msm_hdmi_audio_hw_params, ptr @switch.table.msm_hdmi_audio_hw_params.65], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_dt_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_gpio_pdata to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_audio_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_tx_8996_config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_tx_8994_config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_tx_8084_config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_tx_8974_config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_tx_8960_config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_tx_8660_config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_reg_names_none to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_reg_names_none to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_clk_names_8x74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_clk_freq_8x74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_clk_names_8x74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_reg_names_8x74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_reg_names_8084 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_reg_names_8x74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_reg_names_8960 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_clk_names_8960 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_hdmi_audio_hw_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_hdmi_audio_hw_params.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_set_mode(ptr noundef %hdmi, i1 noundef zeroext %power_on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 24
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  br i1 %power_on, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %hdmi_mode = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 20
  %0 = ptrtoint ptr %hdmi_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdmi_mode, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.then6, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 7
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %3) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %cond = phi ptr [ @.str.1, %if.then6 ], [ @.str.1, %if.then.if.end10_crit_edge ], [ @.str.2, %entry.if.end10_crit_edge ]
  %ctrl.0 = phi i32 [ 1, %if.then6 ], [ 3, %if.then.if.end10_crit_edge ], [ 2, %entry.if.end10_crit_edge ]
  %mmio.i25 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 7
  %4 = ptrtoint ptr %mmio.i25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i25, align 4
  tail call void @msm_writel(i32 noundef %ctrl.0, ptr noundef %5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %ctrl.0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_modeset_init(ptr noundef %hdmi, ptr noundef %dev, ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %pdev1 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %4 = ptrtoint ptr %hdmi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %hdmi, align 4
  %encoder3 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 19
  %5 = ptrtoint ptr %encoder3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %encoder, ptr %encoder3, align 4
  %infoframe = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1
  %call = tail call i32 @hdmi_audio_infoframe_init(ptr noundef %infoframe) #7
  %call4 = tail call ptr @msm_hdmi_bridge_init(ptr noundef %hdmi) #7
  %bridge = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 18
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %bridge, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fail.thread, label %if.end

fail.thread:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call4 to i32
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %7) #7
  br label %if.end55.sink.split

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdmi, align 4
  %call12 = tail call ptr @drm_bridge_connector_init(ptr noundef %11, ptr noundef %encoder) #7
  %connector = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 17
  %12 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %connector, align 4
  %cmp.i118 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call12 to i32
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, i32 noundef %13) #7
  %16 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %connector, align 4
  br label %fail

if.end20:                                         ; preds = %if.end
  %17 = ptrtoint ptr %encoder3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encoder3, align 4
  %call23 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call12, ptr noundef %18) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call25 = tail call i32 @irq_of_parse_and_map(ptr noundef %20, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 21
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call25, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %dev29 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef %call25) #7
  br label %fail

if.end30:                                         ; preds = %if.end20
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev24, i32 noundef %call25, ptr noundef nonnull @msm_hdmi_irq, ptr noundef null, i32 noundef 8196, ptr noundef nonnull @.str.7, ptr noundef %hdmi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34 = icmp slt i32 %call.i, 0
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %24 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev36, align 4
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, i32 noundef %27, i32 noundef %call.i) #7
  br label %fail

if.end38:                                         ; preds = %if.end30
  %28 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %connector, align 4
  tail call void @drm_bridge_connector_enable_hpd(ptr noundef %29) #7
  %30 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bridge, align 4
  %call41 = tail call i32 @msm_hdmi_hpd_enable(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev1, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev45, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, i32 noundef %call41) #7
  br label %fail

if.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bridge, align 4
  %num_bridges = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 30
  %36 = ptrtoint ptr %num_bridges to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_bridges, align 8
  %inc = add i32 %37, 1
  store i32 %inc, ptr %num_bridges, align 8
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 31, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %connector, align 4
  %num_connectors = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 32
  %41 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_connectors, align 4
  %inc49 = add i32 %42, 1
  store i32 %inc49, ptr %num_connectors, align 4
  %arrayidx50 = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 33, i32 %42
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %arrayidx50, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %hdmi, ptr %driver_data.i.i, align 4
  br label %cleanup

fail:                                             ; preds = %if.then43, %if.then35, %if.then27, %if.then15
  %ret.0.ph = phi i32 [ %call41, %if.then43 ], [ %call.i, %if.then35 ], [ %call25, %if.then27 ], [ %13, %if.then15 ]
  %45 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load ptr, ptr %bridge, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %fail.if.end55_crit_edge, label %if.then52

fail.if.end55_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then52:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msm_hdmi_bridge_destroy(ptr noundef nonnull %.pr) #7
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then52, %fail.thread
  %ret.0121.ph = phi i32 [ %ret.0.ph, %if.then52 ], [ %7, %fail.thread ]
  %46 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %bridge, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %fail.if.end55_crit_edge
  %ret.0121 = phi i32 [ %ret.0.ph, %fail.if.end55_crit_edge ], [ %ret.0121.ph, %if.end55.sink.split ]
  %connector56 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 17
  %47 = ptrtoint ptr %connector56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %connector56, align 4
  %tobool57.not = icmp eq ptr %48, null
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %if.then58

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %funcs = getelementptr inbounds %struct.drm_connector, ptr %48, i32 0, i32 21
  %49 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %destroy, align 4
  tail call void %52(ptr noundef nonnull %48) #7
  %53 = ptrtoint ptr %connector56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %connector56, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end55.cleanup_crit_edge, %if.end46
  %retval.0 = phi i32 [ 0, %if.end46 ], [ %ret.0121, %if.then58 ], [ %ret.0121, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_hdmi_bridge_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.hdmi, ptr %dev_id, i32 0, i32 18
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  tail call void @msm_hdmi_hpd_irq(ptr noundef %1) #7
  %i2c = getelementptr inbounds %struct.hdmi, ptr %dev_id, i32 0, i32 16
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  tail call void @msm_hdmi_i2c_irq(ptr noundef %3) #7
  %hdcp_ctrl = getelementptr inbounds %struct.hdmi, ptr %dev_id, i32 0, i32 23
  %4 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdcp_ctrl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msm_hdmi_hdcp_irq(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_connector_enable_hpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_hpd_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_bridge_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_register() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msm_hdmi_phy_driver_register() #10
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_hdmi_driver, ptr noundef null) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_driver_register() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_unregister() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_hdmi_driver) #7
  tail call void @msm_hdmi_phy_driver_unregister() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_driver_unregister() local_unnamed_addr #4 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hpd_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_i2c_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hdcp_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @msm_hdmi_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_dev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @msm_hdmi_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %name311 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node1, align 8
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %3) #7
  br label %cleanup56

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.12, ptr %call2, align 4
  %qfprom_mmio_name = getelementptr inbounds %struct.hdmi_platform_config, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %qfprom_mmio_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.13, ptr %qfprom_mmio_name, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0136 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.anon.101], ptr @msm_hdmi_gpio_pdata, i32 0, i32 %i.0136
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call4 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef %7, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup56

if.end8:                                          ; preds = %for.body
  %tobool9.not = icmp eq ptr %call4, null
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.then29_crit_edge

if.end8.if.then29_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name311) #7
  %9 = call ptr @memset(ptr %name311, i32 255, i32 32)
  %call12 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef nonnull %name311)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then10.if.end25.thread124_crit_edge, label %if.end17

if.then10.if.end25.thread124_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.thread124

if.end17:                                         ; preds = %if.then10
  %call16 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull %name311, i32 noundef 0) #7
  %cmp.i100 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end17
  %tobool22.not = icmp eq ptr %call16, null
  br i1 %tobool22.not, label %if.end21.if.end25.thread124_crit_edge, label %if.end25

if.end21.if.end25.thread124_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.thread124

if.end25.thread124:                               ; preds = %if.end21.if.end25.thread124_crit_edge, %if.then10.if.end25.thread124_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name311) #7
  %arrayidx26126 = getelementptr %struct.hdmi_platform_config, ptr %call2, i32 0, i32 11, i32 %i.0136
  %10 = ptrtoint ptr %arrayidx26126 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx26126, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call16 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name311) #7
  br label %cleanup56

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name311) #7
  br label %if.then29

if.then29:                                        ; preds = %if.end25, %if.end8.if.then29_crit_edge
  %call16.sink = phi ptr [ %call16, %if.end25 ], [ %call4, %if.end8.if.then29_crit_edge ]
  %arrayidx26 = getelementptr %struct.hdmi_platform_config, ptr %call2, i32 0, i32 11, i32 %i.0136
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16.sink, ptr %arrayidx26, align 4
  %label = getelementptr [6 x %struct.anon.101], ptr @msm_hdmi_gpio_pdata, i32 0, i32 %i.0136, i32 3
  %13 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %label, align 4
  %call31 = call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call16.sink, ptr noundef %14) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.end25.thread124
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0136)
  %tobool34 = icmp ne i32 %i.0136, 2
  %output37 = getelementptr %struct.hdmi_platform_config, ptr %call2, i32 0, i32 11, i32 %i.0136, i32 1
  %frombool = zext i1 %tobool34 to i8
  %15 = ptrtoint ptr %output37 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %output37, align 4
  %value = getelementptr [6 x %struct.anon.101], ptr @msm_hdmi_gpio_pdata, i32 0, i32 %i.0136, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %value41 = getelementptr %struct.hdmi_platform_config, ptr %call2, i32 0, i32 11, i32 %i.0136, i32 2
  %18 = ptrtoint ptr %value41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %value41, align 4
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %platform_data = getelementptr %struct.device, ptr %dev, i32 0, i32 7
  %19 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2, ptr %platform_data, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 172, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.end.if.end132.i_crit_edge, label %if.end.i

for.end.if.end132.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132.i

if.end.i:                                         ; preds = %for.end
  %pdev2.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %pdev2.i, align 4
  %config3.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %config3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2, ptr %config3.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 24
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @msm_hdmi_init.__key, i16 noundef signext 3) #7
  %22 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call2, align 4
  %call5.i = call ptr @msm_ioremap(ptr noundef %add.ptr, ptr noundef %23, ptr noundef nonnull @.str.30) #7
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i, ptr %mmio.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call5.i to i32
  br label %if.then131.i

if.end11.i:                                       ; preds = %if.end.i
  %26 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call2, align 4
  %call13.i = call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef %27) #7
  %28 = ptrtoint ptr %call13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call13.i, align 4
  %mmio_phy_addr.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %mmio_phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mmio_phy_addr.i, align 4
  %31 = ptrtoint ptr %qfprom_mmio_name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qfprom_mmio_name, align 4
  %call14.i = call ptr @msm_ioremap(ptr noundef %add.ptr, ptr noundef %32, ptr noundef nonnull @.str.31) #7
  %qfprom_mmio.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %qfprom_mmio.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call14.i, ptr %qfprom_mmio.i, align 4
  %cmp.i244.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244.i, label %if.then17.i, label %if.end11.i.if.end20.i_crit_edge

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #7
  %34 = ptrtoint ptr %qfprom_mmio.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %qfprom_mmio.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end11.i.if.end20.i_crit_edge
  %hpd_reg_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %call2, i32 0, i32 3
  %35 = ptrtoint ptr %hpd_reg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hpd_reg_cnt.i, align 4
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 12) #7
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !179

devm_kcalloc.exit.thread.i:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %hpd_regs262.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %hpd_regs262.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %hpd_regs262.i, align 4
  br label %if.then131.i

devm_kcalloc.exit.i:                              ; preds = %if.end20.i
  %40 = extractvalue { i32, i1 } %37, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %40, i32 noundef 3520) #7
  %hpd_regs.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %hpd_regs.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call5.i.i.i, ptr %hpd_regs.i, align 4
  %tobool24.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool24.not.i, label %devm_kcalloc.exit.i.if.then131.i_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.if.then131.i_crit_edge:       ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131.i

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %42 = ptrtoint ptr %hpd_reg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hpd_reg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp288.i = icmp sgt i32 %43, 0
  br i1 %cmp288.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %hpd_reg_names.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %call2, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0289.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %hpd_reg_names.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hpd_reg_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %45, i32 %i.0289.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %48 = ptrtoint ptr %hpd_regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hpd_regs.i, align 4
  %arrayidx29.i = getelementptr %struct.regulator_bulk_data, ptr %49, i32 %i.0289.i
  %50 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %arrayidx29.i, align 4
  %inc.i = add nuw nsw i32 %i.0289.i, 1
  %51 = ptrtoint ptr %hpd_reg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hpd_reg_cnt.i, align 4
  %cmp.i101 = icmp slt i32 %inc.i, %52
  br i1 %cmp.i101, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %43, %for.cond.preheader.i.for.end.i_crit_edge ], [ %52, %for.body.i.for.end.i_crit_edge ]
  %53 = ptrtoint ptr %hpd_regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hpd_regs.i, align 4
  %call33.i = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef %.lcssa.i, ptr noundef %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end37.i, label %if.then35.i

if.then35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34, i32 noundef %call33.i) #7
  br label %if.then131.i

if.end37.i:                                       ; preds = %for.end.i
  %pwr_reg_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %call2, i32 0, i32 5
  %55 = ptrtoint ptr %pwr_reg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pwr_reg_cnt.i, align 4
  %57 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 12) #7
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %devm_kcalloc.exit248.thread.i, label %devm_kcalloc.exit248.i, !prof !179

devm_kcalloc.exit248.thread.i:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %pwr_regs265.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 11
  %59 = ptrtoint ptr %pwr_regs265.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %pwr_regs265.i, align 4
  br label %if.then131.i

devm_kcalloc.exit248.i:                           ; preds = %if.end37.i
  %60 = extractvalue { i32, i1 } %57, 0
  %call5.i.i245.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %60, i32 noundef 3520) #7
  %pwr_regs.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 11
  %61 = ptrtoint ptr %pwr_regs.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call5.i.i245.i, ptr %pwr_regs.i, align 4
  %tobool41.not.i = icmp eq ptr %call5.i.i245.i, null
  br i1 %tobool41.not.i, label %devm_kcalloc.exit248.i.if.then131.i_crit_edge, label %if.end43.i

devm_kcalloc.exit248.i.if.then131.i_crit_edge:    ; preds = %devm_kcalloc.exit248.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131.i

if.end43.i:                                       ; preds = %devm_kcalloc.exit248.i
  %62 = ptrtoint ptr %pwr_reg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pwr_reg_cnt.i, align 4
  %call47.i = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef %63, ptr noundef nonnull %call5.i.i245.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end51.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35, i32 noundef %call47.i) #7
  br label %if.then131.i

if.end51.i:                                       ; preds = %if.end43.i
  %hpd_clk_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %call2, i32 0, i32 8
  %64 = ptrtoint ptr %hpd_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hpd_clk_cnt.i, align 4
  %66 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %65, i32 4) #7
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %devm_kcalloc.exit252.thread.i, label %devm_kcalloc.exit252.i, !prof !179

devm_kcalloc.exit252.thread.i:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  %hpd_clks268.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 12
  %68 = ptrtoint ptr %hpd_clks268.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %hpd_clks268.i, align 4
  br label %if.then131.i

devm_kcalloc.exit252.i:                           ; preds = %if.end51.i
  %69 = extractvalue { i32, i1 } %66, 0
  %call5.i.i249.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %69, i32 noundef 3520) #7
  %hpd_clks.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 12
  %70 = ptrtoint ptr %hpd_clks.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call5.i.i249.i, ptr %hpd_clks.i, align 4
  %tobool55.not.i = icmp eq ptr %call5.i.i249.i, null
  br i1 %tobool55.not.i, label %devm_kcalloc.exit252.i.if.then131.i_crit_edge, label %for.cond58.preheader.i

devm_kcalloc.exit252.i.if.then131.i_crit_edge:    ; preds = %devm_kcalloc.exit252.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131.i

for.cond58.preheader.i:                           ; preds = %devm_kcalloc.exit252.i
  %71 = ptrtoint ptr %hpd_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hpd_clk_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp60290.i = icmp sgt i32 %72, 0
  br i1 %cmp60290.i, label %for.body61.lr.ph.i, label %for.cond58.preheader.i.for.end75.i_crit_edge

for.cond58.preheader.i.for.end75.i_crit_edge:     ; preds = %for.cond58.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.body61.lr.ph.i:                               ; preds = %for.cond58.preheader.i
  %hpd_clk_names.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %call2, i32 0, i32 6
  br label %for.body61.i

for.body61.i:                                     ; preds = %for.inc73.i.for.body61.i_crit_edge, %for.body61.lr.ph.i
  %i.1291.i = phi i32 [ 0, %for.body61.lr.ph.i ], [ %inc74.i, %for.inc73.i.for.body61.i_crit_edge ]
  %73 = ptrtoint ptr %hpd_clk_names.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hpd_clk_names.i, align 4
  %arrayidx62.i = getelementptr ptr, ptr %74, i32 %i.1291.i
  %75 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx62.i, align 4
  %call63.i = call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef %76) #7
  %cmp.i253.i = icmp ugt ptr %call63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253.i, label %cleanup.i, label %for.inc73.i

cleanup.i:                                        ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %call63.i to i32
  %78 = ptrtoint ptr %hpd_clk_names.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hpd_clk_names.i, align 4
  %arrayidx69.i = getelementptr ptr, ptr %79, i32 %i.1291.i
  %80 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx69.i, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, ptr noundef %81, i32 noundef %77) #7
  br label %if.then131.i

for.inc73.i:                                      ; preds = %for.body61.i
  %82 = ptrtoint ptr %hpd_clks.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hpd_clks.i, align 4
  %arrayidx72.i = getelementptr ptr, ptr %83, i32 %i.1291.i
  %84 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call63.i, ptr %arrayidx72.i, align 4
  %inc74.i = add nuw nsw i32 %i.1291.i, 1
  %85 = ptrtoint ptr %hpd_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hpd_clk_cnt.i, align 4
  %cmp60.i = icmp slt i32 %inc74.i, %86
  br i1 %cmp60.i, label %for.inc73.i.for.body61.i_crit_edge, label %for.inc73.i.for.end75.i_crit_edge

for.inc73.i.for.end75.i_crit_edge:                ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.inc73.i.for.body61.i_crit_edge:               ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61.i

for.end75.i:                                      ; preds = %for.inc73.i.for.end75.i_crit_edge, %for.cond58.preheader.i.for.end75.i_crit_edge
  %pwr_clk_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %call2, i32 0, i32 10
  %87 = ptrtoint ptr %pwr_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pwr_clk_cnt.i, align 4
  %89 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %88, i32 4) #7
  %90 = extractvalue { i32, i1 } %89, 1
  br i1 %90, label %devm_kcalloc.exit257.thread.i, label %devm_kcalloc.exit257.i, !prof !179

devm_kcalloc.exit257.thread.i:                    ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %pwr_clks275.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 13
  %91 = ptrtoint ptr %pwr_clks275.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %pwr_clks275.i, align 4
  br label %if.then131.i

devm_kcalloc.exit257.i:                           ; preds = %for.end75.i
  %92 = extractvalue { i32, i1 } %89, 0
  %call5.i.i254.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %92, i32 noundef 3520) #7
  %pwr_clks.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 13
  %93 = ptrtoint ptr %pwr_clks.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call5.i.i254.i, ptr %pwr_clks.i, align 4
  %tobool79.not.i = icmp eq ptr %call5.i.i254.i, null
  br i1 %tobool79.not.i, label %devm_kcalloc.exit257.i.if.then131.i_crit_edge, label %for.cond82.preheader.i

devm_kcalloc.exit257.i.if.then131.i_crit_edge:    ; preds = %devm_kcalloc.exit257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then131.i

for.cond82.preheader.i:                           ; preds = %devm_kcalloc.exit257.i
  %94 = ptrtoint ptr %pwr_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pwr_clk_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp84292.i = icmp sgt i32 %95, 0
  br i1 %cmp84292.i, label %for.body85.lr.ph.i, label %for.cond82.preheader.i.for.end103.i_crit_edge

for.cond82.preheader.i.for.end103.i_crit_edge:    ; preds = %for.cond82.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end103.i

for.body85.lr.ph.i:                               ; preds = %for.cond82.preheader.i
  %pwr_clk_names.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %call2, i32 0, i32 9
  br label %for.body85.i

for.body85.i:                                     ; preds = %for.inc101.i.for.body85.i_crit_edge, %for.body85.lr.ph.i
  %i.2293.i = phi i32 [ 0, %for.body85.lr.ph.i ], [ %inc102.i, %for.inc101.i.for.body85.i_crit_edge ]
  %96 = ptrtoint ptr %pwr_clk_names.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pwr_clk_names.i, align 4
  %arrayidx87.i = getelementptr ptr, ptr %97, i32 %i.2293.i
  %98 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx87.i, align 4
  %call88.i = call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef %99) #7
  %cmp.i258.i = icmp ugt ptr %call88.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258.i, label %cleanup98.i, label %for.inc101.i

cleanup98.i:                                      ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %call88.i to i32
  %101 = ptrtoint ptr %pwr_clk_names.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pwr_clk_names.i, align 4
  %arrayidx94.i = getelementptr ptr, ptr %102, i32 %i.2293.i
  %103 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx94.i, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37, ptr noundef %104, i32 noundef %100) #7
  br label %if.then131.i

for.inc101.i:                                     ; preds = %for.body85.i
  %105 = ptrtoint ptr %pwr_clks.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pwr_clks.i, align 4
  %arrayidx97.i = getelementptr ptr, ptr %106, i32 %i.2293.i
  %107 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call88.i, ptr %arrayidx97.i, align 4
  %inc102.i = add nuw nsw i32 %i.2293.i, 1
  %108 = ptrtoint ptr %pwr_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pwr_clk_cnt.i, align 4
  %cmp84.i = icmp slt i32 %inc102.i, %109
  br i1 %cmp84.i, label %for.inc101.i.for.body85.i_crit_edge, label %for.inc101.i.for.end103.i_crit_edge

for.inc101.i.for.end103.i_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end103.i

for.inc101.i.for.body85.i_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85.i

for.end103.i:                                     ; preds = %for.inc101.i.for.end103.i_crit_edge, %for.cond82.preheader.i.for.end103.i_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call105.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.38, i32 noundef 655362, i32 noundef 1) #7
  %workq.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 22
  %110 = ptrtoint ptr %workq.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call105.i, ptr %workq.i, align 4
  %call106.i = call ptr @msm_hdmi_i2c_init(ptr noundef nonnull %call.i.i) #7
  %i2c.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 16
  %111 = ptrtoint ptr %i2c.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call106.i, ptr %i2c.i, align 4
  %cmp.i259.i = icmp ugt ptr %call106.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259.i, label %if.then109.i, label %if.end114.i

if.then109.i:                                     ; preds = %for.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %call106.i to i32
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39, i32 noundef %112) #7
  %113 = ptrtoint ptr %i2c.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %i2c.i, align 4
  br label %if.then131.i

if.end114.i:                                      ; preds = %for.end103.i
  %call115.i = call fastcc i32 @msm_hdmi_get_phy(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.end119.i, label %if.then117.i

if.then117.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.40) #7
  br label %if.then131.i

if.end119.i:                                      ; preds = %if.end114.i
  %call120.i = call ptr @msm_hdmi_hdcp_init(ptr noundef nonnull %call.i.i) #7
  %hdcp_ctrl.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 23
  %114 = ptrtoint ptr %hdcp_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call120.i, ptr %hdcp_ctrl.i, align 4
  %cmp.i260.i = icmp ugt ptr %call120.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260.i, label %do.end126.i, label %if.end119.i.msm_hdmi_init.exit_crit_edge

if.end119.i.msm_hdmi_init.exit_crit_edge:         ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm_hdmi_init.exit

do.end126.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  %115 = ptrtoint ptr %hdcp_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %hdcp_ctrl.i, align 4
  br label %msm_hdmi_init.exit

if.then131.i:                                     ; preds = %if.then117.i, %if.then109.i, %cleanup98.i, %devm_kcalloc.exit257.i.if.then131.i_crit_edge, %devm_kcalloc.exit257.thread.i, %cleanup.i, %devm_kcalloc.exit252.i.if.then131.i_crit_edge, %devm_kcalloc.exit252.thread.i, %if.then49.i, %devm_kcalloc.exit248.i.if.then131.i_crit_edge, %devm_kcalloc.exit248.thread.i, %if.then35.i, %devm_kcalloc.exit.i.if.then131.i_crit_edge, %devm_kcalloc.exit.thread.i, %if.then8.i
  %ret.4282.i = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.if.then131.i_crit_edge ], [ %25, %if.then8.i ], [ %call33.i, %if.then35.i ], [ %call47.i, %if.then49.i ], [ %77, %cleanup.i ], [ %100, %cleanup98.i ], [ %112, %if.then109.i ], [ %call115.i, %if.then117.i ], [ -12, %devm_kcalloc.exit248.i.if.then131.i_crit_edge ], [ -12, %devm_kcalloc.exit252.i.if.then131.i_crit_edge ], [ -12, %devm_kcalloc.exit257.i.if.then131.i_crit_edge ], [ -12, %devm_kcalloc.exit248.thread.i ], [ -12, %devm_kcalloc.exit252.thread.i ], [ -12, %devm_kcalloc.exit257.thread.i ]
  %workq.i.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 22
  %116 = ptrtoint ptr %workq.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %workq.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %117, null
  br i1 %tobool.not.i.i, label %if.then131.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then131.i.if.end.i.i_crit_edge:                ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @destroy_workqueue(ptr noundef nonnull %117) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then131.i.if.end.i.i_crit_edge
  call void @msm_hdmi_hdcp_destroy(ptr noundef nonnull %call.i.i) #7
  %phy_dev.i.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 15
  %118 = ptrtoint ptr %phy_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %phy_dev.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %119, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @put_device(ptr noundef nonnull %119) #7
  %phy.i.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 14
  %120 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %phy.i.i, align 4
  %121 = ptrtoint ptr %phy_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %phy_dev.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %i2c.i.i = getelementptr inbounds %struct.hdmi, ptr %call.i.i, i32 0, i32 16
  %122 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %i2c.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %123, null
  br i1 %tobool7.not.i.i, label %if.end6.i.i.msm_hdmi_destroy.exit.i_crit_edge, label %if.then8.i.i

if.end6.i.i.msm_hdmi_destroy.exit.i_crit_edge:    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm_hdmi_destroy.exit.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @msm_hdmi_i2c_destroy(ptr noundef nonnull %123) #7
  br label %msm_hdmi_destroy.exit.i

msm_hdmi_destroy.exit.i:                          ; preds = %if.then8.i.i, %if.end6.i.i.msm_hdmi_destroy.exit.i_crit_edge
  %124 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev2.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3, i32 8
  %126 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %driver_data.i.i.i.i, align 4
  br label %if.end132.i

if.end132.i:                                      ; preds = %msm_hdmi_destroy.exit.i, %for.end.if.end132.i_crit_edge
  %ret.4283.i = phi i32 [ %ret.4282.i, %msm_hdmi_destroy.exit.i ], [ -12, %for.end.if.end132.i_crit_edge ]
  %127 = inttoptr i32 %ret.4283.i to ptr
  br label %msm_hdmi_init.exit

msm_hdmi_init.exit:                               ; preds = %if.end132.i, %do.end126.i, %if.end119.i.msm_hdmi_init.exit_crit_edge
  %retval.0.i = phi ptr [ %127, %if.end132.i ], [ %call.i.i, %do.end126.i ], [ %call.i.i, %if.end119.i.msm_hdmi_init.exit_crit_edge ]
  %cmp.i102 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %if.then48, label %if.end50

if.then48:                                        ; preds = %msm_hdmi_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup56

if.end50:                                         ; preds = %msm_hdmi_init.exit
  %hdmi51 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 4
  %129 = ptrtoint ptr %hdmi51 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %retval.0.i, ptr %hdmi51, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #7
  %130 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %131 = call ptr @memset(ptr %130, i32 255, i32 48)
  %132 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %dev, ptr %pdevinfo.i.i.i, align 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %133 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %130, align 8
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %135 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.49, ptr %name2.i.i.i, align 4
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %136 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -2, ptr %id3.i.i.i, align 8
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %137 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %res4.i.i.i, align 4
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %138 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %num_res.i.i.i, align 8
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %139 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @codec_data, ptr %data5.i.i.i, align 4
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %140 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 16, ptr %size_data.i.i.i, align 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %141 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  %142 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #7
  %audio_pdev.i = getelementptr inbounds %struct.hdmi, ptr %retval.0.i, i32 0, i32 2
  %143 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i.i.i, ptr %audio_pdev.i, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.not, label %if.then54, label %if.end50.cleanup56_crit_edge

if.end50.cleanup56_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %call.i.i.i to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %144) #7
  %145 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %audio_pdev.i, align 4
  br label %cleanup56

cleanup56:                                        ; preds = %if.then54, %if.end50.cleanup56_crit_edge, %if.then48, %cleanup, %if.then6, %if.then
  %retval.4 = phi i32 [ %128, %if.then48 ], [ -6, %if.then ], [ 0, %if.then54 ], [ 0, %if.end50.cleanup56_crit_edge ], [ %8, %if.then6 ], [ %11, %cleanup ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_hdmi_unbind(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %audio_pdev = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %audio_pdev, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_device_unregister(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdmi, align 8
  %workq.i = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %workq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workq.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @destroy_workqueue(ptr noundef nonnull %9) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  tail call void @msm_hdmi_hdcp_destroy(ptr noundef %7) #7
  %phy_dev.i = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %phy_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_dev.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %11) #7
  %phy.i = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 14
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %phy.i, align 4
  %13 = ptrtoint ptr %phy_dev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %phy_dev.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %i2c.i = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 16
  %14 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %if.end6.i.msm_hdmi_destroy.exit_crit_edge, label %if.then8.i

if.end6.i.msm_hdmi_destroy.exit_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm_hdmi_destroy.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msm_hdmi_i2c_destroy(ptr noundef nonnull %15) #7
  br label %msm_hdmi_destroy.exit

msm_hdmi_destroy.exit:                            ; preds = %if.then8.i, %if.end6.i.msm_hdmi_destroy.exit_crit_edge
  %pdev.i = getelementptr inbounds %struct.hdmi, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %19 = ptrtoint ptr %hdmi to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %hdmi, align 8
  br label %if.end8

if.end8:                                          ; preds = %msm_hdmi_destroy.exit, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_hdmi_i2c_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_get_phy(ptr nocapture noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.then

of_parse_phandle.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %of_parse_phandle.exit.if.then_crit_edge, label %if.end

of_parse_phandle.exit.if.then_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %of_parse_phandle.exit.if.then_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #7
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call3 = call ptr @of_find_device_by_node(ptr noundef nonnull %6) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then9.critedge, label %if.then5

if.then5:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call3, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %phy = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 14
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %phy, align 4
  call void @of_node_put(ptr noundef nonnull %6) #7
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then9.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %6) #7
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #7
  br label %cleanup

if.then14:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #7
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %call3, i32 0, i32 3
  call void @put_device(ptr noundef %dev16) #7
  br label %cleanup

if.end17:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %call3, i32 0, i32 3
  %call19 = call ptr @get_device(ptr noundef %dev18) #7
  %phy_dev = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 15
  %12 = ptrtoint ptr %phy_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %phy_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then9.critedge, %if.then
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -517, %if.then14 ], [ -517, %if.then9.critedge ], [ -6, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_hdmi_hdcp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hdcp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_i2c_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_audio_hw_params(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %daifmt, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample_rate, align 4
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sample_width, align 4
  %channels = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %params, i32 0, i32 3
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channels, align 2
  %conv = zext i8 %7 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %5, i32 noundef %conv) #7
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channels, align 2
  %switch.tableidx = add i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 7
  br i1 %10, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i8 85, %switch.tableidx
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %12 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.msm_hdmi_audio_hw_params, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep32 = getelementptr inbounds [7 x i32], ptr @switch.table.msm_hdmi_audio_hw_params.65, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load33 = load i32, ptr %switch.gep32, align 4
  %16 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sample_rate, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %sw.default15 [
    i32 32000, label %switch.lookup.sw.epilog17_crit_edge
    i32 44100, label %sw.bb9
    i32 48000, label %sw.bb10
    i32 88200, label %sw.bb11
    i32 96000, label %sw.bb12
    i32 176400, label %sw.bb13
    i32 192000, label %sw.bb14
  ]

switch.lookup.sw.epilog17_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog17

sw.bb9:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog17

sw.bb10:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog17

sw.bb11:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog17

sw.bb12:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog17

sw.bb13:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog17

sw.bb14:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog17

sw.default15:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51, i32 noundef %17) #7
  br label %cleanup

sw.epilog17:                                      ; preds = %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %switch.lookup.sw.epilog17_crit_edge
  %rate.0 = phi i32 [ 6, %sw.bb14 ], [ 5, %sw.bb13 ], [ 4, %sw.bb12 ], [ 3, %sw.bb11 ], [ 2, %sw.bb10 ], [ 1, %sw.bb9 ], [ 0, %switch.lookup.sw.epilog17_crit_edge ]
  tail call void @msm_hdmi_audio_set_sample_rate(ptr noundef %1, i32 noundef %rate.0) #7
  %call18 = tail call i32 @msm_hdmi_audio_info_setup(ptr noundef %1, i1 noundef zeroext true, i32 noundef %switch.load, i32 noundef %switch.load33, i32 noundef 0, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog17, %sw.default15, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default15 ], [ 0, %sw.epilog17 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_hdmi_audio_shutdown(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @msm_hdmi_audio_info_setup(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_audio_set_sample_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_audio_info_setup(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 37, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 286, i32 3}
!6 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 294, i32 3}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 304, i32 3}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 310, i32 4}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 312, i32 3}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 321, i32 3}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 640, i32 11}
!19 = !{ptr @msm_hdmi_driver, !20, !"msm_hdmi_driver", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 636, i32 31}
!21 = !{ptr @msm_hdmi_ops, !22, !"msm_hdmi_ops", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 610, i32 35}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 537, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 541, i32 28}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 542, i32 31}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 566, i32 21}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 571, i32 5}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 589, i32 3}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 413, i32 4}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 413, i32 37}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 414, i32 4}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 414, i32 38}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 415, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 415, i32 34}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 416, i32 4}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 416, i32 36}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 417, i32 4}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 417, i32 37}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 418, i32 4}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 418, i32 37}
!59 = !{ptr @msm_hdmi_gpio_pdata, !60, !"msm_hdmi_gpio_pdata", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 412, i32 3}
!61 = !{ptr @msm_hdmi_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 134, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 136, i32 52}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 148, i32 29}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 150, i32 3}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 167, i32 3}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 182, i32 3}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 200, i32 4}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 222, i32 4}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 232, i32 16}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 237, i32 3}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 244, i32 3}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 250, i32 3}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @msm_hdmi_init._entry, !86, !"_entry", i1 false, i1 false}
!92 = !{ptr @msm_hdmi_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 88, i32 49}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 90, i32 3}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 101, i32 3}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 519, i32 9}
!101 = !{ptr @codec_data, !102, !"codec_data", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 510, i32 32}
!103 = !{ptr @msm_hdmi_audio_codec_ops, !104, !"msm_hdmi_audio_codec_ops", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 505, i32 36}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 435, i32 2}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 486, i32 3}
!109 = !{ptr @msm_hdmi_dt_match, !110, !"msm_hdmi_dt_match", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 626, i32 34}
!111 = !{ptr @hdmi_tx_8996_config, !112, !"hdmi_tx_8996_config", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 399, i32 36}
!113 = !{ptr @hpd_reg_names_none, !114, !"hpd_reg_names_none", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 355, i32 20}
!115 = !{ptr @pwr_reg_names_none, !116, !"pwr_reg_names_none", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 354, i32 20}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 370, i32 44}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 370, i32 53}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 370, i32 61}
!123 = !{ptr @hpd_clk_names_8x74, !124, !"hpd_clk_names_8x74", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 370, i32 20}
!125 = !{ptr @hpd_clk_freq_8x74, !126, !"hpd_clk_freq_8x74", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 371, i32 22}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 369, i32 44}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 369, i32 52}
!131 = !{ptr @pwr_clk_names_8x74, !132, !"pwr_clk_names_8x74", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 369, i32 20}
!133 = !{ptr @hdmi_tx_8994_config, !134, !"hdmi_tx_8994_config", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 391, i32 36}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 367, i32 44}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 367, i32 57}
!139 = !{ptr @pwr_reg_names_8x74, !140, !"pwr_reg_names_8x74", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 367, i32 20}
!141 = !{ptr @hdmi_tx_8084_config, !142, !"hdmi_tx_8084_config", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 383, i32 36}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 381, i32 44}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 381, i32 56}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 381, i32 66}
!149 = !{ptr @hpd_reg_names_8084, !150, !"hpd_reg_names_8084", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 381, i32 20}
!151 = !{ptr @hdmi_tx_8974_config, !152, !"hdmi_tx_8974_config", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 373, i32 36}
!153 = !{ptr @hpd_reg_names_8x74, !154, !"hpd_reg_names_8x74", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 368, i32 20}
!155 = !{ptr @hdmi_tx_8960_config, !156, !"hdmi_tx_8960_config", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 362, i32 36}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 359, i32 57}
!159 = !{ptr @hpd_reg_names_8960, !160, !"hpd_reg_names_8960", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 359, i32 20}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 360, i32 52}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 360, i32 68}
!165 = !{ptr @hpd_clk_names_8960, !166, !"hpd_clk_names_8960", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 360, i32 20}
!167 = !{ptr @hdmi_tx_8660_config, !168, !"hdmi_tx_8660_config", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi.c", i32 357, i32 36}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i8 0, i8 2}
!179 = !{!"branch_weights", i32 1, i32 2000}
