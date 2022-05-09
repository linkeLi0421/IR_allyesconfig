; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tas2552.c_pt.bc'
source_filename = "../sound/soc/codecs/tas2552.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tas2552_data = type { ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, [25 x i8], i32, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tas2552__295_772_tas2552_i2c_driver_init6 = internal global ptr @tas2552_i2c_driver_init, section ".initcall6.init", align 4
@tas2552_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tas2552_probe, ptr @tas2552_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tas2552_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas2552_pm, ptr null, ptr null }, ptr @tas2552_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tas2552_i2c_driver_exit = internal global ptr @tas2552_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [51 x i8] c"snd_soc_tas2552.author=Dan Muprhy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [59 x i8] c"snd_soc_tas2552.description=TAS2552 Audio amplifier driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [54 x i8] c"snd_soc_tas2552.file=sound/soc/codecs/snd-soc-tas2552\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [28 x i8] c"snd_soc_tas2552.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tas2552\00", [24 x i8] zeroinitializer }, align 32
@tas2552_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas2552\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tas2552_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas2552_runtime_suspend, ptr @tas2552_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tas2552_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tas2552\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@tas2552_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tas2552_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas2552_reg_defs, i32 21, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tas2552:703:(&tas2552_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@tas2552_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 707, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tas2552_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/tas2552.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tas2552_probe._entry_ptr = internal global ptr @tas2552_probe._entry, section ".printk_index", align 4
@tas2552_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 717, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tas2552_probe._entry_ptr.10 = internal global ptr @tas2552_probe._entry.8, section ".printk_index", align 4
@soc_component_dev_tas2552 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tas2552_snd_controls, i32 2, ptr @tas2552_dapm_widgets, i32 8, ptr @tas2552_audio_map, i32 6, ptr @tas2552_component_probe, ptr @tas2552_component_remove, ptr @tas2552_suspend, ptr @tas2552_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 76, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tas2552_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.44, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tas2552_speaker_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.45, i64 68719477828, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@tas2552_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 734, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tas2552_probe._entry_ptr.13 = internal global ptr @tas2552_probe._entry.11, section ".printk_index", align 4
@tas2552_reg_defs = internal constant { [21 x %struct.reg_default], [56 x i8] } { [21 x %struct.reg_default] [%struct.reg_default { i32 1, i32 34 }, %struct.reg_default { i32 3, i32 128 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 7, i32 192 }, %struct.reg_default { i32 17, i32 1 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 20, i32 15 }, %struct.reg_default { i32 13, i32 190 }, %struct.reg_default { i32 14, i32 8 }, %struct.reg_default { i32 2, i32 239 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 8, i32 16 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 143 }, %struct.reg_default { i32 12, i32 128 }, %struct.reg_default { i32 15, i32 4 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 19, i32 64 }, %struct.reg_default { i32 25, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovdd\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@tas2552_snd_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @tas2552_din_source_enum to i32) }], [32 x i8] zeroinitializer }, align 32
@tas2552_audio_map = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.34, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.35, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Speaker Driver Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@dac_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 18, i32 18, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIN source\00", [21 x i8] zeroinitializer }, align 32
@tas2552_din_source_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 3, i8 3, i32 4, i32 3, ptr @tas2552_din_source_select, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tas2552_din_source_select = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Muted\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left + Right average\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Input selection\00", [16 x i8] zeroinitializer }, align 32
@tas2552_input_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @tas2552_input_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC IN\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ClassD\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLL\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Post Event\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@tas2552_dapm_widgets = internal constant { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [352 x i8] } { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tas2552_input_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.25, ptr @.str.26, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 18, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @tas2552_post_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [352 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@tas2552_input_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 7, i8 7, i32 2, i32 1, ptr @tas2552_input_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tas2552_input_texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.34, ptr @.str.35], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@tas2552_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 578, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tas2552_component_probe\00", [40 x i8] zeroinitializer }, align 32
@tas2552_component_probe._entry_ptr = internal global ptr @tas2552_component_probe._entry, section ".printk_index", align 4
@tas2552_component_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.5, i32 587, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling device failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tas2552_component_probe._entry_ptr.40 = internal global ptr @tas2552_component_probe._entry.38, section ".printk_index", align 4
@tas2552_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 634, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tas2552_suspend\00", [16 x i8] zeroinitializer }, align 32
@tas2552_suspend._entry_ptr = internal global ptr @tas2552_suspend._entry, section ".printk_index", align 4
@tas2552_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.43, ptr @.str.5, i32 648, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tas2552_resume\00", [17 x i8] zeroinitializer }, align 32
@tas2552_resume._entry_ptr = internal global ptr @tas2552_resume._entry, section ".printk_index", align 4
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas2552-amplifier\00", [46 x i8] zeroinitializer }, align 32
@tas2552_speaker_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @tas2552_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @tas2552_set_dai_fmt, ptr null, ptr @tas2552_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas2552_mute, ptr null, ptr null, ptr @tas2552_hw_params, ptr null, ptr @tas2552_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@tas2552_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 406, ptr @.str.48, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Out of range PLL_CLKIN: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tas2552_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tas2552_set_dai_sysclk._entry_ptr = internal global ptr @tas2552_set_dai_sysclk._entry, section ".printk_index", align 4
@tas2552_set_dai_sysclk._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.47, ptr @.str.5, i32 430, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid clk id: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tas2552_set_dai_sysclk._entry_ptr.51 = internal global ptr @tas2552_set_dai_sysclk._entry.49, section ".printk_index", align 4
@tas2552_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 448, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx masks need to be non 0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tas2552_set_dai_tdm_slot\00", [39 x i8] zeroinitializer }, align 32
@tas2552_set_dai_tdm_slot._entry_ptr = internal global ptr @tas2552_set_dai_tdm_slot._entry, section ".printk_index", align 4
@tas2552_set_dai_tdm_slot._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.5, i32 455, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid mask, slots must be adjacent\0A\00", [58 x i8] zeroinitializer }, align 32
@tas2552_set_dai_tdm_slot._entry_ptr.56 = internal global ptr @tas2552_set_dai_tdm_slot._entry.54, section ".printk_index", align 4
@tas2552_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 263, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Not supported sample size: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas2552_hw_params\00", [46 x i8] zeroinitializer }, align 32
@tas2552_hw_params._entry_ptr = internal global ptr @tas2552_hw_params._entry, section ".printk_index", align 4
@tas2552_hw_params._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.5, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Not supported sample rate: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tas2552_hw_params._entry_ptr.61 = internal global ptr @tas2552_hw_params._entry.59, section ".printk_index", align 4
@switch.table.tas2552_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 64, i32 64, i32 32, i32 64], [44 x i8] zeroinitializer }, align 32
@switch.table.tas2552_hw_params.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\00\03", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.63 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 772, i64 773]
@__sancov_gen_cov_switch_values.65 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"tas2552_i2c_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 761, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 763, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"tas2552_of_match\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 754, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"tas2552_pm\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 511, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"tas2552_id\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 747, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 697, i32 51 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"tas2552_regmap_config\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 674, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 703, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 706, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 717, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"soc_component_dev_tas2552\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 658, i32 46 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"tas2552_dai\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 531, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 734, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"tas2552_reg_defs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 33, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 59, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 60, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 61, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"tas2552_snd_controls\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 560, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"tas2552_audio_map\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 130, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 561, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 548, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 563, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"tas2552_din_source_enum\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 556, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"tas2552_din_source_select\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 550, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 551, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 552, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 553, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 554, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 115, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 118, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"tas2552_input_mux_control\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 110, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 121, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 122, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 123, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 124, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 125, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 127, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [21 x i8] c"tas2552_dapm_widgets\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 113, i32 41 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 111, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [23 x i8] c"tas2552_input_mux_enum\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 107, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"tas2552_input_texts\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 105, i32 27 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 106, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 106, i32 13 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 577, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 586, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 633, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 647, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 533, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant [24 x i8] c"tas2552_speaker_dai_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 516, i32 37 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 535, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 405, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 430, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 448, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 455, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 262, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [30 x i8] c"../sound/soc/codecs/tas2552.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 311, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [31 x i8] c"switch.table.tas2552_hw_params\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [34 x i8] c"switch.table.tas2552_hw_params.62\00", align 1
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_tas2552_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tas2552__295_772_tas2552_i2c_driver_init6, ptr @tas2552_component_probe._entry, ptr @tas2552_component_probe._entry.38, ptr @tas2552_component_probe._entry_ptr, ptr @tas2552_component_probe._entry_ptr.40, ptr @tas2552_hw_params._entry, ptr @tas2552_hw_params._entry.59, ptr @tas2552_hw_params._entry_ptr, ptr @tas2552_hw_params._entry_ptr.61, ptr @tas2552_i2c_driver_exit, ptr @tas2552_probe._entry, ptr @tas2552_probe._entry.11, ptr @tas2552_probe._entry.8, ptr @tas2552_probe._entry_ptr, ptr @tas2552_probe._entry_ptr.10, ptr @tas2552_probe._entry_ptr.13, ptr @tas2552_resume._entry, ptr @tas2552_resume._entry_ptr, ptr @tas2552_set_dai_sysclk._entry, ptr @tas2552_set_dai_sysclk._entry.49, ptr @tas2552_set_dai_sysclk._entry_ptr, ptr @tas2552_set_dai_sysclk._entry_ptr.51, ptr @tas2552_set_dai_tdm_slot._entry, ptr @tas2552_set_dai_tdm_slot._entry.54, ptr @tas2552_set_dai_tdm_slot._entry_ptr, ptr @tas2552_set_dai_tdm_slot._entry_ptr.56, ptr @tas2552_suspend._entry, ptr @tas2552_suspend._entry_ptr, ptr @tas2552_i2c_driver, ptr @.str, ptr @tas2552_of_match, ptr @tas2552_pm, ptr @tas2552_id, ptr @.str.1, ptr @tas2552_probe._key, ptr @tas2552_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @soc_component_dev_tas2552, ptr @tas2552_dai, ptr @.str.12, ptr @tas2552_reg_defs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tas2552_snd_controls, ptr @tas2552_audio_map, ptr @.str.17, ptr @dac_tlv, ptr @.compoundliteral, ptr @.str.18, ptr @tas2552_din_source_enum, ptr @tas2552_din_source_select, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @tas2552_input_mux_control, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @tas2552_dapm_widgets, ptr @.str.33, ptr @tas2552_input_mux_enum, ptr @tas2552_input_texts, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @tas2552_speaker_dai_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @switch.table.tas2552_hw_params, ptr @switch.table.tas2552_hw_params.62], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_tas2552 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_reg_defs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_snd_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_audio_map to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_din_source_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_din_source_select to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_input_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_dapm_widgets to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_input_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_input_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_component_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_speaker_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_set_dai_sysclk._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_set_dai_tdm_slot._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2552_hw_params._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tas2552_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tas2552_hw_params.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tas2552_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tas2552_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tas2552_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 104, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #6
  %enable_gpio = getelementptr inbounds %struct.tas2552_data, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tas2552_client = getelementptr inbounds %struct.tas2552_data, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %tas2552_client to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %tas2552_client, align 4
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tas2552_regmap_config, ptr noundef nonnull @tas2552_probe._key, ptr noundef nonnull @.str.2) #6
  %regmap = getelementptr inbounds %struct.tas2552_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i86 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then13, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end9
  %arrayidx19 = getelementptr %struct.tas2552_data, ptr %call.i, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.14, ptr %arrayidx19, align 4
  %arrayidx19.1 = getelementptr %struct.tas2552_data, ptr %call.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.15, ptr %arrayidx19.1, align 4
  %arrayidx19.2 = getelementptr %struct.tas2552_data, ptr %call.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.16, ptr %arrayidx19.2, align 4
  %call21 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end27, label %do.end26

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %7) #9
  br label %cleanup

