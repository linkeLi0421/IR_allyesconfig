; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98504.c_pt.bc'
source_filename = "../sound/soc/codecs/max98504.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
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
%struct.max98504_priv = type { ptr, [3 x %struct.regulator_bulk_data], i32, i8, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_max98504__294_377_max98504_i2c_driver_init6 = internal global ptr @max98504_i2c_driver_init, section ".initcall6.init", align 4
@max98504_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max98504_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98504_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max98504_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max98504_i2c_driver_exit = internal global ptr @max98504_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [50 x i8] c"snd_soc_max98504.description=ASoC MAX98504 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [56 x i8] c"snd_soc_max98504.file=sound/soc/codecs/snd-soc-max98504\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [29 x i8] c"snd_soc_max98504.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98504\00", [23 x i8] zeroinitializer }, align 32
@max98504_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98504\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max98504_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98504\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"maxim,brownout-threshold\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"maxim,brownout-attenuation\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"maxim,brownout-attack-hold-ms\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"maxim,brownout-timed-hold-ms\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"maxim,brownout-release-rate-ms\00", [33 x i8] zeroinitializer }, align 32
@max98504_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max98504_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr @max98504_readable_register, ptr @max98504_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32767, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98504_reg_defaults, i32 36, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"max98504:334:(&max98504_regmap)->lock\00", [58 x i8] zeroinitializer }, align 32
@max98504_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 337, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regmap initialization failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98504_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/max98504.c\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98504_i2c_probe._entry_ptr = internal global ptr @max98504_i2c_probe._entry, section ".printk_index", align 4
@max98504_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @max98504_dapm_widgets, i32 8, ptr @max98504_dapm_routes, i32 5, ptr @max98504_component_probe, ptr @max98504_component_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@max98504_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.29, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98504_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.18, i64 1093, i32 1770, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.30, i64 1093, i32 1770, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@max98504_reg_defaults = internal global { [36 x %struct.reg_default], [64 x i8] } { [36 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }], [64 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIOVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PVDD\00", [27 x i8] zeroinitializer }, align 32
@max98504_dapm_routes = internal constant { [5 x %struct.snd_soc_dapm_route], [92 x i8] } { [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.25, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.26, ptr @.str.16, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.27, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.28, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }], [92 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Global Enable\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AIN\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIF2OUTL\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIF2OUTR\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAC PCM\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAC PDM\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPK Source\00", [21 x i8] zeroinitializer }, align 32
@spk_source_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @spk_source_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKOUT\00", [25 x i8] zeroinitializer }, align 32
@max98504_dapm_widgets = internal constant { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [352 x i8] } { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.15, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 64, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.16, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.17, ptr @.str.18, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.19, ptr @.str.18, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @max98504_pcm_rx_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 51, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_source_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 52, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [352 x i8] zeroinitializer }, align 32
@spk_source_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 53, i8 0, i8 0, i32 4, i32 3, ptr @spk_source_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@spk_source_mux_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCM Monomix\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Analog In\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PDM Left\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PDM Right\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max98504-aif2\00", [18 x i8] zeroinitializer }, align 32
@max98504_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98504_set_tdm_slot, ptr @max98504_set_channel_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF2 Playback\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 20, i64 65]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 20, i64 64, i64 65]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"max98504_i2c_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 369, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 371, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"max98504_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 356, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"max98504_i2c_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 363, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 320, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 324, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 326, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 328, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 330, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"max98504_regmap\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 296, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 334, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 337, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"max98504_component_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 287, i32 46 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"max98504_dai\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 264, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [22 x i8] c"max98504_reg_defaults\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 38, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 20, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 21, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 22, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"max98504_dapm_routes\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 176, i32 40 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 185, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 187, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 188, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 189, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 190, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 193, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 194, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"spk_source_mux\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 173, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 195, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [22 x i8] c"max98504_dapm_widgets\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 184, i32 41 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"spk_source_mux_enum\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 168, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"spk_source_mux_text\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 164, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 165, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 165, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 165, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 165, i32 42 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 267, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"max98504_dai_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 252, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [31 x i8] c"../sound/soc/codecs/max98504.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 270, i32 19 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_max98504_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_max98504__294_377_max98504_i2c_driver_init6, ptr @max98504_i2c_driver_exit, ptr @max98504_i2c_probe._entry, ptr @max98504_i2c_probe._entry_ptr, ptr @max98504_i2c_driver, ptr @.str, ptr @max98504_of_match, ptr @max98504_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max98504_i2c_probe._key, ptr @max98504_regmap, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @max98504_component_driver, ptr @max98504_dai, ptr @max98504_reg_defaults, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @max98504_dapm_routes, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @spk_source_mux, ptr @.str.23, ptr @max98504_dapm_widgets, ptr @spk_source_mux_enum, ptr @spk_source_mux_text, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @max98504_dai_ops, ptr @.str.30], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_reg_defaults to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_dapm_routes to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_source_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_dapm_widgets to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_source_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_source_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98504_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max98504_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max98504_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max98504_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max98504_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98504_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %brownout_threshold = getelementptr inbounds %struct.max98504_priv, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %brownout_threshold, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool5.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %brownout_enable = getelementptr inbounds %struct.max98504_priv, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %brownout_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %brownout_enable, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3.if.end7_crit_edge
  %brownout_attenuation = getelementptr inbounds %struct.max98504_priv, ptr %call.i, i32 0, i32 5
  %call.i.i61 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef %brownout_attenuation, i32 noundef 1, i32 noundef 0) #5
  %brownout_attack_hold = getelementptr inbounds %struct.max98504_priv, ptr %call.i, i32 0, i32 6
  %call.i.i62 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef %brownout_attack_hold, i32 noundef 1, i32 noundef 0) #5
  %brownout_timed_hold = getelementptr inbounds %struct.max98504_priv, ptr %call.i, i32 0, i32 7
  %call.i.i63 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef %brownout_timed_hold, i32 noundef 1, i32 noundef 0) #5
  %brownout_release_rate = getelementptr inbounds %struct.max98504_priv, ptr %call.i, i32 0, i32 8
  %call.i.i64 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef %brownout_release_rate, i32 noundef 1, i32 noundef 0) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end7, %if.end.if.end12_crit_edge
  %call13 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max98504_regmap, ptr noundef nonnull @max98504_i2c_probe._key, ptr noundef nonnull @.str.6) #5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end12
  %arrayidx21 = getelementptr %struct.max98504_priv, ptr %call.i, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.12, ptr %arrayidx21, align 4
  %arrayidx21.1 = getelementptr %struct.max98504_priv, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.13, ptr %arrayidx21.1, align 4
  %arrayidx21.2 = getelementptr %struct.max98504_priv, ptr %call.i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.14, ptr %arrayidx21.2, align 4
  %call23 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %for.body.preheader.cleanup_crit_edge, label %if.end26

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %7) #8
  br label %cleanup

