; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/lpass-va-macro.c_pt.bc'
source_filename = "../sound/soc/codecs/lpass-va-macro.c"
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
%struct.reg_default = type { i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.va_macro = type { ptr, [4 x i32], [4 x i32], i16, [4 x i32], ptr, [3 x %struct.clk_bulk_data], %struct.clk_hw, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.90, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.90 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.85, [128 x i8] }
%union.anon.85 = type { %union.anon.87 }
%union.anon.87 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_lpass_va_macro__294_1491_va_macro_driver_init6 = internal global ptr @va_macro_driver_init, section ".initcall6.init", align 4
@va_macro_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @va_macro_probe, ptr @va_macro_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @va_macro_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_va_macro_driver_exit = internal global ptr @va_macro_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [51 x i8] c"snd_soc_lpass_va_macro.description=VA macro driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [68 x i8] c"snd_soc_lpass_va_macro.file=sound/soc/codecs/snd-soc-lpass-va-macro\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [35 x i8] c"snd_soc_lpass_va_macro.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"va_macro\00", [23 x i8] zeroinitializer }, align 32
@va_macro_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-lpass-va-macro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-lpass-va-macro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"macro\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dcodec\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@va_macro_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1413, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error getting VA Clocks (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"va_macro_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/codecs/lpass-va-macro.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@va_macro_probe._entry_ptr = internal global ptr @va_macro_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,dmic-sample-rate\00", [42 x i8] zeroinitializer }, align 32
@va_macro_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"qcom,dmic-sample-rate dt entry missing\0A\00", [56 x i8] zeroinitializer }, align 32
@va_macro_probe._entry_ptr.12 = internal global ptr @va_macro_probe._entry.10, section ".printk_index", align 4
@va_macro_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@va_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 32, i32 4, i32 0, i32 32, ptr @va_is_rw_register, ptr @va_is_readable_register, ptr @va_is_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1960, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @va_defaults, i32 75, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lpass_va_macro:1440:(&va_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@va_macro_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.18, ptr @va_macro_snd_controls, i32 8, ptr @va_macro_dapm_widgets, i32 44, ptr @va_audio_map, i32 62, ptr @va_macro_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@va_macro_dais = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.136, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @va_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.34, i64 4294967364, i32 5290, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.137, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @va_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.36, i64 4294967364, i32 5290, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.138, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @va_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.38, i64 4294967364, i32 5290, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@va_macro_validate_dmic_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 1388, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Invalid rate %d, for mclk %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"va_macro_validate_dmic_sample_rate\00", [61 x i8] zeroinitializer }, align 32
@va_macro_validate_dmic_sample_rate._entry_ptr = internal global ptr @va_macro_validate_dmic_sample_rate._entry, section ".printk_index", align 4
@va_defaults = internal constant { [75 x %struct.reg_default], [136 x i8] } { [75 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 128 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 164, i32 12 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 208, i32 238 }, %struct.reg_default { i32 212, i32 238 }, %struct.reg_default { i32 216, i32 238 }, %struct.reg_default { i32 220, i32 6 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 260, i32 0 }, %struct.reg_default { i32 264, i32 0 }, %struct.reg_default { i32 268, i32 0 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 276, i32 0 }, %struct.reg_default { i32 280, i32 0 }, %struct.reg_default { i32 284, i32 0 }, %struct.reg_default { i32 1024, i32 4 }, %struct.reg_default { i32 1028, i32 16 }, %struct.reg_default { i32 1032, i32 11 }, %struct.reg_default { i32 1036, i32 0 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1044, i32 0 }, %struct.reg_default { i32 1048, i32 1 }, %struct.reg_default { i32 1052, i32 60 }, %struct.reg_default { i32 1056, i32 32 }, %struct.reg_default { i32 1060, i32 0 }, %struct.reg_default { i32 1064, i32 0 }, %struct.reg_default { i32 1068, i32 37 }, %struct.reg_default { i32 1152, i32 4 }, %struct.reg_default { i32 1156, i32 16 }, %struct.reg_default { i32 1160, i32 11 }, %struct.reg_default { i32 1164, i32 0 }, %struct.reg_default { i32 1168, i32 0 }, %struct.reg_default { i32 1172, i32 0 }, %struct.reg_default { i32 1176, i32 1 }, %struct.reg_default { i32 1180, i32 60 }, %struct.reg_default { i32 1184, i32 32 }, %struct.reg_default { i32 1188, i32 0 }, %struct.reg_default { i32 1192, i32 0 }, %struct.reg_default { i32 1280, i32 4 }, %struct.reg_default { i32 1284, i32 16 }, %struct.reg_default { i32 1288, i32 11 }, %struct.reg_default { i32 1292, i32 0 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1300, i32 0 }, %struct.reg_default { i32 1304, i32 1 }, %struct.reg_default { i32 1308, i32 60 }, %struct.reg_default { i32 1312, i32 32 }, %struct.reg_default { i32 1316, i32 0 }, %struct.reg_default { i32 1320, i32 0 }, %struct.reg_default { i32 1408, i32 4 }, %struct.reg_default { i32 1412, i32 16 }, %struct.reg_default { i32 1416, i32 11 }, %struct.reg_default { i32 1420, i32 0 }, %struct.reg_default { i32 1424, i32 0 }, %struct.reg_default { i32 1428, i32 0 }, %struct.reg_default { i32 1432, i32 1 }, %struct.reg_default { i32 1436, i32 60 }, %struct.reg_default { i32 1440, i32 32 }, %struct.reg_default { i32 1444, i32 0 }, %struct.reg_default { i32 1448, i32 0 }], [136 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsgen\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@fsgen_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @fsgen_gate_enable, ptr @fsgen_gate_disable, ptr null, ptr null, ptr null, ptr null, ptr @fsgen_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA MACRO\00", [23 x i8] zeroinitializer }, align 32
@va_macro_snd_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @va_macro_dec_mode_get, ptr @va_macro_dec_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @dec_mode_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @va_macro_dec_mode_get, ptr @va_macro_dec_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @va_macro_dec_mode_get, ptr @va_macro_dec_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @va_macro_dec_mode_get, ptr @va_macro_dec_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 192) to i32) }], [96 x i8] zeroinitializer }, align 32
@va_audio_map = internal constant { [62 x %struct.snd_soc_dapm_route], [808 x i8] } { [62 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr @.str.81, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr @.str.83, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr @.str.85, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr @.str.87, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.81, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.83, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.85, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.87, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.81, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.83, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.85, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.87, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.131, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.117, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.118, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.119, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.120, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.121, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.122, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.123, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.124, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr @.str.131, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.117, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.118, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.119, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.120, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.121, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.122, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.123, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.124, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr @.str.131, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.117, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.118, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.119, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.120, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.121, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.122, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.123, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.124, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.131, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.117, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.118, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.119, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.120, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.121, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.122, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.123, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.124, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }], [808 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VA_DEC0 Volume\00", [17 x i8] zeroinitializer }, align 32
@digital_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8400, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1036, i32 1036, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VA_DEC1 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1164, i32 1164, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VA_DEC2 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1292, i32 1292, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VA_DEC3 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1420, i32 1420, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA_DEC0 MODE\00", [19 x i8] zeroinitializer }, align 32
@dec_mode_mux_enum = internal constant { [4 x %struct.soc_enum], [64 x i8] } { [4 x %struct.soc_enum] [%struct.soc_enum { i32 -1, i8 0, i8 0, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 1, i8 1, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 2, i8 2, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 3, i8 3, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA_DEC1 MODE\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA_DEC2 MODE\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA_DEC3 MODE\00", [19 x i8] zeroinitializer }, align 32
@dec_mode_mux_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC_DEFAULT\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC_LOW_PWR\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC_HIGH_PERF\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA_AIF1 CAP\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VA_AIF1 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA_AIF2 CAP\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VA_AIF2 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA_AIF3 CAP\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VA_AIF3 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VA_AIF1_CAP Mixer\00", [46 x i8] zeroinitializer }, align 32
@va_aif1_cap_mixer = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VA_AIF2_CAP Mixer\00", [46 x i8] zeroinitializer }, align 32
@va_aif2_cap_mixer = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VA_AIF3_CAP Mixer\00", [46 x i8] zeroinitializer }, align 32
@va_aif3_cap_mixer = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @va_macro_tx_mixer_get, ptr @va_macro_tx_mixer_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA DMIC MUX0\00", [19 x i8] zeroinitializer }, align 32
@va_dmic0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @va_macro_put_dec_enum, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @va_dmic0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA DMIC MUX1\00", [19 x i8] zeroinitializer }, align 32
@va_dmic1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @va_macro_put_dec_enum, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @va_dmic1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA DMIC MUX2\00", [19 x i8] zeroinitializer }, align 32
@va_dmic2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @va_macro_put_dec_enum, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @va_dmic2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA DMIC MUX3\00", [19 x i8] zeroinitializer }, align 32
@va_dmic3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @va_macro_put_dec_enum, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @va_dmic3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd-micb\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC0 Pin\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC1 Pin\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC2 Pin\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC3 Pin\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC4 Pin\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC5 Pin\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC6 Pin\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC7 Pin\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA DMIC0\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA DMIC1\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA DMIC2\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA DMIC3\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA DMIC4\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA DMIC5\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA DMIC6\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VA DMIC7\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_ADC0\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_ADC1\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_ADC2\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_ADC3\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_MIC0\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_MIC1\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_MIC2\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_MIC3\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_MIC4\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_MIC5\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_MIC6\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA SWR_MIC7\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA DEC0 MUX\00", [20 x i8] zeroinitializer }, align 32
@va_dec0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @va_dec0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA DEC1 MUX\00", [20 x i8] zeroinitializer }, align 32
@va_dec1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @va_dec1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA DEC2 MUX\00", [20 x i8] zeroinitializer }, align 32
@va_dec2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @va_dec2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VA DEC3 MUX\00", [20 x i8] zeroinitializer }, align 32
@va_dec3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @va_dec3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VA_MCLK\00", [24 x i8] zeroinitializer }, align 32
@va_macro_dapm_widgets = internal constant { [44 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1968 x i8] } { [44 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.33, ptr @.str.34, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.35, ptr @.str.36, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.37, ptr @.str.38, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @va_aif1_cap_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @va_aif2_cap_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @va_aif3_cap_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @va_dmic0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @va_dmic1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @va_dmic2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @va_dmic3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @va_macro_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @va_macro_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @va_macro_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @va_macro_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @va_macro_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @va_macro_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @va_macro_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @va_macro_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @va_macro_enable_dec, i32 1, ptr @va_dec0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @va_macro_enable_dec, i32 1, ptr @va_dec1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @va_macro_enable_dec, i32 1, ptr @va_dec2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @va_macro_enable_dec, i32 1, ptr @va_dec3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 -1, ptr null, i16 9, ptr @va_macro_mclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1968 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC0\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC2\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC3\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC4\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC5\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC6\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC7\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"va_dmic0\00", [23 x i8] zeroinitializer }, align 32
@va_dmic0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 256, i8 4, i8 4, i32 9, i32 15, ptr @dmic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@va_macro_put_dec_enum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.6, i32 500, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: e->reg: 0x%x not expected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"va_macro_put_dec_enum\00", [42 x i8] zeroinitializer }, align 32
@va_macro_put_dec_enum._entry_ptr = internal global ptr @va_macro_put_dec_enum._entry, section ".printk_index", align 4
@dmic_mux_text = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [60 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZERO\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC0\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC4\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC5\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC6\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC7\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"va_dmic1\00", [23 x i8] zeroinitializer }, align 32
@va_dmic1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 264, i8 4, i8 4, i32 9, i32 15, ptr @dmic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"va_dmic2\00", [23 x i8] zeroinitializer }, align 32
@va_dmic2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 272, i8 4, i8 4, i32 9, i32 15, ptr @dmic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"va_dmic3\00", [23 x i8] zeroinitializer }, align 32
@va_dmic3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 280, i8 4, i8 4, i32 9, i32 15, ptr @dmic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@va_dmic_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.6, i32 602, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid DMIC Selection\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"va_dmic_clk_enable\00", [45 x i8] zeroinitializer }, align 32
@va_dmic_clk_enable._entry_ptr = internal global ptr @va_dmic_clk_enable._entry, section ".printk_index", align 4
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"va_dec0\00", [24 x i8] zeroinitializer }, align 32
@va_dec0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 260, i8 0, i8 0, i32 2, i32 1, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.131, ptr @.str.132], [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VA_DMIC\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SWR_MIC\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"va_dec1\00", [24 x i8] zeroinitializer }, align 32
@va_dec1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 268, i8 0, i8 0, i32 2, i32 1, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"va_dec2\00", [24 x i8] zeroinitializer }, align 32
@va_dec2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 276, i8 0, i8 0, i32 2, i32 1, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"va_dec3\00", [24 x i8] zeroinitializer }, align 32
@va_dec3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 284, i8 0, i8 0, i32 2, i32 1, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"va_macro_tx1\00", [19 x i8] zeroinitializer }, align 32
@va_macro_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @va_macro_get_channel_map, ptr null, ptr null, ptr null, ptr @va_macro_digital_mute, ptr null, ptr null, ptr @va_macro_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"va_macro_tx2\00", [19 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"va_macro_tx3\00", [19 x i8] zeroinitializer }, align 32
@va_macro_get_channel_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.6, i32 868, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Invalid AIF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"va_macro_get_channel_map\00", [39 x i8] zeroinitializer }, align 32
@va_macro_get_channel_map._entry_ptr = internal global ptr @va_macro_get_channel_map._entry, section ".printk_index", align 4
@va_macro_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.6, i32 838, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Invalid TX sample rate: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"va_macro_hw_params\00", [45 x i8] zeroinitializer }, align 32
@va_macro_hw_params._entry_ptr = internal global ptr @va_macro_hw_params._entry, section ".printk_index", align 4
@switch.table.va_macro_probe = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 0, i16 1, i16 2, i16 0, i16 3, i16 0, i16 4, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 5], [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [69 x i64] [i64 67, i64 32, i64 0, i64 4, i64 8, i64 128, i64 132, i64 136, i64 140, i64 144, i64 148, i64 156, i64 160, i64 164, i64 168, i64 172, i64 256, i64 260, i64 264, i64 268, i64 272, i64 276, i64 280, i64 284, i64 1024, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044, i64 1048, i64 1052, i64 1056, i64 1060, i64 1064, i64 1068, i64 1152, i64 1156, i64 1160, i64 1164, i64 1168, i64 1172, i64 1176, i64 1180, i64 1184, i64 1188, i64 1192, i64 1280, i64 1284, i64 1288, i64 1292, i64 1296, i64 1300, i64 1304, i64 1308, i64 1312, i64 1316, i64 1320, i64 1408, i64 1412, i64 1416, i64 1420, i64 1424, i64 1428, i64 1432, i64 1436, i64 1440, i64 1444, i64 1448]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.146 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.147 = internal global [9 x i64] [i64 7, i64 32, i64 8000, i64 16000, i64 32000, i64 48000, i64 96000, i64 192000, i64 384000]
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"va_macro_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1481, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1483, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"va_macro_dt_match\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1474, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1407, i32 19 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1408, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1409, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1413, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1417, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1420, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"va_regmap_config\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 397, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1440, i32 15 }
@___asan_gen_.202 = private unnamed_addr constant [23 x i8] c"va_macro_component_drv\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1285, i32 46 }
@___asan_gen_.205 = private unnamed_addr constant [14 x i8] c"va_macro_dais\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 903, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1387, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [12 x i8] c"va_defaults\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 227, i32 33 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1328, i32 25 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1334, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"fsgen_gate_ops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1316, i32 29 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1286, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"va_macro_snd_controls\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1256, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant [13 x i8] c"va_audio_map\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1167, i32 40 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1257, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [13 x i8] c"digital_gain\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 155, i32 14 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1259, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1261, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1263, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1266, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"dec_mode_mux_enum\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1245, i32 30 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1268, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1270, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1272, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"dec_mode_mux_text\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1241, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1242, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1242, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1242, i32 32 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1061, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1064, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1067, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1070, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [18 x i8] c"va_aif1_cap_mixer\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1003, i32 38 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1074, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"va_aif2_cap_mixer\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1022, i32 38 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1078, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [18 x i8] c"va_aif3_cap_mixer\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1041, i32 38 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1082, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [13 x i8] c"va_dmic0_mux\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 987, i32 38 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1083, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [13 x i8] c"va_dmic1_mux\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 991, i32 38 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1084, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [13 x i8] c"va_dmic2_mux\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 995, i32 38 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1085, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [13 x i8] c"va_dmic3_mux\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 999, i32 38 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1087, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1088, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1089, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1090, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1091, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1092, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1093, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1094, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1095, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1097, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1101, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1105, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1109, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1113, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1117, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1121, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1125, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1129, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1130, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1131, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1132, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1133, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1134, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1135, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1136, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1137, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1138, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1139, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1140, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1142, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [12 x i8] c"va_dec0_mux\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 961, i32 38 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1147, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [12 x i8] c"va_dec1_mux\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 963, i32 38 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1152, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [12 x i8] c"va_dec2_mux\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 965, i32 38 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1157, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [12 x i8] c"va_dec3_mux\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 967, i32 38 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1162, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [22 x i8] c"va_macro_dapm_widgets\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1060, i32 41 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1004, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1006, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1008, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1010, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1012, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1014, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1016, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1018, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 987, i32 53 }
@___asan_gen_.512 = private unnamed_addr constant [14 x i8] c"va_dmic0_enum\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 975, i32 8 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 499, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant [14 x i8] c"dmic_mux_text\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 970, i32 27 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 971, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 971, i32 10 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 971, i32 19 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 971, i32 28 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 971, i32 37 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 972, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 972, i32 11 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 972, i32 20 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 972, i32 29 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 991, i32 53 }
@___asan_gen_.557 = private unnamed_addr constant [14 x i8] c"va_dmic1_enum\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 978, i32 8 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 995, i32 53 }
@___asan_gen_.563 = private unnamed_addr constant [14 x i8] c"va_dmic2_enum\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 981, i32 8 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 999, i32 53 }
@___asan_gen_.569 = private unnamed_addr constant [14 x i8] c"va_dmic3_enum\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 984, i32 8 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 601, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 961, i32 52 }
@___asan_gen_.584 = private unnamed_addr constant [13 x i8] c"va_dec0_enum\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 952, i32 8 }
@___asan_gen_.587 = private unnamed_addr constant [13 x i8] c"adc_mux_text\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 948, i32 27 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 949, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 949, i32 13 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 963, i32 52 }
@___asan_gen_.599 = private unnamed_addr constant [13 x i8] c"va_dec1_enum\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 954, i32 8 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 965, i32 52 }
@___asan_gen_.605 = private unnamed_addr constant [13 x i8] c"va_dec2_enum\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 956, i32 8 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 967, i32 52 }
@___asan_gen_.611 = private unnamed_addr constant [13 x i8] c"va_dec3_enum\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 958, i32 8 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 905, i32 11 }
@___asan_gen_.617 = private unnamed_addr constant [17 x i8] c"va_macro_dai_ops\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 897, i32 37 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 919, i32 11 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 933, i32 11 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 868, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.642 = private constant [37 x i8] c"../sound/soc/codecs/lpass-va-macro.c\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 837, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant [28 x i8] c"switch.table.va_macro_probe\00", align 1
@llvm.compiler.used = appending global [198 x ptr] [ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_va_macro_driver_exit, ptr @__initcall__kmod_snd_soc_lpass_va_macro__294_1491_va_macro_driver_init6, ptr @va_dmic_clk_enable._entry, ptr @va_dmic_clk_enable._entry_ptr, ptr @va_macro_driver_exit, ptr @va_macro_get_channel_map._entry, ptr @va_macro_get_channel_map._entry_ptr, ptr @va_macro_hw_params._entry, ptr @va_macro_hw_params._entry_ptr, ptr @va_macro_probe._entry, ptr @va_macro_probe._entry.10, ptr @va_macro_probe._entry_ptr, ptr @va_macro_probe._entry_ptr.12, ptr @va_macro_put_dec_enum._entry, ptr @va_macro_put_dec_enum._entry_ptr, ptr @va_macro_validate_dmic_sample_rate._entry, ptr @va_macro_validate_dmic_sample_rate._entry_ptr, ptr @va_macro_driver, ptr @.str, ptr @va_macro_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @va_macro_probe._key, ptr @va_regmap_config, ptr @.str.13, ptr @va_macro_component_drv, ptr @va_macro_dais, ptr @.str.14, ptr @.str.15, ptr @va_defaults, ptr @.str.16, ptr @.str.17, ptr @fsgen_gate_ops, ptr @.str.18, ptr @va_macro_snd_controls, ptr @va_audio_map, ptr @.str.19, ptr @digital_gain, ptr @.compoundliteral, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @dec_mode_mux_enum, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @dec_mode_mux_text, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @va_aif1_cap_mixer, ptr @.str.40, ptr @va_aif2_cap_mixer, ptr @.str.41, ptr @va_aif3_cap_mixer, ptr @.str.42, ptr @va_dmic0_mux, ptr @.str.43, ptr @va_dmic1_mux, ptr @.str.44, ptr @va_dmic2_mux, ptr @.str.45, ptr @va_dmic3_mux, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @va_dec0_mux, ptr @.str.76, ptr @va_dec1_mux, ptr @.str.77, ptr @va_dec2_mux, ptr @.str.78, ptr @va_dec3_mux, ptr @.str.79, ptr @va_macro_dapm_widgets, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.compoundliteral.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @va_dmic0_enum, ptr @.str.114, ptr @.str.115, ptr @dmic_mux_text, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @va_dmic1_enum, ptr @.str.126, ptr @va_dmic2_enum, ptr @.str.127, ptr @va_dmic3_enum, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @va_dec0_enum, ptr @adc_mux_text, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @va_dec1_enum, ptr @.str.134, ptr @va_dec2_enum, ptr @.str.135, ptr @va_dec3_enum, ptr @.str.136, ptr @va_macro_dai_ops, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @switch.table.va_macro_probe], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_dais to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_validate_dmic_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_defaults to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsgen_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_snd_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_audio_map to i32), i32 3224, i32 4032, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_mode_mux_enum to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_mode_mux_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_aif1_cap_mixer to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_aif2_cap_mixer to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_aif3_cap_mixer to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dec0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dec1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dec2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dec3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_dapm_widgets to i32), i32 7920, i32 9888, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_put_dec_enum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_mux_text to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dmic_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dec0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dec1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dec2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_dec3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_get_channel_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_macro_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.va_macro_probe to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @va_macro_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @va_macro_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @va_macro_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parent_clk_name.i = alloca ptr, align 4
  %clk_name.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %sample_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sample_rate) #9
  %0 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sample_rate, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %clks = getelementptr inbounds %struct.va_macro, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %clks, align 4
  %arrayidx4 = getelementptr %struct.va_macro, ptr %call.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %arrayidx4, align 4
  %arrayidx7 = getelementptr %struct.va_macro, ptr %call.i, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.3, ptr %arrayidx7, align 4
  %call10 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev1, i32 noundef 3, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call10) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %sample_rate, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.else, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  br label %if.end24