do.end26:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call21) #9
  br label %cleanup

if.end27:                                         ; preds = %for.body.preheader
  %call.i87 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i88 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i88, ptr %last_busy.i, align 8
  %call.i89 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 12) #6
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call38 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_tas2552, ptr noundef nonnull @tas2552_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call38) #9
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !171
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end27.cleanup_crit_edge, %do.end26, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %7, %if.then13 ], [ %call21, %do.end26 ], [ -12, %entry.cleanup_crit_edge ], [ %call38, %do.end43 ], [ %call38, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_i2c_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_component_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %3, align 4
  %supplies = getelementptr inbounds %struct.tas2552_data, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.36, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_gpio = getelementptr inbounds %struct.tas2552_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #6
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.39, i32 noundef %call.i) #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !173
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end9.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

do.end9.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !174
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %do.end9.pm_runtime_put_noidle.exit_crit_edge
  %16 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef 0) #6
  %call21 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 4, i32 noundef 4) #6
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 3, i32 noundef 88) #6
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 7, i32 noundef 200) #6
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 20, i32 noundef 15) #6
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef 100) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %pm_runtime_put_noidle.exit, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call.i, %pm_runtime_put_noidle.exit ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tas2552_component_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #6
  %enable_gpio = getelementptr inbounds %struct.tas2552_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.tas2552_data, ptr %3, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.41, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.tas2552_data, ptr %3, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
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
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_post_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 13, i32 noundef 192) #6
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 14, i32 noundef 32, i32 noundef 32) #6
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 1, i32 noundef 0) #6
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 1, i32 noundef 1) #6
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 14, i32 noundef 32, i32 noundef 0) #6
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 13, i32 noundef 190) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %clk_id, label %do.end12 [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge39
    i32 2, label %entry.sw.bb4_crit_edge
    i32 6, label %entry.sw.bb4_crit_edge40
    i32 1, label %entry.sw.bb6_crit_edge
    i32 3, label %entry.sw.bb6_crit_edge41
    i32 5, label %entry.sw.bb6_crit_edge42
    i32 7, label %entry.sw.bb6_crit_edge43
  ]