if.end26:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call27 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @max98504_component_driver, ptr noundef nonnull @max98504_dai, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then16, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then16 ], [ %call27, %if.end26 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98504_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 65, label %entry.return_crit_edge
    i32 20, label %entry.return_crit_edge1
    i32 4, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge1 ], [ false, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98504_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 4, label %entry.return_crit_edge2
    i32 20, label %entry.return_crit_edge3
    i32 64, label %entry.return_crit_edge4
    i32 65, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98504_component_probe(ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %supplies = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 1
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 65, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %brownout_enable = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %brownout_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %brownout_enable, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 22, i32 noundef 1) #5
  %brownout_threshold = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %brownout_threshold to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brownout_threshold, align 4
  %and = shl i32 %9, 3
  %shl = and i32 %and, 248
  %brownout_attenuation = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %brownout_attenuation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brownout_attenuation, align 4
  %and6 = and i32 %11, 3
  %or = or i32 %shl, %and6
  %call7 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 23, i32 noundef %or) #5
  %brownout_attack_hold = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %brownout_attack_hold to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %brownout_attack_hold, align 4
  %and8 = and i32 %13, 255
  %call9 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 24, i32 noundef %and8) #5
  %brownout_timed_hold = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %brownout_timed_hold to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brownout_timed_hold, align 4
  %and10 = and i32 %15, 255
  %call11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 25, i32 noundef %and10) #5
  %brownout_release_rate = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %brownout_release_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %brownout_release_rate, align 4
  %and12 = and i32 %17, 255
  %call13 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 26, i32 noundef %and12) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98504_component_remove(ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 1
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98504_pcm_rx_ev(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %pcm_rx_channels = getelementptr inbounds %struct.max98504_priv, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %pcm_rx_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcm_rx_channels, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 32, i32 noundef %10) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 32, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98504_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %7, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 33, i32 noundef %tx_mask) #5
  %pcm_rx_channels = getelementptr inbounds %struct.max98504_priv, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %pcm_rx_channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rx_mask, ptr %pcm_rx_channels, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 48, i32 noundef %tx_mask) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 217, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98504_set_channel_map(ptr nocapture noundef readonly %dai, i32 noundef %tx_num, ptr nocapture noundef readonly %tx_slot, i32 noundef %rx_num, ptr nocapture noundef readnone %rx_slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_num)
  %cmp33.not = icmp eq i32 %tx_num, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %sources.035 = phi i32 [ %sources.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %tx_slot, i32 %i.034
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %shl = shl nuw i32 1, %i.034
  %or = select i1 %tobool.not, i32 0, i32 %shl
  %sources.1 = or i32 %or, %sources.035
  %inc = add nuw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %tx_num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sources.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %sources.1, %for.body.for.end_crit_edge ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %9, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 35, i32 noundef %sources.0.lcssa) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 50, i32 noundef %sources.0.lcssa) #5
  br label %sw.epilog

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 244, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sources.0.lcssa)
  %tobool21.not = icmp eq i32 %sources.0.lcssa, 0
  %cond = select i1 %tobool21.not, i32 1, i32 3
  %call22 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 54, i32 noundef %cond) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_snd_soc_max98504__294_377_max98504_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_max98504__294_377_max98504_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98504.c", i32 377, i32 1}