if.else:                                          ; preds = %if.end13
  %7 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.va_macro_validate_dmic_sample_rate.exit_crit_edge, label %lor.lhs.false.i

if.else.va_macro_validate_dmic_sample_rate.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %va_macro_validate_dmic_sample_rate.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %.frozen = freeze i32 %8
  %div.i = udiv i32 9600000, %.frozen
  %9 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 9600000, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.va_macro_validate_dmic_sample_rate.exit_crit_edge

lor.lhs.false.i.va_macro_validate_dmic_sample_rate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %va_macro_validate_dmic_sample_rate.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %switch.tableidx = add nsw i32 %div.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 15
  br i1 %10, label %switch.hole_check, label %if.end.i.va_macro_validate_dmic_sample_rate.exit_crit_edge

if.end.i.va_macro_validate_dmic_sample_rate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %va_macro_validate_dmic_sample_rate.exit

va_macro_validate_dmic_sample_rate.exit:          ; preds = %switch.hole_check.va_macro_validate_dmic_sample_rate.exit_crit_edge, %if.end.i.va_macro_validate_dmic_sample_rate.exit_crit_edge, %lor.lhs.false.i.va_macro_validate_dmic_sample_rate.exit_crit_edge, %if.else.va_macro_validate_dmic_sample_rate.exit_crit_edge
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %8, i32 noundef 9600000) #12
  br label %cleanup

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 16471, %switch.maskindex
  %13 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %switch.lobit.not = icmp eq i16 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.va_macro_validate_dmic_sample_rate.exit_crit_edge, label %switch.lookup