entry.sw.bb6_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb4_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge39
  %7 = add i32 %freq, -24576001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24064001, i32 %7)
  %8 = icmp ult i32 %7, -24064001
  br i1 %8, label %do.end, label %sw.bb.sw.bb4_crit_edge

sw.bb.sw.bb4_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.46, i32 noundef %freq) #9
  br label %sw.bb4

sw.bb4:                                           ; preds = %do.end, %sw.bb.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge40
  %clk_id.addr.0 = phi i32 [ %clk_id, %entry.sw.bb4_crit_edge ], [ %clk_id, %entry.sw.bb4_crit_edge40 ], [ 2, %do.end ], [ %clk_id, %sw.bb.sw.bb4_crit_edge ]
  %freq.addr.0 = phi i32 [ %freq, %entry.sw.bb4_crit_edge ], [ %freq, %entry.sw.bb4_crit_edge40 ], [ 0, %do.end ], [ %freq, %sw.bb.sw.bb4_crit_edge ]
  %shl = shl nuw nsw i32 %clk_id.addr.0, 3
  %and = and i32 %shl, 48
  %pll_clk_id = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %pll_clk_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %clk_id.addr.0, ptr %pll_clk_id, align 4
  %pll_clkin = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %pll_clkin to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %freq.addr.0, ptr %pll_clkin, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge41, %entry.sw.bb6_crit_edge42, %entry.sw.bb6_crit_edge43
  %11 = lshr i32 %clk_id, 1
  %pdm_clk_id = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %pdm_clk_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clk_id, ptr %pdm_clk_id, align 4
  %pdm_clk = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %pdm_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %freq, ptr %pdm_clk, align 4
  br label %sw.epilog

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %clk_id) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4
  %reg.0 = phi i32 [ 17, %sw.bb6 ], [ 1, %sw.bb4 ]
  %mask.0 = phi i32 [ 3, %sw.bb6 ], [ 48, %sw.bb4 ]
  %val.0 = phi i32 [ %11, %sw.bb6 ], [ %and, %sw.bb4 ]
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %reg.0, i32 noundef %mask.0, i32 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end12
  %retval.0 = phi i32 [ -22, %do.end12 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %and = and i32 %fmt, 61440
  %6 = add nsw i32 %and, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %6)
  %7 = icmp ult i32 %6, 16384
  br i1 %7, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %8 = lshr exact i32 %6, 12
  %switch.idx.cast = trunc i32 %8 to i8
  %switch.idx.mult = mul i8 %switch.idx.cast, -64
  %switch.offset = add i8 %switch.idx.mult, -64
  %and5 = and i32 %fmt, 3855
  %9 = zext i32 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and5, label %switch.lookup.cleanup_crit_edge [
    i32 1, label %switch.lookup.sw.epilog17_crit_edge
    i32 772, label %switch.lookup.sw.bb6_crit_edge
    i32 773, label %switch.lookup.sw.bb6_crit_edge29
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
  ]

