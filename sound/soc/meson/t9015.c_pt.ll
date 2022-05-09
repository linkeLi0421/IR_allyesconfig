; ModuleID = '/llk/IR_all_yes/sound/soc/meson/t9015.c_pt.bc'
source_filename = "../sound/soc/meson/t9015.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.t9015 = type { ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_meson_t9015__294_323_t9015_driver_init6 = internal global ptr @t9015_driver_init, section ".initcall6.init", align 4
@t9015_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @t9015_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @t9015_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_t9015_driver_exit = internal global ptr @t9015_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [64 x i8] c"snd_soc_meson_t9015.description=ASoC Amlogic T9015 codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [64 x i8] c"snd_soc_meson_t9015.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [61 x i8] c"snd_soc_meson_t9015.file=sound/soc/meson/snd-soc-meson-t9015\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [32 x i8] c"snd_soc_meson_t9015.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"t9015-codec\00", [20 x i8] zeroinitializer }, align 32
@t9015_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,t9015\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get core clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"failed to AVDD\0A\00", [16 x i8] zeroinitializer }, align 32
@t9015_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 270, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"core clock enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"t9015_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/meson/t9015.c\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t9015_probe._entry_ptr = internal global ptr @t9015_probe._entry, section ".printk_index", align 4
@t9015_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 282, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@t9015_probe._entry_ptr.12 = internal global ptr @t9015_probe._entry.10, section ".printk_index", align 4
@t9015_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 288, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"register map failed\0A\00", [43 x i8] zeroinitializer }, align 32
@t9015_probe._entry_ptr.15 = internal global ptr @t9015_probe._entry.13, section ".printk_index", align 4
@t9015_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@t9015_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"t9015:292:(&t9015_regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@t9015_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 294, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@t9015_probe._entry_ptr.19 = internal global ptr @t9015_probe._entry.17, section ".printk_index", align 4
@t9015_codec_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @t9015_snd_controls, i32 7, ptr @t9015_dapm_widgets, i32 14, ptr @t9015_dapm_routes, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @t9015_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 44, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@t9015_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.57, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @t9015_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.54, i64 33554501, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@t9015_snd_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @mono_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @ramp_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }], [80 x i8] zeroinitializer }, align 32
@t9015_dapm_routes = internal constant { [16 x %struct.snd_soc_dapm_route], [192 x i8] } { [16 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.51, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.52, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.51, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.52, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }], [192 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Playback Channel Mode\00", [42 x i8] zeroinitializer }, align 32
@mono_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 8, i8 8, i32 2, i32 1, ptr @mono_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -9525, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 8, i32 24, i32 16, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ramp Rate\00", [22 x i8] zeroinitializer }, align 32
@ramp_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 10, i8 10, i32 2, i32 1, ptr @ramp_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Volume Ramp Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mute Ramp Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unmute Ramp Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 14, i32 14, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@mono_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.31, ptr @.str.32], [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mono\00", [27 x i8] zeroinitializer }, align 32
@ramp_rate_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.33, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fast\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Slow\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Right IN\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Left IN\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right DAC Sel\00", [18 x i8] zeroinitializer }, align 32
@t9015_right_dac_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @dacr_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left DAC Sel\00", [19 x i8] zeroinitializer }, align 32
@t9015_left_dac_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @dacl_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right- Driver\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right+ Driver\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left- Driver\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left+ Driver\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LORN\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LORP\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOLN\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOLP\00", [27 x i8] zeroinitializer }, align 32
@t9015_dapm_widgets = internal constant { [14 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [616 x i8] } { [14 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @t9015_right_dac_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @t9015_left_dac_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [616 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right DAC Source\00", [47 x i8] zeroinitializer }, align 32
@dacr_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 22, i8 22, i32 2, i32 1, ptr @dacr_in_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dacr_in_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.51, ptr @.str.52], [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left DAC Source\00", [16 x i8] zeroinitializer }, align 32
@dacl_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 23, i8 23, i32 2, i32 1, ptr @dacl_in_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dacl_in_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.52, ptr @.str.51], [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@t9015_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.7, i32 199, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AVDD enable failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"t9015_set_bias_level\00", [43 x i8] zeroinitializer }, align 32
@t9015_set_bias_level._entry_ptr = internal global ptr @t9015_set_bias_level._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"t9015-hifi\00", [21 x i8] zeroinitializer }, align 32
@t9015_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @t9015_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"t9015_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 315, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 317, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"t9015_ids\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 309, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 260, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 262, i32 50 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 264, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 266, i32 50 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 270, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 282, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 288, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"t9015_regmap_config\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 240, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 292, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 294, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"t9015_codec_driver\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 227, i32 46 }
@___asan_gen_.128 = private unnamed_addr constant [10 x i8] c"t9015_dai\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 86, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"t9015_snd_controls\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 116, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"t9015_dapm_routes\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 158, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 118, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"mono_enum\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 114, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 119, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 120, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 101, i32 14 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 124, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"ramp_rate_enum\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 104, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 125, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 126, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 127, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [9 x i8] c"mono_txt\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 113, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 113, i32 42 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 113, i32 52 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"ramp_rate_txt\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 103, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 103, i32 47 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 103, i32 55 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 136, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 137, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 138, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"t9015_right_dac_mux\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 130, i32 38 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 140, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"t9015_left_dac_mux\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 132, i32 38 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 142, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 143, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 144, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 146, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 148, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 150, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 152, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 153, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 154, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 155, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"t9015_dapm_widgets\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 135, i32 41 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 131, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"dacr_in_enum\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 108, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant [12 x i8] c"dacr_in_txt\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 107, i32 27 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 107, i32 45 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 107, i32 54 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 133, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [13 x i8] c"dacl_in_enum\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 111, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant [12 x i8] c"dacl_in_txt\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 110, i32 27 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 159, i32 22 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 199, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 87, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant [14 x i8] c"t9015_dai_ops\00", align 1
@___asan_gen_.281 = private constant [27 x i8] c"../sound/soc/meson/t9015.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 82, i32 37 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_t9015_driver_exit, ptr @__initcall__kmod_snd_soc_meson_t9015__294_323_t9015_driver_init6, ptr @t9015_driver_exit, ptr @t9015_probe._entry, ptr @t9015_probe._entry.10, ptr @t9015_probe._entry.13, ptr @t9015_probe._entry.17, ptr @t9015_probe._entry_ptr, ptr @t9015_probe._entry_ptr.12, ptr @t9015_probe._entry_ptr.15, ptr @t9015_probe._entry_ptr.19, ptr @t9015_set_bias_level._entry, ptr @t9015_set_bias_level._entry_ptr, ptr @t9015_driver, ptr @.str, ptr @t9015_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @t9015_probe._key, ptr @t9015_regmap_config, ptr @.str.16, ptr @.str.18, ptr @t9015_codec_driver, ptr @t9015_dai, ptr @t9015_snd_controls, ptr @t9015_dapm_routes, ptr @.str.20, ptr @mono_enum, ptr @.str.21, ptr @.compoundliteral, ptr @.str.22, ptr @dac_vol_tlv, ptr @.compoundliteral.23, ptr @.str.24, ptr @ramp_rate_enum, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @mono_txt, ptr @.str.31, ptr @.str.32, ptr @ramp_rate_txt, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @t9015_right_dac_mux, ptr @.str.38, ptr @t9015_left_dac_mux, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @t9015_dapm_widgets, ptr @.str.50, ptr @dacr_in_enum, ptr @dacr_in_txt, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @dacl_in_enum, ptr @dacl_in_txt, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @t9015_dai_ops], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_codec_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_snd_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_dapm_routes to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mono_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramp_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mono_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramp_rate_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_right_dac_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_left_dac_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_dapm_widgets to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacr_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacr_in_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacl_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacl_in_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t9015_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @t9015_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @t9015_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @t9015_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @t9015_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t9015_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #5
  %avdd = getelementptr inbounds %struct.t9015, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %avdd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %avdd, align 4
  %cmp.i89 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call10 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call.i90 = tail call i32 @clk_prepare(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.do.end_crit_edge

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end22, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end17.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i90, %if.end17.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end.i
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %call.i91 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end27, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %8) #5
  tail call void @clk_unprepare(ptr noundef %8) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call.i94 = tail call i32 @__device_reset(ptr noundef %dev1, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool29.not = icmp eq i32 %call.i94, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call35 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i95 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  %9 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %call43 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call35, ptr noundef nonnull @t9015_regmap_config, ptr noundef nonnull @t9015_probe._key, ptr noundef nonnull @.str.16) #5
  %cmp.i96 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  %10 = ptrtoint ptr %call43 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = tail call i32 @regmap_write(ptr noundef %call43, i32 noundef 12, i32 noundef 4369) #5
  %call52 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @t9015_codec_driver, ptr noundef nonnull @t9015_dai, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end48, %do.end40, %do.end33, %devm_add_action_or_reset.exit, %do.end, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then5 ], [ %call16, %if.then13 ], [ %retval.0.i.ph, %do.end ], [ %call.i94, %do.end33 ], [ %9, %do.end40 ], [ %10, %do.end48 ], [ %call52, %if.end50 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i91, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %clk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %clk) #5
  tail call void @clk_unprepare(ptr noundef %clk) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t9015_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %4 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dapm.i.i, align 4
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb3
    i32 1, label %sw.bb5
    i32 0, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 8192, i32 noundef 8192) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 8192, i32 noundef 0) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %avdd = getelementptr inbounds %struct.t9015, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %avdd, align 4
  %call6 = tail call i32 @regulator_enable(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.55) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 53248, i32 noundef 53248) #5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7
  %__ms.027 = phi i32 [ 200, %if.then7 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.027, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #5
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 16384, i32 noundef 0) #5
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 53248, i32 noundef 0) #5
  %avdd14 = getelementptr inbounds %struct.t9015, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %avdd14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %avdd14, align 4
  %call15 = tail call i32 @regulator_disable(ptr noundef %13) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %while.end, %if.end.cleanup_crit_edge, %do.end, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb12 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t9015_dai_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb2 ], [ 1073741824, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 1073741824, i32 noundef %val.0) #5
  %and3 = and i32 %fmt, 15
  %4 = add nsw i32 %and3, -1
  %switch.and = and i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %5 = select i1 %switch.selectcmp, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %5, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__initcall__kmod_snd_soc_meson_t9015__294_323_t9015_driver_init6, !1, !"__initcall__kmod_snd_soc_meson_t9015__294_323_t9015_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/meson/t9015.c", i32 323, i32 1}