switch.hole_check.va_macro_validate_dmic_sample_rate.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %va_macro_validate_dmic_sample_rate.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [15 x i16], ptr @switch.table.va_macro_probe, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %14)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %if.end24

if.end24:                                         ; preds = %switch.lookup, %do.end19
  %.sink = phi i16 [ 0, %do.end19 ], [ %switch.load, %switch.lookup ]
  %dmic_clk_div.i = getelementptr inbounds %struct.va_macro, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %dmic_clk_div.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.sink, ptr %dmic_clk_div.i, align 4
  %clk = getelementptr %struct.va_macro, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call27 = call i32 @clk_set_rate(ptr noundef %17, i32 noundef 9600000) #9
  %call.i93 = call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i95, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i95:                                       ; preds = %if.end24
  %call1.i = call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end33, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end.i95
  %call34 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call34 to i32
  br label %err

if.end38:                                         ; preds = %if.end33
  %call39 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call34, ptr noundef nonnull @va_regmap_config, ptr noundef nonnull @va_macro_probe._key, ptr noundef nonnull @.str.13) #9
  %regmap = getelementptr inbounds %struct.va_macro, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call39, ptr %regmap, align 4
  %cmp.i97 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.end38.err_crit_edge, label %if.end43

if.end38.err_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end43:                                         ; preds = %if.end38
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i, align 4
  %clk.i = getelementptr %struct.va_macro, ptr %call.i, i32 0, i32 6, i32 2, i32 1
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_clk_name.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name.i) #9
  %27 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.16, ptr %clk_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %28 = getelementptr inbounds i8, ptr %init.i, i32 12
  %29 = call ptr @memset(ptr %28, i32 255, i32 12)
  %call.i98 = call ptr @__clk_get_name(ptr noundef %22) #9
  %30 = ptrtoint ptr %parent_clk_name.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i98, ptr %parent_clk_name.i, align 4
  %call2.i = call i32 @of_property_read_string(ptr noundef %26, ptr noundef nonnull @.str.17, ptr noundef nonnull %clk_name.i) #9
  %31 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_name.i, align 4
  %33 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @fsgen_gate_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %36 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %parent_clk_name.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %37 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %num_parents.i, align 4
  %hw.i = getelementptr inbounds %struct.va_macro, ptr %call.i, i32 0, i32 7
  %init3.i = getelementptr inbounds %struct.va_macro, ptr %call.i, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %init3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %init.i, ptr %init3.i, align 4
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call6.i = call i32 @devm_clk_hw_register(ptr noundef %40, ptr noundef %hw.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i99 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i99, label %va_macro_register_fsgen_output.exit, label %va_macro_register_fsgen_output.exit.thread

va_macro_register_fsgen_output.exit.thread:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i) #9
  br label %err