switch.lookup.sw.bb6_crit_edge29:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

switch.lookup.sw.bb6_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

switch.lookup.sw.epilog17_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6:                                           ; preds = %switch.lookup.sw.bb6_crit_edge, %switch.lookup.sw.bb6_crit_edge29
  %10 = or i8 %switch.offset, 4
  br label %sw.epilog17

sw.bb8:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %11 = or i8 %switch.offset, 8
  br label %sw.epilog17

sw.bb12:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %12 = or i8 %switch.offset, 12
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %sw.bb12, %sw.bb8, %sw.bb6, %switch.lookup.sw.epilog17_crit_edge
  %serial_format.1 = phi i8 [ %12, %sw.bb12 ], [ %11, %sw.bb8 ], [ %10, %sw.bb6 ], [ %switch.offset, %switch.lookup.sw.epilog17_crit_edge ]
  %and18 = and i32 %fmt, 15
  %dai_fmt = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 10
  %13 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and18, ptr %dai_fmt, align 4
  %conv19 = zext i8 %serial_format.1 to i32
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 204, i32 noundef %conv19) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog17, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog17 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %tobool.not = icmp eq i32 %tx_mask, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !175

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.52) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 true) #6, !range !176
  %add = add nuw nsw i32 %6, 1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %tx_mask, i1 true) #6, !range !176
  %sub.i = xor i32 %7, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i)
  %cmp.not = icmp eq i32 %add, %sub.i
  br i1 %cmp.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %6, %slot_width
  %tdm_delay = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %tdm_delay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %tdm_delay, align 4
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 4, i32 noundef %spec.select) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !176
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #6
  %11 = add i32 %call1.i, -16
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %switch.hole_check, label %params_width.exit.do.end_crit_edge

params_width.exit.do.end_crit_edge:               ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %params_width.exit.do.end_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i78 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i78, label %for.inc.i.i.i85, label %do.end.if.then.i.i.i82_crit_edge

do.end.if.then.i.i.i82_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i82

if.then.i.i.i82:                                  ; preds = %for.inc.i.i.i85.if.then.i.i.i82_crit_edge, %do.end.if.then.i.i.i82_crit_edge
  %i.09.lcssa.i.i.i79 = phi i32 [ 0, %do.end.if.then.i.i.i82_crit_edge ], [ 32, %for.inc.i.i.i85.if.then.i.i.i82_crit_edge ]
  %.lcssa.i.i.i80 = phi i32 [ %17, %do.end.if.then.i.i.i82_crit_edge ], [ %20, %for.inc.i.i.i85.if.then.i.i.i82_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i80, i1 true) #6, !range !176
  %add.i.i.i81 = or i32 %18, %i.09.lcssa.i.i.i79
  br label %params_width.exit88

for.inc.i.i.i85:                                  ; preds = %do.end
  %arrayidx.1.i.i.i83 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1.i.i.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1.i.i.i84 = icmp eq i32 %20, 0
  br i1 %tobool.not.1.i.i.i84, label %for.inc.i.i.i85.params_width.exit88_crit_edge, label %for.inc.i.i.i85.if.then.i.i.i82_crit_edge

for.inc.i.i.i85.if.then.i.i.i82_crit_edge:        ; preds = %for.inc.i.i.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i82

for.inc.i.i.i85.params_width.exit88_crit_edge:    ; preds = %for.inc.i.i.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit88