!2 = !{ptr @__exitcall_t9015_driver_exit, !1, !"__exitcall_t9015_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/meson/t9015.c", i32 325, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/meson/t9015.c", i32 326, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/meson/t9015.c", i32 327, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/meson/t9015.c", i32 317, i32 11}
!12 = !{ptr @t9015_driver, !13, !"t9015_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/meson/t9015.c", i32 315, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/meson/t9015.c", i32 260, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/meson/t9015.c", i32 262, i32 50}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/meson/t9015.c", i32 264, i32 39}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/meson/t9015.c", i32 266, i32 50}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/meson/t9015.c", i32 270, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @t9015_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @t9015_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/meson/t9015.c", i32 282, i32 3}
!32 = !{ptr @t9015_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @t9015_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/meson/t9015.c", i32 288, i32 3}
!36 = !{ptr @t9015_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @t9015_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @t9015_probe._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../sound/soc/meson/t9015.c", i32 292, i32 11}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/meson/t9015.c", i32 294, i32 3}
!43 = !{ptr @t9015_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @t9015_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @t9015_regmap_config, !46, !"t9015_regmap_config", i1 false, i1 false}
!46 = !{!"../sound/soc/meson/t9015.c", i32 240, i32 35}
!47 = !{ptr @t9015_codec_driver, !48, !"t9015_codec_driver", i1 false, i1 false}
!48 = !{!"../sound/soc/meson/t9015.c", i32 227, i32 46}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/meson/t9015.c", i32 118, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/meson/t9015.c", i32 119, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/meson/t9015.c", i32 120, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/meson/t9015.c", i32 124, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/meson/t9015.c", i32 125, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/meson/t9015.c", i32 126, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/meson/t9015.c", i32 127, i32 2}
!63 = !{ptr @t9015_snd_controls, !64, !"t9015_snd_controls", i1 false, i1 false}
!64 = !{!"../sound/soc/meson/t9015.c", i32 116, i32 38}
!65 = !{ptr @mono_enum, !66, !"mono_enum", i1 false, i1 false}
!66 = !{!"../sound/soc/meson/t9015.c", i32 114, i32 8}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/meson/t9015.c", i32 113, i32 42}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/meson/t9015.c", i32 113, i32 52}
!71 = !{ptr @mono_txt, !72, !"mono_txt", i1 false, i1 false}
!72 = !{!"../sound/soc/meson/t9015.c", i32 113, i32 27}
!73 = !{ptr @dac_vol_tlv, !74, !"dac_vol_tlv", i1 false, i1 false}
!74 = !{!"../sound/soc/meson/t9015.c", i32 101, i32 14}
!75 = !{ptr @ramp_rate_enum, !76, !"ramp_rate_enum", i1 false, i1 false}
!76 = !{!"../sound/soc/meson/t9015.c", i32 104, i32 8}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/meson/t9015.c", i32 103, i32 47}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/meson/t9015.c", i32 103, i32 55}
!81 = !{ptr @ramp_rate_txt, !82, !"ramp_rate_txt", i1 false, i1 false}
!82 = !{!"../sound/soc/meson/t9015.c", i32 103, i32 27}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/meson/t9015.c", i32 136, i32 2}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/meson/t9015.c", i32 137, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/meson/t9015.c", i32 138, i32 2}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/meson/t9015.c", i32 140, i32 2}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/meson/t9015.c", i32 142, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/meson/t9015.c", i32 143, i32 2}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/meson/t9015.c", i32 144, i32 2}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/meson/t9015.c", i32 146, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/meson/t9015.c", i32 148, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/meson/t9015.c", i32 150, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/meson/t9015.c", i32 152, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/meson/t9015.c", i32 153, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/meson/t9015.c", i32 154, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/meson/t9015.c", i32 155, i32 2}
!111 = !{ptr @t9015_dapm_widgets, !112, !"t9015_dapm_widgets", i1 false, i1 false}
!112 = !{!"../sound/soc/meson/t9015.c", i32 135, i32 41}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/meson/t9015.c", i32 131, i32 2}
!115 = !{ptr @t9015_right_dac_mux, !116, !"t9015_right_dac_mux", i1 false, i1 false}
!116 = !{!"../sound/soc/meson/t9015.c", i32 130, i32 38}
!117 = !{ptr @dacr_in_enum, !118, !"dacr_in_enum", i1 false, i1 false}
!118 = !{!"../sound/soc/meson/t9015.c", i32 108, i32 8}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/meson/t9015.c", i32 107, i32 45}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/meson/t9015.c", i32 107, i32 54}
!123 = !{ptr @dacr_in_txt, !124, !"dacr_in_txt", i1 false, i1 false}
!124 = !{!"../sound/soc/meson/t9015.c", i32 107, i32 27}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/meson/t9015.c", i32 133, i32 2}
!127 = !{ptr @t9015_left_dac_mux, !128, !"t9015_left_dac_mux", i1 false, i1 false}
!128 = !{!"../sound/soc/meson/t9015.c", i32 132, i32 38}
!129 = !{ptr @dacl_in_enum, !130, !"dacl_in_enum", i1 false, i1 false}
!130 = !{!"../sound/soc/meson/t9015.c", i32 111, i32 8}
!131 = !{ptr @dacl_in_txt, !132, !"dacl_in_txt", i1 false, i1 false}
!132 = !{!"../sound/soc/meson/t9015.c", i32 110, i32 27}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/meson/t9015.c", i32 159, i32 22}
!135 = !{ptr @t9015_dapm_routes, !136, !"t9015_dapm_routes", i1 false, i1 false}
!136 = !{!"../sound/soc/meson/t9015.c", i32 158, i32 40}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/meson/t9015.c", i32 199, i32 4}
!139 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @t9015_set_bias_level._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @t9015_set_bias_level._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/meson/t9015.c", i32 87, i32 10}
!144 = !{ptr @t9015_dai, !145, !"t9015_dai", i1 false, i1 false}
!145 = !{!"../sound/soc/meson/t9015.c", i32 86, i32 34}
!146 = !{ptr @t9015_dai_ops, !147, !"t9015_dai_ops", i1 false, i1 false}
!147 = !{!"../sound/soc/meson/t9015.c", i32 82, i32 37}
!148 = !{ptr @t9015_ids, !149, !"t9015_ids", i1 false, i1 false}
!149 = !{!"../sound/soc/meson/t9015.c", i32 309, i32 34}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