va_macro_register_fsgen_output.exit:              ; preds = %if.end43
  %call8.i = call i32 @devm_of_clk_add_hw_provider(ptr noundef %24, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %hw.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool45.not = icmp eq i32 %call8.i, 0
  br i1 %tobool45.not, label %if.end47, label %va_macro_register_fsgen_output.exit.err_crit_edge

va_macro_register_fsgen_output.exit.err_crit_edge: ; preds = %va_macro_register_fsgen_output.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end47:                                         ; preds = %va_macro_register_fsgen_output.exit
  %call48 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @va_macro_component_drv, ptr noundef nonnull @va_macro_dais, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end47.err_crit_edge

if.end47.err_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %if.end47.err_crit_edge, %va_macro_register_fsgen_output.exit.err_crit_edge, %va_macro_register_fsgen_output.exit.thread, %if.end38.err_crit_edge, %if.then36
  %ret.0 = phi i32 [ %18, %if.then36 ], [ %call8.i, %va_macro_register_fsgen_output.exit.err_crit_edge ], [ %call48, %if.end47.err_crit_edge ], [ -22, %if.end38.err_crit_edge ], [ %call6.i, %va_macro_register_fsgen_output.exit.thread ]
  call void @clk_bulk_disable(i32 noundef 3, ptr noundef %clks) #9
  call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end47.cleanup_crit_edge, %if.then3.i, %if.end24.cleanup_crit_edge, %va_macro_validate_dmic_sample_rate.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ -22, %va_macro_validate_dmic_sample_rate.exit ], [ 0, %if.end47.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i93, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sample_rate) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clks = getelementptr inbounds %struct.va_macro, ptr %1, i32 0, i32 6
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %clks) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @va_is_rw_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 8, label %entry.return_crit_edge2
    i32 128, label %entry.return_crit_edge3
    i32 132, label %entry.return_crit_edge4
    i32 136, label %entry.return_crit_edge5
    i32 140, label %entry.return_crit_edge6
    i32 144, label %entry.return_crit_edge7
    i32 148, label %entry.return_crit_edge8
    i32 156, label %entry.return_crit_edge9
    i32 160, label %entry.return_crit_edge10
    i32 164, label %entry.return_crit_edge11
    i32 168, label %entry.return_crit_edge12
    i32 172, label %entry.return_crit_edge13
    i32 256, label %entry.return_crit_edge14
    i32 260, label %entry.return_crit_edge15
    i32 264, label %entry.return_crit_edge16
    i32 268, label %entry.return_crit_edge17
    i32 272, label %entry.return_crit_edge18
    i32 276, label %entry.return_crit_edge19
    i32 280, label %entry.return_crit_edge20
    i32 284, label %entry.return_crit_edge21
    i32 1024, label %entry.return_crit_edge22
    i32 1028, label %entry.return_crit_edge23
    i32 1032, label %entry.return_crit_edge24
    i32 1036, label %entry.return_crit_edge25
    i32 1040, label %entry.return_crit_edge26
    i32 1044, label %entry.return_crit_edge27
    i32 1048, label %entry.return_crit_edge28
    i32 1052, label %entry.return_crit_edge29
    i32 1056, label %entry.return_crit_edge30
    i32 1060, label %entry.return_crit_edge31
    i32 1064, label %entry.return_crit_edge32
    i32 1068, label %entry.return_crit_edge33
    i32 1152, label %entry.return_crit_edge34
    i32 1156, label %entry.return_crit_edge35
    i32 1160, label %entry.return_crit_edge36
    i32 1164, label %entry.return_crit_edge37
    i32 1168, label %entry.return_crit_edge38
    i32 1172, label %entry.return_crit_edge39
    i32 1176, label %entry.return_crit_edge40
    i32 1180, label %entry.return_crit_edge41
    i32 1184, label %entry.return_crit_edge42
    i32 1188, label %entry.return_crit_edge43
    i32 1192, label %entry.return_crit_edge44
    i32 1280, label %entry.return_crit_edge45
    i32 1284, label %entry.return_crit_edge46
    i32 1288, label %entry.return_crit_edge47
    i32 1292, label %entry.return_crit_edge48
    i32 1296, label %entry.return_crit_edge49
    i32 1300, label %entry.return_crit_edge50
    i32 1304, label %entry.return_crit_edge51
    i32 1308, label %entry.return_crit_edge52
    i32 1312, label %entry.return_crit_edge53
    i32 1316, label %entry.return_crit_edge54
    i32 1320, label %entry.return_crit_edge55
    i32 1408, label %entry.return_crit_edge56
    i32 1412, label %entry.return_crit_edge57
    i32 1416, label %entry.return_crit_edge58
    i32 1420, label %entry.return_crit_edge59
    i32 1424, label %entry.return_crit_edge60
    i32 1428, label %entry.return_crit_edge61
    i32 1432, label %entry.return_crit_edge62
    i32 1436, label %entry.return_crit_edge63
    i32 1440, label %entry.return_crit_edge64
    i32 1444, label %entry.return_crit_edge65
    i32 1448, label %entry.return_crit_edge66
  ]

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @va_is_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -192
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %entry.return_crit_edge, label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @va_is_rw_register(ptr noundef %dev, i32 noundef %reg)
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @va_is_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -132
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %1)
  %2 = icmp ult i32 %1, 19
  %switch.cast = trunc i32 %1 to i19
  %switch.downshift = lshr i19 -32753, %switch.cast
  %3 = and i19 %switch.downshift, 1
  %switch.masked = icmp ne i19 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsgen_gate_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1.i = getelementptr i8, ptr %hw, i32 -28
  %0 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1.i, align 4
  %call.i3.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i4.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i5.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 128, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @regcache_mark_dirty(ptr noundef %1) #9
  %call2.i = tail call i32 @regcache_sync_region(ptr noundef %1, i32 noundef 0, i32 noundef 1960) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsgen_gate_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1.i = getelementptr i8, ptr %hw, i32 -28
  %0 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1.i, align 4
  %call.i3.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i4.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i5.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 128, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsgen_gate_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !316
  %regmap = getelementptr i8, ptr %hw, i32 -28
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = lshr i32 %4, 1
  %and.lobit = and i32 %and, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_component_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @va_macro_dec_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.va_macro, ptr %5, i32 0, i32 4, i32 %conv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @va_macro_dec_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = inttoptr i32 %5 to ptr
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %8 to i32
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx3 = getelementptr %struct.va_macro, ptr %12, i32 0, i32 4, i32 %conv
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_regulator_event(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_enable_dmic(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  %conv = zext i8 %3 to i32
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 8, label %sw.bb2
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i1 [ false, %sw.bb2 ], [ true, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @va_dmic_clk_enable(ptr noundef %add.ptr.i, i32 noundef %conv, i1 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_enable_dec(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 7
  %4 = trunc i32 %mul to i16
  %conv2 = add nuw i16 %4, 1024
  %conv8 = add nuw i16 %4, 1028
  %conv11 = add nuw nsw i32 %mul, 1036
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 8, label %sw.bb36
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %conv12 = zext i16 %conv8 to i32
  %arrayidx = getelementptr %struct.va_macro, ptr %9, i32 0, i32 4, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %11, 1
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv12, i32 noundef 6, i32 noundef %shl) #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %conv5 = add nuw nsw i32 %mul, 1048
  %conv15 = zext i16 %conv2 to i32
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv15, i32 noundef 32, i32 noundef 32) #9
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv5, i32 noundef 1, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %conv19 = zext i16 %conv8 to i32
  %call20 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv19) #9
  %12 = and i32 %call20, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %cmp.not = icmp eq i32 %12, 64
  br i1 %cmp.not, label %sw.bb14.if.end_crit_edge, label %if.then

sw.bb14.if.end_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv19, i32 noundef 96, i32 noundef 64) #9
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv5, i32 noundef 2, i32 noundef 2) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv5, i32 noundef 2, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb14.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %call31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv5, i32 noundef 1, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 6010, i32 noundef 2) #9
  %call34 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv11) #9
  %call35 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %conv11, i32 noundef %call34) #9
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv37 = zext i16 %conv2 to i32
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv37, i32 noundef 32, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_mclk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap1.i = getelementptr inbounds %struct.va_macro, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap1.i, align 4
  %call.i3.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i4.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 4, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i5.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 128, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @regcache_mark_dirty(ptr noundef %8) #9
  %call2.i = tail call i32 @regcache_sync_region(ptr noundef %8, i32 noundef 0, i32 noundef 1960) #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap1.i7 = getelementptr inbounds %struct.va_macro, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %regmap1.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap1.i7, align 4
  %call.i3.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i4.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i5.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 128, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_tx_mixer_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv = zext i8 %6 to i32
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift2, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.va_macro, ptr %12, i32 0, i32 1, i32 %conv
  %div3.i = lshr i32 %8, 5
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %8, 31
  %15 = lshr i32 %14, %and.i
  %16 = and i32 %15, 1
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_tx_mixer_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv = zext i8 %6 to i32
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %arrayidx7 = getelementptr %struct.va_macro, ptr %14, i32 0, i32 1, i32 %conv
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %8, ptr noundef %arrayidx7) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %arrayidx7) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink24 = phi i32 [ -1, %if.else ], [ 1, %if.then ]
  %arrayidx9 = getelementptr %struct.va_macro, ptr %14, i32 0, i32 2, i32 %conv
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  %dec = add i32 %16, %.sink24
  store i32 %dec, ptr %arrayidx9, align 4
  %17 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dapm, align 4
  %call11 = tail call i32 @snd_soc_dapm_mixer_update_power(ptr noundef %18, ptr noundef %kcontrol, i32 noundef %10, ptr noundef null) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_widget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mixer_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_put_dec_enum(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = add i32 %6, -256
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %1, i32 -164
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef %6) #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %switch.lookup.if.end_crit_edge, label %if.then