params_width.exit88:                              ; preds = %for.inc.i.i.i85.params_width.exit88_crit_edge, %if.then.i.i.i82
  %retval.0.i.i.i86 = phi i32 [ %add.i.i.i81, %if.then.i.i.i82 ], [ 0, %for.inc.i.i.i85.params_width.exit88_crit_edge ]
  %call1.i87 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i86) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.57, i32 noundef %call1.i87) #9
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %12 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %21 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %switch.lobit.not = icmp eq i8 %21, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tas2552_hw_params, i32 0, i32 %12
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep92 = getelementptr inbounds [5 x i8], ptr @switch.table.tas2552_hw_params.62, i32 0, i32 %12
  %23 = ptrtoint ptr %switch.gep92 to i32
  call void @__asan_load1_noabort(i32 %23)
  %switch.load93 = load i8, ptr %switch.gep92, align 1
  %tdm_delay10 = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %tdm_delay10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tdm_delay10, align 4
  %add11 = add i32 %25, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add11)
  %cmp = icmp slt i32 %add11, 33
  br i1 %cmp, label %switch.lookup.if.end33_crit_edge, label %if.else

switch.lookup.if.end33_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %add11)
  %cmp15 = icmp ult i32 %add11, 65
  br i1 %cmp15, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %26 = or i8 %switch.load93, 16
  br label %if.end33

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %add11)
  %cmp22 = icmp ult i32 %add11, 129
  br i1 %cmp22, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %27 = or i8 %switch.load93, 32
  br label %if.end33

if.else28:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %28 = or i8 %switch.load93, 48
  br label %if.end33

if.end33:                                         ; preds = %if.else28, %if.then24, %if.then17, %switch.lookup.if.end33_crit_edge
  %ser_ctrl1_reg.1 = phi i8 [ %26, %if.then17 ], [ %27, %if.then24 ], [ %28, %if.else28 ], [ %switch.load93, %switch.lookup.if.end33_crit_edge ]
  %conv34 = zext i8 %ser_ctrl1_reg.1 to i32
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 51, i32 noundef %conv34) #6
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %30, label %do.end48 [
    i32 8000, label %if.end33.sw.epilog51_crit_edge
    i32 11025, label %if.end33.sw.bb38_crit_edge
    i32 12000, label %if.end33.sw.bb38_crit_edge94
    i32 16000, label %sw.bb39
    i32 22050, label %if.end33.sw.bb40_crit_edge
    i32 24000, label %if.end33.sw.bb40_crit_edge95
    i32 32000, label %sw.bb41
    i32 44100, label %if.end33.sw.bb42_crit_edge
    i32 48000, label %if.end33.sw.bb42_crit_edge96
    i32 88200, label %if.end33.sw.bb43_crit_edge
    i32 96000, label %if.end33.sw.bb43_crit_edge97
    i32 176400, label %if.end33.sw.bb44_crit_edge
    i32 192000, label %if.end33.sw.bb44_crit_edge98
  ]

if.end33.sw.bb44_crit_edge98:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44

if.end33.sw.bb44_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44

if.end33.sw.bb43_crit_edge97:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

if.end33.sw.bb43_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

if.end33.sw.bb42_crit_edge96:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42

if.end33.sw.bb42_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42

if.end33.sw.bb40_crit_edge95:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40

if.end33.sw.bb40_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40

if.end33.sw.bb38_crit_edge94:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38

if.end33.sw.bb38_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38

if.end33.sw.epilog51_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog51

sw.bb38:                                          ; preds = %if.end33.sw.bb38_crit_edge, %if.end33.sw.bb38_crit_edge94
  br label %sw.epilog51

sw.bb39:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog51

sw.bb40:                                          ; preds = %if.end33.sw.bb40_crit_edge, %if.end33.sw.bb40_crit_edge95
  br label %sw.epilog51

sw.bb41:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog51

sw.bb42:                                          ; preds = %if.end33.sw.bb42_crit_edge, %if.end33.sw.bb42_crit_edge96
  br label %sw.epilog51

sw.bb43:                                          ; preds = %if.end33.sw.bb43_crit_edge, %if.end33.sw.bb43_crit_edge97
  br label %sw.epilog51

sw.bb44:                                          ; preds = %if.end33.sw.bb44_crit_edge, %if.end33.sw.bb44_crit_edge98
  br label %sw.epilog51

do.end48:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.60, i32 noundef %30) #9
  br label %cleanup

sw.epilog51:                                      ; preds = %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %if.end33.sw.epilog51_crit_edge
  %wclk_rate.0 = phi i32 [ 7, %sw.bb44 ], [ 6, %sw.bb43 ], [ 5, %sw.bb42 ], [ 4, %sw.bb41 ], [ 3, %sw.bb40 ], [ 2, %sw.bb39 ], [ 1, %sw.bb38 ], [ 0, %if.end33.sw.epilog51_crit_edge ]
  %call53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 7, i32 noundef %wclk_rate.0) #6
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i, align 4
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i = shl i32 %39, 9
  %pll_clkin2.i = getelementptr inbounds %struct.tas2552_data, ptr %37, i32 0, i32 6
  %40 = ptrtoint ptr %pll_clkin2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pll_clkin2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog51.if.end5.i_crit_edge

