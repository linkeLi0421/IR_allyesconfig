; ModuleID = '/llk/IR_all_yes/sound/soc/meson/g12a-toacodec.c_pt.bc'
source_filename = "../sound/soc/meson/g12a-toacodec.c"
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
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.g12a_toacodec_match_data = type { ptr, %struct.reg_field, %struct.reg_field, %struct.reg_field }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
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
%struct.g12a_toacodec = type { ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.90, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.90 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.85, [128 x i8] }
%union.anon.85 = type { %union.anon.87 }
%union.anon.87 = type { [64 x i64] }

@__initcall__kmod_snd_soc_meson_g12a_toacodec__303_353_g12a_toacodec_pdrv_init6 = internal global ptr @g12a_toacodec_pdrv_init, section ".initcall6.init", align 4
@g12a_toacodec_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @g12a_toacodec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @g12a_toacodec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_g12a_toacodec_pdrv_exit = internal global ptr @g12a_toacodec_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [72 x i8] c"snd_soc_meson_g12a_toacodec.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [82 x i8] c"snd_soc_meson_g12a_toacodec.description=Amlogic G12a To Internal DAC Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [77 x i8] c"snd_soc_meson_g12a_toacodec.file=sound/soc/meson/snd-soc-meson-g12a-toacodec\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [43 x i8] c"snd_soc_meson_g12a_toacodec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"g12a-toacodec\00", [18 x i8] zeroinitializer }, align 32
@g12a_toacodec_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-toacodec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @g12a_toacodec_match_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,sm1-toacodec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm1_toacodec_match_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@g12a_toacodec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to match device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"g12a_toacodec_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/meson/g12a-toacodec.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@g12a_toacodec_probe._entry_ptr = internal global ptr @g12a_toacodec_probe._entry, section ".printk_index", align 4
@g12a_toacodec_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@g12a_toacodec_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"g12a_toacodec:322:(&g12a_toacodec_regmap_cfg)->lock\00", [44 x i8] zeroinitializer }, align 32
@g12a_toacodec_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init regmap: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@g12a_toacodec_probe._entry_ptr.9 = internal global ptr @g12a_toacodec_probe._entry.7, section ".printk_index", align 4
@g12a_toacodec_dai_drv = internal global { [4 x %struct.snd_soc_dai_driver], [160 x i8] } { [4 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.10, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @meson_codec_glue_input_dai_probe, ptr @meson_codec_glue_input_dai_remove, ptr null, ptr null, ptr @g12a_toacodec_input_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.11, i64 33555525, i32 0, i32 5512, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.12, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @meson_codec_glue_input_dai_probe, ptr @meson_codec_glue_input_dai_remove, ptr null, ptr null, ptr @g12a_toacodec_input_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.13, i64 33555525, i32 0, i32 5512, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.14, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @meson_codec_glue_input_dai_probe, ptr @meson_codec_glue_input_dai_remove, ptr null, ptr null, ptr @g12a_toacodec_input_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.15, i64 33555525, i32 0, i32 5512, i32 192000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.16, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @g12a_toacodec_output_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.17, i64 33555525, i32 0, i32 5512, i32 192000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [160 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN A\00", [27 x i8] zeroinitializer }, align 32
@g12a_toacodec_input_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @meson_codec_glue_input_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @g12a_toacodec_input_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IN A Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN B\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IN B Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN C\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IN C Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@g12a_toacodec_output_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_codec_glue_output_startup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OUT Capture\00", [20 x i8] zeroinitializer }, align 32
@g12a_toacodec_match_data = internal constant { %struct.g12a_toacodec_match_data, [32 x i8] } { %struct.g12a_toacodec_match_data { ptr @g12a_toacodec_component_drv, %struct.reg_field { i32 0, i32 14, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 8, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 4, i32 5, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@sm1_toacodec_match_data = internal constant { %struct.g12a_toacodec_match_data, [32 x i8] } { %struct.g12a_toacodec_match_data { ptr @sm1_toacodec_component_drv, %struct.reg_field { i32 0, i32 18, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 12, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 4, i32 6, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@g12a_toacodec_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @g12a_toacodec_controls, i32 1, ptr @g12a_toacodec_widgets, i32 2, ptr @g12a_toacodec_routes, i32 5, ptr @g12a_toacodec_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 12, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@g12a_toacodec_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }], [48 x i8] zeroinitializer }, align 32
@g12a_toacodec_routes = internal constant { [5 x %struct.snd_soc_dapm_route], [92 x i8] } { [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.19, ptr @.str.23, ptr @.str.11, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr @.str.24, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr @.str.25, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr @.str.26, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }], [92 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Lane Select\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 0, i32 0, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SRC\00", [28 x i8] zeroinitializer }, align 32
@g12a_toacodec_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @g12a_toacodec_mux_put_enum, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @g12a_toacodec_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OUT EN\00", [25 x i8] zeroinitializer }, align 32
@g12a_toacodec_out_enable = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, [48 x i8] zeroinitializer }, align 32
@g12a_toacodec_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.19, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @g12a_toacodec_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @g12a_toacodec_out_enable, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Source\00", [25 x i8] zeroinitializer }, align 32
@g12a_toacodec_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 14, i8 14, i32 3, i32 3, ptr @g12a_toacodec_mux_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@g12a_toacodec_mux_texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"I2S A\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"I2S B\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"I2S C\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 0, i32 31, i32 31, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@sm1_toacodec_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @sm1_toacodec_controls, i32 1, ptr @sm1_toacodec_widgets, i32 2, ptr @g12a_toacodec_routes, i32 5, ptr @sm1_toacodec_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 12, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sm1_toacodec_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 0, i32 0, i32 16, i32 16, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@sm1_toacodec_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @g12a_toacodec_mux_put_enum, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @sm1_toacodec_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@sm1_toacodec_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.19, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sm1_toacodec_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @g12a_toacodec_out_enable, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@sm1_toacodec_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 18, i8 18, i32 3, i32 3, ptr @g12a_toacodec_mux_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"g12a_toacodec_pdrv\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 346, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 348, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"g12a_toacodec_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 280, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 304, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [25 x i8] c"g12a_toacodec_regmap_cfg\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 260, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 322, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 324, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"g12a_toacodec_dai_drv\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 199, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [24 x i8] c"g12a_toacodec_input_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 164, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 200, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 201, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 202, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"g12a_toacodec_output_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 169, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 203, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"g12a_toacodec_match_data\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 266, i32 46 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"sm1_toacodec_match_data\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 273, i32 46 }
@___asan_gen_.111 = private unnamed_addr constant [28 x i8] c"g12a_toacodec_component_drv\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 236, i32 46 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"g12a_toacodec_controls\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 228, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"g12a_toacodec_routes\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 220, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 229, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 130, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"g12a_toacodec_mux\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 115, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 132, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"g12a_toacodec_out_enable\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 125, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant [22 x i8] c"g12a_toacodec_widgets\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 129, i32 41 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 116, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"g12a_toacodec_mux_enum\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 107, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant [24 x i8] c"g12a_toacodec_mux_texts\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 59, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 60, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 60, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 60, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 126, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"sm1_toacodec_component_drv\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 248, i32 46 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"sm1_toacodec_controls\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 232, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"sm1_toacodec_mux\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 120, i32 38 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"sm1_toacodec_widgets\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 136, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"sm1_toacodec_mux_enum\00", align 1
@___asan_gen_.175 = private constant [35 x i8] c"../sound/soc/meson/g12a-toacodec.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 111, i32 8 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_g12a_toacodec_pdrv_exit, ptr @__initcall__kmod_snd_soc_meson_g12a_toacodec__303_353_g12a_toacodec_pdrv_init6, ptr @g12a_toacodec_pdrv_exit, ptr @g12a_toacodec_probe._entry, ptr @g12a_toacodec_probe._entry.7, ptr @g12a_toacodec_probe._entry_ptr, ptr @g12a_toacodec_probe._entry_ptr.9, ptr @g12a_toacodec_pdrv, ptr @.str, ptr @g12a_toacodec_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @g12a_toacodec_probe._key, ptr @g12a_toacodec_regmap_cfg, ptr @.str.6, ptr @.str.8, ptr @g12a_toacodec_dai_drv, ptr @.str.10, ptr @g12a_toacodec_input_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @g12a_toacodec_output_ops, ptr @.str.17, ptr @g12a_toacodec_match_data, ptr @sm1_toacodec_match_data, ptr @g12a_toacodec_component_drv, ptr @g12a_toacodec_controls, ptr @g12a_toacodec_routes, ptr @.str.18, ptr @.compoundliteral, ptr @.str.19, ptr @g12a_toacodec_mux, ptr @.str.20, ptr @g12a_toacodec_out_enable, ptr @g12a_toacodec_widgets, ptr @.str.22, ptr @g12a_toacodec_mux_enum, ptr @g12a_toacodec_mux_texts, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @sm1_toacodec_component_drv, ptr @sm1_toacodec_controls, ptr @.compoundliteral.28, ptr @sm1_toacodec_mux, ptr @sm1_toacodec_widgets, ptr @sm1_toacodec_mux_enum], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_dai_drv to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_input_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_output_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_match_data to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_toacodec_match_data to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_routes to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_out_enable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g12a_toacodec_mux_texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_toacodec_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_toacodec_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_toacodec_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_toacodec_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm1_toacodec_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_toacodec_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @g12a_toacodec_pdrv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @g12a_toacodec_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @g12a_toacodec_pdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_toacodec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i113 = tail call i32 @__device_reset(ptr noundef %dev1, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool7.not = icmp eq i32 %call.i113, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call10, ptr noundef nonnull @g12a_toacodec_regmap_cfg, ptr noundef nonnull @g12a_toacodec_probe._key, ptr noundef nonnull @.str.6) #6
  %cmp.i114 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %2) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %field_dat_sel = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %field_dat_sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack = load i32, ptr %field_dat_sel, align 4
  %4 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt87 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %.elt87 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack88 = load i32, ptr %.elt87, align 4
  %6 = insertvalue [5 x i32] %4, i32 %.unpack88, 1
  %.elt89 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %.elt89 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack90 = load i32, ptr %.elt89, align 4
  %8 = insertvalue [5 x i32] %6, i32 %.unpack90, 2
  %.elt91 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %.elt91 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack92 = load i32, ptr %.elt91, align 4
  %10 = insertvalue [5 x i32] %8, i32 %.unpack92, 3
  %.elt93 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %.elt93 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack94 = load i32, ptr %.elt93, align 4
  %12 = insertvalue [5 x i32] %10, i32 %.unpack94, 4
  %call24 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call15, [5 x i32] %12) #6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call24, ptr %call.i, align 4
  %cmp.i115 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %field_lrclk_sel = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %field_lrclk_sel to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack95 = load i32, ptr %field_lrclk_sel, align 4
  %16 = insertvalue [5 x i32] undef, i32 %.unpack95, 0
  %.elt96 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %.elt96 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack97 = load i32, ptr %.elt96, align 4
  %18 = insertvalue [5 x i32] %16, i32 %.unpack97, 1
  %.elt98 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %.elt98 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack99 = load i32, ptr %.elt98, align 4
  %20 = insertvalue [5 x i32] %18, i32 %.unpack99, 2
  %.elt100 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %.elt100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack101 = load i32, ptr %.elt100, align 4
  %22 = insertvalue [5 x i32] %20, i32 %.unpack101, 3
  %.elt102 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %.elt102 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack103 = load i32, ptr %.elt102, align 4
  %24 = insertvalue [5 x i32] %22, i32 %.unpack103, 4
  %call32 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call15, [5 x i32] %24) #6
  %field_lrclk_sel33 = getelementptr inbounds %struct.g12a_toacodec, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %field_lrclk_sel33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call32, ptr %field_lrclk_sel33, align 4
  %cmp.i116 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %field_bclk_sel = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 3
  %27 = ptrtoint ptr %field_bclk_sel to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack104 = load i32, ptr %field_bclk_sel, align 4
  %28 = insertvalue [5 x i32] undef, i32 %.unpack104, 0
  %.elt105 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %.elt105 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack106 = load i32, ptr %.elt105, align 4
  %30 = insertvalue [5 x i32] %28, i32 %.unpack106, 1
  %.elt107 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %.elt107 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack108 = load i32, ptr %.elt107, align 4
  %32 = insertvalue [5 x i32] %30, i32 %.unpack108, 2
  %.elt109 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %.elt109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack110 = load i32, ptr %.elt109, align 4
  %34 = insertvalue [5 x i32] %32, i32 %.unpack110, 3
  %.elt111 = getelementptr inbounds %struct.g12a_toacodec_match_data, ptr %call, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %.elt111 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack112 = load i32, ptr %.elt111, align 4
  %36 = insertvalue [5 x i32] %34, i32 %.unpack112, 4
  %call40 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %call15, [5 x i32] %36) #6
  %field_bclk_sel41 = getelementptr inbounds %struct.g12a_toacodec, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %field_bclk_sel41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call40, ptr %field_bclk_sel41, align 4
  %cmp.i117 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  %call48 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef %40, ptr noundef nonnull @g12a_toacodec_dai_drv, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then44, %if.then36, %if.then28, %do.end20, %if.then12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %if.then12 ], [ %2, %do.end20 ], [ %14, %if.then28 ], [ %26, %if.then36 ], [ %38, %if.then44 ], [ %call48, %if.end47 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i113, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_codec_glue_input_dai_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_codec_glue_input_dai_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_codec_glue_input_set_fmt(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_toacodec_input_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @meson_codec_glue_input_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @meson_codec_glue_input_get_data(ptr noundef %dai) #6
  %channels_min = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %call1, i32 0, i32 5
  %0 = ptrtoint ptr %channels_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels_min, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 2)
  %3 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %channels_min, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %call1, i32 0, i32 6
  %4 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels_max, align 8
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 2)
  %7 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %channels_max, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_codec_glue_input_hw_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @meson_codec_glue_input_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_codec_glue_output_startup(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_toacodec_component_probe(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_write(ptr noundef %c, i32 noundef 0, i32 noundef 128) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g12a_toacodec_mux_put_enum(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #6
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 -176
  %dev.i = getelementptr i8, ptr %call.i, i32 -164
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #6
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg, align 4, !annotation !106
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

entry.snd_soc_enum_item_to_val.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i32, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %entry.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.end.i ], [ %9, %entry.snd_soc_enum_item_to_val.exit_crit_edge ]
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call4 = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %reg) #6
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %17)
  %cmp = icmp eq i32 %retval.0.i, %17
  br i1 %cmp, label %snd_soc_enum_item_to_val.exit.cleanup_crit_edge, label %if.end

snd_soc_enum_item_to_val.exit.cleanup_crit_edge:  ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call i32 @snd_soc_dapm_mux_update_power(ptr noundef %call2, ptr noundef %kcontrol, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call.i51 = call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef %retval.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %field_lrclk_sel = getelementptr inbounds %struct.g12a_toacodec, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %field_lrclk_sel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %field_lrclk_sel, align 4
  %call.i52 = call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef %retval.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %field_bclk_sel = getelementptr inbounds %struct.g12a_toacodec, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %field_bclk_sel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %field_bclk_sel, align 4
  %call.i53 = call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef %retval.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %6, align 4
  %and25 = and i32 %retval.0.i, 7
  %call26 = call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i.i, i32 noundef %25, i32 noundef 7, i32 noundef %and25) #6
  %call27 = call i32 @snd_soc_dapm_mux_update_power(ptr noundef %call2, ptr noundef %kcontrol, i32 noundef %retval.0.i, ptr noundef %6, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_soc_enum_item_to_val.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm1_toacodec_component_probe(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_write(ptr noundef %c, i32 noundef 0, i32 noundef 512) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_snd_soc_meson_g12a_toacodec__303_353_g12a_toacodec_pdrv_init6, !1, !"__initcall__kmod_snd_soc_meson_g12a_toacodec__303_353_g12a_toacodec_pdrv_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 353, i32 1}
!2 = !{ptr @__exitcall_g12a_toacodec_pdrv_exit, !1, !"__exitcall_g12a_toacodec_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 355, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 356, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 357, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 348, i32 11}
!12 = !{ptr @g12a_toacodec_pdrv, !13, !"g12a_toacodec_pdrv", i1 false, i1 false}
!13 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 346, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 304, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @g12a_toacodec_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @g12a_toacodec_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @g12a_toacodec_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 322, i32 8}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 324, i32 3}
!27 = !{ptr @g12a_toacodec_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @g12a_toacodec_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @g12a_toacodec_regmap_cfg, !30, !"g12a_toacodec_regmap_cfg", i1 false, i1 false}
!30 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 260, i32 35}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 200, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 201, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 202, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 203, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @g12a_toacodec_dai_drv, !44, !"g12a_toacodec_dai_drv", i1 false, i1 false}
!44 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 199, i32 34}
!45 = !{ptr @g12a_toacodec_input_ops, !46, !"g12a_toacodec_input_ops", i1 false, i1 false}
!46 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 164, i32 37}
!47 = !{ptr @g12a_toacodec_output_ops, !48, !"g12a_toacodec_output_ops", i1 false, i1 false}
!48 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 169, i32 37}
!49 = !{ptr @g12a_toacodec_of_match, !50, !"g12a_toacodec_of_match", i1 false, i1 false}
!50 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 280, i32 34}
!51 = !{ptr @g12a_toacodec_match_data, !52, !"g12a_toacodec_match_data", i1 false, i1 false}
!52 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 266, i32 46}
!53 = !{ptr @g12a_toacodec_component_drv, !54, !"g12a_toacodec_component_drv", i1 false, i1 false}
!54 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 236, i32 46}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 229, i32 2}
!57 = !{ptr @g12a_toacodec_controls, !58, !"g12a_toacodec_controls", i1 false, i1 false}
!58 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 228, i32 38}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 130, i32 2}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 132, i32 2}
!63 = !{ptr @g12a_toacodec_widgets, !64, !"g12a_toacodec_widgets", i1 false, i1 false}
!64 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 129, i32 41}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 116, i32 2}
!67 = !{ptr @g12a_toacodec_mux, !68, !"g12a_toacodec_mux", i1 false, i1 false}
!68 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 115, i32 38}
!69 = !{ptr @g12a_toacodec_mux_enum, !70, !"g12a_toacodec_mux_enum", i1 false, i1 false}
!70 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 107, i32 8}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 60, i32 2}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 60, i32 11}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 60, i32 20}
!77 = !{ptr @g12a_toacodec_mux_texts, !78, !"g12a_toacodec_mux_texts", i1 false, i1 false}
!78 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 59, i32 27}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 126, i32 2}
!81 = !{ptr @g12a_toacodec_out_enable, !82, !"g12a_toacodec_out_enable", i1 false, i1 false}
!82 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 125, i32 38}
!83 = !{ptr @g12a_toacodec_routes, !84, !"g12a_toacodec_routes", i1 false, i1 false}
!84 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 220, i32 40}
!85 = !{ptr @sm1_toacodec_match_data, !86, !"sm1_toacodec_match_data", i1 false, i1 false}
!86 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 273, i32 46}
!87 = !{ptr @sm1_toacodec_component_drv, !88, !"sm1_toacodec_component_drv", i1 false, i1 false}
!88 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 248, i32 46}
!89 = !{ptr @sm1_toacodec_controls, !90, !"sm1_toacodec_controls", i1 false, i1 false}
!90 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 232, i32 38}
!91 = !{ptr @sm1_toacodec_widgets, !92, !"sm1_toacodec_widgets", i1 false, i1 false}
!92 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 136, i32 41}
!93 = !{ptr @sm1_toacodec_mux, !94, !"sm1_toacodec_mux", i1 false, i1 false}
!94 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 120, i32 38}
!95 = !{ptr @sm1_toacodec_mux_enum, !96, !"sm1_toacodec_mux_enum", i1 false, i1 false}
!96 = !{!"../sound/soc/meson/g12a-toacodec.c", i32 111, i32 8}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