switch.lookup.if.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %switch.idx.mult = shl i32 %8, 7
  %switch.offset = add i32 %switch.idx.mult, 1028
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %switch.offset, i32 noundef 128, i32 noundef 128) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %switch.lookup.if.end_crit_edge
  %call7 = tail call i32 @snd_soc_dapm_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @va_dmic_clk_enable(ptr noundef %component, i32 noundef %dmic, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %dmic to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %dmic, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge2
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge3
    i32 4, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge4
    i32 6, label %entry.sw.bb3_crit_edge
    i32 7, label %entry.sw.bb3_crit_edge5
  ]

entry.sw.bb3_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb2_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb1_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge2
  %dmic_0_1_clk_cnt = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 8
  %dmic_0_1_clk_div = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge3
  %dmic_2_3_clk_cnt = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 9
  %dmic_2_3_clk_div = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge4
  %dmic_4_5_clk_cnt = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 10
  %dmic_4_5_clk_div = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge5
  %dmic_6_7_clk_cnt = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 11
  %dmic_6_7_clk_div = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 15
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %dmic_clk_reg.0 = phi i32 [ 144, %sw.bb3 ], [ 140, %sw.bb2 ], [ 136, %sw.bb1 ], [ 132, %sw.bb ]
  %dmic_clk_cnt.0 = phi ptr [ %dmic_6_7_clk_cnt, %sw.bb3 ], [ %dmic_4_5_clk_cnt, %sw.bb2 ], [ %dmic_2_3_clk_cnt, %sw.bb1 ], [ %dmic_0_1_clk_cnt, %sw.bb ]
  %dmic_clk_div.0 = phi ptr [ %dmic_6_7_clk_div, %sw.bb3 ], [ %dmic_4_5_clk_div, %sw.bb2 ], [ %dmic_2_3_clk_div, %sw.bb1 ], [ %dmic_0_1_clk_div, %sw.bb ]
  %freq_change_mask.0 = phi i32 [ 8, %sw.bb3 ], [ 4, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %sw.bb ]
  br i1 %enable, label %if.then, label %if.else29