sw.epilog51.if.end5.i_crit_edge:                  ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %sw.epilog51
  %pll_clk_id.i = getelementptr inbounds %struct.tas2552_data, ptr %37, i32 0, i32 7
  %42 = ptrtoint ptr %pll_clk_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pll_clk_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.not.i = icmp eq i32 %43, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #6
  %tdm_delay.i = getelementptr inbounds %struct.tas2552_data, ptr %37, i32 0, i32 11
  %44 = ptrtoint ptr %tdm_delay.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tdm_delay.i, align 4
  %add.i = add i32 %45, %call4.i
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %sw.epilog51.if.end5.i_crit_edge
  %pll_clkin.0.i = phi i32 [ %41, %sw.epilog51.if.end5.i_crit_edge ], [ %add.i, %if.end.i ]
  %call6.i = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 2) #6
  %conv.i = and i32 %call6.i, 8
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %pll_clkin.0.i, i32 %mul.i)
  %cmp8.i = icmp eq i32 %pll_clkin.0.i, %mul.i
  br i1 %cmp8.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 9, i32 noundef 128, i32 noundef 128) #6
  br label %if.end60.i

if.else.i:                                        ; preds = %if.end5.i
  %pll_clk_id15.i = getelementptr inbounds %struct.tas2552_data, ptr %37, i32 0, i32 7
  %46 = ptrtoint ptr %pll_clk_id15.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pll_clk_id15.i, align 4
  %48 = shl i32 %47, 3
  %conv17.i = and i32 %48, 48
  %call18.i = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 8) #6
  %49 = lshr i32 %call18.i, 7
  %mul22.i = shl i32 %39, 10
  %conv23.i = and i32 %49, 1
  %shl24.i = shl i32 %mul22.i, %conv23.i
  %rem103.i = urem i32 %shl24.i, %pll_clkin.0.i
  %pll_clkin.0.i.frozen = freeze i32 %pll_clkin.0.i
  %div26104.i = udiv i32 %pll_clkin.0.i.frozen, 10000
  %add27105.i = add nuw nsw i32 %div26104.i, 1
  %div28106.i = udiv i32 %rem103.i, %add27105.i
  %50 = mul i32 %div26104.i, 10000
  %rem29107.i.decomposed = sub i32 %pll_clkin.0.i.frozen, %50
  %sub108.i = sub nuw nsw i32 9999, %rem29107.i.decomposed
  %div30109.i = udiv i32 %rem103.i, %div26104.i
  %sub31110.i = sub i32 %div30109.i, %div28106.i
  %mul32111.i = mul i32 %sub31110.i, %sub108.i
  %div33112.i = udiv i32 %mul32111.i, 10000
  %add34113.i = add i32 %div33112.i, %div28106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add34113.i)
  %tobool35.not114.i = icmp ne i32 %add34113.i, 0
  %51 = add i32 %pll_clkin.0.i, -9200001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8688001, i32 %51)
  %52 = icmp ult i32 %51, -8688001
  %or.cond115.i = select i1 %tobool35.not114.i, i1 %52, i1 false
  br i1 %or.cond115.i, label %if.then40.lr.ph.i, label %if.else.i.if.end50.i_crit_edge

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then40.lr.ph.i:                                ; preds = %if.else.i
  %tdm_delay47.i = getelementptr inbounds %struct.tas2552_data, ptr %37, i32 0, i32 11
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.end49.i.if.then40.i_crit_edge, %if.then40.lr.ph.i
  %53 = ptrtoint ptr %pll_clk_id15.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pll_clk_id15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp42.i = icmp eq i32 %54, 2
  br i1 %cmp42.i, label %if.then40.i.if.end49.i_crit_edge, label %if.else45.i

if.then40.i.if.end49.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.else45.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #6
  %55 = ptrtoint ptr %tdm_delay47.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tdm_delay47.i, align 4
  %add48.i = add i32 %56, %call46.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else45.i, %if.then40.i.if.end49.i_crit_edge
  %pll_clkin.2.i = phi i32 [ %add48.i, %if.else45.i ], [ 1800000, %if.then40.i.if.end49.i_crit_edge ]
  %pll_sel.1.i = phi i32 [ 16, %if.else45.i ], [ 48, %if.then40.i.if.end49.i_crit_edge ]
  %rem.i = urem i32 %shl24.i, %pll_clkin.2.i
  %pll_clkin.2.i.frozen = freeze i32 %pll_clkin.2.i
  %div26.i = udiv i32 %pll_clkin.2.i.frozen, 10000
  %add27.i = add nuw nsw i32 %div26.i, 1
  %div28.i = udiv i32 %rem.i, %add27.i
  %57 = mul i32 %div26.i, 10000
  %rem29.i.decomposed = sub i32 %pll_clkin.2.i.frozen, %57
  %sub.i = sub nuw nsw i32 9999, %rem29.i.decomposed
  %div30.i = udiv i32 %rem.i, %div26.i
  %sub31.i = sub i32 %div30.i, %div28.i
  %mul32.i = mul i32 %sub31.i, %sub.i
  %div33.i = udiv i32 %mul32.i, 10000
  %add34.i = add i32 %div33.i, %div28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add34.i)
  %tobool35.not.i = icmp ne i32 %add34.i, 0
  %58 = add i32 %pll_clkin.2.i, -9200001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8688001, i32 %58)
  %59 = icmp ult i32 %58, -8688001
  %or.cond.i = select i1 %tobool35.not.i, i1 %59, i1 false
  br i1 %or.cond.i, label %if.end49.i.if.then40.i_crit_edge, label %if.end49.i.if.end50.i_crit_edge