!2 = !{ptr @__exitcall_max98504_i2c_driver_exit, !1, !"__exitcall_max98504_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/max98504.c", i32 379, i32 1}
!5 = !{ptr @__UNIQUE_ID_file296, !6, !"__UNIQUE_ID_file296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/max98504.c", i32 380, i32 1}
!7 = !{ptr @__UNIQUE_ID_license297, !6, !"__UNIQUE_ID_license297", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/max98504.c", i32 371, i32 11}
!10 = !{ptr @max98504_i2c_driver, !11, !"max98504_i2c_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/max98504.c", i32 369, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/max98504.c", i32 320, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/max98504.c", i32 324, i32 30}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/max98504.c", i32 326, i32 30}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/max98504.c", i32 328, i32 30}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/max98504.c", i32 330, i32 30}
!22 = !{ptr @max98504_i2c_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/max98504.c", i32 334, i32 21}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/max98504.c", i32 337, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @max98504_i2c_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @max98504_i2c_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @max98504_regmap, !34, !"max98504_regmap", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/max98504.c", i32 296, i32 35}
!35 = !{ptr @max98504_reg_defaults, !36, !"max98504_reg_defaults", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/max98504.c", i32 38, i32 27}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/max98504.c", i32 20, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/max98504.c", i32 21, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/max98504.c", i32 22, i32 2}
!43 = distinct !{null, !44, !"max98504_supply_names", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/max98504.c", i32 19, i32 27}
!45 = !{ptr @max98504_component_driver, !46, !"max98504_component_driver", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/max98504.c", i32 287, i32 46}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/max98504.c", i32 185, i32 2}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/max98504.c", i32 187, i32 2}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/max98504.c", i32 188, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/max98504.c", i32 189, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/max98504.c", i32 190, i32 2}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/max98504.c", i32 193, i32 2}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/max98504.c", i32 194, i32 2}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/max98504.c", i32 195, i32 2}
!64 = !{ptr @max98504_dapm_widgets, !65, !"max98504_dapm_widgets", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/max98504.c", i32 184, i32 41}
!66 = !{ptr @spk_source_mux, !67, !"spk_source_mux", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/max98504.c", i32 173, i32 38}
!68 = !{ptr @spk_source_mux_enum, !69, !"spk_source_mux_enum", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/max98504.c", i32 168, i32 30}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/max98504.c", i32 165, i32 2}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/max98504.c", i32 165, i32 17}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/max98504.c", i32 165, i32 30}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/max98504.c", i32 165, i32 42}
!78 = !{ptr @spk_source_mux_text, !79, !"spk_source_mux_text", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/max98504.c", i32 164, i32 20}
!80 = !{ptr @max98504_dapm_routes, !81, !"max98504_dapm_routes", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/max98504.c", i32 176, i32 40}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/max98504.c", i32 267, i32 11}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/max98504.c", i32 270, i32 19}
!86 = !{ptr @max98504_dai, !87, !"max98504_dai", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/max98504.c", i32 264, i32 34}
!88 = !{ptr @max98504_dai_ops, !89, !"max98504_dai_ops", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/max98504.c", i32 252, i32 37}
!90 = !{ptr @max98504_of_match, !91, !"max98504_of_match", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/max98504.c", i32 356, i32 34}
!92 = !{ptr @max98504_i2c_id, !93, !"max98504_i2c_id", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/max98504.c", i32 363, i32 35}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i8 0, i8 2}