if.then:                                          ; preds = %sw.epilog
  %dmic_clk_div4 = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %dmic_clk_div4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dmic_clk_div4, align 4
  %conv = trunc i16 %6 to i8
  %7 = ptrtoint ptr %dmic_clk_cnt.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dmic_clk_cnt.0, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %dmic_clk_cnt.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 148, i32 noundef 128, i32 noundef 0) #9
  %conv.mask1 = shl i16 %6, 1
  %9 = and i16 %conv.mask1, 510
  %shl = zext i16 %9 to i32
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %dmic_clk_reg.0, i32 noundef 14, i32 noundef %shl) #9
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %dmic_clk_reg.0, i32 noundef 1, i32 noundef 1) #9
  br label %if.end61

if.else:                                          ; preds = %if.then
  %10 = ptrtoint ptr %dmic_clk_div.0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dmic_clk_div.0, align 1
  %conv.mask = and i16 %6, 255
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.mask, i16 %12)
  %cmp15 = icmp ult i16 %conv.mask, %12
  br i1 %cmp15, label %if.then17, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 148, i32 noundef %freq_change_mask.0, i32 noundef %freq_change_mask.0) #9
  %13 = shl nuw nsw i16 %conv.mask, 1
  %shl23 = zext i16 %13 to i32
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %dmic_clk_reg.0, i32 noundef 14, i32 noundef %shl23) #9
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 148, i32 noundef %freq_change_mask.0, i32 noundef 0) #9
  br label %if.end61