if.end49.i.if.end50.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.end49.i.if.then40.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i

if.end50.i:                                       ; preds = %if.end49.i.if.end50.i_crit_edge, %if.else.i.if.end50.i_crit_edge
  %pll_clkin.1.lcssa.i = phi i32 [ %pll_clkin.0.i, %if.else.i.if.end50.i_crit_edge ], [ %pll_clkin.2.i, %if.end49.i.if.end50.i_crit_edge ]
  %pll_sel.0.lcssa.i = phi i32 [ %conv17.i, %if.else.i.if.end50.i_crit_edge ], [ %pll_sel.1.i, %if.end49.i.if.end50.i_crit_edge ]
  %add34.lcssa.i = phi i32 [ %add34113.i, %if.else.i.if.end50.i_crit_edge ], [ %add34.i, %if.end49.i.if.end50.i_crit_edge ]
  %div.le.i = udiv i32 %shl24.i, %pll_clkin.1.lcssa.i
  %call52.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 48, i32 noundef %pll_sel.0.lcssa.i) #6
  %conv53.i = and i32 %div.le.i, 255
  %call54.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 127, i32 noundef %conv53.i) #6
  %shr55.i = lshr i32 %add34.lcssa.i, 8
  %and56.i = and i32 %shr55.i, 63
  %call57.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 9, i32 noundef %and56.i) #6
  %and58.i = and i32 %add34.lcssa.i, 255
  %call59.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 10, i32 noundef %and58.i) #6
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end50.i, %if.then13.i
  %call62.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef %conv.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end60.i, %if.then.i.cleanup_crit_edge, %do.end48, %params_width.exit88
  %retval.0 = phi i32 [ -22, %params_width.exit88 ], [ -22, %do.end48 ], [ 0, %if.end60.i ], [ -22, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dai_fmt = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dai_fmt, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %7, label %entry.if.end8_crit_edge [
    i32 4, label %if.then
    i32 5, label %if.then5
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tdm_delay = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 11
  %9 = ptrtoint ptr %tdm_delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tdm_delay, align 4
  %add = add i32 %10, 1
  br label %if.end8

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tdm_delay6 = getelementptr inbounds %struct.tas2552_data, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %tdm_delay6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tdm_delay6, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then, %entry.if.end8_crit_edge
  %delay.0 = phi i32 [ %add, %if.then ], [ %12, %if.then5 ], [ 0, %entry.if.end8_crit_edge ]
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %delay.0) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.tas2552_sw_shutdown.exit_crit_edge, label %if.end.i

entry.tas2552_sw_shutdown.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2552_sw_shutdown.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  br label %tas2552_sw_shutdown.exit

tas2552_sw_shutdown.exit:                         ; preds = %if.end.i, %entry.tas2552_sw_shutdown.exit_crit_edge
  %regmap = getelementptr inbounds %struct.tas2552_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #6
  %enable_gpio = getelementptr inbounds %struct.tas2552_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2552_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enable_gpio = getelementptr inbounds %struct.tas2552_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.tas2552_sw_shutdown.exit_crit_edge, label %if.end.i

entry.tas2552_sw_shutdown.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2552_sw_shutdown.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  br label %tas2552_sw_shutdown.exit

tas2552_sw_shutdown.exit:                         ; preds = %if.end.i, %entry.tas2552_sw_shutdown.exit_crit_edge
  %regmap = getelementptr inbounds %struct.tas2552_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !124, !126, !128, !130, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__initcall__kmod_snd_soc_tas2552__295_772_tas2552_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tas2552__295_772_tas2552_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tas2552.c", i32 772, i32 1}
!2 = !{ptr @__exitcall_tas2552_i2c_driver_exit, !1, !"__exitcall_tas2552_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tas2552.c", i32 774, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tas2552.c", i32 775, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tas2552.c", i32 776, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tas2552.c", i32 763, i32 11}
!12 = !{ptr @tas2552_i2c_driver, !13, !"tas2552_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tas2552.c", i32 761, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tas2552.c", i32 697, i32 51}
!16 = !{ptr @tas2552_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/tas2552.c", i32 703, i32 17}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/tas2552.c", i32 706, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tas2552_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @tas2552_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/tas2552.c", i32 717, i32 3}
!29 = !{ptr @tas2552_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tas2552_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/tas2552.c", i32 734, i32 3}
!33 = !{ptr @tas2552_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tas2552_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @tas2552_regmap_config, !36, !"tas2552_regmap_config", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/tas2552.c", i32 674, i32 35}
!37 = !{ptr @tas2552_reg_defs, !38, !"tas2552_reg_defs", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/tas2552.c", i32 33, i32 33}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/tas2552.c", i32 59, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/tas2552.c", i32 60, i32 2}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/tas2552.c", i32 61, i32 2}
!45 = distinct !{null, !46, !"tas2552_supply_names", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/tas2552.c", i32 58, i32 20}
!47 = !{ptr @soc_component_dev_tas2552, !48, !"soc_component_dev_tas2552", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/tas2552.c", i32 658, i32 46}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/tas2552.c", i32 561, i32 2}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/tas2552.c", i32 563, i32 2}
!53 = !{ptr @tas2552_snd_controls, !54, !"tas2552_snd_controls", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/tas2552.c", i32 560, i32 38}
!55 = !{ptr @dac_tlv, !56, !"dac_tlv", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/tas2552.c", i32 548, i32 8}
!57 = !{ptr @tas2552_din_source_enum, !58, !"tas2552_din_source_enum", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/tas2552.c", i32 556, i32 8}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/tas2552.c", i32 551, i32 2}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/tas2552.c", i32 552, i32 2}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/tas2552.c", i32 553, i32 2}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/tas2552.c", i32 554, i32 2}
!67 = !{ptr @tas2552_din_source_select, !68, !"tas2552_din_source_select", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/tas2552.c", i32 550, i32 27}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/tas2552.c", i32 115, i32 2}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/tas2552.c", i32 118, i32 2}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/tas2552.c", i32 121, i32 2}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/tas2552.c", i32 122, i32 2}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/tas2552.c", i32 123, i32 2}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/tas2552.c", i32 124, i32 2}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/tas2552.c", i32 125, i32 2}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/tas2552.c", i32 127, i32 2}
!86 = !{ptr @tas2552_dapm_widgets, !87, !"tas2552_dapm_widgets", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/tas2552.c", i32 113, i32 41}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/tas2552.c", i32 111, i32 2}
!90 = !{ptr @tas2552_input_mux_control, !91, !"tas2552_input_mux_control", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/tas2552.c", i32 110, i32 38}
!92 = !{ptr @tas2552_input_mux_enum, !93, !"tas2552_input_mux_enum", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/tas2552.c", i32 107, i32 8}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/tas2552.c", i32 106, i32 2}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/tas2552.c", i32 106, i32 13}
!98 = !{ptr @tas2552_input_texts, !99, !"tas2552_input_texts", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/tas2552.c", i32 105, i32 27}
!100 = !{ptr @tas2552_audio_map, !101, !"tas2552_audio_map", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/tas2552.c", i32 130, i32 40}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/tas2552.c", i32 577, i32 3}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @tas2552_component_probe._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @tas2552_component_probe._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/tas2552.c", i32 586, i32 3}
!109 = !{ptr @tas2552_component_probe._entry.38, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tas2552_component_probe._entry_ptr.40, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/tas2552.c", i32 633, i32 3}
!113 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @tas2552_suspend._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @tas2552_suspend._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/tas2552.c", i32 647, i32 3}
!118 = !{ptr @tas2552_resume._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tas2552_resume._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/tas2552.c", i32 533, i32 11}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/tas2552.c", i32 535, i32 19}
!124 = !{ptr @tas2552_dai, !125, !"tas2552_dai", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/tas2552.c", i32 531, i32 34}
!126 = !{ptr @tas2552_speaker_dai_ops, !127, !"tas2552_speaker_dai_ops", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/tas2552.c", i32 516, i32 37}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/tas2552.c", i32 405, i32 4}
!130 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @tas2552_set_dai_sysclk._entry, !129, !"_entry", i1 false, i1 false}
!133 = !{ptr @tas2552_set_dai_sysclk._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/tas2552.c", i32 430, i32 3}
!136 = !{ptr @tas2552_set_dai_sysclk._entry.49, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @tas2552_set_dai_sysclk._entry_ptr.51, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/tas2552.c", i32 448, i32 3}
!140 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @tas2552_set_dai_tdm_slot._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @tas2552_set_dai_tdm_slot._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/tas2552.c", i32 455, i32 3}
!145 = !{ptr @tas2552_set_dai_tdm_slot._entry.54, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @tas2552_set_dai_tdm_slot._entry_ptr.56, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/tas2552.c", i32 262, i32 3}
!149 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @tas2552_hw_params._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @tas2552_hw_params._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/tas2552.c", i32 311, i32 3}
!154 = !{ptr @tas2552_hw_params._entry.59, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tas2552_hw_params._entry_ptr.61, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @tas2552_of_match, !157, !"tas2552_of_match", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/tas2552.c", i32 754, i32 34}
!158 = !{ptr @tas2552_pm, !159, !"tas2552_pm", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/tas2552.c", i32 511, i32 32}
!160 = !{ptr @tas2552_id, !161, !"tas2552_id", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/tas2552.c", i32 747, i32 35}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i64 2148359072, i64 2148359098, i64 2148359127, i64 2148359161, i64 2148359192, i64 2148359215}
!172 = !{i64 2148358491}
!173 = !{i64 844111, i64 844136, i64 844158, i64 844174, i64 844186, i64 844206, i64 844230, i64 844246, i64 844258}
!174 = !{i64 2148358679}
!175 = !{!"branch_weights", i32 1, i32 2000}
!176 = !{i32 0, i32 33}