if.else29:                                        ; preds = %sw.epilog
  %14 = ptrtoint ptr %dmic_clk_cnt.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dmic_clk_cnt.0, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %dmic_clk_cnt.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp30 = icmp eq i32 %dec, 0
  br i1 %cmp30, label %if.then32, label %if.else39

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %dmic_clk_reg.0, i32 noundef 1, i32 noundef 0) #9
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %dmic_clk_reg.0, i32 noundef 14, i32 noundef 0) #9
  br label %if.end61

if.else39:                                        ; preds = %if.else29
  %dmic_clk_div40 = getelementptr inbounds %struct.va_macro, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %dmic_clk_div40 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dmic_clk_div40, align 4
  %18 = ptrtoint ptr %dmic_clk_div.0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dmic_clk_div.0, align 1
  %conv41.mask = and i16 %17, 255
  %20 = zext i8 %19 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv41.mask, i16 %20)
  %cmp44 = icmp ult i16 %conv41.mask, %20
  br i1 %cmp44, label %if.then46, label %if.else39.if.end61_crit_edge

if.else39.if.end61_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then46:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  %conv41 = trunc i16 %17 to i8
  %call51 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 148, i32 noundef %freq_change_mask.0, i32 noundef %freq_change_mask.0) #9
  %21 = shl nuw nsw i16 %conv41.mask, 1
  %shl54 = zext i16 %21 to i32
  %call55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %dmic_clk_reg.0, i32 noundef 14, i32 noundef %shl54) #9
  %call57 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 148, i32 noundef %freq_change_mask.0, i32 noundef 0) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then46, %if.else39.if.end61_crit_edge, %if.then32, %if.then17, %if.else.if.end61_crit_edge, %if.then6
  %storemerge = phi i8 [ %conv, %if.then6 ], [ %conv, %if.then17 ], [ %11, %if.else.if.end61_crit_edge ], [ 0, %if.then32 ], [ %conv41, %if.then46 ], [ %19, %if.else39.if.end61_crit_edge ]
  %22 = ptrtoint ptr %dmic_clk_div.0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge, ptr %dmic_clk_div.0, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_get_channel_map(ptr nocapture noundef readonly %dai, ptr nocapture noundef writeonly %tx_num, ptr nocapture noundef writeonly %tx_slot, ptr nocapture noundef readnone %rx_num, ptr nocapture noundef readnone %rx_slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.va_macro, ptr %7, i32 0, i32 1, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_slot, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %arrayidx4 = getelementptr %struct.va_macro, ptr %7, i32 0, i32 2, i32 %12
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  %15 = ptrtoint ptr %tx_num to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_num, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_digital_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.va_macro, ptr %5, i32 0, i32 1, i32 %7
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx, i32 noundef 8, i32 noundef 0) #9
  %conv326 = and i32 %call2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv326)
  %cmp27 = icmp ult i32 %conv326, 8
  br i1 %cmp27, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv329 = phi i32 [ %conv326, %for.body.lr.ph ], [ %conv3, %for.body.for.body_crit_edge ]
  %decimator.0.in28 = phi i32 [ %call2, %for.body.lr.ph ], [ %call16, %for.body.for.body_crit_edge ]
  %8 = shl i32 %decimator.0.in28, 7
  %conv6 = add i32 %8, 1024
  %conv9 = and i32 %conv6, 65408
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %conv9, i32 noundef 16, i32 noundef %.) #9
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %arrayidx13 = getelementptr %struct.va_macro, ptr %5, i32 0, i32 1, i32 %10
  %add15 = add nuw nsw i32 %conv329, 1
  %call16 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx13, i32 noundef 8, i32 noundef %add15) #9
  %conv3 = and i32 %call16, 65535
  %cmp = icmp ult i32 %conv3, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @va_macro_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %7, label %do.end [
    i32 8000, label %entry.sw.epilog_crit_edge
    i32 16000, label %sw.bb3
    i32 32000, label %sw.bb4
    i32 48000, label %sw.bb5
    i32 96000, label %sw.bb6
    i32 192000, label %sw.bb7
    i32 384000, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i32 noundef %7) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %tx_fs_rate.0 = phi i32 [ 7, %sw.bb8 ], [ 6, %sw.bb7 ], [ 5, %sw.bb6 ], [ 4, %sw.bb5 ], [ 3, %sw.bb4 ], [ 1, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.va_macro, ptr %5, i32 0, i32 1, i32 %10
  %call10 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call10)
  %cmp33 = icmp ult i32 %call10, 8
  br i1 %cmp33, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %decimator.034 = phi i32 [ %call17, %for.body.for.body_crit_edge ], [ %call10, %sw.epilog.for.body_crit_edge ]
  %11 = shl nuw nsw i32 %decimator.034, 7
  %conv = add nuw nsw i32 %11, 1024
  %conv11 = and i32 %conv, 65408
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %conv11, i32 noundef 15, i32 noundef %tx_fs_rate.0) #9
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %arrayidx15 = getelementptr %struct.va_macro, ptr %5, i32 0, i32 1, i32 %13
  %add16 = add nuw nsw i32 %decimator.034, 1
  %call17 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx15, i32 noundef 8, i32 noundef %add16) #9
  %cmp = icmp ult i32 %call17, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !207, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !251, !252, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !298, !299, !300, !302, !303, !304, !305}
!llvm.module.flags = !{!307, !308, !309, !310, !311, !312, !313, !314}
!llvm.ident = !{!315}

!0 = !{ptr @__initcall__kmod_snd_soc_lpass_va_macro__294_1491_va_macro_driver_init6, !1, !"__initcall__kmod_snd_soc_lpass_va_macro__294_1491_va_macro_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1491, i32 1}
!2 = !{ptr @__exitcall_va_macro_driver_exit, !1, !"__exitcall_va_macro_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1492, i32 1}
!5 = !{ptr @__UNIQUE_ID_file296, !6, !"__UNIQUE_ID_file296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1493, i32 1}
!7 = !{ptr @__UNIQUE_ID_license297, !6, !"__UNIQUE_ID_license297", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1483, i32 11}
!10 = !{ptr @va_macro_driver, !11, !"va_macro_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1481, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1407, i32 19}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1408, i32 19}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1409, i32 19}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1413, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @va_macro_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @va_macro_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1417, i32 43}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1420, i32 3}
!30 = !{ptr @va_macro_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @va_macro_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @va_macro_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1440, i32 15}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1387, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @va_macro_validate_dmic_sample_rate._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @va_macro_validate_dmic_sample_rate._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @va_regmap_config, !41, !"va_regmap_config", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 397, i32 35}
!42 = !{ptr @va_defaults, !43, !"va_defaults", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 227, i32 33}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1328, i32 25}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1334, i32 30}
!48 = !{ptr @fsgen_gate_ops, !49, !"fsgen_gate_ops", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1316, i32 29}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1286, i32 10}
!52 = !{ptr @va_macro_component_drv, !53, !"va_macro_component_drv", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1285, i32 46}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1257, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1259, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1261, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1263, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1266, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1268, i32 2}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1270, i32 2}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1272, i32 2}
!70 = !{ptr @va_macro_snd_controls, !71, !"va_macro_snd_controls", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1256, i32 38}
!72 = !{ptr @digital_gain, !73, !"digital_gain", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 155, i32 14}
!74 = !{ptr @dec_mode_mux_enum, !75, !"dec_mode_mux_enum", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1245, i32 30}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1242, i32 2}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1242, i32 17}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1242, i32 32}
!82 = !{ptr @dec_mode_mux_text, !83, !"dec_mode_mux_text", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1241, i32 27}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1061, i32 2}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1064, i32 2}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1067, i32 2}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1070, i32 2}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1074, i32 2}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1078, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1082, i32 2}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1083, i32 2}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1084, i32 2}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1085, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1087, i32 2}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1088, i32 2}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1089, i32 2}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1090, i32 2}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1091, i32 2}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1092, i32 2}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1093, i32 2}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1094, i32 2}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1095, i32 2}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1097, i32 2}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1101, i32 2}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1105, i32 2}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1109, i32 2}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1113, i32 2}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1117, i32 2}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1121, i32 2}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1125, i32 2}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1129, i32 2}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1130, i32 2}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1131, i32 2}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1132, i32 2}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1133, i32 2}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1134, i32 2}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1135, i32 2}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1136, i32 2}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1137, i32 2}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1138, i32 2}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1139, i32 2}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1140, i32 2}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1142, i32 2}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1147, i32 2}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1152, i32 2}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1157, i32 2}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1162, i32 2}
!175 = !{ptr @va_macro_dapm_widgets, !176, !"va_macro_dapm_widgets", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1060, i32 41}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1004, i32 2}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1006, i32 2}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1008, i32 2}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1010, i32 2}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1012, i32 2}
!187 = !{ptr @.str.91, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1014, i32 2}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1016, i32 2}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1018, i32 2}
!193 = !{ptr @va_aif1_cap_mixer, !194, !"va_aif1_cap_mixer", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1003, i32 38}
!195 = !{ptr @va_aif2_cap_mixer, !196, !"va_aif2_cap_mixer", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1022, i32 38}
!197 = !{ptr @va_aif3_cap_mixer, !198, !"va_aif3_cap_mixer", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1041, i32 38}
!199 = !{ptr @.str.113, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 987, i32 53}
!201 = !{ptr @va_dmic0_mux, !202, !"va_dmic0_mux", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 987, i32 38}
!203 = !{ptr @.str.114, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 499, i32 3}
!205 = !{ptr @.str.115, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @va_macro_put_dec_enum._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @va_macro_put_dec_enum._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @va_dmic0_enum, !209, !"va_dmic0_enum", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 975, i32 8}
!210 = !{ptr @.str.116, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 971, i32 2}
!212 = !{ptr @.str.117, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 971, i32 10}
!214 = !{ptr @.str.118, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 971, i32 19}
!216 = !{ptr @.str.119, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 971, i32 28}
!218 = !{ptr @.str.120, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 971, i32 37}
!220 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 972, i32 2}
!222 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 972, i32 11}
!224 = !{ptr @.str.123, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 972, i32 20}
!226 = !{ptr @.str.124, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 972, i32 29}
!228 = !{ptr @dmic_mux_text, !229, !"dmic_mux_text", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 970, i32 27}
!230 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 991, i32 53}
!232 = !{ptr @va_dmic1_mux, !233, !"va_dmic1_mux", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 991, i32 38}
!234 = !{ptr @va_dmic1_enum, !235, !"va_dmic1_enum", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 978, i32 8}
!236 = !{ptr @.str.126, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 995, i32 53}
!238 = !{ptr @va_dmic2_mux, !239, !"va_dmic2_mux", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 995, i32 38}
!240 = !{ptr @va_dmic2_enum, !241, !"va_dmic2_enum", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 981, i32 8}
!242 = !{ptr @.str.127, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 999, i32 53}
!244 = !{ptr @va_dmic3_mux, !245, !"va_dmic3_mux", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 999, i32 38}
!246 = !{ptr @va_dmic3_enum, !247, !"va_dmic3_enum", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 984, i32 8}
!248 = !{ptr @.str.128, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 601, i32 3}
!250 = !{ptr @.str.129, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @va_dmic_clk_enable._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @va_dmic_clk_enable._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 961, i32 52}
!255 = !{ptr @va_dec0_mux, !256, !"va_dec0_mux", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 961, i32 38}
!257 = !{ptr @va_dec0_enum, !258, !"va_dec0_enum", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 952, i32 8}
!259 = !{ptr @.str.131, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 949, i32 2}
!261 = !{ptr @.str.132, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 949, i32 13}
!263 = !{ptr @adc_mux_text, !264, !"adc_mux_text", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 948, i32 27}
!265 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 963, i32 52}
!267 = !{ptr @va_dec1_mux, !268, !"va_dec1_mux", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 963, i32 38}
!269 = !{ptr @va_dec1_enum, !270, !"va_dec1_enum", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 954, i32 8}
!271 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 965, i32 52}
!273 = !{ptr @va_dec2_mux, !274, !"va_dec2_mux", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 965, i32 38}
!275 = !{ptr @va_dec2_enum, !276, !"va_dec2_enum", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 956, i32 8}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 967, i32 52}
!279 = !{ptr @va_dec3_mux, !280, !"va_dec3_mux", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 967, i32 38}
!281 = !{ptr @va_dec3_enum, !282, !"va_dec3_enum", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 958, i32 8}
!283 = !{ptr @va_audio_map, !284, !"va_audio_map", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1167, i32 40}
!285 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 905, i32 11}
!287 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 919, i32 11}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 933, i32 11}
!291 = !{ptr @va_macro_dais, !292, !"va_macro_dais", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 903, i32 34}
!293 = !{ptr @va_macro_dai_ops, !294, !"va_macro_dai_ops", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 897, i32 37}
!295 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 868, i32 3}
!297 = !{ptr @.str.140, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @va_macro_get_channel_map._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @va_macro_get_channel_map._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.141, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 837, i32 3}
!302 = !{ptr @.str.142, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @va_macro_hw_params._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @va_macro_hw_params._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @va_macro_dt_match, !306, !"va_macro_dt_match", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/lpass-va-macro.c", i32 1474, i32 34}
!307 = !{i32 1, !"wchar_size", i32 2}
!308 = !{i32 1, !"min_enum_size", i32 4}
!309 = !{i32 8, !"branch-target-enforcement", i32 0}
!310 = !{i32 8, !"sign-return-address", i32 0}
!311 = !{i32 8, !"sign-return-address-all", i32 0}
!312 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!313 = !{i32 7, !"uwtable", i32 1}
!314 = !{i32 7, !"frame-pointer", i32 2}
!315 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!316 = !{!"auto-init"}
